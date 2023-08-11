
/*
You have been asked to find the employee with the highest salary in each department.

Output the department name, full name of the employee(s), and corresponding salary.

Table: worker

worker

Preview

worker_id: int
first_name: varchar
last_name: varchar
salary: int
joining_date: datetime
department: varchar

*/

Solution,

select department, 
concat(first_name, " ", last_name) as Full_name,
max(salary) from worker
group by department;

