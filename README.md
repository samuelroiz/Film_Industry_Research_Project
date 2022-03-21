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

## Data Gather  

### <b> Database structure </b> 

![Database structure](https://github.com/samuelroiz/Film_Industry_Research_Project/blob/sven/Sven_Branch/image/database_structure.png)

<p>
The following database structure is a known method in data modeling. It is named the relationship model and used for displaying the relationships between the tables. The database structure changes over time due to changes in variables and tables. 
</p>

### <b> API Keys </b>
<p>
Sources used in this project:
IMDB 
OMDB 
Kaggle.
The data pulled from Kaggle were flat files, meanwhile the data from IMDB and OMDB was extracted through their API’s.
</p>

![Extraction of API Keys](https://github.com/samuelroiz/Film_Industry_Research_Project/blob/sven/Sven_Branch/image/extraction_of_api_keys.png)

### <b> Transformation  </b>
<p>
In this step we had to:
Clean the data.
Reformat the data.
Save it.
</p>

![Transformation Code](https://github.com/samuelroiz/Film_Industry_Research_Project/blob/sven/Sven_Branch/image/transformation_code.png)

### <b> Loading </b> 
<p> Once the data was cleaned and saved as a .csv file we pushed everything to Github and created the connections in SQL. </p>

![Loading Code](https://github.com/samuelroiz/Film_Industry_Research_Project/blob/sven/Sven_Branch/image/loading_code.png)

### <b> Analysis </b>
<p>
During this step we checked that everything was running smoothly and that all the files had correctly synced, and that we could connect data from one table to another smoothly.
</p>

![Analysis Code](https://github.com/samuelroiz/Film_Industry_Research_Project/blob/sven/Sven_Branch/image/analysis_code.png)

## Data Table Examples

![Genre Table Example](https://github.com/samuelroiz/Film_Industry_Research_Project/blob/sven/Sven_Branch/image/genre_table_example.png)

![Merge Genre and Movie Budget table example](https://github.com/samuelroiz/Film_Industry_Research_Project/blob/sven/Sven_Branch/image/merge_genre_and_movie_budget.png)

![Movie budget and Movie votes table example](https://github.com/samuelroiz/Film_Industry_Research_Project/blob/sven/Sven_Branch/image/movie_budget_and_movie_votes.png)

![Genre Table Example]()

![Genre Table Example]()

![Genre Table Example]()
