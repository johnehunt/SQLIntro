-- Selecting specific rows using the WHERE clause
SELECT * FROM students WHERE surname='Jones';

-- combining coniditons using AND
SELECT * FROM students WHERE surname = 'Jones' AND subject ='Music';

-- Using numeric comparisons
SELECT * FROM students WHERE surname = 'Jones' AND id > 3;

-- Combing WHERe and Order By
SELECT * FROM students WHERE subject = 'Games' ORDER BY name;

-- COmbing where and order by with desc
SELECT * FROM students WHERE subject = 'Games' ORDER BY name desc;

-- Ordering by multiple columns
SELECT mark, surname, name, module, degree FROM results WHERE module = 'Databases and SQL' ORDER BY mark DESC, surname, name DESC;