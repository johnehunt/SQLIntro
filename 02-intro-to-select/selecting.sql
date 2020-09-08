-- Perform a basic selection on the students table

SELECT * FROM students;

-- Select specific attributes from the students table

SELECT id, name, surname, subject FROM students;


-- Select distinct values form the students table
SELECT DISTINCT * FROM students;

-- Defining column aliases
SELECT name, surname, 
       id as student_id, subject AS degree 
FROM students;