-- STORED PROCEDURE 
-- A Stored Procedure is a pre-written set of SQL statements that you can save in the database and run anytime by calling it.
-- Think of it like a function in programming — once written, you can use it again and again without rewriting the code.

CREATE PROCEDURE code1()
SELECT *
FROM employee_salary;

CALL code1();

-- but the above code is not a best practice \
-- Lets practice professional way 

DELIMITER $$
CREATE PROCEDURE code2()
BEGIN
	SELECT *
	FROM employee_salary;
	SELECT *
	FROM employee_demographics;                        -- Inside stored procedures, we may use multiple SQL statements ending with ;.
END$$												   -- To avoid breaking the procedure, we change the delimiter temporarily (e.g., to // or $$).
DELIMITER ;

CALL code2();

-- PARAMETER 
-- Parameters in a stored procedure are placeholders that allow you to pass values into the procedure when calling it.
-- if you get error like doesn't exist in your schema then you can USE your_schema ; , then write your query 

USE parks_and_recreation ;

DELIMITER $$
USE parks_and_recreation $$
CREATE PROCEDURE code_a(p_emp_id INT)
BEGIN
	SELECT * 
	FROM employee_salary
    WHERE employee_id = p_emp_id;
END $$
DELIMITER ;

CALL code_a(1);



