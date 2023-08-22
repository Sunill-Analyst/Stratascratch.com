
/*
Acceptance Rate By Date

What is the overall friend acceptance rate by date?
Your output should have the rate of acceptances by the date the request was sent.
Order by the earliest date to latest.

Assume that each friend request starts by a user sending (i.e., user_id_sender) 
a friend request to another user (i.e., user_id_receiver) that's logged in the table
 with action = 'sent'. If the request is accepted, the table logs action = 'accepted'.
 If the request is not accepted, no record of action = 'accepted' is logged.

Table: fb_friend_requests

user_id_sender: varchar
user_id_receiver: varchar
date: datetime
action: varchar
*/

Solution,

select sent_date, count(accepted_date)/count(sent_date)
from(SELECT user_id_sender, user_id_receiver,
max(case when action = 'sent' then date end) as sent_date,
max(case when action = 'accepted' then date end) as accepted_date
FROM fb_friend_requests
group by user_id_sender
order by sent_date) as daat
group by sent_date;
