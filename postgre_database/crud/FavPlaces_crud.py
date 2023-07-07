from itertools import chain
from sqlalchemy import Text, desc, func
from sqlalchemy.orm import Session
import models , schemas 
from passlib.context import CryptContext
import json
from typing import List

def addFavPlace(placeToUser: schemas.PlaceToUser, db:Session):
    check_duplicate = db.query(models.PlacesToUsers).filter_by(placeid=placeToUser.placeid, userid = placeToUser.userid).first()
    if check_duplicate:
        return None
    db_placeToUser = models.PlacesToUsers(
        placeid = placeToUser.placeid,
        userid = placeToUser.userid        
    )
    db.add(db_placeToUser)
    db.commit()
    db.refresh(db_placeToUser)
    return db_placeToUser

def getFavPlacesID(userid: int, db: Session) -> List[int]:
    places_to_user = db.query(models.PlacesToUsers).filter(models.PlacesToUsers.userid == userid).all()
    places = [place.placeid for place in places_to_user]
    return places

def getFavPlaces(userid: int, db: Session):
    places_to_user = db.query(models.PlacesToUsers).filter(models.PlacesToUsers.userid == userid).all()
    places = [place.placeid for place in places_to_user]
    db_places = []
    for id in places:
        place =  getPlaceByID(db=db , id=id)
        db_places.append(place)
        
    return db_places

def deleteFavPlace(db: Session, placeid: int, userid:int):
    data = db.query(models.PlacesToUsers).filter_by(placeid=placeid , userid=userid).first()
    if not data:
        return None

    db.delete(data)
    db.commit()
    return data
def deleteActivity(db: Session, activity_id:int):
    data = db.query(models.Activity).filter(models.Activity.id == activity_id).first()
    if not data:
        return None

    db.delete(data)
    db.commit()
    return data