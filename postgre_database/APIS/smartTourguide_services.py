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
import random

app = APIRouter()



max_double = sys.float_info.max

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
        


def calculate_distance(lat1, lon1, lat2, lon2):
    # Earth's radius in kilometers
    radius = 6371.0
    # Convert latitude and longitude to radians
    lat1_rad = radians(lat1)
    lon1_rad = radians(lon1)
    lat2_rad = radians(lat2)
    lon2_rad = radians(lon2)
    # Difference between the latitudes and longitudes
    dlat = lat2_rad - lat1_rad
    dlon = lon2_rad - lon1_rad
    # Haversine formula
    a = sin(dlat / 2) ** 2 + cos(lat1_rad) * cos(lat2_rad) * sin(dlon / 2) ** 2
    c = 2 * atan2(sqrt(a), sqrt(1 - a))
    # Calculate the distance
    distance = radius * c
    return distance

def text_to_speech(text: str):
    # Create a gTTS object
    tts = gTTS(text=text, lang="en")

    # Save the audio file
    audio_file = "speech.mp3"
    tts.save(audio_file)

    # Return the audio file as a streaming response
    return StreamingResponse(open(audio_file, "rb"), media_type="audio/mpeg")

#handle
@app.get('/nearestPlace')
def get_nearest_places(latitude: float, longitude: float, db: Session = Depends(get_db)):
    places = crud.getPlaces(db=db)
    min = max_double
    nearest_place = places[0]
    for value in places:
        lng = value.longitude
        lat = value.latitude
        distance = calculate_distance(lat1=latitude,lon1=longitude,lat2=lat,lon2=lng)
        if(min > distance):
            min = distance
            nearest_place = value
    if nearest_place:
        monuments = crud.getMonument(db=db , place_id=nearest_place.id)
        if(monuments):
            min = max_double
            nearest_monument = monuments[0]
            for value in monuments:
                lng = value.longitude
                lat = value.latitude
                distance = calculate_distance(lat1=latitude,lon1=longitude,lat2=lat,lon2=lng)
                if(min > distance):
                    min = distance
                    nearest_monument = value
            return text_to_speech(nearest_monument.description)        
                
        return text_to_speech(nearest_place.description)
    else:
        return {"message": "No nearest place found."}


@app.get('/nearbyPlaces')
def get_nearby_places(latitude: float, longitude: float, n:int ,db: Session = Depends(get_db)):
    places = crud.getPlaces(db=db)
    map = {0 : max_double}
    for value in places:
        map[value.id] = calculate_distance(lat1=latitude,lon1=longitude,lat2=value.latitude,lon2=value.longitude)
    sorted_map = dict(sorted(map.items(), key=lambda item: item[1]))
    nearest_places = list()
    if(n > len(places) | n<= 0):
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="invalid number value"
        )
    for key, value in islice(sorted_map.items(), n):
        place = crud.getPlaceByID(db=db , id=key)
        nearest_places.append(place.id)
        
    return nearest_places

async def generate_tourPackage(recommended_places_ids, nearby_places_ids, db: Session = Depends(get_db)):
    package =  list(set(recommended_places_ids).intersection(nearby_places_ids))
    recommended_places_ids = list(set(recommended_places_ids) - set(package))
    nearby_places_ids = list(set(nearby_places_ids) - set(package))
    recommended_places = []
    nearby_places = []
    for id in recommended_places_ids:
        place = crud.getPlaceByID(db=db, id=id)
        recommended_places.append(place)  # Await the coroutine function
    for id in nearby_places_ids:
        place = crud.getPlaceByID(db=db, id=id)
        nearby_places.append(place)  # Await the coroutine function
    if package:
        if len(package) == 1:  # Fix the syntax error by adding the closing parenthesis
            place1 = random.choice(nearby_places)
            nearby_places.remove(place1)
            package.append(place1.id)
            random_number = random.randint(1, 2)
            for i in range(random_number):  # Use range() to iterate the required number of times
                print("xx")
                place2 = random.choice(recommended_places)
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
                        distance = calculate_distance(place1.latitude, place1.longitude, place2.latitude, place2.longitude)
                        if distance < 70:
                            package.append(place2.id)
                            recommended_places.remove(place2)
                            break
                else:
                    package.append(place2.id)
                    recommended_places.remove(place2)
                if flag:
                    place2 = random.choice(nearby_places)
                    package.append(place2.id)
                    nearby_places.remove(place2)
        else:
            return package
    else:
        place1 = random.choice(nearby_places)
        nearby_places.remove(place1)
        package.append(place1.id)
        random_number = random.randint(1, 3)
        for i in range(random_number):  # Use range() to iterate the required number of times
            place2 = random.choice(recommended_places)
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
                    distance = calculate_distance(place1.latitude, place1.longitude, place2.latitude, place2.longitude)
                    if distance < 70:
                        package.append(place2.id)
                        recommended_places.remove(place2)
                        break
            else:
                package.append(place2.id)
    return package
                    
@app.get('/getTourPackage')
async def get_tour_package(user_id: int, longitude:float , latitude:float, db: Session= Depends(get_db)):
        
    recommended_places = await recommendationEngine_services.get_recommended_places(user_id, db=db)
    recommended_places = list(recommended_places)
    nearby_places =list( get_nearby_places(latitude=latitude , longitude= longitude , n  = 10 , db=db))
    
    print(recommended_places)
    print(nearby_places)
    return await generate_tourPackage(recommended_places_ids=recommended_places,nearby_places_ids=nearby_places,db=db)                   
    