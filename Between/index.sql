select * from customers
where points between 1000 and 3000

-- customers born b/w 1/1/1990 and 1/1/2000
-- format for dates in sql is YYYY-MM-DD
select * from customers where birth_date between '1990-01-01' and '2000-01-01';
