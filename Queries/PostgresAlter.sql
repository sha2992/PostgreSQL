select * from customer;

alter table customer drop test; -- or can be written drop column test

alter table customer add test varchar;

alter table customer alter column test type integer USING test::integer; 
/*to convert varchar to integer must type USING column_name::integer, otherwise no conversion.
for viceversa Using is not needed*/

alter table customer rename age to address; -- or can be written rename column age 

alter table customer rename column test to age;

update customer set age = 25 where cust_id = 'C001';

alter table customer alter column age set not null; -- set not null constraint into age column

insert into customer(cust_id,cust_fname,cust_lname,email) values('C002','Guru','Row','gr@xyz.com');

alter table customer alter column age drop not null; -- removing constraint

alter table customer add constraint age check (age>18); -- check constraint 

insert into customer(cust_id,cust_fname,cust_lname,email) values('C003','Guru','Row','gr@xyz.com');

