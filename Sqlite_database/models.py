from sqlalchemy import Boolean, Column, ForeignKey, Integer, String
from sqlalchemy.orm import relationship
from .database import Base

class User(Base):
    __tablename__ = "users"

    id = Column(Integer, primary_key=True, index=True)
    email = Column(String, unique=True, index=True)
    hashed_password = Column(String)
    is_active = Column(Boolean, default=True)
    age = Column(Integer)
    username= Column(String, unique = True , index = True)
    role_id = Column(int , ForeignKey("roles.id"))
    role = relationship("Role" , back_populates= "is")


class Role(Base):
    __tablename__ = "roles"

    id = Column(Integer , primary_key=True , index = True)
    name= Column(String , unique= True )


class Interest(Base):
    __tablename__ = "interests"

    id =Column(Integer, primary_key=True, index=True)
    name = Column(String, unique= True)


class Interest_to_Role(Base):
    __tablename__ = "fields_to_roles"

    id = Column(Integer, primary_key=True, index=True)
    role_id = Column(Integer , ForeignKey("roles.id"))
    interest_id = Column(Integer , ForeignKey("interests.id"))



class Search_History(Base):
    __tablename__ = "searchhistory"

    id = Column(Integer, primary_key=true, index=true)
    place_id = (Integer , ForeignKey("places.id"))
    user_id = (Integer, ForeignKey("user.id"))


class rating(Base):
    __tablename__ = "ratings"

    id = Column(Integer, primary_key=true, index=true)
    place_id = (Integer, ForeignKey("places.id"))
    user_id = (Integer, ForeignKey("user.id"))
    rate = Column(Integer)


class Location(Base):
    __tablename__ = "locations"
    id = Column(Integer, primary_key=true, index=true)
    geolat = Column(float)
    geolng = Column(float)


class Place(Base):
    __tablename__ = "places"

    id = Column(Integer , primary_key = true , index = true)
    image= Column(String)
    description = Column(String)
    location_id = Column(Integer , ForeignKey("locations.id"))


class




