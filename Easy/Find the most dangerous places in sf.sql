
/*
Find the most dangerous places in SF


Find the most dangerous places in SF based on the crime count per address and district combination.
Output the number of incidents alongside the corresponding address and the district.
Order records based on the number of occurrences in descending order.

Table: sf_crime_incidents_2014_01

incidnt_num: float
category: varchar
descript: varchar
day_of_week: varchar
date: datetime
time: datetime
pd_district: varchar
resolution: varchar
address: varchar
lon: float
lat: float
location: varchar
id: int

*/

Solution,

select full_address, count(incidnt_num) as total_crime
 from(select *, concat(address, ' ', pd_district) as full_address 
 from sf_crime_incidents_2014_01) as tablee
group by full_address
order by total_crime desc;
