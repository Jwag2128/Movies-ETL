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

SELECT 
	  CASE WHEN runtime >= 0 AND runtime <= 60 THEN '0-60'
	  	   WHEN runtime > 60 AND runtime <= 90 THEN '61-90'
		   WHEN runtime > 90 AND runtime <= 120 THEN '91-120'
		   WHEN runtime > 120 AND runtime <= 150 THEN '121-150'
		   WHEN runtime >150 AND runtime <= 180 THEN '151-180'
		   ELSE 'Over 180'
	  END runtime_range,
	  count(*) as movie_runtime
INTO movies_by_runtime
FROM movies
GROUP BY
	  CASE WHEN runtime >= 0 AND runtime <= 60 THEN '0-60'
	  	   WHEN runtime > 60 AND runtime <= 90 THEN '61-90'
		   WHEN runtime > 90 AND runtime <= 120 THEN '91-120'
		   WHEN runtime > 120 AND runtime <= 150 THEN '121-150'
		   WHEN runtime >150 AND runtime <= 180 THEN '151-180'
		   ELSE 'Over 180'
	  END
ORDER BY movie_runtime;

SELECT * FROM movies_by_runtime;




