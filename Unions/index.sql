-- joins combines cols
-- union combines rows (combinesdata from two or more queries)
select first_name from customers
union
select name from shippers
-- col names are required (not * will work)

-- union all does not remove duplicate rows
select first_name from customers
union
select name from shippers
