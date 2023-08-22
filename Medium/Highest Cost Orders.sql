
/*
Highest Cost Orders

Find the customer with the highest daily total order cost between 2019-02-01 to 2019-05-01.
 If customer had more than one order on a certain day, sum the order costs on daily basis.
 Output customer's first name, total cost of their items, and the date.

For simplicity, you can assume that every first name in the dataset is unique.

Tables: customers, orders


Table: Customers

id: int
first_name: varchar
last_name: varchar
city: varchar
address: varchar
phone_number: varchar

Table: Orders

id: int
cust_id: int
order_date: datetime
order_details: varchar
total_order_cost: int

*/

Solution,

select c.first_name, o.order_date, 
sum(o.total_order_cost) as Highest_daily_order
from customers c
join orders o
on c.id=o.cust_id
where order_date between '2019-02-01' and '2019-05-01'
group by cust_id, order_date
order by Highest_daily_order desc
limit 1;