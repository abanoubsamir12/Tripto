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

blacklisted_tokens = set()

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



@app.get('/users/me', response_model=schemas.User)
async def get_current_user(token: str = Depends(oauth2_scheme), db: Session = Depends(get_db)):
    # Check if the token is in the set of invalid_tokens, indicating that the user has logged out
    if token in blacklisted_tokens:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Logged out",
            headers={"WWW-Authenticate": "Bearer"}
        )

    try:
        payload = jwt.decode(token, SECRET_KEY, algorithms=[ALGORITHM])
        username = payload.get("sub")
        if username is None:
            raise HTTPException(
                status_code=status.HTTP_401_UNAUTHORIZED,
                detail="Unauthorized user",
                headers={"WWW-Authenticate": "Bearer"}
            )
        current_user = crud.getUserByUsername(db=db, username=username)
    except JWTError:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Invalid token",
            headers={"WWW-Authenticate": "Bearer"}
        )

    if current_user is None:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="User not found in the system",
            headers={"WWW-Authenticate": "Bearer"}
        )

    return current_user


@app.post("/logout")
async def logout(token: str = Depends(oauth2_scheme)):
    # Decode the token to get the username (sub) from the payload
    try:
        payload = jwt.decode(token, SECRET_KEY, algorithms=[ALGORITHM])
        username = payload.get("sub")
    except JWTError:
        raise HTTPException(
            status_code=status.HTTP_401_UNAUTHORIZED,
            detail="Invalid token",
            headers={"WWW-Authenticate": "Bearer"}
        )

    # Invalidate the token by adding it to the set of invalid_tokens
    blacklisted_tokens.add(token)
    
    return {"message": "Logged out successfully"}


#@app.get('/users/me', response_model = schemas.User)
#async def get_me(current_user: models.User = Depends(get_current_user)):
#    return  current_user

@app.get('/places/all')
async def get_places(db: Session = Depends(get_db)):
    return  crud.getPlaces(db)

@app.get('/places/{type}')
async def get_places_by_type( type: str , db: Session = Depends(get_db) ):
    return  crud.getPlacesByType(db=db , TypeName=type)

class AddSearchHistoryResponse(BaseModel):
    message: str 

@app.post('/addSearchHistory')
async def addSaearchHistory( viewed_place:schemas.SearchHistoryCreate, db:Session = Depends(get_db)):
    
    return crud.addUserActivity(db=db, userActivity=viewed_place)



@app.post('/addRating')
async def addRating(userRating:schemas.RatingCreate,db:Session = Depends(get_db)):
    return crud.addUserRating(db=db, user_rate=userRating)

@app.post('/addFavplace')
async def addFavPlace(placeToUser:schemas.PlaceToUser , db:Session = Depends(get_db)):
    place =crud.addFavPlace(placeToUser=placeToUser ,db=db )
    if place:
        return place
    raise HTTPException(
            status_code=status.HTTP_409_CONFLICT,
            detail=" already exists",
        )

@app.get('/getFavplacesIDs')
async def getFavPlaces(userid: int , db:Session = Depends(get_db)):
    places=  crud.getFavPlacesID(userid=userid , db=db)
    if places:
        return places
    raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND,
            detail="NO FAVORITE PLACES",
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


@app.delete("/deleteFavPlace/{FavPlace_id}")
def delete_data_endpoint(placeid: int,userid:int, db: Session = Depends(get_db)):
    deleted_data = crud.deleteFavPlace(db, userid=userid , placeid=placeid)
    if not deleted_data:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND,
            detail="Data not found",
        )
    return {"message": "place deleted successfully"}



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

@app.post('/interestsOfNewUser')
async def newUserInterests(userid:int, interests:list[str], db:Session = Depends(get_db)):
    for interest in interests:
        placetype = db.query(models.PlaceType).filter_by(name=interest).first()
        db_placetypeToUser = models.userToPlaceType(
            placetypeid=placetype.id,
            userid=userid   
        )
        db.add(db_placetypeToUser)
        db.commit()
        db.refresh(db_placetypeToUser)
    return {"message": "Interests added successfully"}

@app.get('/getSearchHistoryForUser')
async def getSearchHistoryForUser(userid:int, db:Session = Depends(get_db)):
    search_history = db.query(models.SearchHistory).filter(userid == models.SearchHistory.user_id).all()
    if not search_history:
        return {"message": "User does not have search history"}
    places=[]
    for row in search_history:
        place = db.query(models.Place).filter(row.place_id == models.Place.id).first()
        places.append(place)
    return places