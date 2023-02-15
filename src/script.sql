CREATE TABLE city
(
    city_id   BIGSERIAL   NOT NULL PRIMARY KEY,
    city_name VARCHAR(50) NOT NULL
);

ALTER TABLE employee
    ADD COLUMN city_id INT;

ALTER TABLE employee
    ADD FOREIGN KEY (city_id) REFERENCES city (city_id);

INSERT INTO city (city_name)
VALUES ('Moscow');

INSERT INTO city (city_name)
VALUES ('Saint Petersburg');

INSERT INTO city (city_name)
VALUES ('Kazan');

INSERT INTO city (city_name)
VALUES ('Novosibirsk');

INSERT INTO city (city_name)
VALUES ('Vladivostok');

UPDATE employee
SET city_id = 1
WHERE id = 1;

UPDATE employee
SET city_id = 2
WHERE id = 2;

UPDATE employee
SET city_id = 4
WHERE id = 3;

UPDATE employee
SET city_id = 3
WHERE id = 5;

SELECT first_name, last_name, city
FROM employee
         INNER JOIN city
                    ON employee.city_id = city.city_id;

SELECT city, first_name, last_name
FROM city
         LEFT JOIN employee
                   ON city.city_id = employee.city_id;

SELECT first_name, last_name, city
FROM employee
         FULL JOIN city
                   ON employee.city_id = city.city_id;

SELECT first_name, last_name, city
FROM employee
         CROSS JOIN city;
