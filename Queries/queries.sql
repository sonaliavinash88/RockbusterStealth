# Descriptive analysis of Film Table
"SELECT 
	   MIN (release_year) AS min_release_year,
	   MAX (release_year) AS max_release_year,
	   CASE
	   		WHEN language_id = 1 THEN 'ENGLISH'
	   		WHEN language_id = 2 THEN 'ITALIEN'
	   		WHEN language_id = 3 THEN 'JAPANESE'
	  	    WHEN language_id = 4 THEN 'MANDARIN'
	   		WHEN language_id = 5 THEN 'FRENCH'
	   		WHEN language_id = 6 THEN 'GERMAN'
	   		ELSE 'UNKNOWN'
	   		END AS ""movie_language"",
			
	   MIN(rental_duration) AS min_rental_duration,
	   MAX (rental_duration) AS max_rental_duration,
	   AVG (rental_duration) AS avg_rental_duration,
	   
	   MIN (length)AS min_film_length,
	   MAX (length)AS max_film_length,
	   
	   MIN (rental_rate) AS min_rental_rate,
	   Max (rental_rate) AS max_rental_rate,
	   
	   MODE()WITHIN GROUP (ORDER BY title) AS title_modal_value,
	   MODE()WITHIN GROUP (ORDER BY rating) AS rating_modal_value
FROM film
GROUP BY language_id"

## Inner join
"SELECT d.title AS movie_name,
       SUM (a.amount)AS revenue
FROM payment a
INNER JOIN rental b ON B.rental_id = A. rental_id
INNER JOIN inventory c ON c. inventory_id = b. inventory_id
INNER JOIN film d ON d. film_id = c. film_id
GROUP BY movie_name
ORDER BY revenue DESC
LIMIT 10;"


