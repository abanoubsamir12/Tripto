from itertools import chain
from fastapi import HTTPException,status
import pandas as pd
from sqlalchemy import Text, desc, func
from sqlalchemy.orm import Session
from . import models , schemas 
from passlib.context import CryptContext
import json
from gtts import gTTS
import csv
from sqlalchemy.exc import IntegrityError
from typing import List
ratings_csv_path = r'Datasets\Ratings.csv'
user_places_csv_path = r'Datasets\user_places_viewed.csv'

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


# add user to ratings.csv
def addUserToRatingsCSV(user_id: int):
    # Read the existing contents of the file
    with open(ratings_csv_path, 'r') as csvfile:
        reader = csv.reader(csvfile)
        rows = list(reader)

    # Create a new row for the user with user_id as the first element and all other values as 0
    new_row = [user_id] + [0] * (len(rows[0]) - 1)  # Subtract 1 to exclude the user_id column

    # Insert the new row at the beginning of the rows list
    rows.append(new_row)

    # Write the modified contents back to the file
    with open(ratings_csv_path, 'w', newline='') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerows(rows)

    return




# add user to user_places_viewed.csv

def addUserToUserPlacesViewed(user_id:int):
    # Read the existing contents of the file
    with open(user_places_csv_path, 'r') as csvfile:
        reader = csv.reader(csvfile)
        rows = list(reader)

    # Create a new row for the user with user_id as the first element and all other values as 0
    new_row = [user_id] + [0] * (len(rows[0]) - 1)  # Subtract 1 to exclude the user_id column

    # Insert the new row at the beginning of the rows list
    rows.append(new_row)

    # Write the modified contents back to the file
    with open(user_places_csv_path, 'w', newline='') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerows(rows)

    return


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
    new_user = getUserByUsername(username=db_user.username, db=db)
    addUserToRatingsCSV(new_user.id)
    addUserToUserPlacesViewed(new_user.id)
    
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
    print(type)
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
    )
    db.add(db_activity)
    db.commit()
    db.refresh(db_activity)
    return  db_activity.id



def addPlaceToRatingsFile(place_id:int):
   # Read the existing contents of the file
    with open(ratings_csv_path, 'r') as csvfile:
        reader = csv.reader(csvfile)
        rows = list(reader)

    # Insert the place_id at the top-right corner of the header row
    header = rows[0]
    header.append(place_id)

    for row in rows[1:]:
        row.append(0)
    # Write the modified contents back to the file
    with open(ratings_csv_path, 'w', newline='') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerows(rows)
    return 


def addPlaceToUserPlacesViewedFile(place_id:int):

   # Read the existing contents of the file
    with open(user_places_csv_path, 'r') as csvfile:
        reader = csv.reader(csvfile)
        rows = list(reader)
  
    # Insert the place_id at the top-right corner of the header row
    header = rows[0]
    header.append(place_id)

    for row in rows[1:]:
        row.append(0)
    # Write the modified contents back to the file
    with open(user_places_csv_path, 'w', newline='') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerows(rows)
    return 

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
    
    new_place = getPlaceByName(placeName=db_place.placeName, db=db)
    
    # Add the following code to write the data to the places file
    csv_row = [
        new_place.id,
        new_place.placeName,
        new_place.description,
        new_place.address,
        new_place.image,
        new_place.rating,
        new_place.location,
        new_place.longitude,
        new_place.latitude
    ]
    
    with open('E:\college\graduation_project\Tripto-1\Datasets\places.csv', 'a', newline='') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(csv_row)

    addPlaceToUserPlacesViewedFile(new_place.id)
    addPlaceToRatingsFile(new_place.id)
    
    return {
        "id": db_place.id,
        "placeName": db_place.placeName,
        "description": db_place.description,
        "address": db_place.address,
        "image": db_place.image,
        "rating": db_place.rating,
        "location": db_place.location,
        "longitude": db_place.longitude,
        "latitude": db_place.latitude
    }

def getPlacesDes(db: Session):
    descriptions = []
    places = db.query(models.Place).order_by(models.Place.id).all()
    for place in places:
        descriptions.append(place.description)
    return descriptions


def get_seachHistory(userid:int, placeid:int, db:Session):
    return db.query(models.SearchHistory).filter(userid == models.SearchHistory.user_id, placeid == models.SearchHistory.place_id).first()


def addSearchHistoryToUserplacesCSV(userid: int, placeid: int):
    # Read the CSV file and store its contents in a list
    with open(user_places_csv_path, 'r') as file:
        reader = csv.reader(file)
        rows = list(reader)

    # Find the index of the row with the matching userid
    for index, row in enumerate(rows):
        if row[0] == str(userid):
            break
    else:
        # If the userid is not found, append a new row with userid and zeros
        rows.append([str(userid)] + ['0'] * (len(rows[0]) - 1))
        index = len(rows) - 1

    # Find the index of the column header with the matching placeid
    header_index = None
    for i, cell in enumerate(rows[0]):
        if cell == str(placeid):
            header_index = i
            break
    else:
        # If the placeid is not found, append a new column header with placeid
        for row in rows:
            row.append('0')
        rows[0][-1] = str(placeid)
        header_index = len(rows[0]) - 1

    # Set the cell at the specified row and column to be 1
    rows[index][header_index] = '1'

    # Write the modified contents back to the CSV file
    with open(user_places_csv_path, 'w', newline='') as file:
        writer = csv.writer(file)
        writer.writerows(rows)

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

    addSearchHistoryToUserplacesCSV(userid=db_activity.user_id, placeid=db_activity.place_id)
    return  db_activity


def getUserActivity(db:Session,userid:int):
    user = db.query(models.User).filter(models.User.id == userid).first()
    if not user:
        return {"message": "User not found."}
    user_places_viewed = db.query(models.SearchHistory).filter(userid == models.SearchHistory.user_id).all()
    if not user_places_viewed:
        return {"message": "No search history found for the user."}
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

# get all users who viewed at least one of my viwed places
# if user_1 viewed {x} and user_2 viewed {c,d,x,z} , and user_3 = {b,c,w,e}
# return all places of user_2 {c,d,x,z} and dont return places viewed of user 3
def getUsersSimilarToUserViwedPlaces(userid:int, db:Session):
    user_places_viewed =getUserActivity(db=db, userid=userid)
    # get ids for users who have the similar user viewed places 
    matchedUsers = []
    for i in user_places_viewed:
        usersForPlace = getUsersForViewedPlace(db=db, placeid=i)
        matchedUsers.append(usersForPlace)
    matchedUsers = list(chain.from_iterable(matchedUsers))  # Flatten the list of lists
    matchedUsers = set(user for user in matchedUsers if user != userid)  # Remove the userid from the list 
    return matchedUsers    


def getViewedPlacesForMatchedUsers(userid:int, db:Session):
    matchedUsers = getUsersSimilarToUserViwedPlaces(userid=userid,db=db)
    AllviwedPlacesForMatchedUsers = []
    for i in matchedUsers:
        usersViewedPlaces =getUserActivity(db=db, userid=i)
        AllviwedPlacesForMatchedUsers.append(usersViewedPlaces)
    AllviwedPlacesForMatchedUsers = list(chain.from_iterable(AllviwedPlacesForMatchedUsers))  # Flatten the list of lists  
    usersViewedPlaces =getUserActivity(db=db, userid=userid)
    AllviwedPlacesForMatchedUsers = set(place for place in AllviwedPlacesForMatchedUsers if place not in usersViewedPlaces) # remove current user places from AllviwedPlacesForMatchedUsers
    print(AllviwedPlacesForMatchedUsers)
    return AllviwedPlacesForMatchedUsers


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

   
def addRatingToRatingCSV(userid: int, placeid: int, rate: float):
    # Read the CSV file and store its contents in a list
    with open(ratings_csv_path, 'r') as file:
        reader = csv.reader(file)
        rows = list(reader)

    # Find the index of the row with the matching userid
    for index, row in enumerate(rows):
        if row[0] == str(userid):
            break
    else:
        # If the userid is not found, append a new row with userid and zeros
        rows.append([str(userid)] + ['0'] * (len(rows[0]) - 1))
        index = len(rows) - 1

    # Find the index of the column header with the matching placeid
    header_index = None
    for i, cell in enumerate(rows[0]):
        if cell == str(placeid):
            header_index = i
            break
    else:
        # If the placeid is not found, append a new column header with placeid
        for row in rows:
            row.append('0')
        rows[0][-1] = str(placeid)
        header_index = len(rows[0]) - 1

    # Set the cell at the specified row and column to be 1
    rows[index][header_index] = str(rate)

    # Write the modified contents back to the CSV file
    with open(ratings_csv_path, 'w', newline='') as file:
        writer = csv.writer(file)
        writer.writerows(rows)


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
    
    addRatingToRatingCSV(db_userRate.user_id, db_userRate.place_id,db_userRate.rate)
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
    enterpreneur = db.query(models.User).filter(models.User.id == enterpreneurid).first()
    if not enterpreneur:
        return {"message": "User not found."}
    enterpreneurActivities = db.query(models.enterpreneurToActivity).filter(enterpreneurid == models.enterpreneurToActivity.enterprenuer_id).all()
    if not enterpreneurActivities:
        return {"message": "You do not have any activites"}
    activities=[]
    for x in enterpreneurActivities:
        activities.append(x.activity_id)
    return activities


def getActivitesForPlace(placeid:int, db:Session):
    activities = db.query(models.Activity).filter(placeid == models.Activity.place_id).all()
    return activities

<<<<<<< HEAD
def updateUser(db: Session, user: models.User, user_update: schemas.UserUpdate):
    # Update the user attributes with the provided data
    if user_update.password:
        user.hashed_password = user_update.password
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
=======




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

def getFavPlaces(userid: int, db: Session) -> List[int]:
    places_to_user = db.query(models.PlacesToUsers).filter(models.PlacesToUsers.userid == userid).all()
    places = [place.placeid for place in places_to_user]
    return places
    
def deleteFavPlace(db: Session, placeid: int, userid:int):
    data = db.query(models.PlacesToUsers).filter_by(placeid=placeid , userid=userid).first()
    if not data:
        return None

    db.delete(data)
    db.commit()
    return data
>>>>>>> 097036cb2bfd8a58ee205acb223f1f34bb13d1b2
