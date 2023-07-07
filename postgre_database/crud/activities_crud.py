from itertools import chain
from sqlalchemy import Text, desc, func
from sqlalchemy.orm import Session
import models , schemas 
from passlib.context import CryptContext
import json
from typing import List

def CreateActivity(db: Session , activity: schemas.Activity):
    json_object = json.dumps(activity.image)
    db_activity = models.Activity(
        name = activity.name
        ,description = activity.description
        ,image = json_object
        ,place_id = activity.place_id
        ,location = activity.location
        ,Time = activity.Time
        ,price = activity.price
        ,Phone = activity.Phone
        ,socialmedia = activity.socialmedia
        ,enterpreneur_id = activity.enterpreneur_id
    )
    db.add(db_activity)
    db.commit()
    db.refresh(db_activity)
    return  db_activity.id

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


def getEnterpreneurActivities(enterpreneurid:int, db:Session):
    activities = db.query(models.Activity).filter(models.Activity.enterpreneur_id == enterpreneurid).all()
    return activities


def getActivitesForPlace(placeid:int, db:Session):
    activities = db.query(models.Activity).filter(placeid == models.Activity.place_id , models.Activity.is_active).all()
    return activities

def getAllActivities(db:Session):
    activities = db.query(models.Activity).all()
    return activities