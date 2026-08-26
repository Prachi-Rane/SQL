-- DML COMMANDS
-- 1 Insert 
-- 2 Update
select * from customer;

UPDATE customer 
set name='deepak'
where id=101;

-- 3 DELETE

delete from customer where email='aa';