-- Step 1 SELECT IN and NOT IN
SELECT * FROM equity WHERE symbol IN ('IBM', 'AAPL', 'MSFT');

SELECT * FROM equity WHERE symbol NOT IN ('IBM', 'AAPL', 'MSFT');

-- Step 2 SELECT in between
SELECT * FROM clients WHERE credit_limit BETWEEN 300 AND 900;

-- Step 3 Select names stating with 'j'
SELECT * FROM clients WHERE name LIKE 'J%';

-- Step 4 Count number of trades for equity with id 1
SELECT COUNT(id) AS TOTAL, SUM(amount) FROM trades WHERE equity_id = 1;

-- Step 5 Count the number of trades and their value for each client involved with equity 1
SELECT client_id, COUNT(id), SUM(amount) FROM trading.trades WHERE equity_id = 1 GROUP BY client_id;

-- Step 6 Find MIN amount and date 
SELECT MIN(amount), MIN(date) FROM trades;

-- Step 7: Find equity id and client id of the trades with the smallest amount
SET @min_amount=(SELECT MIN(amount) FROM trades);
SELECT * FROM trades WHERE amount = @min_amount;

-- Step 8: Find MAX for each equity
SELECT MAX(amount), equity_id FROM trades GROUP BY equity_id;

-- Step 9: Find the month, day of the month and the day (name) for all trades before the 20th of August
SELECT client_id, equity_id, amount, MONTH(date), DAYOFMONTH(date), DAYNAME(date) FROM trades WHERE date < DATE('2020-08-20');


