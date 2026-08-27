-- Transformation

-- Numeric Transformation
select 
unit_price * 0.9 as discounted_price,
unit_price +10 as tax_price,
unit_price /10 as fractioned_price,
round(unit_price,1) as rounded_price
from dim_product;

-- Date Transformation

select date from dim_date;

-- 1. Current date

select now() as 'current_date'  ;

select utc_date(),utc_time(),utc_timestamp();

-- 2. DATE DESCRIPTION

select date,year(date),month(date),day(date),weekday(date),dayname(date),date(utc_timestamp()) from dim_date;

-- 3 operation on date
select date,adddate(date,2),subdate(date,2) from dim_date;

select date,date(utc_timestamp()),datediff(date(utc_timestamp()),date) as total_days from dim_date;

-- Type Casting
select cast('2023-03-01' as date);



-- Date formmating
select date,date_format(date,'%W %M %e %Y') as date_formatted from dim_date;


