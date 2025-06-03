-- JOINS

-- INNER JOIN
-- An INNER JOIN returns only the rows that have matching values in both tables.

SELECT * 
FROM employee_demographics
INNER JOIN employee_salary
ON employee_demographics.employee_id = employee_salary.employee_id;    -- You can specify INNER JOIN or JOIN , it considers same by default \

-- Here in JOINS you can use aliasing to write better query 

SELECT * 
FROM employee_salary AS sal
INNER JOIN employee_demographics AS dem
ON sal.employee_id = dem.employee_id;    -- i am specifying alias name or in above query table name following matching column to avoid ambiguity 

SELECT sal.employee_id, occupation, gender
FROM employee_salary AS sal
INNER JOIN employee_demographics AS dem
ON sal.employee_id = dem.employee_id;    -- after joining you can retrieve column from both tables and sal.employee_id bec to distinguish btw employee_id present in two tables 

-- OUTER JOINS
-- OUTER JOINS has two types 
       -- LEFT OUTER JOIN or LEFT JOIN
          -- A LEFT JOIN returns all rows from the left table, and the matched rows from the right table. If no match is found, NULLs are shown for right table columns.
       -- RIGHT OUTER JOIN or RIGHT JOIN
		  -- A RIGHT JOIN returns all rows from the right table, and the matched rows from the left table. If no match is found, NULLs are shown for left table columns.
          
-- LEFT JOIN          
          
SELECT * 
FROM employee_salary AS sal
LEFT JOIN employee_demographics AS dem 
ON sal.employee_id = dem.employee_id;      

-- RIGHT JOIN

SELECT * 
FROM employee_salary AS sal
RIGHT JOIN employee_demographics AS dem 
ON sal.employee_id = dem.employee_id; 

-- SELF JOIN 
-- A SELF JOIN is a regular join but the table is joined with itself.
-- Use case: Comparing rows within the same table (like finding employee-manager relationships).

SELECT *
FROM employee_salary AS e1
JOIN employee_salary AS e2
ON e1.employee_id  = e2.employee_id;

-- if you want assign employees for secret santa game then you can do this 

SELECT e1.employee_id AS eid,
e1.first_name AS santaname,
e1.last_name AS santalastname,
e2.employee_id AS id,
e2.first_name AS first_name,
e2.last_name AS last_name
FROM employee_salary AS e1
JOIN employee_salary AS e2
ON e1.employee_id  + 1 = e2.employee_id;  -- done assigning employee for secret santa 

-- Multiple tables can be combined 

SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments AS pd
ON sal.dept_id = pd.department_id;  -- here we have combined third table using dept_id as the commom column 









