# -*- coding: utf-8 -*-
"""Recommendation-System.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/137vfmB5yLNGP0yqqSVvKad5xzhfUIsE8

Imports
"""

import pandas as pd
import numpy as np
import chardet
from sklearn.metrics.pairwise import cosine_similarity
from sklearn.feature_extraction.text import TfidfVectorizer
import io
import requests
from postgre_database import crud
from postgre_database.database import SessionLocal, engine
from datetime import  timedelta , datetime , date
from sqlalchemy.orm import Session
#from http_exceptions import HTTPException
from postgre_database import models , schemas , crud, database
from postgre_database.database import SessionLocal, engine
from fastapi import APIRouter, Depends, HTTPException,FastAPI
"""Loading Data"""
def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()


def tfIDF (places_description):
    tfidf_vectorizer = TfidfVectorizer()
    # fit and transform the documents to get the TF-IDF scores in a matrix
    tfidf_scores = tfidf_vectorizer.fit_transform(places_description)
    return tfidf_scores

#print(tfIDF(places_description))

def getUserActivity(userid:int,  db: Session):
    user_places_viewed = crud.getUserActivity(userid=userid , db=db)   
    return user_places_viewed 


def contentBasedModel (tfidf_scores,userid,places_viewed,n_recommendations=5  ):
    cosine_similarities = cosine_similarity(tfidf_scores)

    # define the index of the place to get recommendations for
    similarities_places_viewed=[]
    for place_viewed in places_viewed:
        # get the cosine similarities between the place and all other places
        similarities = cosine_similarities[place_viewed-1]
        top_indices = similarities.argsort()[-n_recommendations:-1]
        similarities_places_viewed.append(top_indices+1)
    return set(np.unique(np.concatenate(similarities_places_viewed)).tolist())

def userBasedCollaborativeModel(user_id,user_ids,user_places_viewed,n_recommendations=7):
    map = {}
    i=0
    for id in user_ids:
        map[id] = i
        i+=1
    specific_user_places = user_places_viewed[user_id]    
    
    # Convert the data dictionary to a matrix
    max_item_id = max(item for sublist in user_places_viewed.values() for item in sublist)
    
    matrix = []
    for uid, items in user_places_viewed.items():
        row = [0] * max_item_id
        for item in items:
            row[item - 1] = 1  # Mark item as viewed
        matrix.append(row)
    # Calculate cosine similarity
    similarity_matrix = cosine_similarity(matrix)

    # Find the indices of similar users in descending order (excluding the current user)
    user_similarities = similarity_matrix[map[user_id]]
    similar_users_indices = sorted(range(len(user_similarities)), key=lambda i: user_similarities[i], reverse=True)[1:]

    # Get the top n_recommendations places for the user based on the most similar users
    recommendations = []
    for index in similar_users_indices:
        similar_user_id = list(user_places_viewed.keys())[index]
        places_viewed_by_similar_user = user_places_viewed[similar_user_id]
        for place_id in places_viewed_by_similar_user:
            if place_id not in user_places_viewed[user_id]:
                recommendations.append(place_id)
        if len(recommendations) >= n_recommendations:  
            break
    recommendations =  list(set(recommendations) - set(specific_user_places))[:n_recommendations]    
    return set(recommendations)
            


def recommenderEngine(tfidf_scores,userid,user_places_viewed,users_places_dict,user_ids,n_recommendations=5):
    contentBasedModelResults=contentBasedModel(tfidf_scores,userid,user_places_viewed,n_recommendations=5)
    itemBasedCallobrativeModelResults=userBasedCollaborativeModel(userid, user_ids,users_places_dict, n_recommendations=5)
    print(contentBasedModelResults)
    print(itemBasedCallobrativeModelResults)
    #topRatedPlacesModelResults=topRatedPlacesModel(user_id,ratings)
    # Concatenate the results
    concatenated_places = contentBasedModelResults | itemBasedCallobrativeModelResults
    # Create a dictionary to store frequency count
    frequency_count = {}
    # Update frequency count for each place
    for place in concatenated_places:
        frequency_count[place] = frequency_count.get(place, 0) + 1
    # Sort the places based on frequency count
    sorted_places = sorted(concatenated_places, key=lambda x: frequency_count[x], reverse=True)
    # Convert the sorted places to a numpy array
    sorted_places = np.array(sorted_places).tolist()
    distinct_list = []
    for item in sorted_places:
        if item not in distinct_list:
            distinct_list.append(item)
    return distinct_list
