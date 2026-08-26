create table orders(o_id int,  cust_id int ,price int);

insert into orders values (1,101,1000),(2,201,1100),(3,501,1200);

create table customer(id int, name varchar(100),email varchar(100));

insert into customer values (101,'love','aa'),(201,'prachi','bb'),(301,'rane','cc');

-- Joins

-- Inner Join
select *
from orders  o 
inner join 
customer c 
on o.cust_id=c.id;

-- Left Join
Select * from orders  o
left join customer c on o.cust_id=c.id;

-- Right Join
select * from orders o 
right join customer c on o.cust_id=c.id;

-- Full Join (not supported in this server )
SELECT *
FROM orders o
LEFT JOIN customer c
    ON o.cust_id = c.id
UNION
SELECT *
FROM orders o
RIGHT JOIN customer c
    ON o.cust_id = c.id;