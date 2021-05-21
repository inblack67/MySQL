-- inner join is default
select order_id, orders.customer_id, concat(first_name, ' ' , last_name) as name 
from orders
join
customers
on -- join condition
orders.customer_id = customers.customer_id

-- customer_id is ambiguous (present in both the tables) so access it from one of the tables or error
-- select customer_id ....aboveQuery -- error
-- select orders.customer_id ...
-- or
-- select customers.customer_id ...

-- aliases
select order_id, c.customer_id, concat(first_name, ' ' , last_name) as name 
from orders o
join
customers c
on -- join condition
o.customer_id = c.customer_id

-- join order_items and products table
select order_id, p.product_id, quantity, name from order_items o
join
products p
on o.product_id = p.product_id

-- joining tables across dbs
select * from order_items o 
join
sql_inventory.products p
on
o.product_id = p.product_id

-- self joins => diff aliases and prefix each col with an alias
use sql_hr
select e.first_name, m.first_name as manager from employees e
join
employees m
on
e.reports_to = m.employee_id;

-- joining 3 or more tables
select o.customer_id, concat(c.first_name,' ', c.last_name) as name, s.name as status 
from orders o
join
customers c
on c.customer_id = o.customer_id
join
order_statuses s
on s.order_status_id = o.status
