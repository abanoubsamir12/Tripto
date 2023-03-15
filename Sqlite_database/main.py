from pydantic import BaseModel
from fastapi import FastAPI , Body , Cookie , Header , Depends

from sqlalchemy.orm import Session
from http_exceptions import HTTPException
from . import models , schemas , crud
from .database import SessionLocal, engine

models.Base.metadata.create_all(bind=engine)

app = FastAPI()
