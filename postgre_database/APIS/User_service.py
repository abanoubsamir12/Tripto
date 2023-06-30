import datetime

from pydantic import BaseModel
from fastapi import APIRouter , Body , Cookie , Header , Depends,status, HTTPException,Response
from uvicorn import run
from datetime import  timedelta , datetime , date
from sqlalchemy.orm import Session
#from http_exceptions import HTTPException
from postgre_database import models , schemas , crud, database
from postgre_database.database import SessionLocal, engine
from fastapi.security import OAuth2PasswordBearer, OAuth2PasswordRequestForm
from passlib.context import CryptContext
from jose import jwt , JWTError
import psycopg2
from psycopg2.extras import RealDictCursor
import time
from ..schemas import SearchHistoryBase, SearchHistoryCreate

models.Base.metadata.create_all(bind=engine)

app = APIRouter()



SECRET_KEY = "thequickbrownfoxjumpsoverthelazydog"
ALGORITHM = "HS256"

pwd_context = CryptContext(schemes = ["bcrypt"] , deprecated ="auto")
oauth2_scheme = OAuth2PasswordBearer(tokenUrl="/token",
    scheme_name="JWT")
class Token(BaseModel):
    access_token:str
    token_type:str

class TokenData(BaseModel):
    username: str

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
            #message = "account already exists"
            detail = "account already exists"
        )
    return  crud.CreateUser(db , user)



def verify_password(password , hashed_password):
    return  pwd_context.verify(password , hashed_password)

def authenticate_user(username: str , password: str , db:Session =Depends(get_db())):
    user = crud.getUserByUsername(db= db , username= username)
    if not user:
        return False
    if not verify_password(password , user.hashed_password):
        return  False
    return user

def create_access_token(data: dict , expires_delta: timedelta):
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


@app.get('/users/me', response_model = schemas.User)
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
            detail="not valid token",
            headers={"WWW-Authenticate": "Bearer"}
        )

    if current_user is None:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Not User in the System",
            headers={"WWW-Authenticate": "Bearer"}
        )
    return current_user

@app.post("/logout")
def logout(response: Response):
    response.delete_cookie("access_token")
    response.delete_cookie("refresh_token")
    response.status_code = 200
    return {"message": "Logged out successfully"}


#@app.get('/users/me', response_model = schemas.User)
#async def get_me(current_user: models.User = Depends(get_current_user)):
#    return  current_user

<<<<<<< HEAD
@app.get('/places/all')
async def get_places(db: Session = Depends(get_db)):
    return  crud.getPlaces(db)

@app.get('/places/{type}')
async def get_places_by_type( type: str , db: Session = Depends(get_db) ):
    return  crud.getPlacesByType(db=db , TypeName=type)
=======
>>>>>>> 097036cb2bfd8a58ee205acb223f1f34bb13d1b2

class AddSearchHistoryResponse(BaseModel):
    message: str 

@app.post('/addSearchHistory')
async def addSaearchHistory( viewed_place:schemas.SearchHistoryCreate, db:Session = Depends(get_db)):
    
    return crud.addUserActivity(db=db, userActivity=viewed_place)



@app.post('/addRating')
async def addRating(userRating:schemas.RatingCreate,db:Session = Depends(get_db)):
    return crud.addUserRating(db=db, user_rate=userRating)

<<<<<<< HEAD
@app.put('/editUser/{userid}')
async def editUser(userid: int, user: schemas.UserUpdate, db: Session = Depends(get_db)):
    user_db = crud.getUserByID(db, userid)
    if not user_db:
        raise HTTPException(
            status_code=404,
            detail="User not found"
        )
    return crud.updateUser(db, user_db, user)

@app.get('/topRatedPlaces')
async def topRatedPlaces(db:Session = Depends(get_db)):
    return crud.getTopRatedPlaces(db)
=======
@app.post('/addFavplace')
async def addFavPlace(placeToUser:schemas.PlaceToUser , db:Session = Depends(get_db)):
    place =crud.addFavPlace(placeToUser=placeToUser ,db=db )
    if place:
        return place
    raise HTTPException(
            status_code=status.HTTP_409_CONFLICT,
            detail=" already exists",
        )

@app.get('/getFavplaces')
async def getFavPlaces(userid: int , db:Session = Depends(get_db)):
    places=  crud.getFavPlaces(userid=userid , db=db)
    if places:
        return places
    raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND,
            detail="NO FAVORITE PLACES",
        )
    

@app.delete("/deleteFavPlace")
def delete_FavPlace(placeid: int,userid:int, db: Session = Depends(get_db)):
    deleted_data = crud.deleteFavPlace(db, userid=userid , placeid=placeid)
    if not deleted_data:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND,
            detail="Data not found",
        )
    return {"message": "place deleted successfully"}

    
>>>>>>> 097036cb2bfd8a58ee205acb223f1f34bb13d1b2
