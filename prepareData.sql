-- CREATE TABLE cars
-- (
--     id INT NOT NULL AUTO_INCREMENT,
--     name VARCHAR(20),
--     brand VARCHAR(20),
--     price INT NOT NULL,
--     PRIMARY KEY (id)
-- );

INSERT INTO cars(name, brand, price)
VALUES  ('yairs', 'toyota', 17000),
        ('crv', 'honda', 23000),
        ('x6', 'BMW', 48000),
        ('camry', 'toyota', 27000),
        ('acura', 'honda', 28000);
        
SELECT * FROM cars;

SELECT name FROM cars;

SELECT brand FROM cars;

SELECT name, price FROM cars;

SELECT * FROM cars WHERE price <= 23000;

SELECT name, price FROM cars WHERE price <= 23000;

SELECT name, price FROM cars WHERE brand = 'toyota';

SELECT name AS car_name, price FROM cars;

UPDATE cars SET brand = 'Toyota' WHERE brand = 'toyota';

UPDATE cars SET brand = 'Honda' WHERE name = 'crv';

DELETE FROM cars WHERE brand = 'Toyota';

DELETE FROM cars WHERE price > id * 10000;

DELETE FROM cars;