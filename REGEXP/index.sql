-- lastname contains filed
select * from customers where last_name REGEXP 'field'

-- starts
select * from customers where last_name REGEXP '^field'

-- ends
select * from customers where last_name REGEXP 'field$'

-- field or mac
select * from customers where last_name REGEXP 'field|mac'

-- contains e but before e => have either g or i or m
select * from customers where last_name REGEXP '[gim]e'

-- ends with e but before e => have either g or i or m
select * from customers where last_name REGEXP '[gim]e$'

-- ends with e but before e => have char in range a to h
select * from customers where last_name REGEXP '[a-h]e$'

-- first names are ELKA OR AMBUR
select * from customers where first_name REGEXP 'ELKA|AMBUR'

-- last names end with EY or ON
select * from customers where last_name REGEXP 'EY$|ON$'

-- last names starts with MY or contains SE
select * from customers where last_name REGEXP '^MY|SE'

-- last names contains B followed by R or U
select * from customers where last_name REGEXP 'B[RU]'
