-- country data cleaning

# create df copy
DROP TABLE IF EXISTS country_clean;

CREATE TABLE country_clean AS
SELECT *
FROM country_data;

-- find countries that have naming mismatches
SELECT country
FROM (SELECT DISTINCT country
	  FROM locations_clean) AS unique_countries
LEFT JOIN country_clean
	ON unique_countries.country = country_clean.name
WHERE country_clean.name IS NULL;


-- update countries
SET SQL_SAFE_UPDATES = 0;

UPDATE country_clean SET name = 'Bolivia'
WHERE name = 'Bolivia (Plurinational State of)';

UPDATE country_clean SET name = 'Türkiye'
WHERE name = 'Turkey';

UPDATE country_clean SET name = 'United States'
WHERE name = 'United States of America';

UPDATE country_clean SET name = 'United Kingdom'
WHERE name = 'United Kingdom of Great Britain and Northern Ireland';

UPDATE country_clean SET name = 'Taiwan'
WHERE name = 'Taiwan, Province of China';

UPDATE country_clean SET name = 'Russia'
WHERE name = 'Russian Federation';

UPDATE country_clean SET name = 'South Korea'
WHERE name = 'Korea, Republic of';

UPDATE country_clean SET name = 'Åland'
WHERE name = 'Åland Islands';

UPDATE country_clean SET name = 'Laos'
WHERE name = 'Lao People''s Democratic Republic';

UPDATE country_clean SET name = 'Vietnam'
WHERE name = 'Viet Nam';

UPDATE country_clean SET name = 'US Virgin Islands'
WHERE name = 'Virgin Islands (U.S.)';

UPDATE country_clean SET name = 'Palestine'
WHERE name = 'Palestine, State of';

UPDATE country_clean SET name = 'Pitcairn Islands'
WHERE name = 'Pitcairn';

UPDATE country_clean SET name = 'Venezuela'
WHERE name = 'Venezuela (Bolivarian Republic of)';

UPDATE country_clean SET name = 'São Tomé og Príncipe'
WHERE name = 'Sao Tome and Principe';

UPDATE country_clean SET name = 'Bosnia-Herzegovina'

WHERE name = 'Bosnia and Herzegovina';



-- add antartica
INSERT INTO country_clean (`name`, `region`, `sub-region`, `region-code`, `sub-region-code`)
VALUES ('Antarctica', 'Antarctica', 'Antarctica', NULL, 15);

SET SQL_SAFE_UPDATES = 1;

-- validate no mismatches
SELECT country
FROM (SELECT DISTINCT country
	  FROM locations_clean) AS unique_countries
LEFT JOIN country_clean
	ON unique_countries.country = country_clean.name
WHERE country_clean.name IS NULL;