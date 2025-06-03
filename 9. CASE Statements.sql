-- CASE STATEMENTS
-- It’s like if-else in SQL — you check conditions, and return different values based on those conditions.
-- WHEN → THEN → ELSE → END
-- Just like English: "When this happens, then do that. Otherwise, do something else. End."

SELECT first_name,
last_name,
age,
CASE
	WHEN age<= 30 THEN 'YOUNG'
	WHEN age BETWEEN 30 AND 50 THEN 'OLD'
    WHEN age >= 50 THEN 'close to death'
END AS age_bracket
FROM employee_demographics;

-- SCENARIO 
-- salary less then equal to 50000 then 5% bonus
-- salary grater then 50000 then 7% bonus
-- finance department gets 10% bonus
-- get the data for these cases 

SELECT first_name, last_name,salary,
CASE
	WHEN salary <= 50000 THEN salary * 1.05
    WHEN salary > 50000 THEN salary* 1.07
END AS new_salary,
CASE
	WHEN dept_id = 6 THEN salary * 1.10
END AS bonus
FROM employee_salary;


