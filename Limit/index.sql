select * from customers limit 3
-- if limit val is greater than the number of rows => all rows will be returned

-- offset => used in pagination
select * from customers limit 6, 3 -- skip 3 records and then pick 3

-- top 3 loyal customers => more points
select * from customers order by points desc limit 3
