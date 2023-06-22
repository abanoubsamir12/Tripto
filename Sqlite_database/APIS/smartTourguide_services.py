from fastapi import APIRouter, Depends, HTTPException,FastAPI,status
from fastapi.responses import StreamingResponse
from datetime import  timedelta , datetime , date
from sqlalchemy.orm import Session
#from http_exceptions import HTTPException
from Sqlite_database import models , schemas , crud, database
from Sqlite_database.database import SessionLocal, engine
from math import radians, sin, cos, sqrt, atan2
import sys
from gtts import gTTS
from itertools import islice
from typing import Tuple


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
    nearest_places = []
    if(n > len(places) | n<= 0):
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="invalid number value"
        )
    for key, value in islice(sorted_map.items(), n):
        place = crud.getPlaceByID(db=db , id=key)
        nearest_places.append(place)
        
    return nearest_places

