-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE  artist  (
     artist_id  int  NOT NULL ,
     artist  TEXT  NOT NULL ,
     idmb_id  TEXT  NOT NULL ,
    PRIMARY KEY (
         artist_id 
    )
);

-- Table documentation comment 2
CREATE TABLE  genre  (
     genre  TEXT  NOT NULL ,
     year  TEXT  NOT NULL ,
     title  TEXT  NOT NULL 
);

CREATE TABLE  movie_budget  (
     tdmb_id  TEXT  NOT NULL ,
     idmb_id  TEXT  NOT NULL ,
     title  TEXT  NOT NULL ,
     budget  bigint  NOT NULL ,
     revenue  bigint  NOT NULL ,
     run_time  int  NOT NULL ,
    PRIMARY KEY (
         tdmb_id , idmb_id 
    )
);

CREATE TABLE  movie_votes  (
     tdmb_id  int  NOT NULL ,
     idmb_id  TEXT  NOT NULL ,
     popularity  Float  NOT NULL ,
     vote_average  Float  NOT NULL 
);

CREATE TABLE  revenue  (
     title  int  NOT NULL ,
     type  TEXT  NOT NULL ,
     country  TEXT  NOT NULL ,
     worldwide_gross  bigint  NOT NULL ,
    PRIMARY KEY (
         title 
    )
);

ALTER TABLE  artist  ADD CONSTRAINT  fk_artist_idmb_id  FOREIGN KEY( idmb_id )
REFERENCES  movie_budget  ( idmb_id );

ALTER TABLE  genre  ADD CONSTRAINT  fk_genre_title  FOREIGN KEY( title )
REFERENCES  revenue  ( title );

ALTER TABLE  movie_budget  ADD CONSTRAINT  fk_movie_budget_title  FOREIGN KEY( title )
REFERENCES  revenue  ( title );

ALTER TABLE  movie_votes  ADD CONSTRAINT  fk_movie_votes_tdmb_id_idmb_id  FOREIGN KEY( tdmb_id ,  idmb_id )
REFERENCES  movie_budget  ( tdmb_id ,  idmb_id );

