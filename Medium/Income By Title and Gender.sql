
/*
Income By Title and Gender

Find the average total compensation based on employee titles and gender.
 Total compensation is calculated by adding both the salary and bonus of each employee.
 However, not every employee receives a bonus so disregard employees without bonuses in your
 calculation. Employee can receive more than one bonus.
 
Output the employee title, gender (i.e., sex), along with the average total compensation.

Tables: sf_employee, sf_bonus

Table: sf_employee

id: int
first_name: varchar
last_name: varchar
age: int
sex: varchar
employee_title: varchar
department: varchar
salary: int
target: int
email: varchar
city: varchar
address: varchar
manager_id: int


Table: sf_bonus

worker_ref_id: int
bonus: int

*/

Solution,

select e.employee_title,
        e.sex,
        avg(e.salary+b.total_bonus) from sf_employee e
        
inner join (select worker_ref_id,
                sum(bonus) as total_bonus
            from sf_bonus 
            group by worker_ref_id) b on e.id = b.worker_ref_id
            
group by employee_title, sex;
