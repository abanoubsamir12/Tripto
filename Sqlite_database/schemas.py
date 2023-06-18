from typing import List, Union
from pydantic import BaseModel, constr


class UserBase(BaseModel):
    email: str
    age: int
    country: str
    username: str
    role_id: int

class UserCreate(UserBase):
    password: str




class User(UserBase):
    id: int
    is_active: bool
    geolat: float
    geolng: float

    class Config:
        orm_mode = True


class RolemBase(BaseModel):
    name: str


class ActivityBase(BaseModel):
    name: str
    description: str
    location: str
    image: Union[list[str],str]
    

class Activity(ActivityBase):
    place_id: int

    class Config:
        orm_mode = True

class enterprenuerToActivity1(BaseModel):
    EnterpreneuerID= int
    activityID: int
    
class enterprenuerToActivity(enterprenuerToActivity1):
    class Config:
        orm_mode = True


class ItemCreate(RolemBase):
    pass


class Item(RolemBase):
    id: int

    class Config:
        orm_mode = True


class InterestToUserBase(BaseModel):
    pass


class InterestToUserCreate(InterestToUserBase):
    pass


class InterestToUser(InterestToUserBase):
    id: int
    user_id: int
    interest_id: int

    class Config:
        orm_mode = True


class SearchHistoryBase(BaseModel):
    place_id: int
    user_id: int

class SearchHistoryCreate(SearchHistoryBase):
    pass


class SearchHistory(SearchHistoryBase):
    id: int
    class Config:
        orm_mode = True


class RatingBase(BaseModel):
    rate: int


class RatingCreate(SearchHistoryBase):
    pass


class Rating(SearchHistoryBase):
    id: int
    place_id: int
    user_id: int

    class Config:
        orm_mode = True


class PlaceTypeBase(BaseModel):
    rate: int


class PlaceTypeCreate(SearchHistoryBase):
    pass


class PlaceType(SearchHistoryBase):
    id: int
    place_id: int
    user_id: int

    class Config:
        orm_mode = True


#class ActivityCreate(SearchHistoryBase):
 #   pass
class PlaceSearchResult(BaseModel):
    id: int
    placeName: str
