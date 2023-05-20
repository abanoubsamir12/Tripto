from fastapi import APIRouter, Depends, HTTPException,FastAPI
from datetime import  timedelta , datetime , date
from sqlalchemy.orm import Session
#from http_exceptions import HTTPException
from Sqlite_database import models , schemas , crud, database
from Sqlite_database.database import SessionLocal, engine

app = APIRouter()


def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
        


#async def add_Activity_to_enter(activityToEnter: schemas.enterprenuerToActivity , db: Session= Depends(get_db)):
#    return  crud.assignActivityToEnterpreneur(db , activityToEnter)
    
@app.post('/addActivity')
async def add_activity(activity: schemas.Activity, id: int ,db: Session = Depends(get_db)):
    db_activity_id = crud.CreateActivity(db, activity)
    print(db_activity_id)
    enterpreneur = crud.getUserByID(db=db, user_id=id)
    if enterpreneur.role_id != 2:
        raise HTTPException(
            status_code=401,
            detail="Not valid to add place"
        )
    #obj = schemas.enterprenuerToActivity(activityID=db_activity_id , EnterprenuerID=id)
    return crud.assignActivityToEnterpreneur(db , id , db_activity_id)
    