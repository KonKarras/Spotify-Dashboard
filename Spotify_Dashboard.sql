-- Create a new database for the Spotify Dashboard
CREATE DATABASE Spotify_Dashboard;

-- Use the newly created database
USE Spotify_Dashboard;

-- Create a table to store the hip hop playlist data
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

-- Import the stored "spotify_playlist_data_2.csv" file to the newly created table through the "Table Data Import Wizard"

-- Select all data from the hip_hop_playlist table
SELECT 
    *
FROM
    hip_hop_playlist;

-- Select only the Release_Date column from the hip_hop_playlist table
SELECT 
    Release_Date
FROM
    hip_hop_playlist;

-- Select the Release_Date column and extract the year from it as Release_Year
SELECT 
    YEAR(Release_Date) as Release_Year
FROM
    hip_hop_playlist;

-- Select all columns along with the extracted Release_Year from the hip_hop_playlist table
SELECT 
    Track_URI,
    Track_Name,
    Main_Artist,
    Album,
    Track_Popularity,
    YEAR(Release_Date) as Release_Year,
    Album_Popularity,
    Artist_Popularity,
    Artist_Followers,
    Artist_Genres
FROM
    hip_hop_playlist;
    
-- Store the result dataset as "spotify_playlist_data_3.csv"