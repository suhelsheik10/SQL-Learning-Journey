-- GROUP BY 

-- USED TO group rows having same values in specified column into summary rows
-- USE it with aggregate function like COUNT(), MAX(), MIN(), AVG(), SUM()

SELECT occupation, AVG(salary), MAX(salary), MIN(salary), COUNT(salary), SUM(salary)
FROM employee_salary
GROUP BY occupation;    -- you can get summary rows of selected columns using aggregating functions 

SELECT gender, MAX(birth_date), MIN(birth_date)
FROM employee_demographics
GROUP BY gender;        -- here aggregate functions i am putting on column of data type date , so you can use for non integer columns or any column apart from integer as well

-- ORDER BY 
-- USED to sort the columns in ASC or DESC , by default ASC

SELECT * 
FROM employee_demographics
ORDER BY gender,age;

SELECT * 
FROM employee_demographics
ORDER BY gender,age DESC; -- here gender sorts with default and age you can sort in descending by DESC


-- HAVING vs WHERE clause

-- WHERE is used to filter rows before GROUP BY, filters column values 
        -- works with aggregate values - NO 
-- HAVING is used to filter rows after GROUP BY, filters aggregare values 
		-- works with aggregate values - YES
        
SELECT occupation, AVG(salary)
FROM employee_salary
GROUP BY occupation
HAVING AVG(salary) > 50000 ; -- USING Having clause here to sort aggregate values 

SELECT occupation, AVG(salary)
FROM employee_salary
WHERE first_name LIKE '_____'
GROUP BY occupation
HAVING AVG(salary) > 50000 ; -- USING both WHERE and HAVING clause together






