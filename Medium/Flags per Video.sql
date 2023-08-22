
/*
Flags per Video

For each video, find how many unique users flagged it.
A unique user can be identified using the combination of their first name and last name.
Do not consider rows in which there is no flag ID.

Table: user_flags

user_firstname: varchar
user_lastname: varchar
video_id: varchar
flag_id: varchar

*/

Solution,

select distinct video_id,
count(distinct concat(coalesce(user_firstname, user_lastname))) as count_unique_flag_id.
from user_flags
where flag_id is not null
group by video_id
order by count_uni desc;
