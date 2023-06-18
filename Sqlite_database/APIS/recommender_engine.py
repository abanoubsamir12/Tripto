from fastapi import APIRouter, Depends
from .. import crud 
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


app = APIRouter()

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
        



@app.get('/tf_idf')
def tfIDF (db:Session=Depends(get_db)):
    places_description=crud.getPlacesDes(db=db)
    tfidf_vectorizer = TfidfVectorizer()
    # fit and transform the documents to get the TF-IDF scores in a matrix
    tfidf_scores = tfidf_vectorizer.fit_transform(places_description)
    return tfidf_scores

