from fastapi import APIRouter, Depends, HTTPException,status
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
@app.get('/allActivities')
async def all_activites(db:Session= Depends(get_db)):
    return crud.getAllActivities(db=db)
    
@app.delete("/deleteActivity/{activity_id}")
def delete_data_endpoint(activity_id:int, db: Session = Depends(get_db)):
    deleted_data = crud.deleteActivity(db=db,activity_id=activity_id)
    if not deleted_data:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND,
            detail="Data not found",
        )
    return {"message": "activity deleted successfully"}

@app.get('/pendingActivities')
async def pending_activities(db: Session= Depends(get_db)):
    return crud.show_pending_activities(db=db)



class ActivityResponse:
    activityid:int
    response:bool

@app.post('/admin_AvtivityResponse')
async def admin_activity_response(activity_response: ActivityResponse, db:Session = Depends(get_db)):
    activityid = activity_response.activityid
    response = activity_response.response
    activity = db.query(models.Activity).filter(activityid == models.Activity.id).first()
    userid = activity.enterpreneur_id
    if response:
        user = crud.getUserByID(user_id=userid , db=db)
        if user:
            crud.changeUserRole(db=db,user_id=userid)
    else:
        return False
    return crud.activity_response(activityid, response,db=db)