from typing import List, Tuple
from fastapi import APIRouter, Depends
from .. import crud , schemas,models
from Sqlite_database.database import SessionLocal
from sqlalchemy.orm import Session
from ..models import Place, Activity
from flask import request, jsonify
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy import func
from fastapi import Request
import pandas as pd
import numpy as np
import chardet
from sklearn.metrics.pairwise import cosine_similarity
from sklearn.feature_extraction.text import TfidfVectorizer
import io
import requests
import csv


ratings_csv_path = r'E:\college\graduation_project\Tripto-1\Datasets\Ratings.csv'
user_places_csv_path = r'E:\college\graduation_project\Tripto-1\Datasets\user_places_viewed.csv'


app = APIRouter()

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
        

n_recommendations=10

@app.get('/tf_idf')
async def tfIDF(db: Session = Depends(get_db)):
    places_description = crud.getPlacesDes(db=db)
    tfidf_vectorizer = TfidfVectorizer()
    tfidf_scores = tfidf_vectorizer.fit_transform(places_description).toarray()
    tfidf_scores_list = tfidf_scores.tolist()
    
    # Get the vocabulary (terms)
    vocabulary = tfidf_vectorizer.vocabulary_
    
    # Invert the vocabulary dictionary to map indices to terms
    indices_to_terms = {index: term for term, index in vocabulary.items()}
    
    result = []
    
    # Iterate over each document's TF-IDF scores
    for i, document in enumerate(places_description):
        doc_scores = tfidf_scores[i]
        doc_result = []
        for j, score in enumerate(doc_scores):
            if score != 0:
                term = indices_to_terms[j]
                doc_result.append({"term": term, "tfidf": score})
        result.append({"document": document, "scores": doc_result})
    
    return tfidf_scores_list




@app.get('/userplaces')
async def userPlaces(userid:int,db:Session=Depends(get_db)):
    return crud.getUserActivity(db=db,userid=userid)

@app.post('/adduserplaces')
async def userAddPlaces(userActivity:schemas.SearchHistoryCreate,db:Session=Depends(get_db)):
    return crud.addUserActivity(db=db,userActivity=userActivity)


async def contentBasedModel(userid:int,db:Session=Depends(get_db)):
    places_viewed = crud.getUserActivity(userid=userid,db=db)
    if isinstance(places_viewed, dict) and "message" in places_viewed:
        # Handle the case where userPlaces returned a message
        return {"message": places_viewed["message"]}
    
    tfidf_scores = await tfIDF(db=db)
    cosine_similarities= cosine_similarity(tfidf_scores)
    similarities_places_viewed=[]
    
    for place_viewed in places_viewed:
        # get the cosine similarities between the place and all other places
        similarities = cosine_similarities[place_viewed-1]
        top_indices = similarities.argsort()[-n_recommendations:-1].tolist()
        similarities_places_viewed.append(top_indices)
    recommendations =np.unique(np.concatenate(similarities_places_viewed)).tolist() 
    recommendations = [place + 1 for place in recommendations]
    return recommendations  


@app.get('/recommendations/')
async def get_recommendations(userid: int, db: Session = Depends(get_db)):
    recommendations = await contentBasedModel(userid=userid, db=db)
    # if not recommendations:
    #     return {"message": "No recommendations found."}
    return {"recommendations": recommendations}



async def itemBasedCallobrativeModel(userid: int, db: Session = Depends(get_db)):
    user_places_viewed = await userPlaces(userid=userid, db=db)
    if isinstance(user_places_viewed, dict) and "message" in user_places_viewed:
        # Handle the case where userPlaces returned a message
        return {"message": user_places_viewed["message"]}

    user_places_viewed = np.array(user_places_viewed).reshape(-1, 1)  # Convert to numpy array and reshape
    user_similarity_matrix = cosine_similarity(user_places_viewed)
    # Get the similarity scores between the user and all other users
    user_similarities = user_similarity_matrix[userid]
    # Sort the indices of the users by their similarity scores
    similar_user_indices = user_similarities.argsort()[::-1]
    # Get the top similar users
    top_similar_user_indices = similar_user_indices[1:n_recommendations+1]
    # Get the places that the similar users have viewed
    similar_users_viewed_places = crud.getViewedPlacesForMatchedUsers(userid=userid, db=db)
   
    recommended_places = []

    for i in similar_users_viewed_places:
        place_id = crud.getPlaceByID(db=db, id=i)
        recommended_places.append(place_id)
    return recommended_places



#@app.get('/recommendations/')
async def get_recommendations(userid: int, db: Session = Depends(get_db)):
    recommendations = await itemBasedCallobrativeModel(userid=userid, db=db)
    # if not recommendations:
    #     return {"message": "No recommendations found."}
    return {"recommendations": recommendations}


async def topRatedPlacesModel(userid: int, db: Session = Depends(get_db)):
    # Compute the similarity matrix using cosine similarity
    item_sim_matrix = cosine_similarity(ratings.T) #so2al
    user_ratings = getUserRatings(userid=userid, db=db)
    item_weights = item_sim_matrix[user_ratings]
    item_scores = item_weights.dot(user_ratings) / item_weights.sum(axis=1)


def topRatedPlacesModel(user_id, ratings,top_n=5):
    # Compute the similarity matrix using cosine similarity
    item_sim_matrix = cosine_similarity(ratings.T)
    # Get the ratings of the items rated by the user
    user_ratings = ratings.loc[user_id].dropna()
    # Compute the weighted average of the item similarities for each item
    item_weights = item_sim_matrix[user_ratings.index.astype(int)-1]
    item_scores = item_weights.dot(user_ratings) / item_weights.sum(axis=1)
    item_scores = pd.Series(item_scores, index=ratings.columns)
    # Sort the item scores in descending order and return the top N items
    recommendations = item_scores.sort_values(ascending=False).head(top_n)
    int_list = [int(x) for x in recommendations.index.tolist()]
    return int_list





@app.get('/getMatchedUsers/')
async def getMatchedUsers(userid: int, db: Session = Depends(get_db)):
    return crud.getUsersSimilarToUserViwedPlaces(userid=userid, db=db)

@app.get('/getviewedPlacesForMatchedUsers/')
async def getUsersViewedPlaces(userid: int, db: Session = Depends(get_db)):
    return crud.getViewedPlacesForMatchedUsers(userid=userid, db=db)

@app.get('/userRatings/')
async def getUserRatings(userid: int, db: Session = Depends(get_db)):
    return crud.getUserRatings(userid=userid, db=db)
