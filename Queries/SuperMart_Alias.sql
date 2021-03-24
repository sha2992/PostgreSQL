select * from customer

select customer_id "Serial Number", customer_name "Name", age "Customer Age" from customer;
-- this can be written as following

select customer_id as "Serial Number", customer_name as Name, age as "Customer Age" from customer;
-- the name which has space has to be written in " "