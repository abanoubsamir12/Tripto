from sqlalchemy import Text, func
from sqlalchemy.orm import Session
from . import models , schemas 
from passlib.context import CryptContext
import json
from gtts import gTTS

image_list = ["string1", "string2", "string3"]
json_object = json.dumps(image_list)
pwd_context = CryptContext(schemes = ["bcrypt"] , deprecated ="auto")

def getUserByID(db: Session , user_id:int):
    return  db.query(models.User).filter(user_id == models.User.id).first()
def getUserByEmail(db: Session , user_email:str):
    return  db.query(models.User).filter(user_email == models.User.email).first()

def getUserByUsername(db: Session , username:str):
    return  db.query(models.User).filter(username == models.User.username).first()


def get_hash_passowrd(password):
    return  pwd_context.hash(password)
def CreateUser(db: Session , user: schemas.UserCreate):
    hashed_password = get_hash_passowrd(user.password)
    db_user = models.User(
        email = user.email,
        age = user.age,
        hashed_password = hashed_password,
        country = user.country,
        username = user.username,
        role_id= user.role_id
    )
    db.add(db_user)
    db.commit()
    db.refresh(db_user)
    return  db_user


def getPlaces(db: Session):
    return db.query(models.Place).all()

def getPlaceByID(db: Session, id:int):
    return db.query(models.Place).filter(id == models.Place.id).first()

def getTypesByName(db: Session , name: str):
    return  db.query(models.PlaceType).filter( name == models.PlaceType.name ).first()

def getPlacesByType(db: Session , TypeName: str):
    type = getTypesByName(db=db , name= TypeName)
    print(type)
    type_id = type.id
    placesToTypes = db.query(models.PlaceToType).filter(type_id == models.PlaceToType.placeType_id).all()
    list= set()
    for x in placesToTypes:
        list.add(db.query(models.Place).filter(x.place_id == models.Place.id ).first())
    return list


def assignActivityToEnterpreneur(db: Session ,enter_id:int , activity_id : int):
    print(enter_id , " " , activity_id)
    db_assign = models.enterpreneurToActivity(
        activity_id = activity_id,
        enterprenuer_id = enter_id
    )
    db.add(db_assign)
    db.commit()
    db.refresh(db_assign)
    return  db_assign

def CreateActivity(db: Session , activity: schemas.Activity):
    json_object = json.dumps(activity.image)
    db_activity = models.Activity(
        name = activity.name
        ,description = activity.description
        ,image = json_object
        ,place_id = activity.place_id
        ,location = activity.location
    )
    db.add(db_activity)
    db.commit()
    db.refresh(db_activity)
    return  db_activity.id


def getPlaceDes(db: Session , placeName: str):
    place = db.query(models.Place).filter(placeName == models.Place.placeName ).first()
    return place.description 

