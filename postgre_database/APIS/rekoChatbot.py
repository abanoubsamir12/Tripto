from pyexpat import model as pyexpat_model
import tensorflow as tf
import torch.nn as nn
from fuzzywuzzy import fuzz
from transformers import AutoModel, AutoTokenizer
from transformers import DistilBertTokenizer
from transformers import TFDistilBertForSequenceClassification
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
from .recommendationEngine_services import get_recommended
import keras

from transformers import DistilBertTokenizer, TFDistilBertForSequenceClassification

#loaded_model = DistilBertTokenizer.from_pretrained('/postgre_database/APIS/ChatbotWeights')
#loaded_tokenizer = TFDistilBertForSequenceClassification.from_pretrained('ChatbotWeights/chatbot_model.h5', use_auth_token=True)


import json
#loaded_model = keras.models.load_model('postgre_database\APIS\chatbot_model.h5')


# Specify the path to your JSON file
file_path = "postgre_database\APIS\ChatbotWeights\tokenizer_config.json"

# Open the JSON file
# with open(file_path, "r") as file:
#     # Load the JSON data
#     loaded_tokenizer = json.load(file)




app = APIRouter()

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()               


@app.get('/getResponseReeko')
def getResponse(test_text:str):
    predict_input = loaded_tokenizer.encode(test_text,
                                 truncation=True,
                                 padding=True,
                                 return_tensors="tf")

    output = loaded_model(predict_input)[0]

    prediction_value = tf.argmax(output, axis=1).numpy()[0]
    print("omaaaaaaaaaaaaaaaaaaaaaar" + prediction_value)
    return prediction_value


def capitalize_first_char(string):
    if string:
        return string[0].upper() + string[1:]
    return string

@app.get('/getPlacesNames')
def get_places_names(db:Session = Depends(get_db)):
    return crud.getPlacesNames(db=db)


def preprocess_sentence(sentence):
    # Remove special characters and convert to lowercase
    sentence = "".join(e for e in sentence if e.isalnum()).lower()
    return sentence

def classify_sentence(sentence, word_list):
    sentence = preprocess_sentence(sentence)
    match_scores = {word: fuzz.ratio(sentence, word.lower()) for word in word_list}
    max_score = max(match_scores.values())
    classified_words = [word for word, score in match_scores.items() if score == max_score]
    return classified_words


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
def classify_message(message:str):
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

@app.get("/chatReco")
async def handle_intent(user_message:str,user_id: int ,nationality:str,intent:str, db:Session = Depends(get_db)):
    places_names = crud.getPlacesNames(db=db)
    place_name = classify_sentence(sentence=user_message,word_list=places_names)[0]
        
    place = crud.getPlaceByName(placeName=place_name ,db=db)
        
    if intent == 'greeting':
        response = "Hello! How can I assist you today?"

    elif intent == 'category':        

        category=classify_message(user_message)[0]
        category = capitalize_first_char(category)
        places = list(crud.getPlacesByType(db=db,TypeName=category))   
        response = "you can visit many places like : "
        if places:
            for place in places:
                response += place.placeName
                response += ", "
        else:
            response = "There is no places to this category till now, sorry <3"
    
    elif intent == "description":
    
        #description
        response =place_name + " : " +place.description

    elif intent == "price":
        # Handle question intent
        response = "here is the ticket price of "+ place_name + " : " + place.ticketPrice + " LE "

    elif intent == "location":
        # Handle question intent
        response = "it is located in : " + place.location 

    elif intent == "activity":
        # Handle question intent
        activities = crud.getActivitesForPlace(place.id , db=db)
        if  len(activities) == 1:
            response = "there is one activity till now and it is : " + activities[0]
        elif len(activities) >1:
            response = "there are many activities to do and here are some examples : "
            for activity in activities:
                response += activity.name
        response = "I'm sorry, there are no available activities at this place now, what about going to the " + place_name +", discover its activities and tell us."

    elif intent == "recommendation":
        places_cor =  get_recommended(user_id=user_id, nationality=nationality, db=db)
        places = await places_cor
        
        response = "here are some of your recommended places : "
        for place in places:
            response += place.placeName 
            response += ", "
        
    elif intent == "goodbye":

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
