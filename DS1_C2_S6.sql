use sakila;
show tables;

#task 1
select * from actor;

#task 2a
select * from actor;
SELECT UPPER(CONCAT(first_name, ' ', last_name)) AS `Actor Name` FROM actor;

#task 2b
select * from actor;
select first_name, count(first_name) from actor group by first_name ; 
select last_name, count(last_name) from actor group by last_name ; 


#task 2c
select * from actor;
select distinct last_name from actor; 
select count(distinct last_name) from actor; 

#task 3
select * from actor;
select last_name, count(last_name) from actor group by last_name ; 
select last_name from actor group by last_name having count(last_name) = 1; 
select last_name from actor group by last_name having count(*) > 1; 

#task 4
select * from film ; 

#task 5
select * from film ; 
select * from film where rating='R'; 
select * from film where rating <> 'R'; 
select * from film where rating != 'R'; 
select rating, count(rating) from film group by rating; 

select * from film where rating in('G','R','PG'); 
select rating, avg(rental_rate) as r, 
max(rental_rate),min(rental_rate) from film group by rating order by r desc; 

#task 6a
select * from film ; 
select * from film where replacement_cost<=9.0;

#task 6b
select * from film ; 
select * from film where replacement_cost between 15 and 20; 

#task 6c
select * from film ; 
select count(*) from film where replacement_cost between 9.99 and 14; 
select count(*) from film where replacement_cost>9.99 and replacement_cost<14; 
select count(*) from film where replacement_cost not between 9.99 and 14; 
select * from film order by replacement_cost desc; 
select title, replacement_cost from film order by replacement_cost desc; 

#task 7
select * from film ; 
SELECT f.title AS 'Film Title', COUNT(fa.actor_id) AS 
`Number of Actors` 
FROM film_actor fa 
INNER JOIN film f 
ON fa.film_id= f.film_id 
GROUP BY f.title; 

#task 8
select * from film ; 
SELECT title 
FROM film WHERE title 
LIKE 'K%' OR title LIKE 'Q%' 
AND title IN 
( SELECT title 
FROM film 
WHERE language_id = 1 ); 

#task 9
select * from film ; 

#task 10
select * from film ; 
SELECT title, description FROM film WHERE film_id IN 
( SELECT film_id FROM film_category 
WHERE category_id IN 
( SELECT category_id FROM category 
WHERE name = "Drama" )); 

#task 11
select * from rental;
select * from film ; 
SELECT f.title, COUNT(rental_id) AS 'Times Rented' 
FROM rental r 
JOIN inventory i 
ON (r.inventory_id = i.inventory_id) 
JOIN film f 
ON (i.film_id = f.film_id) 
GROUP BY f.title 
ORDER BY `Times Rented` DESC; 

#task 12
select * from rental;
select * from film;
SELECT name AS category_name , AVG(rental_rate) AS 
Avg_rental_price, AVG(replacement_cost) AS 
Avg_replacement_price, (AVG(replacement_cost) - 
AVG(rental_rate)) AS replace_sub_rental 
FROM film_category
INNER JOIN film USING (film_id) 
INNER JOIN category USING (category_id) 
GROUP BY category_id 
HAVING replace_sub_rental > 15 ;

#task 13
select * from film;
SELECT name, COUNT(film_id) as Number_of_films 
FROM film_category INNER JOIN category USING 
(category_id) 
GROUP BY category_id 
HAVING Number_of_films > 65 AND Number_of_films < 70 
ORDER BY Number_of_films;

