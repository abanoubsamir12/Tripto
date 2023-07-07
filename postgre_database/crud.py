from itertools import chain
from rsa import DecryptionError
from sqlalchemy import Text, desc, func
from sqlalchemy.orm import Session
from . import models , schemas 
from passlib.context import CryptContext
import json
from typing import List

pwd_context = CryptContext(schemes = ["bcrypt"] , deprecated ="auto")

def getUserByID(db: Session , user_id:int):
    return  db.query(models.User).filter(user_id == models.User.id).first()

def changeUserRole(db:Session , user_id:int):
    user = db.query(models.User).filter(user_id == models.User.id).first()
    if not user:
        return False
    
    user.role_id = 2
    db.add(user)
    db.commit()
    db.refresh(user)
    
        
    
def getUserByEmail(db: Session , user_email:str):
    return  db.query(models.User).filter(user_email == models.User.email).first()

def getUserByUsername(db: Session , username:str):
    return  db.query(models.User).filter(username == models.User.username).first()


def get_hash_passowrd(password):
    return  pwd_context.hash(password)


# add user to ratings.csv


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
    return  db_user


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


def getMonument(db: Session , place_id: int):
    monuments = db.query(models.Monument).filter(place_id == models.Monument.place_id).all()
    return monuments

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



#get all users who viewed that place
def getUsersForViewedPlace(db:Session, placeid:int):
    place =  db.query(models.Place).filter(models.Place.id == placeid).first()
    usersViewedThePlace = db.query(models.SearchHistory).filter(placeid == models.SearchHistory.place_id).all()
    users=[]
    for x in usersViewedThePlace:
        users.append(x.user_id)
    return users    





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

def getEnterpreneurActivities(enterpreneurid:int, db:Session):
    activities = db.query(models.Activity).filter(models.Activity.enterpreneur_id == enterpreneurid).all()
    return activities


def getActivitesForPlace(placeid:int, db:Session):
    activities = db.query(models.Activity).filter(placeid == models.Activity.place_id , models.Activity.is_active).all()
    return activities

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


def getTopRatedPlaces(db:Session):
    places = db.query(models.Place).order_by(desc(models.Place.rating)).limit(10).all()
    return places


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
    

def get_users_ids(db:Session):
    users_ids = db.query(models.User).all()
    ids = []
    for user in users_ids:
        ids.append(user.id)
    return ids

def get_places_ids(db:Session):
        places_ids = db.query(models.Place).all()
        ids = []
        for place in places_ids:
            ids.append(place.id)
        return ids 

# def add_placetypeOfUser(userid:int,interest:schemas.userToPlaceTypeCreate, db:Session):
    
#     db_placetypeToUser = models.userToPlaceType(
#         placetypeid = interest.placetypeid,
#         userid = userid   
#     )
#     db.add(db_placetypeToUser)
#     db.commit()
#     db.refresh(db_placetypeToUser)

#     return db_placetypeToUser

    
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
    
def get_nationality_interests (name: str , db:Session):
    nationality_id = db.query(models.Nationality).filter(name == models.Nationality.nationality).first()
    if not nationality_id:
        return []
    nationality_id = nationality_id.id
    print("nationality id:",nationality_id)
    interests = db.query(models.nationalityToPlacetype).filter(nationality_id == models.nationalityToPlacetype.nationality_id).all()
    
    nat_interests=[]
    for i in interests:
        nat_interests.append(i.PlaceType_id)
        
    return nat_interests
    
def get_user_interests (user_id:int , db: Session):
    interests = db.query(models.userToPlaceType).filter(models.userToPlaceType.userid == user_id).all()
    if not interests:
        return []
    user_interests =[]
    for i in interests:
        user_interests.append(i.placetypeid)
    return user_interests



def addNewInterests(userid:int, interests:list, db:Session):
    try:
        for x in interests:
            placetype = db.query(models.PlaceType).filter(models.PlaceType.name == x).first()
            db_placetypeToUser = models.userToPlaceType(
            placetypeid=placetype.id,
            userid=userid   
            )
            db.add(db_placetypeToUser)
        db.commit()
    finally:
        db.close()
    return {"message" : "rows added successfully"}

def getAllActivities(db:Session):
    activities = db.query(models.Activity).all()
    return activities