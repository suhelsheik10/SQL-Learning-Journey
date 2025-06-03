-- UNION
-- Combines results/rows from two or more SELECT queries and removes duplicates.
-- Merge and keep only unique rows.

SELECT first_name
FROM employee_demographics
UNION 
SELECT first_name
FROM employee_salary; --  it shows how its merged , UNION takes DISTINCT values by deafault 

SELECT first_name
FROM employee_demographics
UNION ALL
SELECT first_name
FROM employee_salary; -- it shows merging along with duplicate values , merges everything 

-- APPLICATION OF UNIONS

SELECT first_name, last_name, 'old man' AS label
FROM employee_demographics
WHERE age > 40 AND gender = "male"
UNION
SELECT first_name, last_name, 'old lady' AS label
FROM employee_demographics
WHERE age > 40 AND gender = "female"
UNION 
SELECT first_name, last_name, 'higly paid emp' AS label
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name;

-- here the task was to retrieve employee who are older then 40 year and also the one who get paid more then 70000


