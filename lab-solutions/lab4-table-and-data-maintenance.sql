-- Step 1 Create Company Table
CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `url` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
);

-- Inseert Data into table
INSERT INTO `companies` 
VALUES (1,'PymCo','www.pymco.com'),
    (2,'Stand Co','www.stand.co.uk'),
	(3,'MISCom','www.mis.com'),
    (4,'MyStocks','www.mystocks.com');
    
-- Step 2 Alter the clients table
ALTER TABLE clients
DROP COLUMN company,
ADD COLUMN company_id INT NULL;

-- Step 3 Insert data with a company id
INSERT INTO clients (id, name, surname, email, credit_limit) VALUES (7, 'Denise', 'Fosh', 'df@ggmail.com', 665.00);

-- Step 4 Update rows in database
UPDATE clients SET company_id = 1 WHERE (id = 1);
UPDATE clients SET company_id = 2 WHERE (id = 3);
UPDATE clients SET company_id = 3 WHERE (id = 4);
UPDATE clients SET company_id = 2 WHERE (id = 5);