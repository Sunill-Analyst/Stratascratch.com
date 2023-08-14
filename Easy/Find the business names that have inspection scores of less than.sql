
/*
Find the business names that have inspection scores of less than 50


Find the business names that scored less than 50 in inspections.
Output the result along with the corresponding inspection date and the score.

Table: sf_restaurant_health_violations

business_id: int
business_name: varchar
business_address: varchar
business_city: varchar
business_state: varchar
business_postal_code: float
business_latitude: float
business_longitude: float
business_location: varchar
business_phone_number: float
inspection_id: varchar
inspection_date: datetime
inspection_score: float
inspection_type: varchar
violation_id: varchar
violation_description: varchar
risk_category: varchar

*/

Solution,

select business_name, inspection_date, inspection_score 
from sf_restaurant_health_violations
where inspection_score < 50;
