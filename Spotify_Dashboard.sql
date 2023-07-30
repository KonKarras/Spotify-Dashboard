CREATE DATABASE Spotify_Dashboard;

USE Spotify_Dashboard;

CREATE TABLE hip_hop_playlist (
	Track_URI VARCHAR(250) NOT NULL,
    Track_Name VARCHAR(250) NOT NULL,
    Main_Artist VARCHAR(250) NOT NULL,
    Album VARCHAR(250) NOT NULL,
    Track_Popularity INT NOT NULL,
    Release_Date DATE NOT NULL,
    Album_Popularity INT NOT NULL,
    Artist_Popularity INT NOT NULL,
    Artist_Followers INT NOT NULL, 
    Artist_Genres VARCHAR(250) NOT NULL
);

LOAD DATA LOCAL INFILE 'C:/Users/Konstantinos/Desktop/Book1.csv'
INTO TABLE hip_hop_playlist
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(Track_URI, Track_Name, Main_Artist, Album, Track_Popularity, Release_Date, Album_Popularity, Artist_Popularity, Artist_Followers, Artist_Genres);