from fastapi import APIRouter, Depends
from datetime import  timedelta , datetime , date
from sqlalchemy import func
from sqlalchemy.orm import Session
#from http_exceptions import HTTPException
from .. import models , schemas , crud
from Sqlite_database.database import SessionLocal
from sqlalchemy.orm import Session
from ..models import Place


app = APIRouter()

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
        

@app.get("/nearbyPlaces")
def get_nearby_places(latitude: float, longitude: float, db: Session = Depends(get_db)):
    places = crud.get_places_from_db(latitude, longitude, db)
    return {"places": places}
