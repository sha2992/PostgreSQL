/* regular expression*/
-- similar to like operation regular expression matches the string
-- like has two wild cards('_' and '%') regular expression has many

select customer_name from customer
where customer_name ~*'^a+[a-z\s]*$' 
-- ~* for case insensitive, for case sensitive only ~
-- ^ to denote start , $ to denote end
-- \s is for space, as first and last name has space between them, for space or any special character \ has to be used
-- + says happen atleast 1 time, * says happen zore or more time

select customer_name from customer
where customer_name ~'^A+[a-z A-Z\s]*$' 

select customer_name from customer
where customer_name ~*'^(a|b|c|d)+[a-z\s]*$' -- start with either a,b,c or d

select customer_name from customer
where customer_name ~*'^(a|b|c|d)[a-z]{3}\s[a-z]{4}$' 
-- {3} means exactly 3 time it happen,{4} means 4 time

create table users(id serial primary key, name character varying);

insert into users (name) VALUES ('Alex'), ('Jon Snow'), ('Christopher'), ('Arya'),('Sandip Debnath'), ('Lakshmi'),('alex@gmail.com'),('@sandip5004'), ('lakshmi@gmail.com');

select * from users

select * from users where name ~*'^[a-z0-9\.\-\_]+@[a-z0-9\-]+\.[a-z]{2,5}$'

select customer_name from customer 
where customer_name ~*'^[a-z]{5}\s(a|b|c|d)[a-z]{4}$' -- first & last name with 5 char while last name start with a,b,c,d

