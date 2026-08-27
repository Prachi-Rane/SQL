-- Subqueries

select * from dim_product;

select avg(unit_price) from dim_product;

select * from dim_product where unit_price > 495.79;

select * from dim_product where unit_price > (select avg(unit_price) from dim_product);

select * from (select * from dim_product where unit_price > (select avg(unit_price) from dim_product)
) as sub_query where product_name='Figure Method';

-- CTES common table expressions

with cte_table as 
(select * from dim_product where unit_price > (select avg(unit_price) from dim_product)) 
select * from cte_table where product_name='Figure Method';

with cte_table as 
(select * from dim_product where unit_price > (select avg(unit_price) from dim_product)) ,
cte_table2 as(select * from cte_table where product_name in('Figure Method','Huge Change','Film Finally'))
(select * from cte_table2 where product_name = 'Figure Method');