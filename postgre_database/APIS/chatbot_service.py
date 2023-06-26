from fastapi import APIRouter, Depends, HTTPException,FastAPI
from datetime import  timedelta , datetime , date
from sqlalchemy.orm import Session
#from http_exceptions import HTTPException
from Sqlite_database import models , schemas , crud, database
from Sqlite_database.database import SessionLocal, engine 
import tensorflow as tf
from tensorflow import keras
from nltk.stem import WordNetLemmatizer
lemmatizer = WordNetLemmatizer()
import json
import pickle

import numpy as np
from keras.models import Sequential
from keras.layers import Dense, Activation, Dropout
from keras.optimizers import SGD
import random

import nltk

#nltk.download('punkt')
#nltk.download('wordnet')

import pickle




app = APIRouter()


with open('models\chatbot\words.pkl', 'rb') as f:
    words = pickle.load(f)

with open('models\chatbot\classes.pkl', 'rb') as f:
    classes = pickle.load(f)        

model = keras.models.load_model('models\chatbot\chatbot_model.h5')

data_file =  open('models\chatbot\intents.json').read()
intents = json.loads(data_file)



def clean_up_sentence(sentence):
    # tokenize the pattern - split words into array
    sentence_words = nltk.word_tokenize(sentence)
    # stem each word - create short form for word
    sentence_words = [lemmatizer.lemmatize(word.lower()) for word in sentence_words]
    return sentence_words
# return bag of words array: 0 or 1 for each word in the bag that exists in the sentence

def bow(sentence, words, show_details=True):
    # tokenize the pattern
    sentence_words = clean_up_sentence(sentence)
    # bag of words - matrix of N words, vocabulary matrix
    bag = [0]*len(words)
    for s in sentence_words:
        for i,w in enumerate(words):
            if w == s:
                # assign 1 if current word is in the vocabulary position
                bag[i] = 1
                if show_details:
                    print ("found in bag: %s" % w)
    return(np.array(bag))

def predict_class(sentence, model):
    # filter out predictions below a threshold
    p = bow(sentence, words,show_details=False)
    res = model.predict(np.array([p]))[0]
    ERROR_THRESHOLD = 0.25
    results = [[i,r] for i,r in enumerate(res) if r>ERROR_THRESHOLD]
    # sort by strength of probability
    results.sort(key=lambda x: x[1], reverse=True)
    return_list = []
    for r in results:
        return_list.append({"intent": classes[r[0]], "probability": str(r[1])})
    return return_list

def getResponse(ints, intents_json):
    tag = ints[0]['intent']
    list_of_intents = intents_json['intents']
    for i in list_of_intents:
        if(i['tag']== tag):
            result = random.choice(i['responses'])
            break
    return result

def chatbot_response(text , intents , model):
    ints = predict_class(text, model)
    res = getResponse(ints, intents)
    return res




@app.get('/chatting')
def get_chatbot_reponse(text:str):
    response = chatbot_response(text=text , intents=intents , model=model)
    return response
