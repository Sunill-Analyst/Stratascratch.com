
/*
Find the percentage of shipable orders

Find the percentage of shipable orders.
Consider an order is shipable if the customer's address is known.

Tables: orders, customers


Table: Orders

id: int
cust_id: int
order_date: datetime
order_details: varchar
total_order_cost: int

Table: customers

id: int
first_name: varchar
last_name: varchar
city: varchar
address: varchar
phone_number: varchar

*/

Solution,

select count(c.address)/count(o.id)*100 from customers c
join orders o
on o.cust_id=c.id;