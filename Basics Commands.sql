-- create database
Create Database sales;

use sales;
-- create Table
create table stores(
store_id int,
store_name varchar(200)
)

-- insert some records
INSERT into stores values (1,"store_xyz"),(2,"store_abc");

INSERT into stores(store_id) values (3)
-- to display this data
select * from stores;

-- create a table with contraints
create table stores_new
(
store_id int unique,
store_name varchar (200) not null
)

-- insert some records
insert into stores_new values(1,"abc"),(2,"mno")
insert into stores_new(store_id) values(3) /*this will not work*/

-- Drop Table will remove the table
Drop Table stores_new

-- Truncate Table will delete the records from the table
Truncate table stores

create table stores_new
(
store_id int unique,
store_name varchar (200) not null
)
insert into stores_new values(1,"abc"),(2,"mno")

-- Alter Command
Alter table stores_new 
add column store_city varchar(200)

Alter table stores_new
rename column store_city to store_locatio