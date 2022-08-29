-- 1) Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER,
    product_name VARCHAR,
    product_price INTEGER,
    quantity INTEGER
);

-- 2) dd 5 orders to the orders table.
-- Make orders for at least two different people.
-- person_id should be different for different people.

INSERT INTO orders ( person_id, product_name, product_price, quantity ) 
VALUES ( 0, 'Candle', 12.50, 2 ), (1, 'Speaker', 13, 1), (0, 'Speaker', 13, 3), (2, 'Phone', 20, 1), (3, 'Stove', 30, 1);

-- 3) Select all the records from the orders table.


SELECT * FROM orders;

-- 4) Calculate the total number of products ordered.


SELECT SUM(quantity) FROM orders;

-- 5) Calculate the total order price.


SELECT SUM(product_price * quantity) FROM orders;

-- 6) Calculate the total order price by a single person_id.


/* The value of person_id depends on what IDs you used. Use a valid ID from your table */
SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 0;