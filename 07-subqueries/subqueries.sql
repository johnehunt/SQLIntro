-- Subquery in FROM clause
SELECT module, average - 10 AS adjusted_avg
    FROM (SELECT module, AVG(mark) AS average FROM module_results GROUP BY module) AS tbl 
    WHERE average > 50;

-- SQL IN SELECT subquery
SELECT * FROM modules 
         WHERE id 
         IN (SELECT module_id FROM subject_details);

-- SELECT NOT IN subquery
SELECT * FROM modules 
         WHERE id 
         NOT IN (SELECT module_id FROM subject_details);

-- Subequery with WHERE condition
SELECT id, name, surname, mark  
    FROM results 
    WHERE name IN (SELECT name FROM students WHERE subject = 'Games');

-- Subquery with DISTINCT clause
SELECT id, name, surname, mark 
    FROM results 
	WHERE name IN (SELECT DISTINCT name FROM students);

-- Using ANY with a subquery
SELECT name 
       FROM modules 
       WHERE id = ANY(SELECT module_id 
                             FROM subject_details 
                             WHERE numbers > 9);
-- Using a Row Subquery
SELECT id, name, surname, mark
    FROM results
    WHERE ROW(name, surname) = ANY (SELECT name, surname FROM students);

-- Using the Exists operator
SELECT * FROM modules 
  WHERE EXISTS 
    (SELECT name FROM subject_details 
                 WHERE modules.id = subject_details.module_id)
  ORDER BY id;

-- Sub Query in a Case Statement
SELECT id, subject, module_id, numbers,
    CASE 
        WHEN module_id = ANY (SELECT id FROM modules) THEN 'Registered'
        ELSE 'NOT REGISTERED' 
    END AS module_status
FROM subject_details;
