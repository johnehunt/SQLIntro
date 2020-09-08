-- Set up the database
DROP TABLE IF EXISTS `module_results`;

CREATE TABLE `module_results` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `module` varchar(45) NOT NULL,
  `mark` int(11) NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `module_results` VALUES 
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

-- Return the marks for each student, aloing with the average for th emodule
SELECT module, student_id, mark, 
       AVG(mark) OVER (PARTITION BY module) AS module_average 
       FROM module_results;
