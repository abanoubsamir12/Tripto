from itertools import chain
from sqlalchemy import Text, desc, func
from sqlalchemy.orm import Session
import models , schemas 
from passlib.context import CryptContext
import json
from typing import List

pwd_context = CryptContext(schemes = ["bcrypt"] , deprecated ="auto")

def getUserByID(db: Session , user_id:int):
    return  db.query(models.User).filter(user_id == models.User.id).first()
def getUserByEmail(db: Session , user_email:str):
    return  db.query(models.User).filter(user_email == models.User.email).first()

def getUserByUsername(db: Session , username:str):
    return  db.query(models.User).filter(username == models.User.username).first()



def get_hash_passowrd(password):
    return  pwd_context.hash(password)


def changeUserRole(db:Session , user_id:int):
    user = db.query(models.User).filter(user_id == models.User.id).first()
    if not user:
        return False
    
    user.role_id = 2
    db.add(user)
    db.commit()
    db.refresh(user)

def CreateUser(db: Session , user: schemas.UserCreate):
    hashed_password = get_hash_passowrd(user.password)
    db_user = models.User(
        email = user.email,
        age = user.age,
        hashed_password = hashed_password,
        country = user.country,
        username = user.username,
        role_id= user.role_id,
        nationality = user.nationality
    )
    db.add(db_user)
    db.commit()
    db.refresh(db_user)
    new_user = getUserByUsername(username=db_user.username, db=db)

    return  db_user

def get_seachHistory(userid:int, placeid:int, db:Session):
    return db.query(models.SearchHistory).filter(userid == models.SearchHistory.user_id, placeid == models.SearchHistory.place_id).first()


def deleteSearchHistory(db:Session, userSearchHistory:models.SearchHistory):
    db_searchHistory = db.query(models.SearchHistory).filter(
        userSearchHistory.user_id == models.SearchHistory.user_id,
        userSearchHistory.place_id == models.SearchHistory.place_id).first()
    db.delete(db_searchHistory)
    db.commit()
    return

def addUserActivity(db:Session , userActivity: schemas.SearchHistoryCreate):
    db_activity = models.SearchHistory(
        place_id = userActivity.place_id,
        user_id = userActivity.user_id
    )
    existing_SearchHisotory =  get_seachHistory(db_activity.user_id, db_activity.place_id,db)
    if(existing_SearchHisotory):
        deleteSearchHistory(db, db_activity)
    db.add(db_activity)
    db.commit()
    db.refresh(db_activity)

    return  db_activity


def getUserActivity(db:Session,userid:int):
    user = db.query(models.User).filter(models.User.id == userid).first()
    if not user:
        return {"message": "User not found."}
    user_places_viewed = db.query(models.SearchHistory).filter(userid == models.SearchHistory.user_id).all()
    if not user_places_viewed:
        return []
    places_viewed=[]
    for x in user_places_viewed:
        places_viewed.append(x.place_id)

    return places_viewed

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

def updateUser(db: Session, user: models.User, user_update: schemas.UserUpdate):
    # Update the user attributes with the provided data
    
    if user_update.password:
        user.hashed_password = get_hash_passowrd(user_update.password)
    if user_update.email:
        user.email = user_update.email
    if user_update.age:
        user.age = user_update.age
    if user_update.country:
        user.country = user_update.country
    if user_update.username:
        user.username = user_update.username
    if user_update.role_id:
        user.role_id = user_update.role_id

    # Save the changes to the database
    db.add(user)
    db.commit()
    db.refresh(user)

    return user

def get_users_ids(db:Session):
    users_ids = db.query(models.User).all()
    ids = []
    for user in users_ids:
        ids.append(user.id)
    return ids
