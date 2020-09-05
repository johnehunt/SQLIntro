-- Selecting an order for the results
SELECT * FROM students ORDER BY name;

-- Specifying a descending order
SELECT * FROM students ORDER BY name desc;

-- Combining WHERE and ORDER BY
SELECT * FROM students WHERE subject = 'Games' ORDER BY name;

-- Using Descending with WHERE and ORDER BY
SELECT * FROM students WHERE subject = 'Games' ORDER BY name desc;

-- Multiple order by columns
SELECT mark, surname, name, module, degree FROM `uni-database`.results ORDER BY mark DESC, surname, name;

-- Change the order
SELECT mark, surname, name, module, degree FROM `uni-database`.results ORDER BY mark DESC, surname, name DESC;


