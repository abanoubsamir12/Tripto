from fastapi import APIRouter, Depends
from .. import crud 
from postgre_database.database import SessionLocal
from sqlalchemy.orm import Session
from ..models import Place, Activity
from flask import request, jsonify
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy import func
from fastapi import Request
from fastapi import APIRouter, Depends, Request
from fuzzywuzzy import fuzz
from fuzzywuzzy import process

# from fuzzywuzzy import fuzz
# from fuzzywuzzy import process





app = APIRouter()

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
        

@app.get('/search')
def search_place(request: Request, db: Session = Depends(get_db)):
    search_query = request.query_params.get('query', '')
    
    # Perform the search query using SQLAlchemy
    place_results = db.query(Place).filter(
        func.lower(Place.placeName).like(f'%{search_query.lower()}%') |
        # func.lower(Place.description).like(f'%{search_query.lower()}%') |
        func.lower(Place.address).like(f'%{search_query.lower()}%')
    ).all()
    
    activity_results = db.query(Activity).filter(
        func.lower(Activity.name).like(f'%{search_query.lower()}%') |
        # func.lower(Activity.description).like(f'%{search_query.lower()}%') |
        func.lower(Activity.location).like(f'%{search_query.lower()}%')
    ).all()
    # place_ratios = process.extract(search_query, [place.placeName for place in place_results])
    # activity_ratios = process.extract(search_query, [activity.name for activity in activity_results])


    # Format the results as JSON
    # places = [{'placeID': place.id, 'placeName': place.placeName} for place in place_results]
    # activities = [{'activityID': activity.id, 'activityName': activity.name} for activity in activity_results]

        # Format the results as JSON

    # Filter the results based on a minimum similarity ratio (e.g., 80)
    # min_ratio = 80
    # filtered_place_results = [place for place, ratio in place_ratios if ratio >= min_ratio]
    # filtered_activity_results = [activity for activity, ratio in activity_ratios if ratio >= min_ratio]

    places = [
        {
            'id': place.id,
            'placeName': place.placeName,
            'description': place.description,
            'address': place.address,
            'image': place.image,
            'rating': place.rating,
            'location': place.location,
            'longitude': place.longitude,
            'latitude': place.latitude
        }
        for place in place_results
    ]

    activities = [
        {
            'activityID': activity.id,
            'activityName': activity.name,
            'description': activity.description,
            'placeID': activity.place_id,
            'location': activity.location,
            'image': activity.image,
            'Phone': activity.Phone,
            'price': activity.price,
            'Time': activity.Time,
            'socialmedia': activity.socialmedia
        }
        for activity in activity_results
    ] 
    results = places + activities
        
    return results
