
/*
You have been asked to find the fifth highest salary without using TOP or LIMIT.

Note: Duplicate salaries should not be removed.

Table: worker

Preview

worker_id: int
first_name: varchar
last_name: varchar
salary: int
joining_date: datetime
department: varchar


*/

Solution,

select distinct salary from(
select salary, dense_rank() 
over(order by salary desc) 5th_highest_salary from worker)  as govd
where 5th_highest_salary = 5;
