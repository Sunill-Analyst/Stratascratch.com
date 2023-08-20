
/*
Make a report showing the number of survivors
and non-survivors by passenger class.

Make a report showing the number of survivors and non-survivors by passenger class.
Classes are categorized based on the pclass value as:
pclass = 1: first_class
pclass = 2: second_classs
pclass = 3: third_class
Output the number of survivors and non-survivors by each class.

Table: titanic

passengerid: int
survived: int
pclass: int
name: varchar
sex: varchar
age: float
sibsp: int
parch: int
ticket: varchar
fare: float
cabin: varchar
embarked: varchar

*/

Solution,

select pclass,
       count(case when survived = 1 then survived end) as survivors,
       count(case when survived = 0 then survived end) as non_survivors 
       from titanic
group by pclass
order by pclass;
