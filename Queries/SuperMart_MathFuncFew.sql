/*random*/
--random generate number between 0 and 1 
select random(); 

-- to select any number apart from 0 and 1 range 
select random()*(10-1)+1;

-- to select integer value only
select floor(random()*(10-2))+1;

--all above will provide till 10 not 10 .. to generate 10 
select floor(random()*(10-2+1))+1;

-- select 5 random value from customer_id
select customer_id from customer order by random() limit 5;
/*setseed*/
-- seeding a value means random number will derived from that 
select setseed(1);
select random(); -- 0.499910
select random();

-- if i seed again and call random function that will give same value as previous

select setseed(1);
select random();--0.499910

/* round*/

select order_line,sales,round(sales) from sales order by sales desc;

select sum(sales), sum(round(sales)),sum(ceil(sales)),sum(floor(sales)) from sales;

/*power*/

select age,power(age,2) from customer;

