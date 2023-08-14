
/*
Find the top 3 jobs with the highest overtime pay rate

Get the job titles of the 3 employees who received the most overtime pay
Output the job title of selected records.

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

select jobtitle, overtimepay from sf_public_salaries
order by overtimepay desc
limit 3;
