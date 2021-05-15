-- sorts
select * from customers order by first_name -- asc is default
select * from customers order by first_name desc
select * from customers order by first_name, state

-- in mysql => we can sort data based on cols which are not in the select clause
select first_name from customers order by state -- valid in mysql

-- sort by col orders => something to avoid though, what is another col is added in the select clause? 
select first_name, last_name from customers order by 1,2 -- sort by first_name then last_name

-- orders with id 2 and sorted by total price in desc order
select * from orders where id = 2 order by (unit_price * quantity) desc
