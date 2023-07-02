from typing import List, Tuple
from fastapi import APIRouter, Depends
from .. import crud , schemas,models
from postgre_database.database import SessionLocal
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
import sys
#sys.path.append('E:\college\graduation_project\Tripto-1\models')
from AImodels.recommendation_system_1 import tfIDF ,recommenderEngine,userBasedCollaborativeModel
#from ...AImodels import recommendation_system_1
app = APIRouter()

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
        

n_recommendations=10

def get_places_description(db: Session= Depends(get_db)):
    places_description = crud.getPlacesDes(db= db)
    return places_description

def get_user_places_viewed(user_id:int ,db: Session= Depends(get_db) ):
    user_places_viewed = crud.getUserActivity(userid=user_id , db=db)   
    return user_places_viewed

def get_dict(users_id, db: Session = Depends(get_db)):
    dictionary = {}
    for id in users_id:
        places_viewed =  crud.getUserActivity(userid=id , db=db)
        dictionary[id] = places_viewed
    return dictionary
        

def get_recommended_places(user_id: int,db: Session):
    places_description = get_places_description(db=db)
    users_ids = crud.get_users_ids(db=db)
    tfidf = tfIDF(places_description=places_description)
    places_viewed = get_user_places_viewed(user_id=user_id, db=db)
    users_places_dict = get_dict(users_id=users_ids, db=db)
    recommended_places = recommenderEngine(tfidf_scores=tfidf , userid=user_id ,user_ids=users_ids, user_places_viewed=places_viewed
                                                ,users_places_dict=users_places_dict ,n_recommendations=5)
    return recommended_places

@app.get('/recommendedP')
async def get_recommended(user_id: int , db: Session = Depends(get_db)):
    
    recommended_places = get_recommended_places(user_id=user_id , db=db)
    places = []
    for id in recommended_places:
        place =  crud.getPlaceByID(db=db , id = id)
        places.append(place)
    return places
    

