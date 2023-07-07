from itertools import chain
from sqlalchemy import Text, desc, func
from sqlalchemy.orm import Session
import models , schemas 
from passlib.context import CryptContext
import json
from typing import List


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


def get_seachHistory(userid:int, placeid:int, db:Session):
    return db.query(models.SearchHistory).filter(userid == models.SearchHistory.user_id, placeid == models.SearchHistory.place_id).first()


def deleteSearchHistory(db:Session, userSearchHistory:models.SearchHistory):
    db_searchHistory = db.query(models.SearchHistory).filter(
        userSearchHistory.user_id == models.SearchHistory.user_id,
        userSearchHistory.place_id == models.SearchHistory.place_id).first()
    db.delete(db_searchHistory)
    db.commit()
    return



#get all users who viewed that place
def getUsersForViewedPlace(db:Session, placeid:int):
    place =  db.query(models.Place).filter(models.Place.id == placeid).first()
    usersViewedThePlace = db.query(models.SearchHistory).filter(placeid == models.SearchHistory.place_id).all()
    users=[]
    for x in usersViewedThePlace:
        users.append(x.user_id)
    return users    

def show_pending_activities(db:Session):
    pending_activities = db.query(models.Activity).filter(models.Activity.is_active == False).all()
    return pending_activities


def activity_response(activityid:int, response:bool, db:Session):
    activity_db = db.query(models.Activity).filter(activityid == models.Activity.id).first()
    if response:
        activity_db.is_active = True
        db.add(activity_db)
        db.commit()
        db.refresh(activity_db)
        return {"Message": "Request is approved by admin"}
    if not response :
        db.delete(activity_db)
        db.commit()
        return {"Message": "Request is denied by admin"}
