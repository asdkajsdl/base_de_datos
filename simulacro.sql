--1
SELECT title FROM film
ORDER by title ASC

--2
SELECT DISTINCT rating FROM film
ORDER by rating ASC

--3
SELECT title, replacement_cost, rating FROM film
WHERE rating in ("PG-13","PG")
ORDER by replacement_cost DESC , title ASC

--4
SELECT c.city, e.country FROM city c
JOIN country e on c.country_id  = e.country_id 
ORDER by country