
/*
Write a query that returns the user ID of all users
that have created at least one ‘Refinance’ submission
 and at least one ‘InSchool’ submission.

Table: loans

loans

Preview

id: int
user_id: int
created_at: datetime
status:varchar
type: varchar

*/

Solution,

select user_id
from loans
group by user_id
having sum(case when type='Refinance' then 1 else 0 end) >=1 
    and sum(case when type='InSchool' then 1 else 0 end) >= 1;

