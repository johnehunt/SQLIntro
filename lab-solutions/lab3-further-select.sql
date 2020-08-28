-- Step 1 SELECT IN and NOT IN
SELECT * FROM equity WHERE symbol IN ('IBM', 'AAPL', 'MSFT');

SELECT * FROM equity WHERE symbol NOT IN ('IBM', 'AAPL', 'MSFT');

-- Step 2 SELECT in between
SELECT * FROM clients WHERE credit_limit BETWEEN 300 AND 900;

-- Step 3 Select names stating with 'j'
SELECT * FROM clients WHERE name LIKE 'J%';

-- Step 4 Count number of trades for equity with id 1
SELECT COUNT(id) AS TOTAL, SUM(amount) FROM trades WHERE equity_id = 1;

-- Step 5: Find all the clients who are not associated with a company
SELECT * FROM clients WHERE company IS NULL;

-- Step 6 Find MIN and MAX 
SELECT MIN(amount) FROM trades;

SELECT MAX(amount) FROM trades;



