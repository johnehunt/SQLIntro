-- Insert data then rollback the transaction

SET autocommit = OFF;
START TRANSACTION;

INSERT INTO results (id, name, surname, mark)
       VALUES (8, 'Joselyn', 'Lewis', 67);

ROLLBACK;
SET autocommit = ON;

-- Insert data and commit transaction
SET autocommit = OFF;
START TRANSACTION;

INSERT INTO results (id, name, surname, mark)
       VALUES (8, 'Joselyn', 'Lewis', 67);

COMMIT;
SET autocommit = ON;
