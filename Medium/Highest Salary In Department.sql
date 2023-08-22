
/*
Highest Salary In Department

Find the employee with the highest salary per department.
Output the department name, employee's first name along with the corresponding salary.

Tables: customers, orders

Table: employee

id: int
first_name: varchar
last_name: varchar
age: int
sex: varchar
employee_title: varchar
department: varchar
salary: int
target: int
bonus: int
email: varchar
city: varchar
address: varchar
manager_id: int

*/

Solution,

select department, first_name, salary
    from(select id, first_name, last_name, department, salary,
        rank() over( partition by department order by salary desc) as rankk
        from employee) as rankk_table
where rankk = 1
order by salary desc;