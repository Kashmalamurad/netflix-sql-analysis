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

--4. what are the most common genres

SELECT
listed_in,
count (*) as genre_count
FROM
netflix
WHERE
listed_in is not NULL
GROUP BY
listed_in
ORDER BY
genre_count DESC
LIMIT 10;

--5. What is the average duration (in minutes) of movies on Netflix?

SELECT
Avg(CAST(REPLACE (duration, 'min', ' ') as INT)) as average_duration
FROM
netflix
WHERE
show_type = 'Movie';

--6.How many TV Shows have 1, 2, 3… seasons?

SELECT
cast (REPLACE(REPLACE(duration, 'Seasons', ' '), 'Season', ' ') as INT) as Seasons,
count (*) as count_of_shows
from
netflix
WHERE
show_type = 'TV Show'
GROUP BY
duration
order BY
Seasons;

--7. How many movies in the dataset were released before the year 2000?

SELECT
count (*) as movies_before_2000
FROM 
netflix
WHERE
show_type = 'Movie' and release_year < 2000;

--8. Which directors have most content on Netflix?

SELECT
director,
count (*) as titles_count
FROM
netflix
WHERE
director is not NULL
GROUP BY
director
order BY
titles_count DESC
LIMIT 10;

--9.For each country, how many movies vs TV Shows exist?

SELECT
country,
 sum(case when show_type= 'Movie' then 1 else 0 END) as movies_count,
 sum (case when show_type = 'TV Show' then 1 else 0 END) as shows_count
FROM
netflix
WHERE
country is not NULL
group BY
country
ORDER BY
(sum (case when show_type= 'Movie' then 1 else 0 END) +
 sum (case when show_type = 'TV Show' then 1 else 0 END)) DESC;
 
--10.Which movie or TV Show has the longest duration?

--Movie:
SELECT
title,
cast (REPLACE(duration, 'min', ' ') as INT) as movie_duration
FROM
netflix
WHERE
show_type ='Movie' and duration is not null
ORDER BY
movie_duration DESC
LIMIT 1;

-- TV Show:
SELECT
title,
cast (REPLACE(REPLACE(duration, 'Seasons', ' '), 'Season',' ') as INT) as number_of_seasons
FROM
netflix
WHERE
show_type ='TV Show' and duration is not null
ORDER BY
number_of_seasons DESC
LIMIT 1;

