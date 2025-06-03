SELECT length('suhel');

SELECT first_name, LENGTH(first_name) AS len
FROM employee_demographics
ORDER BY len;                 -- length function to calc length of strings you want 

SELECT UPPER('suhel');
SELECT first_name, UPPER(first_name)
FROM employee_demographics;   -- helps you turn into upper case

SELECT LOWER('SUHEL');        -- helps you turn into lower case

SELECT TRIM('              sky            ');
SELECT LTRIM('              sky            ');
SELECT RTRIM('              sky            '); -- adjusting the white space in data 

SELECT first_name, SUBSTRING(first_name,2,10) AS edit
FROM employee_demographics;                               -- you want to get specified characters in data
														  -- name the column name, then start pos, lenght of needed characters
												
SELECT first_name, REPLACE(first_name, 'A','z')
FROM employee_demographics;                                -- replace the character 
														    -- select the column, select the character to be replaced , select chracter replaced with 

SELECT LOCATE('h','suhel');
SELECT first_name,LOCATE('n',first_name)
FROM employee_demographics;                                 -- to get the location of a charcter 
															-- character whose location you need, the column name or string
                                                            
SELECT first_name,last_name,
CONCAT(first_name,' ',last_name) AS combined
FROM employee_demographics;                                  -- used to  CONCAT columns in a table 

