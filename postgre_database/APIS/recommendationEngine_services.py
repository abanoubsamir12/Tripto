from fastapi import APIRouter, Depends
from .. import crud , schemas,models
from postgre_database.database import SessionLocal
from sqlalchemy.orm import Session
import random
#sys.path.append('E:\college\graduation_project\Tripto-1\models')
from AImodels.recommendation_system_1 import tfIDF ,recommenderEngine,userBasedCollaborativeModel
#from ...AImodels import recommendation_system_1
# Converting the labels into encodings
from sklearn.preprocessing import LabelEncoder
le = LabelEncoder()

app = APIRouter()

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
        

n_recommendations=10

def get_places_description(db: Session= Depends(get_db)):
    places_description = crud.getPlacesDes(db= db)
    return places_description

def get_user_places_viewed(user_id:int ,db: Session= Depends(get_db) ):
    user_places_viewed = crud.getUserActivity(userid=user_id , db=db)   
    return user_places_viewed

def get_dict(users_id, db: Session = Depends(get_db)):
    dictionary = {}
    for id in users_id:
        places_viewed =  crud.getUserActivity(userid=id , db=db)
        dictionary[id] = places_viewed
    return dictionary
        

def get_recommended_places(user_id: int,db: Session):
    places_description = get_places_description(db=db)
    users_ids = crud.get_users_ids(db=db)
    tfidf = tfIDF(places_description=places_description)
    places_viewed = get_user_places_viewed(user_id=user_id, db=db)
    users_places_dict = get_dict(users_id=users_ids, db=db)
    recommended_places = recommenderEngine(tfidf_scores=tfidf , userid=user_id ,user_ids=users_ids, user_places_viewed=places_viewed
                                                ,users_places_dict=users_places_dict ,n_recommendations=5)
    return recommended_places





def nUser_recommendation_engine(user_id:int, nationality:str ,db: Session):
    
    nationality_interests =  crud.get_nationality_interests(name=nationality , db= db)
    if not nationality_interests:
        nationality_interests = None
    user_interests = crud.get_user_interests(user_id=user_id , db=db)
    if not user_interests :
        user_interests = None
    if (not nationality_interests) and (not user_interests):
        my_places = crud.getTopRatedPlaces(db=db)
        random.shuffle(my_places)
        return my_places
    
    concatenated_list = list(set(nationality_interests + user_interests))
    all_places = set()
    for id in concatenated_list:
        place_type = db.query(models.PlaceType).filter(models.PlaceType.id == id).first().name
        places = crud.getPlacesByType(db=db,TypeName=place_type)
        for place in places:
            all_places.add(place)
    my_list = list(all_places)

    # Shuffle the list
    random.shuffle(my_list)
    
    return my_list[:20]        
    


@app.get('/recommendedP')
async def get_recommended(user_id: int ,nationality:str ,db: Session = Depends(get_db)):
    user = crud.getUserByID(db=db , user_id= user_id)
    if not user:
        return {"message" : "not found user"}
    if get_user_places_viewed(user_id=user_id,db=db):
        
        recommended_places = get_recommended_places(user_id=user_id , db=db)
        places = set()
        for id in recommended_places:
            place =  crud.getPlaceByID(db=db , id = id)
            places.add(place)
        return places
    return set(nUser_recommendation_engine(user_id=user_id , nationality=nationality,db=db))
        

