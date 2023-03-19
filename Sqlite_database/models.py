from sqlalchemy import Boolean, Column, ForeignKey, Integer, String, Float
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
    geolat = Column(Float)
    geolng = Column(Float)

class Role(Base):
    __tablename__ = "roles"

    id = Column(Integer , primary_key=True , index = True)
    name= Column(String , unique= True )


class InterestToUser(Base):
    __tablename__ = "interestsToUsers"

    id = Column(Integer, primary_key=True, index=True)
    user_id = Column(Integer , ForeignKey("users.id"))
    interest_id = Column(Integer , ForeignKey("placeTypes.id"))

class SearchHistory(Base):
    __tablename__ = "searchhistory"

    id = Column(Integer, primary_key=True, index=True)
    place_id = (Integer , ForeignKey("places.id"))
    user_id = (Integer, ForeignKey("user.id"))


class Rating(Base):
    __tablename__ = "ratings"

    id = Column(Integer, primary_key=True, index=True)
    place_id = (Integer, ForeignKey("places.id"))
    user_id = (Integer, ForeignKey("users.id"))
    rate = Column(Integer)


class PlaceType(Base):
    __tablename__ = "placeTypes"

    id =Column(Integer, primary_key=True, index=True)
    name = Column(String, unique= True)
    image = Column(String)


class Place(Base):
    __tablename__ = "places"

    id = Column(Integer , primary_key = True , index = True)
    image= Column(String)
    description = Column(String)
    geolat = Column(Float)
    geolng = Column(Float)

class PlaceToType(Base):
    __tablename__ = "placesToTypes"

    id = Column(Integer , primary_key = True , index = True)
    place_id = Column(Integer , ForeignKey("places.id"))
    placeType_id = Column(Integer , ForeignKey("placeTypes.id"))

class Activity(Base):
    __tablename__="activities"

    id = Column(Integer, primary_key=True, index=True)
    image = Column(String)
    description = Column(String)
    place_id = Column(Integer , ForeignKey("places.id"))