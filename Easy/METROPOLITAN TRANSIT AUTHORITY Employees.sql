
/*
METROPOLITAN TRANSIT AUTHORITY' Employees

Find all employees with a job title that contains 'METROPOLITAN TRANSIT AUTHORITY' 
and output the employee's name along with the corresponding total pay with benefits.

Table: sf_public_salaries

id: int
employeename: varchar
jobtitle: varchar
basepay: float
overtimepay: float
otherpay: float
benefits: float
totalpay: float
totalpaybenefits: float
year: int
notes: datetime
agency: varchar
status: varchar

*/

Solution,

select employeename, totalpaybenefits 
from sf_public_salaries
where jobtitle regexp 'METROPOLITAN TRANSIT AUTHORITY';
