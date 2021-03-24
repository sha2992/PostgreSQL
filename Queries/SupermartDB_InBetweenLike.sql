select * from customer;

select * from product;

select * from sales;

select * from customer where city = 'Henderson' or city = 'Concord'; 

select * from customer where city in ('Henderson','Concord');

/* 'in' and 'or' works almost similarly, here both give same output. 
for complex query 'in' is efficient*/

select * from customer where age between 20 and 35;

-- same data will be retrieved by following command

select * from customer where age >= 20 and age <= 35;

select * from customer where age not between 20 and 35;

select * from customer where lower(customer_name) Like 'j%'; -- converting all lowercase then match

select * from customer where customer_name Like 'J%'; -- have to be uppercase in storage

select * from customer where customer_name Like '____ %';  
-- after having exact 4 character first name any number of character can come. space there for separate

select distinct city from customer where city not like 'S%'; 
-- distinct used to find no duplicate 

select * from customer where customer_name like 'G\%';
-- '\' used to match whether any name has % within its name

select * from customer where customer_name like '% ____';-- last name 4 character

select distinct city from customer where region in ('North','East');