-- Step 1: Find all clients who have an associated company solution
SELECT clients.name, clients.surname, companies.name 
    FROM clients INNER JOIN companies 
        ON clients.company_id = companies.id;

-- Step 2: Find how many clients there are for each company Solution
SELECT COUNT(clients.id) AS count, companies.name 
    FROM clients INNER JOIN companies 
        ON clients.company_id = companies.id
    GROUP BY companies.id;

-- Step 3: Perform a selection across 3 tables
-- Perform a query that will retrieve:
--    * Client id, client name, client surname and client email
--    * The trade id and trade amount
--    * The equity id and the equity symbol
SELECT clients.id AS client_id, clients.name, clients.surname, clients.email, 
	trades.id AS trade_id, trades.amount, 
    equity.id AS equity_id, equity.symbol 
FROM clients
    INNER JOIN trades ON clients.id = trades.client_id
    INNER JOIN equity ON trades.equity_id = equity.id;

-- Step 4 Given the above Solution; now order by the client id
SELECT clients.id AS client_id, clients.name, clients.surname, clients.email, 
       trades.id AS trade_id, trades.amount, 
       equity.id AS equity_id, equity.symbol 
FROM clients
    INNER JOIN trades ON clients.id = trades.client_id
    INNER JOIN equity ON trades.equity_id = equity.id
ORDER BY clients.id;

-- Step 5: Calculate the value of each trade Solution
SELECT clients.id AS client_id, clients.name, clients.surname, clients.email, 
       trades.id AS trade_id, trades.amount, 
       equity.id AS equity_id, equity.symbol, (trades.amount * equity.price) AS value 
FROM clients
    INNER JOIN trades ON clients.id = trades.client_id
    INNER JOIN equity ON trades.equity_id = equity.id
ORDER BY clients.id;

-- Step 6 Select all trades with a value over 1000 Solution
SELECT clients.id AS client_id, clients.name, clients.surname, clients.email, 
       trades.id AS trade_id, trades.amount, 
       equity.id AS equity_id, equity.symbol, (trades.amount * equity.price) AS value 
FROM clients
    INNER JOIN trades ON clients.id = trades.client_id
    INNER JOIN equity ON trades.equity_id = equity.id
WHERE (trades.amount * equity.price) > 1000
ORDER BY clients.id;
