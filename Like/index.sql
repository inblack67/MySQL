-- matches string patterns

-- customer name starts with b
select * from customers
where last_name like 'b%';

-- customer name which has b in their last_name
select * from customers
where last_name like '%b%';

-- last_name 2 char long and second char should be b
-- '_' => matches one char
-- '%' => matches any number of char
select * from customers
where last_name like '_b';

-- Get customers whose addresses contain TRAIL or AVENUE and phone numbers end with 9
select * from customers 
where (address like '%trail%' or '%avenue%')
and phone like '%6';
