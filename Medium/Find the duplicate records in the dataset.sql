
/*
Find the duplicate records in the dataset.
Output the worker title, affected_from date, 
and the number of times the records appear in the dataset.

Table: title

Preview

worker_ref_id: int
worker_title: varchar
affected_from: datetime

*/

Solution,

select worker_title, affected_from, count(*) as total_duplicates from title
Group by worker_title, affected_from
having count(*)>1;

