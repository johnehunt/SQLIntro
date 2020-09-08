USE trading;

DROP TABLE IF EXISTS clients;

CREATE TABLE `clients` (
  `id` INT NOT NULL,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `company` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `credit_limit` DECIMAL(10,2) DEFAULT 0.0,
  PRIMARY KEY (`id`)
);

INSERT INTO clients (`id`, `name`, `surname`, `company`, `email`, `credit_limit`) VALUES (1, 'John', 'Smith', 'PYMCO', 'js@pymco', 999.99); 
INSERT INTO `clients` (`id`, `name`, `surname`, `email`, `credit_limit`) VALUES (2, 'Eloise', 'Jones', 'ej@ggmail.com', 100.00);
INSERT INTO `clients` (`id`, `name`, `surname`, `company`, `email`, `credit_limit`) VALUES (3, 'Adam', 'Cooke', 'MISCOM', 'ac@mis.com', 500.10); 
INSERT INTO `clients` (`id`, `name`, `surname`, `company`, `email`, `credit_limit`) VALUES (4, 'Jasmine', 'Moore', 'stand.com', 'jm@stand.com', 750.55); 
INSERT INTO `clients` (`id`, `name`, `surname`, `email`, `credit_limit`) VALUES ('5', 'Phoebe', 'Byrne', 'pb@ggmail.com', 900.00); 
INSERT INTO `clients` (`id`, `name`, `surname`, `company`, `email`, `credit_limit`) VALUES (6, 'Gryff', 'Andrews', 'PYMCO', 'ga@pymco.com', 333.33); 
 
SELECT * FROM clients;
 