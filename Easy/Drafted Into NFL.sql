
/*
Drafted Into NFL


How many athletes were drafted into NFL from 2013 NFL Combine? 
The pickround column specifies if the athlete was drafted into the NFL.
A value of 0 means that the athlete was not drafted into the NFL.

Table: nfl_combine

year: int
name: varchar
firstname: varchar
lastname: varchar
position: varchar
heightfeet: int
heightinches: float
heightinchestotal: float
weight: int
arms: float
hands: float
fortyyd: float
twentyyd: float
tenyd: float
twentyss: float
threecone: float
vertical: float
broad: int
bench: int
round: int
college: varchar
pick: varchar
pickround: int
picktotal: int

*/

Solution,

select count(name) as drafted_in_2013 from nfl_combine
where year = 2013 and pickround > 0;

