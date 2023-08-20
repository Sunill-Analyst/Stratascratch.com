
/*
Share of Active Users

Output share of US users that are active.
 Active users are the ones with an "open" status in the table.

Table: fb_active_users

user_id: int
name: varchar
status: varchar
country: varchar

*/

Solution,

select country,
(count(status)/(select count(country) from fb_active_users where country='USA')*100)
 as percentage_of_USA_Active_Users from fb_active_users
where country = 'USA' AND status = 'open';
