SELECT * FROM movies;

SELECT * FROM ratings;

-- Create table for distributor counts
SELECT distributor, COUNT(distributor)
INTO movie_dist_count
FROM movies
GROUP BY distributor
ORDER BY COUNT(distributor) DESC;

SELECT * FROM movie_dist_count;

-- Create table for just movies from 1995
SELECT imdb_id, release_date, title, imdb_link, runtime, popularity, genres, overview, distributor, director, starring
INTO movie_title_1995
FROM movies
WHERE (release_date BETWEEN '1995-01-01' AND '1995-12-31')
ORDER BY release_date;

SELECT * FROM movie_title_1995;



