-- Step 1 Create the stored Procedure
delimiter //
CREATE PROCEDURE clientcount (OUT clientcount INT)
BEGIN
  SELECT COUNT(*) INTO clientcount FROM clients;
END //
delimiter ;

-- Step 1 Invoke the Stored Procedure to find out how many clients there are
CALL clientcount(@ccount);
SELECT @ccount;
