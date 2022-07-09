use sakila;
show tables;

#task 1 -Excel
select flm.title, count(*) number_in_inventory 
from film flm 
inner join inventory inv 
on flm.film_id = inv.film_id 
group by flm.title;

SELECT 
 film.film_id, 
 film.title, 
 film_category.category_id 
FROM film 
JOIN film_category 
 ON film.film_id = film_category.film_id 
JOIN category 
 ON film_category.category_id = 
category.category_id; 

#task 2
select title,replacement_cost,rental_rate from film 
order by replacement_cost desc,rental_rate asc; 

#task 3 -Excel
SELECT film.film_id, SUM(amount) 
FROM film 
INNER JOIN staff 
ON film.film_id = staff.store_id 
INNER JOIN payment p 
ON p.staff_id = staff.staff_id 
GROUP BY film.film_id 
ORDER BY SUM(amount);

#task 4
select flm.title, count(*) number_in_inventory 
from film flm 
inner join inventory inv 
on flm.film_id = inv.film_id 
where lower(flm.title) = lower("BROTHERHOOD 
BLANKET") group by flm.title; 

#task 5
select cat.name category_name, sum( 
IFNULL(pay.amount, 0) ) revenue 
from category cat 
left join film_category flm_cat 
on cat.category_id = flm_cat.category_id 
left join film fil 
on flm_cat.film_id = fil.film_id 
left join inventory inv 
on fil.film_id = inv.film_id 
left join rental ren 
on inv.inventory_id = ren.inventory_id 
left join payment pay 
on ren.rental_id = pay.rental_id
group by cat.name 
order by revenue desc 
limit 10; 

#task 6
#1
 SELECT first_name, last_name, release_year, title 
FROM film f 
INNER JOIN film_actor fc USING (film_id) 
INNER JOIN actor a USING (actor_id) 
WHERE description LIKE "%sumo%" AND description 
LIKE "%Wrestler%" 
ORDER BY last_name; 

SELECT COUNT(*) 
FROM film f 
INNER JOIN film_actor fc USING (film_id) 
INNER JOIN actor a USING (actor_id) 
WHERE description LIKE "%Sumo%" AND description 
LIKE "%Wrestler%" 
ORDER BY first_name; 




























