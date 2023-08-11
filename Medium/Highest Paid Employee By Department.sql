
/*
Determine the highest salary and employee id for each department.

Your output should contain the department, worker id and their corresponding salary.

Note: In the event of a tie, output both worker id's

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

select worker_id, department, salary as highest_salary
from(select *, dense_rank() over (partition by department order by department, salary desc) raank
from worker) as t
where raank = 1;

