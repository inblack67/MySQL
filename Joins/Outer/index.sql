-- left or right => all records from the resective table are returned

-- Inner join query will not give customers who dont have any orders (null)
select c.first_name
from customers c
join
orders o
on 
c.customer_id = o.customer_id
order by c.customer_id

-- left outer join => outer keyword is optional just like the inner keyword
select c.first_name
from customers c
left outer join
orders o
on 
c.customer_id = o.customer_id
order by c.customer_id

select * from products p
left join 
order_items o
on o.product_id = p.product_id

-- self outer joins
select * from employee e
left join
employee m
on e.reports_to = m.employee_id as manager

-- using clause
-- if the col name is same in join cond
select c.first_name
from customers c
left outer join
orders o
using (customer_id); -- braces are required

select * from order_items oi 
join
order_item_notes oin
using (order_id, product_id)

-- natural join => db engines guesses the join cond (based on same col names) => not recommended
-- cant use using statements with them
select * from customers c
natural join
orders o

