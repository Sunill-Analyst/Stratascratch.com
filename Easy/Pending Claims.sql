
/*
Pending Claims

Count how many claims submitted in December 2021 are still pending.
 A claim is pending when it has neither an acceptance nor rejection date.

Table: cvs_claims

claim_id: int
account_id: varchar
date_submitted: datetime
date_accepted: datetime
date_rejected: datetime

*/

Solution,

select count(claim_id) as pending_claims 
from cvs_claims
where date_accepted is null and date_rejected is null
and EXTRACT(YEAR_MONTH FROM date_submitted) = 202112

              OR
              
select count(claim_id) as pending_claims 
from cvs_claims
where date_accepted is null and date_rejected is null
AND EXTRACT(MONTH FROM date_submitted) = 12
and EXTRACT(YEAR FROM date_submitted) = 2021;



