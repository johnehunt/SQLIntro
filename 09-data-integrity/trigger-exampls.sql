-- Creating a trigger to sum all marks added
CREATE TRIGGER marks_sum BEFORE INSERT ON results
       FOR EACH ROW SET @sum = @sum + NEW.mark;

-- Using the trigger when adding a row
SET @SUM = 0;

INSERT INTO results (`id`, `name`, `surname`, `mark`)
              VALUES (7, 'Megan', 'Moore', 71);

SELECT @SUM AS 'Total marks added';

-- Dropping a trigger
DROP TRIGGER marks_sum ;

