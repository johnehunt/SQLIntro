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

CREATE TABLE `trading`.`trades` (
  `id` INT NOT NULL,
  `client_id` INT NOT NULL,
  `equity_id` INT NOT NULL,
  `amount` INT NOT NULL,
  `date` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`));

INSERT INTO `trading`.`trades` (`id`, `client_id`, `equity_id`, `amount`) VALUES ('1', '2', '2', '10');
INSERT INTO `trading`.`trades` (`id`, `client_id`, `equity_id`, `amount`) VALUES ('2', '1', '4', '15');
INSERT INTO `trading`.`trades` (`id`, `client_id`, `equity_id`, `amount`) VALUES ('3', '4', '1', '12');
INSERT INTO `trading`.`trades` (`id`, `client_id`, `equity_id`, `amount`) VALUES ('4', '3', '3', '8');
INSERT INTO `trading`.`trades` (`id`, `client_id`, `equity_id`, `amount`) VALUES ('5', '1', '5', '10');
INSERT INTO `trading`.`trades` (`id`, `client_id`, `equity_id`, `amount`) VALUES ('6', '5', '6', '4');
INSERT INTO `trading`.`trades` (`id`, `client_id`, `equity_id`, `amount`) VALUES ('7', '1', '1', '20');

