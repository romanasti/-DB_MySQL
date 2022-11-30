
-- Сreating a database

CREATE DATABASE homework_2;

-- Task 1
-- Created tables "goods" and "sales"

CREATE TABLE goods
(
    id_goods INT AUTO_INCREMENT PRIMARY KEY,
    name_goods VARCHAR(100) NOT NULL,
    manufacturer_goods VARCHAR(100) NOT NULL,
    
);
CREATE TABLE sales
(
    id_sales INT AUTO_INCREMENT PRIMARY KEY,
    sales_id_goods INT NOT NULL,
    price_sales DECIMAL NOT NULL,
    quantity_sales INT NOT NULL,
);

-- Add a foreign key

ALTER TABLE sales 
	ADD FOREIGN KEY (sales_id_goods)
	REFERENCES goods (id_goods) 
	ON DELETE CASCADE; 

-- Fill tables with data

INSERT INTO goods
(id_goods, name_goods, manufacturer_goods)
VALUES ('1', 'stationery', 'EXMIX'),
       ('2', 'perfumery', 'Natural Oils'),
       ('3', 'toys', 'Eco Toys'),
       ('4', 'home appliances', 'Schneider Electric'),
       ('5', 'books', 'AST'),

INSERT INTO sales
(sales_id_goods, price_sales, quantity_sales) 
VALUES (1, 990000.00,1350), 
       (2, 1450000.00,290),
       (3, 1230000.00,650),
       (4, 850000.00,90),
       (5, 385000.00,250)

-- Task 2
-- Group the quantity values into 3 segments - less than 100, 100-300,
-- and more than 300. - CASE

SELECT name_goods, manufacturer_goods, quantity_sales
CASE
   WHEN quantity_sales < 100
        THEN 'less than 100'
    WHEN quantity_sales >= 100 AND quantity_sales < 300
        THEN '100 - 300'
    WHEN quantity_sales >= 300
        THEN 'more than 300'
END AS Conclusion
FROM goods, sales;

-- Task 3
-- Create an orders table

CREATE TABLE orders
(
    id_orders INT AUTO_INCREMENT PRIMARY KEY,
    order_id_goods INT NOT NULL,
    customer VARCHAR(50),
    status_orders VARCHAR(50)
);

-- Add a foreign key

ALTER TABLE orders 
	ADD FOREIGN KEY (order_id_goods)
	REFERENCES goods (id_goods) 

-- Fill with data

INSERT INTO orders
(order_id_goods, customer, status_orders)
VALUES ('1', 'Globe', 'waiting'),
       ('2', 'Molecule', 'in assembly'),
       ('3', 'Toy.ru', 'completed'),
       ('4', 'Power World', 'executed'),
       ('5', 'Seeker', 'return'),

-- Show the "full" order status using the CASE statement

SELECT order_id_goods, status_orders
CASE
    WHEN status_orders = 'waiting' THEN 'in operation'
    WHEN status_orders = 'in assembly' THEN 'assembled'
    WHEN status_orders = 'completed' THEN 'in delivery'
    WHEN status_orders = 'executed' THEN 'successfully'
    WHEN status_orders = 'return' THEN 'cancelled'
  END AS Conclusion
FROM orders; 





