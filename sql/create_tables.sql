/* Drop artists table if it already exists */
DROP TABLE IF EXISTS artists;

/* Create skeleton table that gives table name,
column names, and column types */

CREATE TABLE artists (
    reviewid VARCHAR(10) 
    , artist TEXT 
    );

/* Copy data from CSV file to table */
COPY artists
FROM '/Users/nkacoroski/Flatiron/module_2/mod2_final_project/raw_data/artists.csv'
WITH (FORMAT csv, HEADER true);

/* Add primary key */
ALTER TABLE artists ADD COLUMN id SERIAL PRIMARY KEY;


/* Drop content table if it already exists */
DROP TABLE IF EXISTS content;

/* Create skeleton table that gives table name,
column names, and column types */

CREATE TABLE content (
    reviewid VARCHAR(10)
    , content TEXT 
    );

/* Copy data from CSV file to table */
COPY content 
FROM '/Users/nkacoroski/Flatiron/module_2/mod2_final_project/raw_data/content.csv'
WITH (FORMAT csv, HEADER true);

/* Add primary key */
ALTER TABLE content ADD COLUMN id SERIAL PRIMARY KEY;


/* Drop genres table if it already exists */
DROP TABLE IF EXISTS genres;

/* Create skeleton table that gives table name,
column names, and column types */

CREATE TABLE genres (
    reviewid VARCHAR(10)
    , genre TEXT 
    );

/* Copy data from CSV file to table */
COPY genres
FROM '/Users/nkacoroski/Flatiron/module_2/mod2_final_project/raw_data/genres.csv'
WITH (FORMAT csv, HEADER true);

/* Add primary key */
ALTER TABLE genres ADD COLUMN id SERIAL PRIMARY KEY;


/* Drop genres table if it already exists */
DROP TABLE IF EXISTS labels;

/* Create skeleton table that gives table name,
column names, and column types */

CREATE TABLE labels (
    reviewid VARCHAR(10)
    , label TEXT 
    );

/* Copy data from CSV file to table */
COPY labels
FROM '/Users/nkacoroski/Flatiron/module_2/mod2_final_project/raw_data/labels.csv'
WITH (FORMAT csv, HEADER true);

/* Add primary key */
ALTER TABLE labels ADD COLUMN id SERIAL PRIMARY KEY;

/* Drop genres table if it already exists */
DROP TABLE IF EXISTS reviews;

/* Create skeleton table that gives table name,
column names, and column types */

CREATE TABLE reviews (
    reviewid VARCHAR(10) 
    , title TEXT
    , artist TEXT
    , url TEXT
    , score FLOAT(2)
    , best_new_music BOOLEAN
    , author TEXT
    , author_type TEXT
    , pub_date DATE
    , pub_weekday INT
    , pub_day INT
    , pub_month INT
    , pub_year INT
    );

/* Copy data from CSV file to table */
COPY reviews
FROM '/Users/nkacoroski/Flatiron/module_2/mod2_final_project/raw_data/reviews.csv'
WITH (FORMAT csv, HEADER true);

/* Add primary key */
ALTER TABLE reviews ADD COLUMN id SERIAL PRIMARY KEY;


/* Drop genres table if it already exists */
DROP TABLE IF EXISTS years;

/* Create skeleton table that gives table name,
column names, and column types */

CREATE TABLE years (
    reviewid VARCHAR(10) 
    , year INT
    );

/* Copy data from CSV file to table */
COPY years
FROM '/Users/nkacoroski/Flatiron/module_2/mod2_final_project/raw_data/years.csv'
WITH (FORMAT csv, HEADER true);

/* Add primary key */
ALTER TABLE years ADD COLUMN id SERIAL PRIMARY KEY;