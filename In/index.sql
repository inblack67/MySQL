-- customers in VA, FL or GA
select * from customers
where state in ('VA', 'FL', 'GA')

-- not in the above mentioned states
select * from customers
where state NOT in ('VA', 'FL', 'GA')

-- return products with quantity in stock equal to 49, 38, 72

