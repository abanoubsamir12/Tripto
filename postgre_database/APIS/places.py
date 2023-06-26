from fastapi import APIRouter, Depends, HTTPException,status
from datetime import  timedelta , datetime , date
from sqlalchemy import func
from sqlalchemy.orm import Session
#from http_exceptions import HTTPException
from .. import models , schemas , crud
from postgre_database.database import SessionLocal
from sqlalchemy.orm import Session
from ..models import Place
from ..schemas import PlaceBase, PlaceCreate

app = APIRouter()

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()


@app.post("/createPlace", response_model=PlaceBase)
def create_place(place: PlaceCreate, db: Session = Depends(get_db)):
    existing_place = db.query(Place).filter(Place.placeName == place.placeName).first()
    if existing_place:
        raise HTTPException(status_code=status.HTTP_400_BAD_REQUEST, detail="Place with the same name already exists")
    # user = crud.getUserByID(db=db, user_id=user_id)
    # if user.role_id != 3:
    #     raise HTTPException(
    #         status_code=401,
    #         detail="Not valid to add place"
    #     )
    
    return crud.createPlace(db=db,place=place)
    