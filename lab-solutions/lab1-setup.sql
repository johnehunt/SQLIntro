CREATE TABLE `trading`.`equity` (
  `id` INT NOT NULL,
  `symbol` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NULL,
  `price` DECIMAL(10,2) NULL,
  PRIMARY KEY (`id`));

INSERT INTO `trading`.`equity` (`id`, `symbol`, `name`, `price`) VALUES ('1', 'IBM', 'IBM', '123.66');
INSERT INTO `trading`.`equity` (`id`, `symbol`, `name`, `price`) VALUES ('2', 'ORCL', 'Oracle Corporation', '55.61');
INSERT INTO `trading`.`equity` (`id`, `symbol`, `name`, `price`) VALUES ('3', 'HPQ', 'HP Inc.', '18.19');
INSERT INTO `trading`.`equity` (`id`, `symbol`, `name`, `price`) VALUES ('4', 'INTC', 'Intel Corporation', '49.11');
INSERT INTO `trading`.`equity` (`id`, `symbol`, `name`, `price`) VALUES ('5', 'MSFT', 'Microsoft Corporation', '212.05');
INSERT INTO `trading`.`equity` (`id`, `symbol`, `name`, `price`) VALUES ('6', 'AAPL', 'Apple Inc.', '469.33');


CREATE TABLE `trades` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `equity_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);

INSERT INTO `trades` VALUES (1,2,2,10,'2020-08-27 15:21:48'),
                            (2,1,4,15,'2020-08-15 15:21:48'),
			    (3,4,1,12,'2020-08-27 15:21:48'),
			    (4,3,3,8,'2020-07-17 15:21:48'),
			    (5,1,5,10,'2020-06-12 15:21:48'),
			    (6,5,6,4,'2020-08-27 15:21:48'),
			    (7,1,1,20,'2020-08-27 15:21:48'),
			    (8,4,1,4,'2020-08-30 12:30:41');

