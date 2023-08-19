
/*
Number Of Acquisitions

Find the number of acquisitions that occurred in each quarter of each year.
Output the acquired quarter in YYYY-Qq format along with the number of acquisitions
 and order results by the quarters with the highest number of acquisitions first.

Table: crunchbase_acquisitions

company_permalink: varchar
company_name: varchar
company_category_code: varchar
company_country_code: varchar
company_state_code: varchar
company_region: varchar
company_city: varchar
acquirer_permalink: varchar
acquirer_name: varchar
acquirer_category_code: varchar
acquirer_country_code: varchar
acquirer_state_code: varchar
acquirer_region: varchar
acquirer_city: varchar
acquired_at: datetime
acquired_month: datetime
acquired_quarter: datetime
acquired_year: int
price_amount: float
price_currency_code: varchar
id: int
*/

Solution,

select acquired_quarter, COUNT(acquirer_name) as acq_per_Y_per_Q
from crunchbase_acquisitions
group by  acquired_quarter
order by acq_per_Y_per_Q desc;
