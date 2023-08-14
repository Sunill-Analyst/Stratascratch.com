
/*
Highest Crime Rate

Find the number of crime occurrences for each day of the week.
Output the day alongside the corresponding crime count.

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

select day_of_week, count(day_of_week) as total_crimes 
from sf_crime_incidents_2014_01
group by day_of_week
order by total_crimes desc;
