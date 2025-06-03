-- TRIGGER 
-- A Trigger is a set of SQL statements that automatically runs when a certain action happens on a table — like an INSERT, UPDATE, or DELETE.

DELIMITER $$
CREATE TRIGGER trig_1
	AFTER INSERT ON employee_salary
    FOR EACH ROW 
BEGIN 
	INSERT INTO employee_demographics(employee_id, first_name , last_name)
    VALUES(NEW.employee_id, NEW.first_name, NEW.last_name);
END $$
DELIMITER ;

INSERT INTO employee_salary(employee_id , first_name, last_name,occupation,salary,dept_id)
VALUES(13,'SUHEL','SHEIK','CEO',1000000,NULL);

SELECT * FROM employee_salary;

SELECT * FROM employee_demographics;

-- EVENT
-- An Event in SQL is a scheduled task that automatically runs at a specified time or interval, just like a cron job.

DELIMITER $$
CREATE EVENT delete_retirees
ON SCHEDULE EVERY 30 SECOND
DO 
BEGIN
	DELETE 
    FROM employee_demographics
    WHERE age >= 60;
END $$
DELIMITER ;

SELECT * FROM employee_demographics;

SHOW VARIABLES LIKE 'event%';                    -- to check if the event is ON or OFF 
