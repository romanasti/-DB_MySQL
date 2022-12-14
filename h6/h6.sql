-- Сreating a database

CREATE SCHEMA h6 ;
USE h6;


-- Task 1
-- Create a function that accepts the number of seconds and their format in the number of days of hours.
-- Example: 123456 - > '1 days 10 hours 17 minutes 36 seconds'

DELIMITER $$
CREATE FUNCTION time_format (value INT)
RETURNS VARCHAR (100) 
DETERMINISTIC
BEGIN
	    DECLARE d DOUBLE;
		DECLARE h DOUBLE;
		DECLARE m DOUBLE;
		DECLARE s DOUBLE;

	SET d = FLOOR(value/86400);
    SET h = FLOOR((value % 86400) / 3600);
    SET m = FLOOR(((value % 86400) % 3600) / 60);
    SET s = value - m * 60 - h * 3600 - d * 86400;

    RETURN CONCAT(d, ' days, ', h, ' hours, ', m, ' minutes, ', s, ' seconds');
    
END $$

SELECT time_format(123456);

-- Task 2
-- Display only even numbers from 1 to 10.
-- Example: 2,4,6,8,10

-- Create a table

CREATE TABLE numbers 
(
    id_numbers INT PRIMARY KEY AUTO_INCREMENT, 
    odd_even_numbers VARCHAR(10)
);

-- Fill with data

INSERT INTO numbers (odd_even_numbers) 
VALUES 
        ('Even'), ('Odd'),
        ('Even'), ('Odd'),
        ('Even'), ('Odd'),
        ('Even'), ('Odd'),
        ('Even'), ('Odd');

SELECT id_numbers FROM numbers WHERE id_numbers % 2 = 0; 

