from itertools import chain
from sqlalchemy import Text, desc, func
from sqlalchemy.orm import Session
import models , schemas 
from passlib.context import CryptContext
import json
from typing import List

def get_nationality_interests (name: str , db:Session):
    nationality_id = db.query(models.Nationality).filter(name == models.Nationality.nationality).first()
    if not nationality_id:
        return []
    nationality_id = nationality_id.id
    print("nationality id:",nationality_id)
    interests = db.query(models.nationalityToPlacetype).filter(nationality_id == models.nationalityToPlacetype.nationality_id).all()
    
    nat_interests=[]
    for i in interests:
        nat_interests.append(i.PlaceType_id)
        
    return nat_interests