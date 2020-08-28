-- Step 1 - run a select statement
SELECT * FROM equity;

SELECT * FROM clients;

SELECT * FROM trades;

-- Step 2 - Select on specific columns from a table
SELECT id, symbol, price FROM equity;

-- Step 3 - Use DISTINCT in a SELECT statement
SELECT client_id FROM trades;

SELECT DISTINCT client_id FROM trades;

-- Step 4 - Using a WHERE clause
SELECT * FROM clients WHERE credit_limit > 550.0;
SELECT * FROM clients WHERE company = 'PYMCO';
SELECT * FROM clients WHERE name = 'John';
SELECT * FROM clients WHERE id = 4;

-- Step 5 - Order By clause
SELECT * FROM clients WHERE credit_limit > 550.0 ORDER BY credit_limit DESC;






