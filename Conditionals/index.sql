-- From the order_items table, get the items for order_id 6 and total price > 30
select * from order_items
where order_id = 6 and (unit_price * quantity) > 30

-- 2
select *, (unit_price * quantity) as total_price from order_items
where order_id = 6 and (unit_price * quantity) > 30
