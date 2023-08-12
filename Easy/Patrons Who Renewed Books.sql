
/*
Find the number of patrons who renewed books at least once but less than 10 times in April 2015. Each row is an unique patron.

Table: library_usage

library_usage

Preview

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

select count(patron_type_definition) 
from( select *, concat(circulation_active_month, ' ', circulation_active_year) as month_year
from library_usage) t
where total_renewals between 1 and 10 and 
month_year = "April 2015";

