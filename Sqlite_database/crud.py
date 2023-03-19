from sqlalchemy.orm import Session
from . import models , schemas 
from passlib.context import CryptContext

pwd_context = CryptContext(schemes = ["bcrypt"] , deprecated ="auto")

def getUserByID(db: Session , user_id:int):
    return  db.query(models.User).filter(user_id == models.User.id).first()
def getUserByEmail(db: Session , user_email:str):
    return  db.query(models.User).filter(user_email == models.User.email).first()

def getUserByUsername(db: Session , username:str):
    return  db.query(models.User).filter(username == models.User.username).first()


def get_hash_passowrd(password):
    return  pwd_context.hash(password)
def CreateUser(db: Session , user: schemas.UserCreate):
    hashed_password = get_hash_passowrd(user.password)
    db_user = models.User(email = user.email,
                          age = user.age,
                          hashed_password = hashed_password,
                          country = user.country,
                          username = user.username
    )
    db.add(db_user)
    db.commit()
    db.refresh(db_user)
    return  db_user
