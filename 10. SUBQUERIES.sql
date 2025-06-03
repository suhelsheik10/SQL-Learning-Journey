-- SUBQUERIES
-- A subquery is a query written inside parentheses ( ), usually used in WHERE, FROM, or SELECT clauses to get a value or result set.
-- The inner query runs first.
-- Its result is used by the outer query.

-- SUBQUERY IN  WHERE CLAUSE

SELECT *
FROM employee_demographics
WHERE employee_id IN ( SELECT employee_id
					FROM employee_salary
                    WHERE dept_id = 1);
                    
-- SUBQUERY IN SELECT CLAUSE
SELECT gender, AVG(max_age)
FROM (SELECT gender , 
MAX(age) AS max_age, 
MIN(age) AS min_age, 
AVG(age) AS avg_age,
COUNT(age) AS count_age
FROM employee_demographics                                         -- question is to take avg of the agg values 																-- using subquery i will create agg table and apply aggregate functions on them
GROUP BY gender) AS agg_table                                      -- created agg table of agg values 
GROUP BY gender;                                                   -- and group by the table with gender and apply agg function on that table 
                    
                    
                    


