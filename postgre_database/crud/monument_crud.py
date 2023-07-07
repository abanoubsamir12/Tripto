from itertools import chain
from sqlalchemy import Text, desc, func
from sqlalchemy.orm import Session
import models , schemas 
from passlib.context import CryptContext
import json
from typing import List

def getMonument(db: Session , place_id: int):
    monuments = db.query(models.Monument).filter(place_id == models.Monument.place_id).all()
    return monuments
