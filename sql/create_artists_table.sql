/* Drop artists table if it already exists */
DROP TABLE IF EXISTS artists;

/* Create skeleton table that gives table name,
column names, and column types */

CREATE TABLE artists (
    reviewid VARCHAR(30)
    , artist TEXT 
    );

/* Copy data from CSV file to table */
COPY artists
FROM '/Users/nkacoroski/Flatiron/module_2/mod2_final_project/raw_data/artists.csv'
WITH (FORMAT csv, HEADER true);

ALTER TABLE artists ADD COLUMN id SERIAL PRIMARY KEY;