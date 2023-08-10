
/*


Find "favorite" customers based on the order count and the total cost of orders.
A customer is considered as a favorite if he or she has placed more than 3 orders
and with the total cost of orders more than $100.

Output the customer's first name, city, number of orders, and total cost of orders.

Tables: customers, orders

Table: customers

Preview

id: int
first_name: varchar
last_name: varchar
city: varchar
address: varchar
phone_number: varchar

Table: Orders

Preview

id: int
cust_id: int
order_date: datetime
order_details: varchar
total_order_cost: int

*/

Solution,

select c.first_name as favourite_Customers, c.city, count(o.order_details) as total_orders,
        ifnull(sum(o.total_order_cost),0) as total_cost from customers c
left join orders o on c.id=o.cust_id
group by c.id, o.cust_id
having total_orders > 3 and total_cost > 100
order by c.id;
