-- Step 1 solution
SELECT clients.name, clients.surname, companies.name FROM clients
INNER JOIN companies ON clients.company_id = companies.id;

-- Step 2 Solution
SELECT COUNT(clients.id) AS count, companies.name FROM clients
INNER JOIN companies ON clients.company_id = companies.id
GROUP BY companies.id;

-- Step 3 Solution
SELECT clients.id AS client_id, clients.name, clients.surname, clients.email, 
	trades.id AS trade_id, trades.amount, 
    equity.id AS equity_id, equity.symbol FROM clients
INNER JOIN trades ON clients.id = trades.client_id
INNER JOIN equity ON trades.equity_id = equity.id;

-- Step 4 Solution
SELECT clients.id AS client_id, clients.name, clients.surname, clients.email, 
       trades.id AS trade_id, trades.amount, 
       equity.id AS equity_id, equity.symbol FROM clients
INNER JOIN trades ON clients.id = trades.client_id
INNER JOIN equity ON trades.equity_id = equity.id
ORDER BY clients.id;

-- Step 5 Solution
SELECT clients.id AS client_id, clients.name, clients.surname, clients.email, 
       trades.id AS trade_id, trades.amount, 
       equity.id AS equity_id, equity.symbol, (trades.amount * equity.price) AS value FROM clients
INNER JOIN trades ON clients.id = trades.client_id
INNER JOIN equity ON trades.equity_id = equity.id
ORDER BY clients.id;

-- Step 6 Solution
SELECT clients.id AS client_id, clients.name, clients.surname, clients.email, 
       trades.id AS trade_id, trades.amount, 
       equity.id AS equity_id, equity.symbol, (trades.amount * equity.price) AS value FROM clients
INNER JOIN trades ON clients.id = trades.client_id
INNER JOIN equity ON trades.equity_id = equity.id
WHERE (trades.amount * equity.price) > 1000
ORDER BY clients.id;
