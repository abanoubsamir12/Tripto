from sqlalchemy import Boolean, Column, ForeignKey, Integer, String, Float, Double,JSON
from sqlalchemy.orm import relationship
from .database import Base

class User(Base):
    __tablename__ = "users"

    id = Column(Integer, primary_key=True, index=True)
    email = Column(String, index=True)
    hashed_password = Column(String)
    is_active = Column(Boolean, default=True)
    age = Column(Integer)
    country = Column(String)
    username= Column(String, unique = True , index = True)
    role_id = Column(Integer , ForeignKey("roles.id"))
    #geolat = Column(Float)
    #geolng = Column(Float)

class Role(Base):
    __tablename__ = "roles"

    id = Column(Integer , primary_key=True , index = True)
    name= Column(String , unique= True )


class InterestToUser(Base):
    __tablename__ = "interestsToUsers"

    id = Column(Integer, primary_key=True, index=True)
    user_id = Column(Integer , ForeignKey("users.id"))
    interest_id = Column(Integer , ForeignKey("placeTypes.id"))

class Place(Base):
    __tablename__ = "places"
    id = Column(Integer , primary_key = True , index = True)
    placeName = Column(String , unique = True)
    description = Column(String)
    address=Column(String)
    image= Column(String)
    rating=Column(Double)
    location = Column(String)
    longitude = Column(Float)
    latitude = Column(Float)

class Monument(Base):
    __tablename__ = "monuments"
    id = Column(Integer , primary_key = True , index = True)
    place_id = Column(Integer , ForeignKey("places.id"))
    MonumentName = Column(String , unique = True)
    description = Column(String)
    image= Column(String)
    rating=Column(Double)
    location = Column(String)
    longitude = Column(Float)
    latitude = Column(Float)
    
class PlacesToUsers(Base):
    __tablename__ = "placesToUsers"
    id = Column(Integer , primary_key = True , index = True)
    placeid = Column(Integer , ForeignKey("places.id"))
    userid = Column(Integer , ForeignKey("users.id"))

class SearchHistory(Base):
    __tablename__ = "searchhistory"
    id = Column(Integer, primary_key=True, index=True)
    place_id = Column(Integer , ForeignKey("places.id"))
    user_id = Column(Integer, ForeignKey("users.id"))


class Rating(Base):
    __tablename__ = "ratings"

    id = Column(Integer, primary_key=True, index=True)
    user_id=Column(Integer, ForeignKey("users.id"))
    place_id=Column(Integer,ForeignKey("places.id")) 
    rate = Column(Float)


class PlaceType(Base):
    __tablename__ = "placeTypes"

    id =Column(Integer, primary_key=True, index=True)
    name = Column(String, unique= True)
    image = Column(String)



class PlaceToType(Base):
    __tablename__ = "PlacesToTypes"

    id = Column(Integer , primary_key = True , index = True)
    place_id = Column(Integer , ForeignKey("places.id"))
    placeType_id = Column(Integer , ForeignKey("placeTypes.id"))


class activityType(Base):
    __tablename__ ="activityType"
    id = Column(Integer , primary_key = True , index = True)
    type= Column(String)


class Activity(Base):
    __tablename__="activities"

    id = Column(Integer, primary_key=True, index=True)
    name = Column(String)
    description = Column(String)
    place_id = Column(Integer , ForeignKey("places.id"))
    activityType_id=Column(Integer , ForeignKey("activityType.id"))
    location= Column(String)
    image = Column(JSON)
    Phone = Column(String)
    price = Column(Double)
    Time = Column(Integer)
    socialmedia = Column(String)
    
    

class enterpreneurToActivity(Base):
    __tablename__ = "enterprenuersToActivities"
    
    id = Column(Integer, primary_key=True, index=True)
    enterprenuer_id = Column(Integer, ForeignKey("users.id"))
    activity_id = Column(Integer, ForeignKey("activities.id"))

class Nationality(Base):
    __tablename__="Nationality"

    id= Column(Integer, primary_key=True, index=True)
    nationality = Column(String)

class nationalityToPlacetype(Base):
    __tablename__= "nationalityToPlacetype"
    
    id = Column(Integer, primary_key=True, index=True)
    nationality_id =Column(Integer, ForeignKey("Nationality.id"))
    PlaceType_id = Column(Integer, ForeignKey("placeTypes.id"))
    
class userToPlaceType(Base):
    __tablename__="userToPlaceType"

    id = Column(Integer, primary_key=True, index=True)
    userid =  Column(Integer, ForeignKey("users.id"))
    placetypeid = Column(Integer, ForeignKey("placeTypes.id"))

