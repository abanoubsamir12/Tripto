from itertools import chain
from sqlalchemy import Text, desc, func
from sqlalchemy.orm import Session
import models , schemas 
from passlib.context import CryptContext
import json
from typing import List

def addNewInterests(userid:int, interests:list, db:Session):
    try:
        for x in interests:
            placetype = db.query(models.PlaceType).filter(models.PlaceType.name == x).first()
            if not placetype:
                continue
            db_placetypeToUser = models.userToPlaceType(
            placetypeid=placetype.id,
            userid=userid   
            )
            db.add(db_placetypeToUser)
        db.commit()
    finally:
        db.close()
    return {"message" : "rows added successfully"}
