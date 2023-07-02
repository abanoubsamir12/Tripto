from fastapi import APIRouter, Depends, HTTPException
from postgre_database import models , schemas , crud, database
from postgre_database.database import SessionLocal
from sqlalchemy.orm import Session


app = APIRouter()


def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()


@app.get('/pendingActivities')
async def pending_activities(db: Session= Depends(get_db)):
    return crud.show_pending_activities(db=db)

app.post('/admin_AvtivityResponse')
async def admin_activity_response(activityid:int, response:bool, db:Session = Depends(get_db)):
    return crud.activity_response(activityid, response,db)