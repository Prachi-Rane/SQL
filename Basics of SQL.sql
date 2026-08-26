-- first select 
select * from dim_customer;

-- limit
select 
customer_id , 
email 
from 
dim_customer limit 20;

-- WHERE [condition]
-- AND
select  * from dim_customer where (gender ='F') and (country='France') and (join_date >'2022-01-01');
-- OR
select * from dim_customer where (gender='F') and ((country='France') or (join_date >'2022-01-01'));
-- LIKE
select * from dim_customer where first_name like 'T%';

select * from dim_customer where first_name like 'T%y';

select * from dim_customer where first_name like 'T__f%y';


-- SORTING

select * from dim_product order by unit_price desc;

-- top 3 products 

select * from dim_product order by unit_price desc limit 3;

-- ALIAS

select product_key as 'key' , product_id as id ,product_name as name,category from dim_product;

-- Grouping

select category,avg(unit_price),sum(unit_price) as total_price from dim_product group by category;

select category,avg(unit_price) as Avg_Price from dim_product group by category having avg(unit_price)>500; /*group by having*/








