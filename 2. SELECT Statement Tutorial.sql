select * 
from employee_demographics; # works if in schemas you're highlighting the current database parks_and_recreation

select * 
from parks_and_recreation.employee_demographics;  # databasename.tablename (best way to retrieve)

select first_name
from employee_demographics; # select is used to retrieve the column you want from table 

select first_name,
birth_date,
age
from employee_demographics; # more than one column is selected using comma 

select first_name,
age,
100-(age*10)+1000
from employee_demographics; # arithmetic cals works based on PEMDAS rule in left to right direction

select distinct first_name
from employee_demographics; # all name pops bec it is unique ( used to retrieve unique values in column)

select distinct gender 
from employee_demographics; # output has male female bec they are unique values in gender column

# left side of run button to all query there is save button to save this SQL script to file explorer 