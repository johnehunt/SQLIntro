-- Create a basic tem porary table
CREATE TEMPORARY TABLE credits( 
   studentId INT PRIMARY KEY, 
   creditTotal INT
);

-- Create a temporary table based on a select
CREATE TEMPORARY TABLE cs_temp_table 
SELECT id, name
FROM modules
WHERE id IN (SELECT module_id FROM subject_details WHERE subject = 'Computer Science');

-- Using the temporary table
SELECT * FROM cs_temp_table;

