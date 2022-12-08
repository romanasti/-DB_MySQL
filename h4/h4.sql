-- Сreating a database

CREATE SCHEMA h4 ;
USE h4;

-- Create a table

CREATE TABLE  AUTO 
(       
	REGNUM VARCHAR(10) PRIMARY KEY, 
	MARK VARCHAR(10), 
	COLOR VARCHAR(15),
	RELEASEDT DATE, 
	PHONENUM VARCHAR(15)
);

 -- AUTO

INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM )
VALUES(111114,'LADA', 'КРАСНЫЙ', date'2008-01-01', '9152222221'),
VALUES(111115,'VOLVO', 'КРАСНЫЙ', date'2013-01-01', '9173333334'),
VALUES(111116,'BMW', 'СИНИЙ', date'2015-01-01', '9173333334'),
VALUES(111121,'AUDI', 'СИНИЙ', date'2009-01-01', '9173333332'),
VALUES(111122,'AUDI', 'СИНИЙ', date'2011-01-01', '9213333336'),
VALUES(111113,'BMW', 'ЗЕЛЕНЫЙ', date'2007-01-01', '9214444444'),
VALUES(111126,'LADA', 'ЗЕЛЕНЫЙ', date'2005-01-01', null),
VALUES(111117,'BMW', 'СИНИЙ', date'2005-01-01', null),
VALUES(111119,'LADA', 'СИНИЙ', date'2017-01-01', 9213333331);

-- Task 1
-- Display how many cars of each color for BMW and LADA cars

SELECT MARK, COLOR, COUNT(COLOR) FROM AUTO
WHERE MARK = 'BMW'
GROUP BY COLOR, MARK 
UNION SELECT MARK, COLOR, COUNT(COLOR) FROM AUTO
WHERE MARK = 'LADA'
GROUP BY COLOR, MARK;

-- Task 2
-- Display the auto tag and the AUTO quantity of the non-auto tag

SELECT MARK, (SELECT COUNT(*) FROM AUTO) - COUNT(*)
FROM AUTO
GROUP BY MARK;

-- Task 3
-- Write a query that returns rows from the test_a table
-- whose id is not in the test_b table WITHOUT using the NOT keyword.

create table test_a (id INT, data varchar(1));
insert into test_a(id, data) values
(10, 'A'),
(20, 'A'),
(30, 'F'),
(40, 'D'),
(50, 'C');

create table test_b (id INT);
insert into test_b(id) values
(10),
(30),
(50);

SELECT test_a.id, data FROM test_a
LEFT JOIN test_b ON test_a.id = test_b.id
WHERE test_b.id IS NULL;

