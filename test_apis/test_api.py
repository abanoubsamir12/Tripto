from fastapi import FastAPI
import pytest
import pytest_asyncio
import psycopg2
from fastapi.testclient import TestClient
from ..postgre_database.main import app  # Assuming your FastAPI application instance is named 'app'
import json


client = TestClient(app)

def test_get_items():
    response = client.get("/places/all")
    assert response.status_code == 200
    assert response.json() == {"message": "Hello, world!"}