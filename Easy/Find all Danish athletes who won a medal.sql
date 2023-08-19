
/*
Find all Danish athletes who won a medal


Find all Danish athletes who won a medal.
Output unique names only.

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

select distinct name from olympics_athletes_events
where team = 'Denmark' and (medal = 'Gold' or medal = 'Silver' or medal = 'Bronze');

