-- every record from table one with table 2
-- implicit syntax
select * from customers, orders
-- explicit
select * from customers
cross join
orders
