from fastapi import APIRouter, Depends, HTTPException,FastAPI
from datetime import  timedelta , datetime , date
from sqlalchemy.orm import Session
#from http_exceptions import HTTPException
from postgre_database import models , schemas , crud, database
from postgre_database.database import SessionLocal, engine 
import tensorflow as tf
from tensorflow import keras
from nltk.stem import WordNetLemmatizer
lemmatizer = WordNetLemmatizer()
import json
import pickle
from nltk.tokenize import word_tokenize
from textblob import TextBlob
import numpy as np
from keras.models import Sequential
from keras.layers import Dense, Activation, Dropout
from keras.optimizers import SGD
import random

import nltk

#nltk.download('punkt')
#nltk.download('wordnet')

import pickle




from postgre_database.database import SessionLocal, engine

app = APIRouter()


def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
        

with open('AImodels\chatbot\words.pkl', 'rb') as f:
    words = pickle.load(f)

with open('AImodels\chatbot\classes.pkl', 'rb') as f:
    classes = pickle.load(f)        

model = keras.models.load_model('AImodels\chatbot\chatbot_model.h5')

data_file =  open('AImodels\chatbot\intents.json').read()
intents = json.loads(data_file)



def clean_up_sentence(sentence):
    # Use TextBlob to correct any spelling mistakes in the sentence
    sentence = str(TextBlob(sentence).correct())
    sentence_words = word_tokenize(sentence)
    sentence_words = [lemmatizer.lemmatize(word.lower()) for word in sentence_words if word.isalpha()]
    return sentence_words

def bow(sentence, words):
    bag = [0] * len(words)
    for s in clean_up_sentence(sentence):
        for i, w in enumerate(words):
            if w == s:
                bag[i] = 1
    return np.array(bag)

def predict_class(sentence, model):
    p = bow(sentence, words)
    res = model.predict(np.array([p]))[0]
    results = [[i, r] for i, r in enumerate(res) if r > 0.25]
    results.sort(key=lambda x: x[1], reverse=True)
    return_list = []
    for r in results:
        return_list.append({"intent": classes[r[0]], "probability": str(r[1])})
    if not return_list:
        return_list.append({"intent": "sorry,i can not understand", "probability": "1"})
    return return_list

def get_response(ints):
    tag = ints[0]['intent']
    list_of_intents = intents['intents']
    for i in list_of_intents:
        if i['tag'] == tag:
            result = random.choice(i['responses'])
            break
    return result

def chatbot_response(text):
    ints = predict_class(text, model)
    res = get_response(ints)
    return res


@app.get('/chatting')
def get_chatbot_reponse(text:str,db:Session = Depends(get_db)):
    response = chatbot_response(text=text)
    return response
