select * from customer where age > 25 order by 2 -- 2 indicates column no 2 ( customer name)

select * from customer order by age desc, customer_name asc;
-- not same as following 

select * from customer order by customer_name asc, age desc;

select customer_name, city, age from customer limit 10; 
-- set how many i want to fetch by this call ... limit set the number i desired.

select * from sales where discount > 0 order by discount desc limit 10