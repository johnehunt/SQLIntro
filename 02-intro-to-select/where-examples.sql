-- Selecting specific rows using the WHERE clause
SELECT * FROM students WHERE surname='Jones';

-- combining coniditons using AND
SELECT * FROM students WHERE surname = 'Jones' AND subject ='Music';

-- Using numeric comparisons
SELECT * FROM students WHERE surname = 'Jones' AND id > 3;

