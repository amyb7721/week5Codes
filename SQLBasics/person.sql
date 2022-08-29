-- 1) Create a table called person that records a person’s
--  id, name, age, height (in cm , city, favorite_color. id should be an auto-incrementing id/primary key 
-- (use type: SERIAL)
CREATE TABLE person (
    id SERIAL PRIMARY KEY,
    name VARCHAR,
    age INTEGER,
    height INTEGER,
    city VARCHAR,
    favorite_color VARCHAR
);

-- 2) Add 5 different people into the person database. Remember to not include the person_id because it should auto-increment.

INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Amy', 26, 60, 'Lafayette', 'Purple'),
('Devin', 32, 80, 'Breaux Bridge', 'Blue',),
('Allyson', 25, 75, 'Broussard', 'Pink'),
('Destani', 25, 79, 'Milton', 'Green'),
('Vick', 27, 67, 'Youngsville', 'Yellow');

-- 3) Select all the people in the person table by height from tallest to shortest.


SELECT * FROM person ORDER BY height DESC;

-- 4) Select all the people in the person table by height from shortest to tallest.


SELECT * FROM person ORDER BY height ASC;

-- 5) Select all the people in the person table by age from oldest to youngest.


SELECT * FROM person ORDER BY age DESC;

-- 6) Select all the people in the person table older than age 20.


SELECT * FROM person WHERE age > 20;

-- 7) Select all the people in the person table that are exactly 18.


SELECT * FROM person WHERE age = 18;

-- 8) Select all the people in the person table that are less than 20 and older than 30.


SELECT * FROM person WHERE age < 20 OR age > 30; 

-- 9) Select all the people in the person table that are not 27 (use not equals).


SELECT * FROM person WHERE age != 27;

-- 10) Select all the people in the person table where their favorite color is not red.


SELECT * FROM person WHERE favorite_color != 'red';

-- 11) Select all the people in the person table where their favorite color is not red and is not blue.


SELECT * FROM person WHERE favorite_color != 'red' AND favorite_color != 'Blue';

-- 12) Select all the people in the person table where their favorite color is orange or green.


SELECT * FROM person WHERE favorite_color = 'Orange' OR favorite_color = 'Green';

-- 13) Select all the people in the person table where their favorite color is orange, green or blue (use IN).


SELECT * FROM person WHERE favorite_color IN ( 'orange', 'green', 'blue' );

-- 14) Select all the people in the person table where their favorite color is yellow or purple (use IN).


SELECT * FROM person WHERE favorite_color IN ( 'Yellow', 'Purple' );










