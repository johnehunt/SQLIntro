-- Insert data into students table
INSERT INTO students (id, name, surname, subject, email) 
       VALUES (7, 'Bill', 'Jones', 'Games', 'bj@my.com');

-- Creating a backup of data in students
CREATE TABLE students_backup SELECT * FROM students;

-- Updating an existing row of data in a table
UPDATE students
SET name = 'William'
WHERE id = 7;

-- Deleting a row from the students table
DELETE FROM students WHERE id = 7;

