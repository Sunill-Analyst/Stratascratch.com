
/*
Find all events participated by Christine Jacoba Aaftink

Find all events participated by Christine Jacoba Aaftink.
Output unique values only.

Table: olympics_athletes_events

id: int
name: varchar
sex: varchar
age: float
height: float
weight: datetime
team: varchar
noc: varchar
games: varchar
year: int
season: varchar
city: varchar
sport: varchar
event: varchar
medal: varchar

*/

Solution,

select distinct event from olympics_athletes_events
where name regexp 'CHRistine Jacoba Aaftink';

