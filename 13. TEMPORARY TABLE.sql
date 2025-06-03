-- TEMPORARY TABLE 
-- A Temporary Table is a table that is created and exists temporarily in the database only during your session or transaction. Once the session ends, the table is automatically deleted.
-- There are 2 ways how you can use temporary table 

-- 1. create a temporary table 

CREATE TEMPORARY TABLE temp
( first_name varchar(20),
  last_name varchar(20),
  fav_sports varchar(20));
  
  SELECT * FROM temp;
  
  INSERT INTO temp VALUES('sheik','suhel','football'),
  ('dua','sheik','cricket');
  
    SELECT * FROM temp;
    
-- 2. Create a table by manipulating another existed table , no need to create column names and all

CREATE TEMPORARY TABLE Salary_more_then_50k
SELECT *
FROM employee_salary
WHERE salary >= 50000;

SELECT * FROM salary_more_then_50k;


