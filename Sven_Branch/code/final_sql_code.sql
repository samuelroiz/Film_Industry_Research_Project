CREATE TABLE  movie_budget  (
     tdmb_id  Float  NOT NULL ,
     idmb_id  TEXT  NOT NULL ,
     title  TEXT  NOT NULL ,
     budget  bigint  NOT NULL ,
     revenue  bigint  NOT NULL,
    PRIMARY KEY (
         tdmb_id , idmb_id 
    )
);

CREATE TABLE  movie_votes  (
     tdmb_id  Float  NOT NULL ,
     idmb_id  TEXT  NOT NULL ,
     popularity  Float  NOT NULL ,
     vote_average  Float  NOT NULL 
);

CREATE TABLE  artist  (
     artist_id  TEXT  NOT NULL ,
     artist  TEXT  NOT NULL ,
     idmb_id TEXT  NOT NULL ,
	 idmb_id_1 TEXT  ,
	 idmb_id_2 TEXT   ,
	 idmb_id_3 TEXT  ,
    PRIMARY KEY (
         artist_id 
    )
);

CREATE TABLE  genre  (
     title  TEXT  NOT NULL ,
     genre  TEXT  NOT NULL ,
     year  TEXT  NOT NULL 
);

DROP TABLE movie_votes;
DROP TABLE movie_budget;
DROP TABLE artist;
DROP TABLE genre;

SELECT * FROM artist;
SELECT * FROM movie_budget;
SELECT * FROM movie_votes;
SELECT * FROM genre;

SELECT artist.idmb_id, artist.artist, artist.artist_id, movie_budget.budget, movie_budget.revenue
FROM artist
JOIN movie_budget
ON artist.idmb_id = movie_budget.idmb_id;

SELECT genre.title, genre.genre, genre.year, movie_budget.budget, movie_budget.revenue, movie_budget.idmb_id
FROM genre
JOIN movie_budget
ON genre.title = movie_budget.title;

SELECT movie_budget.tdmb_id, movie_budget.idmb_id, movie_budget.budget, movie_budget.revenue, 
movie_votes.popularity, movie_votes.vote_average
FROM movie_votes
JOIN movie_budget
ON movie_votes.idmb_id = movie_budget.idmb_id;

