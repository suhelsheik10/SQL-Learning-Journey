-- WINDOW FUNCTIONS 
-- A window function lets you do things like ranking, running totals, or averages over rows, but still keep each row in the output.

SELECT gender , AVG(salary) OVER(PARTITION BY gender) 
FROM employee_salary AS sal
JOIN employee_demographics AS dem
ON sal.employee_id = dem.employee_id                   -- AVG(salary) → calculates the average salary.
ORDER BY gender;                                       -- OVER(PARTITION BY gender)  does it for each gender group, without collapsing rows like GROUP BY

-- WINDOW FUNCTIONS with ROLLING TOTAL
 
SELECT dem.employee_id,gender , dem.first_name,dem.last_name, salary,SUM(salary) OVER(PARTITION BY gender ORDER BY dem.employee_id) AS rolling_total
FROM employee_salary AS sal
JOIN employee_demographics AS dem
ON sal.employee_id = dem.employee_id;                      -- To calculate a rolling total (or any rolling calculation) using a window function, you must use ORDER BY inside the OVER() clause.
														   -- you have to follow this syntax only 

-- ROW_NUMBER() → gives a unique row number per row.

SELECT dem.employee_id, dem.first_name,dem.last_name, salary , gender,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) AS row_column,
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS rank_column,
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS rank_column
FROM employee_salary AS sal
JOIN employee_demographics AS dem
ON sal.employee_id = dem.employee_id; 


-- RANK() → gives ranking with gaps.
-- DENSE_RANK() → gives ranking without gaps.
-- SUM(), AVG() → can be used as window functions.
-- LEAD(), LAG() → access next/previous row values.
     

                                                    
