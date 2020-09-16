USE trading;

DROP TABLE IF EXISTS companies;

-- Step 1 Create Company Table
CREATE TABLE companies (
  id INT NOT NULL,
  name VARCHAR(255) NOT NULL,
  url VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

-- Insert Data into table
INSERT INTO companies 
VALUES (1,'PymCo','www.pymco.com'),
       (2,'Stand Co','www.stand.co.uk'),
	   (3,'MISCom','www.mis.com'),
       (4,'MyStocks','www.mystocks.com');
       
SELECT * FROM companies;

DESCRIBE clients;
SELECT * FROM clients;
    
-- Step 2 Alter the clients table
ALTER TABLE clients
    DROP COLUMN company,
    ADD COLUMN company_id INT NULL;

-- Step 3 Insert data with a company id
INSERT INTO clients (id, name, surname, email, credit_limit, company_id) 
	   VALUES (7, 'Denise', 'Fosh', 'df@ggmail.com', 665.00, 4);

-- Step 4 Update rows in database
UPDATE clients SET company_id = 1 WHERE id = 1;
UPDATE clients SET company_id = 2 WHERE id = 3;
UPDATE clients SET company_id = 3 WHERE id = 4;
UPDATE clients SET company_id = 2 WHERE id = 5;
