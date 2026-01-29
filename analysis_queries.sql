/* 
Project: Netflix Content Analysis
Analyst: Kashmala Murad
Goal: Analyze Netflix dataset to extract business insights
Tools: PostgreSQL, SQL
*/

--1. How many Movies and how many TV Shows are on Netflix?

SELECT
show_type,
count (*) as total_titles
FROM
netflix
WHERE
show_type is NOT NULL
GROUP BY
show_type;


--2. How many titles were added each year? 

SELECT
extract (year from date_added) as year_added,
count (*) as titles_added_per_year
from
netflix
WHERE
date_added is NOT NULL
GROUP BY
year_added
ORDER BY
year_added;


--3.Which countries produce the most Netflix titles?

SELECT
country,
count (*) as count_of_titles
FROM
netflix
WHERE
country is not NULL
GROUP BY
country
ORDER BY
count_of_titles DESC
LIMIT 5;

what