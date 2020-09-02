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

-- Step 6: Find all the clients who are not associated with a company
SELECT * FROM clients WHERE company IS NULL;

-- Step 7 Find MIN amount and date 
SELECT MIN(amount), MIN(date) FROM trades;

-- Step 8: Find MAX for each equity
SELECT MAX(amount), equity_id FROM trades GROUP BY equity_id;



