
/*
Find the first 50% records of the dataset.

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

select * 
from(select *, ntile(2) over (order by worker_id) nt
from worker) as t
where nt = 1;

