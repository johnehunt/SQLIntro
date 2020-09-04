-- CASE statement
SELECT id, subject, numbers, 
CASE
    WHEN numbers > 10 THEN 'Full class'
    WHEN numbers = 10 THEN 'Some space'
    ELSE 'Small class'
END
FROM subject_details;

-- CASE statement
SELECT id, subject, numbers, 
CASE
    WHEN numbers > 10 THEN 'Full class'
    WHEN numbers = 10 THEN 'Some space'
    ELSE 'Small class'
END AS description
FROM subject_details;

-- SQL IN Operator
SELECT * FROM students WHERE subject IN('Games', 'Animation');

-- SQL NOT IN Operator
SELECT * FROM students 
         WHERE subject NOT IN('Games', 'Animation');

-- SQL BETWEEN Operator
SELECT * FROM results WHERE mark BETWEEN 50 AND 59;

-- SQL MIN and MAX functions
SELECT MIN(mark) FROM results WHERE mark BETWEEN 50 and 59;

SELECT MAX(mark) FROM results WHERE mark BETWEEN 50 and 59;

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
       
-- SQL LIKE Operator
SELECT * FROM students WHERE name LIKE 'Ja%';

-- Defining column aliases
SELECT name, surname, 
       id as student_id, subject AS degree 
FROM students;

-- Using String functions
SELECT TRIM(module), UPPER(degree) AS degree, MIN(mark) AS min_mark 
FROM results GROUP BY module, degree;


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

-- Retrieve the day fo the week


