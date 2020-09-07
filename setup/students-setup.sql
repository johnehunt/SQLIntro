
--
-- Table structure for table `students`
--
DROP TABLE IF EXISTS `students`;

CREATE TABLE `students` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `surname` VARCHAR(45) NOT NULL,
  `subject` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
);

--
-- Data for table `students`
--

INSERT INTO `students` VALUES (1,'Phoebe','Cooke','Animation','pc@my.com'),
							  (2,'Gryff','Jones','Games','grj@my.com'),
                              (3,'Adam','Fosh','Music','af@my.com'),
                              (4,'Jasmine','Smith','Games','js@my.com'),
                              (5,'Tom','Jones','Music','tj@my.com'),
                              (6,'James','Andrews','Games','ja@my.com');

