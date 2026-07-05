-- Data Cleaning

# create df copy
DROP TABLE IF EXISTS locations_clean;

CREATE TABLE locations_clean AS
SELECT *
FROM locations;

SELECT DISTINCT Country
FROM locations;

# fix date type
SET SQL_SAFE_UPDATES = 0;

UPDATE locations_clean
SET Date = STR_TO_DATE(Date, '%b %e, %Y');

ALTER TABLE locations_clean
MODIFY Date DATE;

# trimming values
UPDATE locations_clean
SET Country = TRIM(Country),
    Region = TRIM(Region),
    Coordinates = TRIM(Coordinates);

# clean country names
UPDATE locations_clean
SET Country = REPLACE(Country, 'Korea, South', 'South Korea');

SELECT DISTINCT Country 
FROM locations_clean;

# check region names
SELECT DISTINCT Region 
FROM locations_clean;

SET SQL_SAFE_UPDATES = 1;

# check duplicates
SELECT Date, Country, Region, Round, COUNT(*)
FROM locations_clean
GROUP BY Date, Country, Region, Round
HAVING COUNT(*) > 1;


