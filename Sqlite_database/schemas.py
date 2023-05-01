from typing import List
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
    geolat: float | None = None
    geolng: float | None = None

    class Config:
        orm_mode = True


class RolemBase(BaseModel):
    name: str


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
    pass


class SearchHistoryCreate(SearchHistoryBase):
    pass


class SearchHistory(SearchHistoryBase):
    id: int
    place_id: int
    user_id: int

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


class ActivityBase(BaseModel):
    image: str
    description: str


class ActivityCreate(SearchHistoryBase):
    pass


class Activity(SearchHistoryBase):
    id: int
    place_id: int

    class Config:
        orm_mode = True