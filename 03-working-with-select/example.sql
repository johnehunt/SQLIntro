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

-- SQL LIKE Operator
SELECT * FROM students WHERE name LIKE 'Ja%';

-- Defining column aliases
SELECT name, surname, 
       id as student_id, subject AS degree 
FROM students;

-- GROUP BY clause
SELECT COUNT(id) AS total, subject 
       FROM students GROUP BY subject;

-- Having CLause
SELECT COUNT(id) AS total, subject 
       FROM students 
       GROUP BY subject
       HAVING total > 2;

-- CASE statement
SELECT id, subject, numbers, 
CASE
    WHEN numbers > 10 THEN 'Full class'
    WHEN numbers = 10 THEN 'Some space'
    ELSE 'Small class'
END AS description
FROM subject_details;

-- Date Function
SELECT id, name, surname, birth_date, DAY(birth_date) 
       FROM people
       WHERE birth_date < Date('1996-01-01');
