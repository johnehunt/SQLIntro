-- Defining a stored procedure to count the number of students
delimiter //
CREATE PROCEDURE studentcount (OUT studentcount INT)
BEGIN
  SELECT COUNT(*) INTO studentcount FROM students;
END //
delimiter ;

-- Executing the stored procedure
CALL studentcount(@studentcount);
SELECT @studentcount;

