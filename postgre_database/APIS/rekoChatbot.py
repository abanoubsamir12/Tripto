
from pyexpat import model
import tokenize
import torch
import torch.nn as nn
from fuzzywuzzy import fuzz
from transformers import AutoModel, AutoTokenizer
from transformers import DistilBertTokenizer
from transformers import TFDistilBertForSequenceClassification
device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
max_seq_len = 8

#loaded_tokenizer = DistilBertTokenizer.from_pretrained('/content/saved_models')
#loaded_model = TFDistilBertForSequenceClassification

import difflib
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
               

import re

def preprocess_text(text):
    text = re.sub(r'[^a-zA-Z ]+', '', text)
    text = text.lower()
    return text

def get_prediction(text, model, tokenizer, device, max_seq_len):
    text = preprocess_text(text)
    test_text = [text]
    model.eval()

    tokens_test_data = tokenizer(
        test_text,
        max_length=max_seq_len,
        pad_to_max_length=True,
        truncation=True,
        return_token_type_ids=False
    )

def get_response(message, data, model, tokenizer, le, device, max_seq_len):
    intent = get_prediction(message, model, tokenizer, device, max_seq_len)
    result = ""

    # Check if the message matches a specific pattern in intents
    for i in data['intents']:
        for pattern in i["patterns"]:
            if difflib.SequenceMatcher(None, message, pattern).ratio() > 0.8:
                result = random.choice(i["responses"])
                break
        if result:
            break

    if not result:
        for i in data['intents']:
            if i["tag"] == intent:
                result = random.choice(i["responses"])
                break

    if not result:
        result = "I'm sorry, I didn't understand your question."
    return f"Intent: {intent}\nResponse: {result}"


# import json

# # Load intent data from JSON file
# with open("intents.json", "r") as f:
#     data = json.load(f)

# while True:
#   message =  input("User: ")
#   if message=="exit":
#       break
#   response = get_response(message, data, loaded_model, loaded_tokenizer, le, device, max_seq_len)
#   print(response)




@app.get("/chatReco")
def handle_intent(user_message:str, intent:str, db:Session = Depends(get_db)):
    if intent == 'greeting':
        # Handle greeting intent
        #hyro7 ygeb ay response mn greetings bto3 intents.json
        response = "Hello! How can I assist you today?"

    elif intent == 'nearby':
        # Handle goodbye intent
        
        response = "Goodbye! Have a great day!"

    elif intent == 'category':
        
        
        category=classify_message(user_message)
        places = list(crud.getPlacesByType(db=db,TypeName=category))        
        response = "you can visit many places like : "
        for place in places:
            response += place.placeName
            response += ", "
    
    elif intent == "description":
        print("here")
        # Handle question intent

        #extract placename function
    
        #description

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

    elif intent == "recommendation":

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
        print("last")
        response = "I'm sorry, I didn't understand your request."

    return response





categories = {
    "unknown": ["unknown"],
    "religious": ["religious", "religion"],
    "pharaonic": ["pharaonic", "pharaoh", "pharaohs"],
    "modern": ["modern"],
    "ancient": ["ancient"],
    "natural": ["natural"],
    "romanian": ["romanian"],
    "humanly": ["humanly", "human"],
    "fun": ["fun"],
    "islamic": ["islamic", "islam"],
    "coptic": ["coptic"]
}

@app.get("/extractCategory")
def classify_message(message):
    words = message.lower().split()

    match_scores = {category: 0 for category in categories}

    for word in words:
        for category, keywords in categories.items():
            for keyword in keywords:
                match_score = fuzz.ratio(word, keyword)
                if match_score > match_scores[category]:
                    match_scores[category] = match_score

    max_score = max(match_scores.values())
    classified_category = [category for category, score in match_scores.items() if score == max_score]

    return classified_category

