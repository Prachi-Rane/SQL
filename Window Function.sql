-- Window functions

select * from dim_product;

select 
*, sum(unit_price) over(order by launch_date)   /* gives running sum*/
from dim_product;

select 
*, avg(unit_price) over(order by launch_date)   /* gives running avg*/
from dim_product;

-- frames
select *,
sum(unit_price) over(order by launch_date rows between unbounded preceding and current row)
from dim_product;

select *,
sum(unit_price) over(order by launch_date rows between unbounded preceding and unbounded following)
from dim_product;


-- Ranking

select unit_price,row_number() over(order by unit_price) as 'row_number' ,
rank() over(order by unit_price) as 'rank',
dense_rank() over(order by unit_price) as 'dense rank'  from dim_product where unit_price=892.75 or unit_price=893.80;

select category,unit_price,row_number() over(partition by category order by unit_price) as 'row_number' ,
rank() over(partition by category  order by unit_price) as 'rank',
dense_rank() over(partition by category  order by unit_price) as 'dense rank'  from dim_product;
