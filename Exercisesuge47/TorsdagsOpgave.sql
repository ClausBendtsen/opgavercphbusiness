USE sakila;
SELECT * FROM actor;
SELECT * FROM actor WHERE last_name="CAGE";
SELECT * FROM actor WHERE first_name NOT IN('ZERO','NICK');
SELECT * FROM actor WHERE first_name IN('NICK','JOHNNY','JAMES','MORGAN','WHOOPI');
SELECT * FROM actor WHERE actor_id > "49" AND actor_id <"151";
SELECT * FROM actor WHERE first_name LIKE"C%";
SELECT * FROM actor ORDER BY first_name;
SELECT * FROM actor ORDER BY last_name DESC;
SELECT COUNT(*) FROM actor;
SELECT COUNT(first_name) FROM actor;
SELECT * FROM film_category WHERE category_id IN(11);


INSERT INTO actor(first_name, last_name) VALUES ("Claus","Bendtsen");
INSERT INTO film_actor(actor_id,film_id) VALUES (203,627);
INSERT INTO film_actor(actor_id,film_id) VALUES (203,123);
INSERT INTO film_actor(actor_id,film_id) VALUES (203,69);
INSERT INTO film_actor(actor_id,film_id) VALUES (203,19);
INSERT INTO film_actor(actor_id,film_id) VALUES (203,55);
SELECT * FROM film_actor WHERE actor_id LIKE 203;
UPDATE actor SET first_name = 'John', last_name ='Wick' WHERE actor_id = 203;
DELETE FROM actor WHERE actor_id = 203;

SELECT * FROM category;
SELECT * FROM film JOIN film_category ON category_id;


