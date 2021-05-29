insert into
customers
values (
    default, -- id => auto incr
    "john",
    "doe",
    "1997-09-04",
    null,
    "address",
    "city",
    "state",
    default -- points => default => null
)

-- or => insert into select cols only
insert into
customers (first_name, last_name, birth_date, address, city, state)
values (
    "john",
    "doe",
    "1997-09-04",
    "address",
    "city",
    "LA"
    );

-- check
select * from customers order by customer_id desc limit 1;

-- add multiple rows
insert into
shippers (name)
values ("john"), ("doe")

-- insert heirarchical rows

