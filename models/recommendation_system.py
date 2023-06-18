# -*- coding: utf-8 -*-
"""Recommendation-System.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/137vfmB5yLNGP0yqqSVvKad5xzhfUIsE8

Imports
"""

import pandas as pd
import numpy as np
import chardet
from sklearn.metrics.pairwise import cosine_similarity
from sklearn.feature_extraction.text import TfidfVectorizer
import io
import requests

"""Loading Data"""

# Detect the file encoding
with open('places.csv', 'rb') as f:
    result = chardet.detect(f.read())
encoding = result['encoding']

# Read the CSV file with the detected encoding
places = pd.read_csv('places.csv', encoding=encoding)
places_description = places["Description"].tolist()
user_places_viewed = pd.read_csv('user_places_viewed.csv', index_col=0)
ratings = pd.read_csv('Ratings.csv', index_col=0)

def tfIDF (places_description):
    tfidf_vectorizer = TfidfVectorizer()
    # fit and transform the documents to get the TF-IDF scores in a matrix
    tfidf_scores = tfidf_vectorizer.fit_transform(places_description)
    return tfidf_scores

def getUserActivity(userid,user_places_viewed):
  userActivity=user_places_viewed.loc[userid]
  places_viewed=np.where(userActivity == 1)[0]
  return places_viewed+1

getUserActivity(1,user_places_viewed)

def contentBasedModel (tfidf_scores,userid,user_places_viewed,n_recommendations=5):
  #get user viewed places
  places_viewed=getUserActivity(userid,user_places_viewed)
  # compute cosine similarity between all pairs of documents
  cosine_similarities = cosine_similarity(tfidf_scores)
  # define the index of the place to get recommendations for
  similarities_places_viewed=[]
  for place_viewed in places_viewed:
    # get the cosine similarities between the place and all other places
    similarities = cosine_similarities[place_viewed-1]
    top_indices = similarities.argsort()[-n_recommendations:-1]
    similarities_places_viewed.append(top_indices)
  return np.unique(np.concatenate(similarities_places_viewed)).tolist()

contentBasedModel(tfIDF(places_description),1,user_places_viewed,10)

#matched users
#
def itemBasedCallobrativeModel(user_id, user_places_viewed, n_recommendations=5):
    user_similarity_matrix = cosine_similarity(user_places_viewed)
    # Find the index of the user in the similarity matrix
    user_index = user_places_viewed.index.get_loc(user_id)
    # Get the similarity scores between the user and all other users
    user_similarities = user_similarity_matrix[user_index]
    # Sort the indices of the users by their similarity scores
    similar_user_indices = user_similarities.argsort()[::-1]
    # Get the top similar users
    top_similar_user_indices = similar_user_indices[1:n_recommendations+1]
    # Get the places that the user has viewed
    viewed_places = user_places_viewed.loc[user_id][user_places_viewed.loc[user_id] == 1].index
    # Get the places that the similar users have viewed
    similar_users_viewed_places = user_places_viewed.loc[user_places_viewed.index[top_similar_user_indices]][user_places_viewed.loc[user_places_viewed.index[top_similar_user_indices]] == 1].stack().reset_index()['level_1'].value_counts().index
    # Get the recommendations by finding the places that the similar users have viewed but the user has not viewed
    recommendations = list(set(similar_users_viewed_places) - set(viewed_places))[:n_recommendations]
    recommended_places=[]
    for i in recommendations:
      placename=places["PlaceName"][int(i)-1]
      placeid=places["ID"][int(i)-1]
      recommended_places.append(placeid)
    return recommended_places

itemBasedCallobrativeModel(0, user_places_viewed, 10)

def topRatedPlacesModel(user_id, ratings,top_n=5):
    # Compute the similarity matrix using cosine similarity
    item_sim_matrix = cosine_similarity(ratings.T)
    # Get the ratings of the items rated by the user
    user_ratings = ratings.loc[user_id].dropna()
    # Compute the weighted average of the item similarities for each item
    item_weights = item_sim_matrix[user_ratings.index.astype(int)-1]
    item_scores = item_weights.dot(user_ratings) / item_weights.sum(axis=1)
    item_scores = pd.Series(item_scores, index=ratings.columns)
    # Sort the item scores in descending order and return the top N items
    recommendations = item_scores.sort_values(ascending=False).head(top_n)
    int_list = [int(x) for x in recommendations.index.tolist()]
    return int_list

user_id = 10
recommended_places = topRatedPlacesModel(user_id,ratings)
print(f"Recommended places for user {user_id}: {recommended_places}")

def recommenderEngine(tfidf_scores,userid,user_places_viewed,ratings,n_recommendations=10):
  contentBasedModelResults=contentBasedModel(tfidf_scores,userid,user_places_viewed,n_recommendations)
  itemBasedCallobrativeModelResults=itemBasedCallobrativeModel(userid, user_places_viewed, n_recommendations)
  topRatedPlacesModelResults=topRatedPlacesModel(user_id,ratings)
  # Concatenate the results
  concatenated_places = np.concatenate((contentBasedModelResults, itemBasedCallobrativeModelResults,topRatedPlacesModelResults))
  # Create a dictionary to store frequency count
  frequency_count = {}
  # Update frequency count for each place
  for place in concatenated_places:
    frequency_count[place] = frequency_count.get(place, 0) + 1
  # Sort the places based on frequency count
  sorted_places = sorted(concatenated_places, key=lambda x: frequency_count[x], reverse=True)
  # Convert the sorted places to a numpy array
  sorted_places = np.array(sorted_places).tolist()
  distinct_list = []
  for item in sorted_places:
    if item not in distinct_list:
        distinct_list.append(item)
  return distinct_list

recommenderEngine(tfIDF(places_description),10,user_places_viewed,ratings,5)