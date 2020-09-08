-- SQL IN Operator
SELECT * FROM students WHERE subject IN('Games', 'Animation');

-- SQL NOT IN Operator
SELECT * FROM students 
         WHERE subject NOT IN('Games', 'Animation');

-- SQL BETWEEN Operator
SELECT * FROM results WHERE mark BETWEEN 50 AND 59;

-- CASE statement
SELECT id, subject, numbers, 
CASE
    WHEN numbers > 10 THEN 'Full class'
    WHEN numbers = 10 THEN 'Some space'
    ELSE 'Small class'
END
FROM subject_details;

-- CASE statement with generated column as description
SELECT id, subject, numbers, 
CASE
    WHEN numbers > 10 THEN 'Full class'
    WHEN numbers = 10 THEN 'Some space'
    ELSE 'Small class'
END AS description
FROM subject_details;

-- Numerical calculations - calculation in select
SELECT id, name, (mark * 0.75) AS grade from results WHERE mark > 50;

-- Numerical calculations - calculation in where clause
SELECT id, name, mark 
	FROM results 
	WHERE (mark * 0.75)  > 50;

-- Using CEILING to round up
SELECT id, name, CEILING(mark * 0.75) AS grade from results WHERE mark > 50;

-- Using Round
SELECT id, name, ROUND(mark * 0.75, 1) AS grade from results WHERE mark > 50;

-- Using String functions
SELECT TRIM(module), UPPER(degree) AS degree
FROM results;

-- SQL LIKE Operator
SELECT * FROM students WHERE name LIKE 'Ja%';

-- Combine wildcards
SELECT * FROM students WHERE name LIKE 'J_s%';

-- Negate the match
SELECT * FROM students WHERE name NOT LIKE 'J_s%';

-- Date functions
SELECT id, name, surname, birth_date, DAYNAME(birth_date) AS day
       FROM people
       WHERE birth_date < Date('1996-01-01');

-- Error - do not do this - performs a numeric comparison
SELECT * FROM people WHERE birth_date >= 1996-04-01;

-- Implicit Date conversion
SELECT * FROM people WHERE birth_date >= '1996-04-01';

-- Date Function
SELECT id, name, surname, birth_date, DAY(birth_date) 
       FROM people
       WHERE birth_date < Date('1996-01-01');

-- Month Function
SELECT name, surname, MONTH(birth_date) FROM people;

-- Current Date and date difference functions
SELECT name, surname, DATEDIFF(CURRENT_DATE(), birth_date) FROM people;

-- Retrieve the day name
SELECT name, surname, DAYNAME(birth_date) FROM people;

-- -----------------------
-- Aggregate functions
-- -----------------------

-- SQL MIN and MAX functions
SELECT MIN(mark) FROM results;

SELECT MAX(mark) FROM results WHERE mark BETWEEN 50 and 59;

-- To find the students with the lowest mark can use a variable
SET @min_mark=(SELECT MIN(mark) FROM results);
SELECT * FROM results WHERE mark = @min_mark;

-- SQL COUNT function
SELECT COUNT(mark) FROM results WHERE mark > 50;

-- SQL AVG function
SELECT AVG(mark) FROM results WHERE mark > 50;

-- SQL SUM function
SELECT SUM(mark) FROM results WHERE mark > 50;

-- Can have multiple aggregate operations
SELECT MIN(mark), AVG(mark), MAX(mark), COUNT(id) FROM results;

-- GROUP BY clause
SELECT COUNT(id) AS total, subject 
       FROM students GROUP BY subject;

-- Combining a GROUP BY with an aggregate function
SELECT module, MIN(mark) 
       FROM results 
       GROUP BY module;

-- Select with multiple group by
SELECT module, degree, MIN(mark) 
    FROM results 
    GROUP BY module, degree;

-- Having CLause
SELECT COUNT(id) AS total, subject 
       FROM students 
       GROUP BY subject
       HAVING total > 2;      

-- Partition Clause
SELECT name, surname, mark,
   COUNT(mark) OVER ( PARTITION BY id ORDER by mark) as position FROM results;










