import datetime

from pydantic import BaseModel
from fastapi import FastAPI , Body , Cookie , Header , Depends
from datetime import  timedelta , datetime , date
from sqlalchemy.orm import Session
from http_exceptions import HTTPException
from . import models , schemas , crud
from .database import SessionLocal, engine
from fastapi.security import OAuth2PasswordBearer, OAuth2PasswordRequestForm
from passlib.context import CryptContext
from jose import jwt , JWTError
models.Base.metadata.create_all(bind=engine)



app = FastAPI()

pwd_context = CryptContext(schemes = ["bcrypt"] , deprecated ="auto")
oauth2_scheme = OAuth2PasswordBearer(tokenUrl = "token")
class Token(BaseModel):
    access_token:str
    token_type:str

class TokenData(BaseModel):
    username: str |None = None

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()


def verify_password(password , hashed_password):
    return  pwd_context.verify(password , hashed_password)

def get_hash_passowrd(password):
    return  pwd_context.hash(password)

def authenticate_user(email: str , password: str , db:Session =Depends(get_db())):
    user = crud.getUserByEmail(db= db , user_email= email)
    if not user:
        return false
    if not verify_password(password , user.hashed_password):
        return  false
    return user

SECRET_KEY = "thequickbrownfoxjumpsoverthelazydog"
ALGORITHM = "HS256"

def create_access_token(data: dict , expires_delta: timedelta | None = None):
    to_encode = data.copy()
    if(expires_delta):
        expire = datetime.utcnow() +expires_delta
    else:
        expire = datetime.utcnow() + expires_delta(minutes = 15)
    to_encode.update({"exp" : expire})
    encoded_jwt = jwt.encode(to_encode , SECRET_KEY , algorithm = ALGORITHM)
    return  encoded_jwt

@app.post('/login/token' , response_model = Token)
async def login_for_access_token(form_data: OAuth2PasswordRequestForm = Depends() ):
    db: Session = Depends(get_db())
    user = authenticate_user(form_data.username , form_data.password , db = db)
    if(not user):
        raise HTTPException(
            status_code = status.HTTP_401_UNAUTHORIZED,
            detail = "Incorrect username or password",
            headers = {"WWW-Authenticate": "Bearer"}
        )
    access_token_expires = timedelta(minutes = 30)
    access_token = create_access_token(
        data ={"sub" : user.email} , expires_delta = access_token_expires
    )
    return  {"access_token" : access_token}



@app.get('/token')
def read_token(token: str = Depends(oauth2_scheme)):
    return {'token' : token}
