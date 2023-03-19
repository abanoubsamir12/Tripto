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

SECRET_KEY = "thequickbrownfoxjumpsoverthelazydog"
ALGORITHM = "HS256"

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

@app.post('/addUser')
async def CreateUser( user: schemas.UserCreate ,db: Session= Depends(get_db)):
    user_db = crud.getUserByUsername(db ,user.username)
    if user_db:
        raise HTTPException(
            status_code = 400,
            detail = "account already exists"
        )
    return  crud.CreateUser(db , user)



def verify_password(password , hashed_password):
    return  pwd_context.verify(password , hashed_password)

def authenticate_user(username: str , password: str , db:Session =Depends(get_db())):
    user = crud.getUserByUsername(db= db , username= username)
    if not user:
        return false
    if not verify_password(password , user.hashed_password):
        return  false
    return user

def create_access_token(data: dict , expires_delta: timedelta | None = None):
    to_encode = data.copy()
    if(expires_delta):
        expire = datetime.utcnow() +expires_delta
    else:
        expire = datetime.utcnow() + timedelta(minutes = 15)
    to_encode.update({"exp" : expire})
    encoded_jwt = jwt.encode(to_encode , SECRET_KEY , algorithm = ALGORITHM)
    return  encoded_jwt

@app.post('/token' , response_model = Token)
async def login_for_access_token(form_data: OAuth2PasswordRequestForm = Depends(), db: Session = Depends(get_db) ):
    user = authenticate_user(username=form_data.username , password=form_data.password , db = db)
    if(not user):
        raise HTTPException(
            status_code = status.HTTP_401_UNAUTHORIZED,
            detail = "Incorrect username or password",
            headers = {"WWW-Authenticate": "Bearer"}
        )
    access_token_expires = timedelta(minutes = 30)
    access_token = create_access_token(
        data ={"sub" : user.username} , expires_delta = access_token_expires
    )
    return  {"access_token" : access_token , "token_type" : "bearer"}

async def get_current_user(token: str = Depends(oauth2_scheme) , db: Session = Depends(get_db)):

    try:
        payload = jwt.decode(token , SECRET_KEY , algorithms = [ALGORITHM])
        username = payload.get("sub")
        if username is None:
            raise HTTPException(
                status_code=status.HTTP_401_UNAUTHORIZED,
                detail="unauthorized user",
                headers={"WWW-Authenticate": "Bearer"}
            )
        current_user = crud.getUserByUsername(db=db, username=username)
    except JWTError:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="unauthorized user",
            headers={"WWW-Authenticate": "Bearer"}
        )

    if current_user is None:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="unauthorized user",
            headers={"WWW-Authenticate": "Bearer"}
        )
    return current_user
async def get_current_active_user(current_user: models.User = Depends(get_current_user)):
    if not current_user.is_active:
        raise HTTPException(status_code=400, detail="Inactive User")
    return  current_user

@app.get('/users/me', response_model = schemas.User)
async def get_me(current_user: models.User = Depends(get_current_active_user)):
    return  current_user

