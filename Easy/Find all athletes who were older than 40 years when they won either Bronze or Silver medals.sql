
/*
Find all athletes who were older than 40 years 
when they won either Bronze or Silver medals

Find all athletes who were older than 40 years when they won either Bronze or Silver medals.

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

select * from olympics_athletes_events
where age > 40 and (medal = 'Bronze' or medal = 'Silver');

