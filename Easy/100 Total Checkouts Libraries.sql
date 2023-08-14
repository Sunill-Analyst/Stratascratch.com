
/*
100 Total Checkouts Libraries

Find the number of libraries that had 100 or more of total checkouts in February 2015.
 Be aware that there could be more than one row for certain library on monthly basis.

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

select count(home_library_code) as total_libraies
 from(select *, concat(circulation_active_month, ' ', circulation_active_year) as month_year
 from library_usage) as t
where month_year = "February 2015";

