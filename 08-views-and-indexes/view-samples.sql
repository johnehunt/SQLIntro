-- Creating a simple view
CREATE VIEW computer_science_modules AS
SELECT id, name
FROM modules
WHERE id IN (SELECT module_id 
                    FROM subject_details 
                    WHERE subject = 'Computer Science');

-- Using the view
SELECT * FROM computer_science_modules;

-- Creating or 'updating' the view
CREATE OR REPLACE VIEW computer_science_modules AS
SELECT id AS mid, name
FROM modules
WHERE id IN (SELECT module_id 
                    FROM subject_details 
                    WHERE subject = 'Computer Science');

-- Again using the 'updated' view
SELECT * FROM computer_science_modules;

-- Deleting a view
DROP VIEW computer_science_modules;

