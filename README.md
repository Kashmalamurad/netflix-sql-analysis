Netflix Data Analysis Project

📌 Project Overview

This project analyzes Netflix’s content dataset using SQL to uncover trends in content type distribution, platform growth, production sources, genres, duration patterns, and global content spread. The goal is to simulate real-world business analysis and demonstrate job-ready SQL skills for a data analyst role.

🗂 Dataset Description

The dataset covers Netflix content added between 2008–2021, capturing the platform’s major global expansion period. The dataset contains information about Netflix titles, including:

Title

Type (Movie / TV Show)

Director

Country

Date Added

Release Year

Duration

Genre (listed_in)

Description


🛠 Tools Used

SQL (PostgreSQL) – Data analysis

VS Code – Development environment

Git & GitHub – Version control and project portfolio


❓ Business Questions Answered

1.How many Movies vs TV Shows are available?

2.How has Netflix content grown over time?

3.Which countries produce the most content?

4.What are the most common genres?

5.What is the average movie duration?

6.How many TV shows exist by season count?

7.How many movies were released before 2000?

8.Which directors have the most titles?

9.How are Movies vs TV Shows distributed by country?

10.Which titles have the longest duration?


🔍 Key Insights from the Analysis

🎥 Content Type Distribution

Netflix’s catalog is heavily movie-focused, with 6,131 movies compared to 2,676 TV shows, showing a stronger investment in film content over long-form series.


📈 Platform Growth Over Time

Content additions accelerated significantly after 2015:

2016 → 429 titles

2017 → 1,187 titles

2018 → 1,649 titles

2019 → Peak year with 2,016 titles

This highlights Netflix’s rapid global expansion phase between 2016–2019.


🌍 Top Content Producing Countries

| Country        | Titles |
| -------------- | ------ |
| United States  | 2,817  |
| India          | 972    |
| United Kingdom | 419    |
| Japan          | 245    |
| South Korea    | 199    |

The U.S. dominates production, while India and Asian markets play a major role in Netflix’s global catalog.


🎭 Most Common Genres

The platform is dominated by:

Dramas & International Movies

Documentaries

Stand-Up Comedy

Family & Kids content

This shows Netflix’s focus on globally relatable drama and non-fiction storytelling.


⏱ Movie Duration Insights

The average movie duration is ~100 minutes, aligning with standard feature film lengths.


📺 TV Shows by Season Count

Most Netflix TV Shows are short-run series:

| Seasons   | Number of Shows |
| --------- | --------------- |
| 1 Season  | 1,793           |
| 2 Seasons | 425             |
| 3 Seasons | 199             |


Long-running shows are rare, indicating Netflix’s preference for limited or short-series formats.


🎞 Older Film Catalog

There are 475 movies released before 2000, showing Netflix maintains a notable archive of classic content alongside newer releases.


🎬 Most Prolific Directors

Top contributors include:

Rajiv Chilaka (19 titles)

Raúl Campos & Jan Suter (18 titles)

Suhas Kadav (16 titles)


🌎 Movies vs TV Shows by Country

Example:

| Country       | Movies | TV Shows |
| ------------- | ------ | -------- |
| United States | 2,057  | 760      |
| India         | 893    | 79       |
| Japan         | 76     | 169      |



Some countries (like Japan) contribute more TV content than films, reflecting regional production styles.


🏆 Longest Titles

Longest Movie: Black Mirror: Bandersnatch — 312 minutes

Longest TV Show: Grey’s Anatomy — 17 seasons


🧠 Skills Demonstrated

Data Cleaning & Transformation

String Parsing & Text Handling

Date Conversion & Time Analysis

Aggregations & Grouping

Conditional Counting

Business Insight Generation

Version Control with Git


🚀 Project Purpose

This project was created as part of a career transition into data analytics to demonstrate practical SQL skills using real-world style business questions and data exploration.


📎 How to Run

Create the table using the dataset

Import the data into PostgreSQL

Run queries from analysis_queries.sql