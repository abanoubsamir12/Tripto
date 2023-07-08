import json
import random

import numpy as np
import pickle
import tensorflow as tf
from tensorflow.keras.layers import Dense, Dropout
from tensorflow.keras.models import Sequential
from tensorflow.keras.optimizers import Adam
from nltk.stem import WordNetLemmatizer
from nltk.tokenize import word_tokenize

# Load the intents file
with open('intents.json', 'r') as f:
    intents = json.load(f)

# Tokenize words and create documents
lemmatizer = WordNetLemmatizer()
documents = []
words = []
classes = []
for intent in intents['intents']:
    for pattern in intent['patterns']:
        # tokenize each word
        w = word_tokenize(pattern)
        words.extend(w)
        # add documents in the corpus
        documents.append((w, intent['tag']))
        if intent['tag'] not in classes:
            classes.append(intent['tag'])

# lemmatize and lower each word and remove duplicates
words = sorted(list(set([lemmatizer.lemmatize(w.lower()) for w in words if w.isalpha()])))

# sort classes
classes = sorted(list(set(classes)))

# create the training data
training = []
output_empty = [0] * len(classes)
for doc in documents:
    # initialize our bag of words
    bag = []
    # list of tokenized words for the pattern
    pattern_words = doc[0]
    # lemmatize each word - create base word, in an attempt to represent related words
    pattern_words = [lemmatizer.lemmatize(word.lower()) for word in pattern_words if word.isalpha()]
    # create our bag of words array with 1, if word match found in the current pattern
    for w in words:
        bag.append(1) if w in pattern_words else bag.append(0)

    # output is a '0' for each tag and '1' for the current tag (for each pattern)
    output_row = list(output_empty)
    output_row[classes.index(doc[1])] = 1

    training.append([bag, output_row])

# shuffle our features and turn into np.array
random.shuffle(training)
train_x = np.array([i[0] for i in training])
train_y = np.array([i[1] for i in training])

# Define the model
model = Sequential([
    Dense(128, input_shape=(len(words),), activation='relu'),
    Dropout(0.5),
    Dense(64, activation='relu'),
    Dropout(0.5),
    Dense(len(classes), activation='softmax')
])

# Compile the model
model.compile(optimizer=Adam(learning_rate=0.001), loss='categorical_crossentropy', metrics=['accuracy'])

# Fit the model
model.fit(train_x, train_y, epochs=500, batch_size=8, verbose=1)

# Save the model
model.save('chatbot_model.h5')
# Save the classes and words to pickle files
with open('classes.pkl', 'wb') as f:
    pickle.dump(classes, f)

with open('words.pkl', 'wb') as f:
    pickle.dump(words, f)

def clean_up_sentence(sentence):
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
