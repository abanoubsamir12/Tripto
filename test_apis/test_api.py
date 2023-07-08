from fastapi import FastAPI
import pytest
import pytest_asyncio
import psycopg2
from fastapi.testclient import TestClient
from postgre_database.main import app  # Assuming your FastAPI application instance is named 'app'
import json
import unittest
from fastapi.testclient import TestClient
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from unittest.mock import MagicMock
from sqlalchemy.orm import Session
#from http_exceptions import HTTPException
from postgre_database import models , schemas , crud, database
from postgre_database.database import SessionLocal, engine
from fastapi import  Depends, HTTPException,FastAPI
from sqlalchemy.orm import Session

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
engine = create_engine("postgresql://username:password@localhost/database_name")
TestingSessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)
db = TestingSessionLocal()
app.dependency_overrides[get_db] = MagicMock(return_value=db)


client = TestClient(app)


class TestPlacesAPI(unittest.TestCase):
    # get all places valid
    def test_get_places(self):
        response = client.get("/places/all")
        self.assertEqual(response.status_code, 200)

    # create place valid    
    # def test_create_place(self):
    #     place_data = {
    #         "image": "https://tinyurl.com/yt6bd96h",
    #         "placeName": "xxxxxx",
    #         "description": "This complex comprises an ethnographic museum, debating chamber and a small historical library.",
    #         "rating": 4.4,
    #         "longitude": 31.235999020230526,
    #         "ticketPrice": 20.0,
    #         "id": 52,
    #         "address": "Cairo",
    #         "location": "https://goo.gl/maps/eMN1gsKwCTyzFJTe7",
    #         "latitude": 30.04129546409954,
    #         "estimatedDuration": 2.0
    #     }
    #     response = client.post("/createPlace", json=place_data)
    #     self.assertEqual(response.status_code, 200)

        
    # create place invalid    
    # def test_create_place_invalid(self):
    #     place_data = {
    #         "image": "https://tinyurl.com/yt6bd96h",
    #         "placeName": "xxxxxxx",
    #         "description": "This complex comprises an ethnographic museum, debating chamber and a small historical library.",
    #         "rating": "good",
    #         "longitude": 31.235999020230526,
    #         "ticketPrice": 20.0,
    #         "id": 52,
    #         "address": "Cairo",
    #         "location": "https://goo.gl/maps/eMN1gsKwCTyzFJTe7",
    #         "latitude": 30.04129546409954,
    #         "estimatedDuration": 2.0
    #     }
    #     response = client.post("/createPlace", json=place_data)
    #     self.assertEqual(response.status_code, 200)

    # get activities for one place valid 
    def test_get_activities_for_one_place(self):    
        place_id = 23
        response = client.get(f"/getActivitesForOnePlace?placeid={place_id}")
        self.assertEqual(response.status_code, 200)
        response_data = response.json()
        self.assertIsInstance(response_data, list)

class TestAdminAPIs(unittest.TestCase):

    def test_pending_activities(self):
            # Make a GET request to the API endpoint
            response =client.get("/pendingActivities")

            # Assert the response status code
            self.assertEqual(response.status_code, 200)

            # Assert the response data or body if needed
            # For example, if the response returns JSON data
            response_data = response.json()
            self.assertIsInstance(response_data, list)
            # Add more assertions to validate the response data or body if needed

    # invalid because invalid id 
    def test_admin_activity_response(self):
            activity_id = 123  # Provide a valid activity ID for testing
            user_id = 456  # Provide a valid user ID for testing

            # Make a POST request to the API endpoint
            response = client.post(
                "/admin_AvtivityResponse",
                json={"activityid": activity_id, "userid": user_id, "response": True},
            )

            # Assert the response status code
            self.assertEqual(response.status_code, 200)

            # Assert the response data or body if needed
            # For example, if the response returns JSON data
            response_data = response.json()
            self.assertEqual(response_data["Message"], "Request is approved by admin")
            # Add more assertions to validate the response data or body if needed
    def test_admin_activity_response_valid(self):
            activity_id = 3  # Provide a valid activity ID for testing
            user_id = 4  # Provide a valid user ID for testing

            # Make a POST request to the API endpoint
            response = client.post(
                "/admin_AvtivityResponse",
                json={"activityid": activity_id, "userid": user_id, "response": True},
            )

            # Assert the response status code
            self.assertEqual(response.status_code, 200)

            # Assert the response data or body if needed
            # For example, if the response returns JSON data
            response_data = response.json()
            self.assertEqual(response_data["Message"], "Request is approved by admin")
            # Add more assertions to validate the response data or body if needed
        
class TestUserAPIs(unittest.TestCase):
    def test_add_rating(self):
        rating_data = {
            "place_id": 4,  # Provide a valid place ID for testing
            "user_id": 4,  # Provide a valid user ID for testing
            "rate": 4.5,  # Provide a valid rating value for testing
        }

        # Make a POST request to the API endpoint
        response = client.post("/addRating", json=rating_data)

        # Assert the response status code
        self.assertEqual(response.status_code, 200)

        # Assert the response data or body if needed
        # For example, if the response returns JSON data
        response_data = response.json()
        self.assertEqual(response_data["place_id"], rating_data["place_id"])
        self.assertEqual(response_data["user_id"], rating_data["user_id"])
        # Add more assertions to validate the response data or body if needed
    
    
    def test_add_fav_place(self):
        place_to_user_data = {
            "user_id": 4,  # Provide a valid user ID for testing
            "place_id": 456,  # Provide a valid place ID for testing
        }

        # Make a POST request to the API endpoint
        response = client.post("/addFavplace", json=place_to_user_data)

        # Assert the response status code
        self.assertEqual(response.status_code, 200)

        # Assert the response data or body if needed
        # For example, if the response returns JSON data
        response_data = response.json()
        self.assertEqual(response_data["user_id"], place_to_user_data["user_id"])
        self.assertEqual(response_data["place_id"], place_to_user_data["place_id"])
        # Add more assertions to validate the response data or body if needed
        
    def test_get_fav_places(self):
        user_id = 4  # Provide a valid user ID for testing
        response = client.get(f"/getFavplaces?userid={user_id}")
        self.assertEqual(response.status_code, 200)
        response_data = response.json()
        self.assertIsInstance(response_data, list)

    def test_get_fav_places_not_found(self):
        user_id = 123  # Provide a user ID for which no favorite places exist

        # Make a GET request to the API endpoint
        response = client.get(f"/getFavplaces?userid={user_id}")

        # Assert the response status code
        self.assertEqual(response.status_code, 404)    
        
class TestSmartTourGuideAPIs(unittest.TestCase):
    def test_get_nearby_places(self):
        latitude = 123.456  # Provide a valid latitude for testing
        longitude = 456.789  # Provide a valid longitude for testing
        n = 5  # Provide the number of nearby places to retrieve for testing
        response = client.get(f"/nearbyPlaces?latitude={latitude}&longitude={longitude}&n={n}")

        self.assertEqual(response.status_code, 200)

        response_data = response.json()
        self.assertIsInstance(response_data, list)
        self.assertEqual(len(response_data), n)
    
    # valid 
    def test_get_tour_package(self):
        user_id = 4  # Provide a valid user ID for testing
        longitude = 31.260865172498455  # Provide a valid longitude for testing
        latitude = 30.03010465763733  # Provide a valid latitude for testing
        response = self.client.get(f"/getTourPackage?user_id={user_id}&longitude={longitude}&latitude={latitude}")
        self.assertEqual(response.status_code, 200)
        response_data = response.json()
        self.assertIsInstance(response_data, list)

    # invalid 
    def test_get_tour_package_invalid(self):
        user_id = 456  
        longitude = 789.123 
        latitude = 321.654
        response = self.client.get(f"/getTourPackage?user_id={user_id}&longitude={longitude}&latitude={latitude}")
        self.assertEqual(response.status_code, 400)
        response_data = response.json()
        self.assertEqual(response_data['detail'], "Invalid parameters")

    

if __name__ == "__main__":
    unittest.main(module="test_api")


