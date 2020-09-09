-- Step 1 For trsdes find the client ids with the largest 
-- amount for ech date

SELECT * FROM trades;

SELECT COUNT(id), date FROM trades GROUP BY date;

SELECT client_id, amount, date
  FROM (SELECT client_id, 
               date, 
               amount, 
               MAX(amount) OVER (PARTITION BY date) as max_amount FROM trades) AS tbl
  WHERE amount = max_amount;
  
  
  