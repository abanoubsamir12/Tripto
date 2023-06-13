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
