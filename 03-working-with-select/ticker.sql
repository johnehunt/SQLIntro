USE trading;

DROP TABLE IF EXISTS ticker;

CREATE TABLE `ticker` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `symbol` VARCHAR(45) NOT NULL,
  `value` VARCHAR(45) NOT NULL,
  `time_stamp` DATETIME NOT NULL DEFAULT NOW(),
  PRIMARY KEY (`id`));
  

INSERT INTO `ticker` VALUES 
    (1,'IBM','12.75','2020-09-07 11:41:00'),
    (2,'AAPL','56.54','2020-09-07 11:42:00'),
    (3,'AAPL','57.54','2020-09-07 11:42:00'),
    (4,'HPQ','18.59','2020-09-07 11:44:32'),
    (5,'HPQ','18.59','2020-09-07 11:44:32'),
    (6,'MSFT','212.45','2020-09-07 11:46:51'),
    (7,'APPL','57.32','2020-09-07 11:47:00'),
    (8,'MSFT','213.33','2020-09-07 11:48:10'),
    (9,'MSFT','213.33','2020-09-07 11:48:10'),
    (10,'IBM','13.45','2020-09-07 11:43:00'),
    (11,'IBM','12.69','2020-09-07 11:44:32'),
    (12,'HPQ','17.29','2020-09-07 11:42:51'),
    (13,'MSFT','213.45','2020-09-07 11:53:51'),
    (14,'APPL','58.52','2020-09-07 11:47:00'),
    (15,'MSFT','211.21','2020-09-07 11:53:51'),
    (16,'ORCL','56.54','2020-09-07 11:56:20'),
    (17,'IBM','13.56','2020-09-07 11:45:00'),
    (18,'IBM','14.75','2020-09-07 11:45:00'),
    (19,'AAPL','56.54','2020-09-07 11:54:00'),
    (20,'AAPL','57.54','2020-09-07 11:54:00'),
    (21,'IBM','12.75','2020-09-07 11:46:00'),
    (22,'IBM','16.54','2020-09-07 11:47:00'),
    (23,'IBM','17.54','2020-09-07 11:48:00'),
    (24,'MSFT','212.45','2020-09-07 11:46:51'),
    (25,'APPL','57.32','2020-09-07 11:47:00'),
    (26,'IBM','13.33','2020-09-07 11:49:10'),
    (27,'IBM','13.45','2020-09-07 11:50:00'),
    (28,'HPQ','18.69','2020-09-07 11:42:51'),
    (29,'HPQ','17.29','2020-09-07 11:42:51'),
    (30,'MSFT','213.45','2020-09-07 11:53:51');
    
SELECT * FROM ticker;

-- Obtain the average for each symbol
SELECT symbol, ROUND(AVG(value), 2) FROM ticker GROUP BY symbol;

-- Obtain the average for each symbol and the sum divided by 5
SELECT symbol, ROUND(AVG(value), 2), TRUNCATE(SUM(value) / 5, 2) FROM ticker GROUP BY symbol;

-- Get various aggregation values
SELECT symbol, AVG(value), COUNT(value), SUM(value) / 5, SUM(value) / COUNT(value) 
  FROM ticker GROUP BY symbol;

-- Find average of values for a symbol for each timestamp
SELECT symbol, COUNT(symbol) AS num, AVG(value), time_stamp 
    FROM ticker 
    GROUP BY symbol, time_stamp
    ORDER BY time_stamp;

-- Select symbols and number of ticks and averages based on 5 minute windows
SELECT symbol, 
       COUNT(symbol) AS 'num of ticks', 
       ROUND(AVG(value), 2) AS 'avg', 
       TIMESTAMP(FLOOR(TIMESTAMP(time_stamp) DIV 500) * 500) AS ts
    FROM ticker 
    GROUP BY symbol, ts
    ORDER BY symbol;

-- Select all ticks for IBM
SELECT * FROM ticker WHERE symbol = 'IBM' ORDER BY time_stamp;

-- Select IBM and calculate the number of ticks and the average value every 5 minutes
SELECT symbol, 
       COUNT(value) AS num, 
       ROUND(AVG(value), 2) AS 'avg', 
       TIMESTAMP(FLOOR(TIMESTAMP(time_stamp) DIV 500) * 500) AS ts
    FROM ticker 
    WHERE symbol = 'IBM'
    GROUP BY symbol, ts
    ORDER BY ts;



