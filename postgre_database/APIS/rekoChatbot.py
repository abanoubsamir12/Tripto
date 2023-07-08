import torch
import torch.nn as nn

from transformers import AutoModel, AutoTokenizer
from transformers import DistilBertTokenizer
from transformers import TFDistilBertForSequenceClassification

loaded_tokenizer = DistilBertTokenizer.from_pretrained('/content/saved_models')
loaded_model = TFDistilBertForSequenceClassification

import difflib
from fastapi import APIRouter, Depends
from .. import crud , schemas,models
from postgre_database.database import SessionLocal
from sqlalchemy.orm import Session
import random
#sys.path.append('E:\college\graduation_project\Tripto-1\models')
from AImodels.recommendation_system_1 import tfIDF ,recommenderEngine,userBasedCollaborativeModel
#from ...AImodels import recommendation_system_1
app = APIRouter()
def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
               
def get_places_category(cat:str,db:Session = Depends(get_db)):
    return crud.getPlacesByType(db=db,TypeName=cat)



# def get_response(message, data, model, tokenizer, le, device, max_seq_len):
#     intent = get_prediction(message, model, tokenizer, device, max_seq_len)
#     result = ""

#     # Check if the message matches a specific pattern in intents
#     for i in data['intents']:
#         for pattern in i["patterns"]:
#             if difflib.SequenceMatcher(None, message, pattern).ratio() > 0.8:
#                 result = random.choice(i["responses"])
#                 break
#         if result:
#             break

#     if not result:
#         for i in data['intents']:
#             if i["tag"] == intent:
#                 result = random.choice(i["responses"])
#                 break

#     if not result:
#         result = "I'm sorry, I didn't understand your question."
#     return f"Intent: {intent}\nResponse: {result}"


# import json

# # Load intent data from JSON file
# with open("intents.json", "r") as f:
#     data = json.load(f)

# while True:
#   message =  input("User: ")
#   if message=="exit":
#       break
#   response = get_response(message, data, model, tokenizer, le, device, max_seq_len)
#   print(response)

def get_places_category(cat:str,db:Session = Depends(get_db)):
    return crud.getPlacesByType(db=db,TypeName=cat)


@app.get("/chatReco")
def handle_intent(user_message:str, intent:str):
    if intent == "greeting":
        # Handle greeting intent
        #hyro7 ygeb ay response mn greetings bto3 intents.json
        response = "Hello! How can I assist you today?"
    elif intent == "nearby":
        # Handle goodbye intent
        response = "Goodbye! Have a great day!"
    elif intent == "category":
        # Handle thank you intent
        response = "You're welcome! It was my pleasure to help."
    elif intent == "description":
        # Handle question intent
        response = "I'm sorry, I don't have the answer to that question."
    elif intent == "price":
        # Handle question intent
        response = "I'm sorry, I don't have the answer to that question."
    elif intent == "location":
        # Handle question intent
        response = "I'm sorry, I don't have the answer to that question."
    elif intent == "activity":
        # Handle question intent
        response = "I'm sorry, I don't have the answer to that question."
    elif intent == "goodbye":
        # Handle question intent
        #hyro7 ygeb ay response mn goodbye bto3 intents.json
        response = "I'm sorry, I don't have the answer to that question."        
    elif intent == "thanks":
        # Handle question intent
        #hyro7 ygeb ay response mn thanks bto3 intents.json
        response = "I'm sorry, I don't have the answer to that question."
    else:
        # Handle unknown intent
        response = "I'm sorry, I didn't understand your request."

    return response