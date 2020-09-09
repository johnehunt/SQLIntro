-- Set up the module results table data
DROP TABLE IF EXISTS module_results;

CREATE TABLE module_results (
  id INT NOT NULL, 
  student_id INT NOT NULL,
  module VARCHAR(45) NOT NULL,
  mark INT NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO module_results VALUES 
    (1,1,'Databases and SQL',55),
    (2,2,'Databases and SQL',65),
    (3,3,'Databases and SQL',72),
    (4,1,'Java and OOP',67),
    (5,2,'Java and OOP',72),
    (6,3,'Java and OOP',61),
    (7,1,'Web Technologies',54),
    (8,2,'Web Technologies',63),
    (9,3,'Web Technologies',74);


-- Simple query across the data
SELECT * FROM module_results;

-- Find average for each module
SELECT module, AVG(mark) FROM module_results GROUP BY module;

-- Return the marks for each student, aloing 
-- with the average for the module
SELECT module, student_id, mark, 
       AVG(mark) OVER (PARTITION BY module) AS module_average 
       FROM module_results;
       
-- Using a partition as a subquery
SELECT module, student_id, mark FROM (
	SELECT module, student_id, mark, 
		   AVG(mark) OVER (PARTITION BY module) AS module_average 
		   FROM module_results) AS tbl
WHERE tbl.mark > tbl.module_average;
       
