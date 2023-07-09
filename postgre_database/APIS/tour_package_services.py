from fastapi import APIRouter, Depends, HTTPException,FastAPI,status
from fastapi.responses import StreamingResponse
from datetime import  timedelta , datetime , date
from sqlalchemy.orm import Session
#from http_exceptions import HTTPException
from postgre_database import models , schemas , crud, database
from postgre_database.database import SessionLocal, engine
from math import radians, sin, cos, sqrt, atan2
import sys
from gtts import gTTS
from itertools import islice
from typing import Tuple
from . import recommendationEngine_services
from .smartTourguide_services import calculate_distance, get_nearby_places
import random


app = APIRouter()



def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
        

def generate_tourPackage(recommended_places_ids, nearby_places_ids, db: Session = Depends(get_db)):
    package =  list(set(recommended_places_ids).intersection(nearby_places_ids))
    recommended_places = list(set(recommended_places_ids) - set(package))
    nearby_places = list(set(nearby_places_ids) - set(package))
    if package:
        if len(package) == 1:  # Fix the syntax error by adding the closing parenthesis
            place1 = random.choice(nearby_places)
            place1 = crud.getPlaceByID(db=db , id = place1)
            nearby_places.remove(place1.id)
            package.append(place1.id)
            random_number = random.randint(1, 2)
            for i in range(random_number):  # Use range() to iterate the required number of times
                print("xx")
                place2 = random.choice(recommended_places)
                place2 = crud.getPlaceByID(db=db , id=place2)
                distance = calculate_distance(place1.latitude, place1.longitude, place2.latitude, place2.longitude)
                flag = False
                if distance > 70:
                    threshold = 60
                    while distance > 70:
                        threshold -= 1
                        if threshold == 0:
                            flag = True
                            break
                        place2 = random.choice(recommended_places)
                        place2 = crud.getPlaceByID(db=db , id=place2)
                        distance = calculate_distance(place1.latitude, place1.longitude, place2.latitude, place2.longitude)
                        if distance < 70:
                            package.append(place2.id)
                            recommended_places.remove(place2)
                            break
                else:
                    package.append(place2.id)
                    recommended_places.remove(place2.id)
                if flag:
                    place2 = random.choice(nearby_places)
                    place2 = crud.getPlaceByID(db=db , id=place2)
                    package.append(place2.id)
                    nearby_places.remove(place2.id)
        else:
            return package
    else:
        place1 = random.choice(nearby_places)
        place1 = crud.getPlaceByID(db=db , id=place1)
                
        nearby_places.remove(place1.id)
        package.append(place1.id)
        random_number = random.randint(1, 3)
        for i in range(random_number):  # Use range() to iterate the required number of times
            place2 = random.choice(recommended_places)
            
            place2 = crud.getPlaceByID(db=db , id=place2)
            distance = calculate_distance(place1.latitude, place1.longitude, place2.latitude, place2.longitude)
            if distance > 70:
                threshold = 60
                flag = False
                while distance > 70:
                    threshold = threshold - 1
                    if threshold == 0:
                        flag = True
                        break
                    place2 = random.choice(recommended_places)
                    
                    place2 = crud.getPlaceByID(db=db , id=place2) 
                    distance = calculate_distance(place1.latitude, place1.longitude, place2.latitude, place2.longitude)
                    if distance < 70:
                        package.append(place2.id)
                        recommended_places.remove(place2.id)
                        break
            else:
                package.append(place2.id)
    return package
                    
def get_tour_package(user_id: int, longitude:float , latitude:float, db: Session):
    nationality = db.query(models.User).filter(user_id == models.User.id).first().nationality
    recommended_places = recommendationEngine_services.get_recommended(user_id,nationality, db=db)
    recommended_places = list(recommended_places)
    nearby_places_ids =list( get_nearby_places(latitude=latitude , longitude= longitude , n  = 10 , db=db))
    recommended_places_ids =[]
    for place in recommended_places:
        recommended_places_ids.append(place.id)
    
    return  generate_tourPackage(recommended_places_ids=recommended_places_ids,nearby_places_ids=nearby_places_ids,db=db)                   

@app.get('/getTourPackage')
def generate_tour (user_id: int, longitude:float , latitude:float, db: Session= Depends(get_db)):
        list = get_tour_package(user_id,longitude,latitude,db)
        places = []
        for id in list:
            place = crud.getPlaceByID(db=db , id=id)
            places.append(place)
        return places
