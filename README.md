# Spotify Hip Hop Playlist Dashboard

## Overview
The primary objective of this project is to analyze, visualize and gain insights into a curated hip hop playlist on Spotify (found here: https://open.spotify.com/playlist/1PIy8ktH4S4BwZx9JAB5zN?si=e257dbe16c364950), exploring trends like track popularity, album popularity, and artist popularity and followers over time. The process involves pulling data from the Spotify API using Python, preprocessing it using Excel and SQL, and creating interactive visualizations using Tableau. The final results are presented on a Tableau dashboard for broader accessibility and insights sharing.

### Python
Utilizing the Spotipy library, the Python script ("Spotify_Dashboard.ipynb" file) establishes a connection with the Spotify API without user authentication. Then, it extracts track information from the hip hop playlist, including Track URI, Track Name, Main Artist, Album, Track Popularity, Release Date, Album Popularity, Artist Popularity, Artist Followers, and Artist Genres. All data is collected using pagination to ensure that all 1431 songs and their associated details are retrieved. The fetched data is saved in a Pandas DataFrame and then exported to an Excel file named "spotify_playlist_data_1.xlsx".

### Excel
After exporting the DataFrame to Excel, the column names are adjusted, replacing whitespaces with underscores for consistency and easy integration with SQL. The modified dataset is then saved as a CSV file named "spotify_playlist_data_2.csv".

### SQL
The CSV file containing the track data is imported into an SQL database for further processing ("Spotify_Dashboard.sql" file). The Release_Date column gets filtered to extract only the year from the complete date, resulting in a cleaner dataset. The filtered dataset is saved as "spotify_playlist_data_3.csv".

### Tableau
The final processed dataset gets imported into Tableau for visualization and analysis ("Spotify_Hip_Hop_Playlist_Dashboard.twbx" file).
The Tableau dashboard consists of three interactive bar charts, each presenting specific insights:

  a. Track Popularity by Year & Genre: visualizes the popularity of tracks, segmented by release year and artist genre.
  
  b. Album Popularity by Year & Genre: displays the popularity of albums, categorized by release year and artist genre.
  
  c. Artist Popularity & Followers by Year & Genre: explores the relationship between artist popularity and their followers, filtered by release year and artist         genre.
  
The interactive nature of the dashboard allows users to filter and explore data according to their preferences and interests.

Note: the final version of the dashboard can be found here too: https://public.tableau.com/app/profile/konstantinos.karras/viz/SpotifyHipHopPlaylistDashboard/SpotifyHipHopPlaylistDashboard 

## Conclusion
In conclusion, this project demonstrates the power of data analytics and visualization in understanding trends within a curated hip hop playlist on Spotify (liked by 39808 people). By integrating Python, Excel, SQL, and Tableau, the project presents a comprehensive and interactive analysis, allowing users to explore the playlist's popularity, track trends, and artist dynamics over time. This repository serves as a resource for anyone interested in exploring the project, accessing the data, and reproducing the visualizations to draw further insights from the provided dataset.
