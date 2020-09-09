-- Step1 create the view
CREATE VIEW trade_client_value_view AS
SELECT clients.id AS client_id, clients.name, clients.surname, clients.email,
       trades.id AS trade_id, trades.amount,
       equity.id AS equity_id, equity.symbol, (trades.amount * equity.price) AS value FROM clients
INNER JOIN trades ON clients.id = trades.client_id
INNER JOIN equity ON trades.equity_id = equity.id
ORDER BY clients.id;

-- Select value susing the view
SELECT * FROM trade_client_value_view;

-- Create an index on the email column of the clients table
CREATE UNIQUE INDEX idx_clients_email ON clients(email);

-- Select values using the index
SELECT * FROM clients WHERE email = 'ac@mis.com';