/*count*/
select count(*) "Total Cells" from sales

select * from sales

select count(order_line) "Number of Products Ordered", count(distinct order_id) "Total Orders Made"
from sales where customer_id = 'CG-12520';

select profit from sales

/*sum*/

select sum(profit) as "Total Profit" from sales;

select sum(quantity) from sales where product_id = 'FUR-BO-10001798';

/*avg*/

select avg(age) from customer;

select avg(sales*.1) "Average commision Value" from sales;

/*min - max*/

select min(sales) as "Minimum Sales value June" 
from sales
where order_date between '2016-06-01' and '2016-06-30';
-- to check to query we can write the following command to ensure the minimum value

select sales 
from sales 
where order_date between '2016-06-01' and '2016-06-30'
order by sales;

--max

select max(sales) as "Minimum Sales value June" 
from sales
where order_date between '2016-06-01' and '2016-06-30';

select sales 
from sales 
where order_date between '2016-06-01' and '2016-06-30'
order by sales desc;

-- sum of all sales from sales table
select sum(sales) from sales;

-- count the number of customers in north region with age between 20 and 30
select distinct region from customer;

select age, region from customer order by age asc;

select count(customer_id) 
from customer
where region = 'South' and age between 20 and 30;

-- find avg age of east region customer
select avg(age) as "Avg Age of East Coustomer"
from customer
where region = 'East';

-- min and max age customer of philadelphia
select min(age)
from customer
where city = 'Philadelphia';

select max(age)
from customer
where city = 'Philadelphia';