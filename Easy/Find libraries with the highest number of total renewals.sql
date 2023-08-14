
/*
Find libraries with the highest number of total renewals

Find libraries with the highest number of total renewals.
Output all home library definitions along with the corresponding total renewals.
Order records by total renewals in descending order.

Table: library_usage

library_usage

patron_type_code: int
patron_type_definition: varchar
total_checkouts: int
total_renewals: int
age_range: varchar
home_library_code: varchar
home_library_definition: varchar
circulation_active_month: varchar
circulation_active_year: float
notice_preference_code: varchar
notice_preference_definition: varchar
provided_email_address: bool
year_patron_registered: int
outside_of_county: bool
supervisor_district: float

*/

Solution,

select home_library_definition, sum(total_renewals) as total_renewals
from library_usage
group by home_library_definition
order by total_renewals desc;;

