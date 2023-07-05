from fastapi import APIRouter, Depends, HTTPException,FastAPI
from datetime import  timedelta , datetime , date
from sqlalchemy.orm import Session
#from http_exceptions import HTTPException
from postgre_database import models , schemas , crud, database
from postgre_database.database import SessionLocal, engine

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
    #obj = schemas.enterprenuerToActivity(activityID=db_activity_id , EnterprenuerID=id)
    return crud.assignActivityToEnterpreneur(db , id , db_activity_id)
    
@app.get('/getActivities')
def get_activities(enterprenuerid: int , db: Session = Depends(get_db)):
    return crud.getEnterpreneurActivities(enterprenuerid, db)   