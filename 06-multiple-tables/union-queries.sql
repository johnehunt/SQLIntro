-- Select the union of values from students and lecturers
SELECT subject FROM students
UNION
SELECT subject FROM lecturers;

-- Can include all rows i.e. allow duplicate values
SELECT subject FROM students
UNION ALL
SELECT subject FROM lecturers;

-- Can apply an order by clause
SELECT subject FROM students
UNION
SELECT subject FROM lecturers
ORDER BY subject DESC;

-- Can retrieve multiple columns
SELECT subject, name FROM students
UNION
SELECT subject, name FROM lecturers
ORDER BY subject;

SELECT subject, name, surname FROM students
UNION
SELECT subject, name, surname FROM lecturers
ORDER BY subject;
