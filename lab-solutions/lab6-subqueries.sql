-- Step 1 For the trades table, find the client ids with the largest 
-- amount for each date

SELECT * FROM trades;

SELECT client_id, amount, date
  FROM (SELECT client_id, 
               date, 
               amount, 
               MAX(amount) OVER (PARTITION BY date) as max_amount FROM trades) AS tbl
  WHERE amount = max_amount;
  
-- Step 2 Select all clients currently involved in a trade

SELECT * FROM clients WHERE id IN (SELECT client_id FROM trades);

-- Step 3 Now find all the clients not involve din a trade

SELECT * FROM clients WHERE id NOT IN (SELECT client_id FROM trades);

-- Step 3 Find all clients with two or more trades
SELECT * 
    FROM clients 
	WHERE id = ANY (SELECT client_id 
				        FROM trades 
                        GROUP BY client_id 
                        HAVING COUNT(client_id) > 2);
 
