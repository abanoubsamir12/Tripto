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



places_CSV = r'E:\college\graduation_project\Tripto-1\Datasets\Places.csv'
ratings_csv_path = r'E:\college\graduation_project\Tripto-1\Datasets\Ratings.csv'
user_places_csv_path = r'E:\college\graduation_project\Tripto-1\Datasets\user_places_viewed.csv'
n_recommendations = 10
"""Loading Data"""

# Detect the file encoding
with open(places_CSV, 'rb') as f:
    result = chardet.detect(f.read())
encoding = result['encoding']
# Read the CSV file with the detected encoding
places = pd.read_csv(places_CSV, encoding=encoding)

places_description = places["description"].tolist()
user_places_viewed = pd.read_csv(user_places_csv_path)
ratings = pd.read_csv(ratings_csv_path, index_col=0)
# print(ratings)
def tfIDF (places_description):
    tfidf_vectorizer = TfidfVectorizer()
    # fit and transform the documents to get the TF-IDF scores in a matrix
    tfidf_scores = tfidf_vectorizer.fit_transform(places_description)
    return tfidf_scores

# print(tfIDF(places_description))

def getUserActivity(userid, user_places_viewed):
  if userid in user_places_viewed["userid"].values:
      userActivity = user_places_viewed.loc[user_places_viewed["userid"] == userid]
        
  places_viewed=np.where(userActivity == 1)[0]
  return places_viewed+1
# getUserActivity(1,user_places_viewed)

def contentBasedModel(tfidf_scores, userid, user_places_viewed, n_recommendations=5):
  # Get user viewed places
  places_viewed = getUserActivity(userid, user_places_viewed)  
  # Compute cosine similarity between all pairs of documents
  cosine_similarities = cosine_similarity(tfidf_scores)
  # Define the index of the place to get recommendations for
  similarities_places_viewed = []
  for place_viewed in places_viewed:
    # Get the cosine similarities between the place and all other places
    similarities = cosine_similarities[place_viewed-1]
    top_indices = similarities.argsort()[-n_recommendations:-1]
    similarities_places_viewed.append(top_indices+1)
  
  if similarities_places_viewed:
    return np.unique(np.concatenate(similarities_places_viewed)).tolist()
  else:
    return []  # or handle it according to your requirements



# contentBasedModel(tfIDF(places_description),21,user_places_viewed,10)

#matched users
#
def itemBasedCallobrativeModel(user_id, user_places_viewed, places, n_recommendations=5):
    user_similarity_matrix = cosine_similarity(user_places_viewed)
    recommended_places = []
    # Find the index of the user in the similarity matrix
    # user_index = user_places_viewed.index.get_loc(user_id)
    user_index = user_places_viewed[user_places_viewed.userid == user_id].index
    check = 0
    user_rows = user_places_viewed[user_places_viewed['userid'] == user_id]

    # Iterate over the places for the user
    # for index, row in user_rows.iterrows():
    #     for i in row[1:]:  # Assuming the places start from column 1
    #         check += i
    #     print(index)    
    check= user_rows.columns[1:]

    # Sum all the places
    check_sum= user_rows[check].sum().sum()
    print(check)
    print(check_sum)
    if (check_sum == 0):
      return recommended_places
    # Get the similarity scores between the user and all other users
    user_similarities = user_similarity_matrix[user_index] 
    
    # Sort the indices of the users by their similarity scores
    similar_user_indices = user_similarities.argsort()[::-1]   
    
    # Get the top similar users
    top_similar_user_indices = similar_user_indices[1:n_recommendations+1]
    
    # Get the places that the user has viewed
    try:
        viewed_places = user_places_viewed.loc[user_id][user_places_viewed.loc[user_id] == 1].index
    except KeyError:
        viewed_places = []
   
    # Convert DataFrame to numpy array before indexing
    user_places_viewed_array = user_places_viewed.to_numpy()
    
    # Get the places that the similar users have viewed
    similar_users_viewed_places = np.where(user_places_viewed_array[top_similar_user_indices] == 1)
    similar_users_viewed_places = similar_users_viewed_places[1]
    similar_users_viewed_places = similar_users_viewed_places.reshape(-1)
    similar_users_viewed_places = np.unique(similar_users_viewed_places)
    
    # Get the recommendations by finding the places that the similar users have viewed but the user has not viewed
    recommendations = list(set(similar_users_viewed_places) - set(viewed_places))[:n_recommendations]
    # print(places)
    
    for i in recommendations:
        # placename = places["placeName"][int(i) - 1]
        index = int(i) - 1
       
        placeid=places["id"][index]
        recommended_places.append(placeid)
    
    return recommended_places


# itemBasedCallobrativeModel(0, user_places_viewed, places, 10)

def topRatedPlacesModel(user_id, ratings, top_n=5):
    # Compute the similarity matrix using cosine similarity
    item_sim_matrix = cosine_similarity(ratings.T)
    
    # Get the ratings of the items rated by the user
    user_ratings = ratings.loc[user_id].dropna()
    
    # Remove duplicate column labels from ratings
    ratings = ratings.loc[:, ~ratings.columns.duplicated()]
    
    # Select only the relevant columns in user_ratings
    relevant_columns = user_ratings.index
    user_ratings = user_ratings.loc[relevant_columns]
    
    # Compute the weighted average of the item similarities for each item
    item_sim_df = pd.DataFrame(item_sim_matrix, columns=ratings.columns)
    item_scores = pd.Series(0, index=item_sim_df.columns)
    for item in item_sim_df.columns:
      weighted_sum = (item_sim_df[item].values * user_ratings).sum()
      
      sum_of_weights = item_sim_df[item].sum()
      # print(f"item: {item}, weighted_sum: {weighted_sum}, sum_of_weights: {sum_of_weights}")
      item_scores.at[item] = np.mean(weighted_sum / sum_of_weights)

    
    # Sort the item scores in descending order and return the top N items
    recommendations = item_scores.sort_values(ascending=False).head(top_n)
    recommended_places = recommendations.index.tolist()
    
    return recommended_places

# user_id = 10
# recommended_places = topRatedPlacesModel(user_id,ratings,5)
# print(f"Recommended places for user {user_id}: {recommended_places}")

def recommenderEngine(tfidf_scores,userid):
  contentBasedModelResults=contentBasedModel(tfidf_scores,userid,user_places_viewed,n_recommendations)
  itemBasedCallobrativeModelResults=itemBasedCallobrativeModel(userid, user_places_viewed,places, n_recommendations)
  topRatedPlacesModelResults=topRatedPlacesModel(userid,ratings)

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
  print (distinct_list[:n_recommendations])      
  return distinct_list[:n_recommendations]
 

# recommenderEngine(tfIDF(places_description),17)