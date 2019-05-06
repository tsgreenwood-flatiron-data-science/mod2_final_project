/* Explore top 5 entries from each table before transferring data from 
sqlite3 to postgres*/
SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE' AND TABLE_CATALOG='database';

SELECT * FROM artists LIMIT 5;
SELECT * FROM content LIMIT 5;
SELECT * FROM genres LIMIT 5;
SELECT * FROM labels LIMIT 5;
SELECT * FROM reviews LIMIT 5;
SELECT * FROM years LIMIT 5;
