/*
Drop column picture from staff.
*/
USE sakila;
select * from staff;

ALTER TABLE staff
DROP COLUMN picture;
select * from staff;

/*
A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.
*/
-- select * from sakila.customer;
-- insert into staff( staff_id, first_name, last_name, address_id, store_id, active, username, last_update)
-- SELECT first_name FROM sakila.customer
-- WHERE first_name="TAMMY";



SELECT * FROM sakila.customer
WHERE first_name = "TAMMY";

INSERT INTO staff(staff_id, first_name, last_name, address_id, store_id, active, username, last_update) 
VALUES
(3,'Tammy','Sanders', 79, 2, 1, 'Tammy','2022-05-16');

-- q3
SELECT * FROM sakila.customer;
SELECT * FROM sakila.film;
SELECT * FROM sakila.rental;
SELECT * FROM sakila.inventory;
SELECT * FROM sakila.store;



select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';

select staff_id from sakila.staff
where first_name = 'Mike' and last_name = 'Hillyer';

select film_id from sakila.film
where title = "Academy Dinosaur";

select store_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';

select inventory_id from sakila.inventory
where film_id = 1 and store_id = 1 ;
 
INSERT INTO rental(rental_date,inventory_id,customer_id,staff_id) 
VALUES(now(),1,130,1);

select * from rental
where customer_id = 130;


SELECT * FROM sakila.rental;


select * from sakila.actor;
