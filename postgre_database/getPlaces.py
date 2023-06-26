import csv
import sqlite3

# Open the CSV file and read the data
conn = sqlite3.connect('tripto.db')
cursor = conn.cursor()

dict = { 'unknown':1,
'religious':2,
'pharaonic':3,
'modern':4,'ancient':5, 'natural':6, 'romanian':7,'humanly':8,
'fun':10, 'Islamic':11,'Coptic':12
}

with open('places.csv', 'r') as csvfile:
    reader = csv.DictReader(csvfile)
    for row in reader:
        name = row['Name']
        city = row['Address']
        id = row['ID']
        description = row['Description']
        geolat = row['Geolat']
        geolng = row['Geolng']
        print(name)
        #first_name = row['Given Name']
        #last_name = row['Family Name']
        #email = row['E-mail Address']
        #age = int(row['Age'])
        try:
            cursor.execute('''INSERT INTO places (name, city, id, description , geolat,geolng)
                                  VALUES (?, ?, ?, ?, ?, ?)''', (name, city, id, description, geolat, geolng))
        except:
            continue



    conn.commit()
    conn.close()