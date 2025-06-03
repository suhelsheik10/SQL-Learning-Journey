 SELECT * 
FROM employee_salary
WHERE salary = 50000; # where clause shows rows that match a condition and = is a comparison operator we also have 

SELECT *
FROM employee_salary
WHERE salary >= 50000; -- we have greater then and equal to also less then and equal to

SELECT * 
FROM employee_demographics
WHERE gender = 'female';  -- Here i am applying where clause for character related column encouted with single comma 

SELECT * 
FROM employee_demographics
WHERE birth_date >= '1990-01-01';  -- how i can retrieve a person younger in age or greater in years metrics 

-- AND OR NOT -- LOGICAL operaters 
SELECT * 
FROM employee_demographics
WHERE birth_date >= '1980-01-01' 
AND age >= 40;     -- AND operator is true when both the condition satisfied

SELECT * 
FROM employee_demographics
WHERE birth_date >= '1980-01-01'
OR age >= 40;      -- Atleast Either one condition has to be true, if both no issue

SELECT * 
FROM employee_demographics
WHERE birth_date >= '1980-01-01'
AND NOT gender = 'male'; -- this is how AND operator is used also NOT 

SELECT * 
FROM employee_demographics
WHERE (birth_date >= '1980-01-01' AND age >= 40) OR employee_id <= 5;  -- paranthesis is used to use logical operators in a better way

-- LIKE statement 

SELECT * 
FROM employee_demographics 
WHERE first_name LIKE 'c%';  -- so here % is a special character in LIKE statement to retrieve anything

SELECT *
FROM employee_demographics
WHERE last_name LIKE '_____';

