-- Сreating a database

CREATE SCHEMA h3 ;
USE h3;

-- Create a table.

CREATE TABLE workers (
	id_workers INT AUTO_INCREMENT PRIMARY KEY,
	name_workers VARCHAR (50) NOT NULL,
	surname_workers VARCHAR (50) NOT NULL,
	speciality_workers VARCHAR (50) NOT NULL,
	seniority_workers SMALLINT NOT NULL,
	salary_workers INT NOT NULL,
	age_workers SMALLINT NOT NULL 
); 

-- Fill with data

INSERT INTO workers (name_workers, surname_workers, speciality_workers, seniority_workers, salary_workers, age_workers)
VALUES
    	('Вася', 'Васькин', 'начальник', 40, 100000, 60),
    	('Петя', 'Петькин', 'начальник', 8, 70000, 30),
    	('Катя', 'Каткина', 'инженер', 2, 70000, 25),
    	('Саша', 'Сашкин', 'инженер', 12, 50000, 35),
    	('Иван', 'Иванов', 'рабочий', 40, 30000, 59),
   	    ('Петр', 'Петров', 'рабочий', 20, 25000, 40),
    	('Сидор', 'Сидоров', 'рабочий', 10, 20000, 35),
   	    ('Антон', 'Антонов', 'рабочий', 8, 19000, 28),
    	('Юра', 'Юркин', 'рабочий', 5, 15000, 25),
    	('Максим', 'Воронин', 'рабочий', 2, 11000, 22),
    	('Юра', 'Галкин', 'рабочий', 3, 12000, 24),
   	    ('Люся', 'Люськина', 'уборщик', 10, 10000, 49);  

-- Task 1
-- Sort the salary field in descending and ascending order

SELECT salary_workers FROM workers ORDER BY salary_workers DESC;
SELECT salary_workers FROM workers ORDER BY salary_workers;

-- Task 2
-- Display the 5 maximum salaries

SELECT salary_workers FROM workers ORDER BY salary_workers DESC LIMIT 5;   

-- Task 3
-- Calculate the total salary for each specialty (post)

SELECT speciality_workers, SUM(salary_workers) FROM workers GROUP BY speciality_workers;

-- Task 4
-- Find the number of employees in the specialty "Worker" (post) aged 24 to 42 years

SELECT COUNT(*) AS quantity_worker
FROM workers
WHERE speciality_workers = 'рабочий' AND age > 23 AND age < 43;

-- Task 5
-- Find the number of specialties

SELECT COUNT(DISTINCT speciality_workers) AS quantity_speciality  FROM workers;

-- Task 6
-- Bring out specialties whose average employee age is less than 44 years

SELECT speciality_workers AS average_age FROM workers
GROUP BY speciality_workers
HAVING AVG(age) < 44;

