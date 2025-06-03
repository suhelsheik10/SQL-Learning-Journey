-- LIMIT & ALIASING 

-- LIMIT 
-- used to limit the no of rows you need in table 

SELECT * 
FROM employee_demographics
LIMIT 5;                             -- to select first 5 rows of table 

SELECT * 
FROM employee_demographics
LIMIT 3 , 1;                         -- USING comman you can add one more parameter 
									 -- which means starting from position 3 take the next one row ( jerry )
									
-- ALIASING
-- USED to change a name of column

SELECT age AS a
FROM employee_demographics
ORDER BY age ;                -- simple way 

SELECT occupation, AVG(salary) AS avgsal
FROM employee_salary
GROUP BY occupation
HAVING avgsal > 70000;          -- to make it easy to write query you can use alias name and can see the name changes in result table




