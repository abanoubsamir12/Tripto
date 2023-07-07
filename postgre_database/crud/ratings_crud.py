from itertools import chain
from sqlalchemy import Text, desc, func
from sqlalchemy.orm import Session
import models , schemas 
from passlib.context import CryptContext
import json
from typing import List

def getUserRating(db:Session, userid:int, placeid:int):
    user_rating = db.query(models.Rating).filter(userid == models.Rating.user_id,placeid==models.Rating.place_id).first()
    return user_rating

def getUserRatings(db:Session,userid:int):
    user = db.query(models.User).filter(models.User.id == userid).first()
    if not user:
        return {"message": "User not found."}
    user_ratings = db.query(models.Rating).filter(userid == models.Rating.user_id).all()
    if not user_ratings:
        return {"message": "You do not have any ratings"}
    ratings=[]
    for x in user_ratings:
        ratings.append(x.rate)
    return ratings

   

def addUserRating(db:Session, user_rate:schemas.RatingCreate):
    db_userRate = models.Rating(
    place_id = user_rate.place_id,
    user_id = user_rate.user_id,
    rate = user_rate.rate
    )
    existing_rate = getUserRating(db, db_userRate.user_id, db_userRate.place_id)
    if existing_rate:
        deleteRating(db, db_userRate)
    db.add(db_userRate)
    db.commit()
    db.refresh(db_userRate)
    
    return db_userRate

def deleteRating(db:Session, user_rate:models.Rating):
    db_userRate = db.query(models.Rating).filter(
        user_rate.user_id == models.Rating.user_id,
        user_rate.place_id == models.Rating.place_id,
        user_rate.rate == models.Rating.rate).first()
    db.delete(db_userRate)
    db.commit()
    return
