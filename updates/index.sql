-- copy a table
-- auto incr, pk key attrs are ignored in the copy
create table from orders_archived as
select * from orders

-- copy only a subset of records
insert into orders_archived 
select * from orders where id = 3

-- update single row
update invoices
set payment_total = 10, payment_date = '2021-03-01'
where id = 2

-- update multiple row
-- mysql workbench runs on a safe update mode => allows only one record to update  or delete

-- using subqueries in update
update invoices
set payment_total = 10, payment_date = '2021-03-01'
where id in (select id from customers where prime = true)
