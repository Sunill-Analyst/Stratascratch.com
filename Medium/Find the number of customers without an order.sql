
/*
Find the number of customers without an order.

Tables: orders, customers

orders

Preview

id: int
cust_id: int
order_date: datetime
order_details: varchar
total_order_cost: int

customers

id: int
first_name: varchar
last_name: varchar
city: varchar
address: varchar
phone_number: varchar

*/

Solution,

select count(distinct c.first_name) from customers c
left join orders o on
c.id=o.cust_id
where o.cust_id is null;

