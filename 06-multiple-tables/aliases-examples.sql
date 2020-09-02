-- Defining column aliases
SELECT name, surname, 
       id as student_id, subject AS degree 
FROM students;

-- Providing a table alias
SELECT s.name, s.surname, s.email 
FROM students AS s
WHERE s.id < 4;