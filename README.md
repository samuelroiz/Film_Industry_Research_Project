# Film_Industry_Research_Project
Using API services, websites, and data from the film industry. Interested in using movie, TV show or actor images and/or data in the application. The API is a system is provided for researchers and data teams to programmatically fetch and use the API, websites, data and images.

This ETL project looked to create a Film Industry database, to do this we used several different sources. 
- IMDB api
- OMDB api
- Kaggle

The data base is formed by several dataframes:
- movie_votes:
- revenue
- actors
- movie budget
- genre

Each of these dataframes was created by a different member of our group, that member was responsible for extracting and transforming the file to be ready to be Loaded to a common SQL Database. Each member exported it's clean dataframe into a csv file to be loaded to SQL through a common pandas file.

All of them are connected through Primary and Foreign keys, these were the IMDB or OMDB code, a unique code for each movie, or the movie name.
