
/*
Number of Hires During Specific Time Period

You have been asked to find the number of employees hired between
 the months of January and July in the year 2022 inclusive.
Your output should contain the number of employees hired in this given time frame.

Table: employees

id: int
first_name: varchar
last_name: varchar
salary: int
joining_date: datetime
department: varchar

*/

Solution,

select count(id) Total_employees_hired_between_jan_and_july_in_2022
from employees
where joining_date between '2022-01-01' and '2022-07-31';



