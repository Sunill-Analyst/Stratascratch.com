
/*
Find the rate of processed tickets for each type

Find the rate of processed tickets for each type.

Table: facebook_complaints

complaint_id: int
type: int
processed: bool
*/

Solution,

select distinct type, sum(processed)/count(*)
from facebook_complaints
group by type;
