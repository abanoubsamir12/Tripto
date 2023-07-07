from itertools import chain
from sqlalchemy import Text, desc, func
from sqlalchemy.orm import Session
import models , schemas 
from passlib.context import CryptContext
import json
from typing import List

def getPlaces(db: Session):
    return db.query(models.Place).all()

def getPlaceByName(db:Session, placeName:str):
    return db.query(models.Place).filter(placeName == models.Place.placeName).first()
def getPlaceByID(db: Session, id:int):
    return db.query(models.Place).filter(id == models.Place.id).first()

def getTypesByName(db: Session , name: str):
    return  db.query(models.PlaceType).filter( name == models.PlaceType.name ).first()


def getPlacesByType(db: Session , TypeName: str):
    type = getTypesByName(db=db , name= TypeName)
    type_id = type.id
    placesToTypes = db.query(models.PlaceToType).filter(type_id == models.PlaceToType.placeType_id).all()
    list= set()
    for x in placesToTypes:
        list.add(db.query(models.Place).filter(x.place_id == models.Place.id ).first())
    return list

def getPlacesNames(db:Session):
    result = db.query(models.Place).all()
    names = []
    for place in result:
        names.append(place.placeName)
    return names

def createPlace(db:Session, place:schemas.PlaceCreate):
    db_place = models.Place(
            placeName = place.placeName,
            description = place.description,
            address = place.address,
            image = place.image, 
            rating = place.rating,
            location = place.location,
            longitude = place.longitude,
            latitude = place.latitude
            
        )
    db.add(db_place)
    db.commit()
    db.refresh(db_place)
        
    return place


def getPlacesDes(db: Session):
    descriptions = []
    places = db.query(models.Place).order_by(models.Place.id).all()
    for place in places:
        descriptions.append(place.description)
    return descriptions


def getTopRatedPlaces(db:Session):
    places = db.query(models.Place).order_by(desc(models.Place.rating)).limit(10).all()
    return places


def get_places_ids(db:Session):
        places_ids = db.query(models.Place).all()
        ids = []
        for place in places_ids:
            ids.append(place.id)
        return ids 

