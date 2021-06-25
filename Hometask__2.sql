CREATE DATABASE "Hometask"
    WITH 
    OWNER = test_user
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1;

CREATE TABLE IF NOT EXISTS Performers (
	Id SERIAL PRIMARY KEY,
	Name VARCHAR(50) NOT NULL UNIQUE,
	Genre_id INTEGER REFERENCES Genres(Id) NOT NULL
); 

CREATE TABLE IF NOT EXISTS Albums (
	Id SERIAL PRIMARY KEY,
	Album_name VARCHAR(50) NOT NULL,
	Release_date INTEGER NOT NULL,
	Performer_id INTEGER REFERENCES Performers(Id) NOT NULL
); 

CREATE TABLE IF NOT EXISTS Songs (
	Id SERIAL PRIMARY KEY,
	Song_name VARCHAR(50) NOT NULL,	
	Song_duration INTEGER NOT NULL,
	Album_id INTEGER REFERENCES Albums(Id) NOT NULL
); 

CREATE TABLE IF NOT EXISTS Genres (
	Id SERIAL PRIMARY KEY,
	Genre_name VARCHAR(50) NOT NULL UNIQUE,	
); 
