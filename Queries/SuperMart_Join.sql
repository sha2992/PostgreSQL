select * from sales;

select * from customer;

/* inner join ( join on) */
select order_line, order_id,a.customer_id,a.sales, customer_name,age
from sales as a inner join customer b on a.customer_id = b.customer_id
order by customer_id;

/* left join ( join on) finds the value from left table doesn't matter match or not */
select order_line, order_id,a.customer_id,a.sales, customer_name,age
from sales as a left join customer b on a.customer_id = b.customer_id
order by customer_id;

/* right join ( join on) finds the value from right table doesn't matter match or not */
select order_line, order_id,b.customer_id,a.sales, customer_name,age
from sales as a right join customer b on a.customer_id = b.customer_id
order by customer_id;

/* full join ( join on) finds the value from both the table doesn't matter match or not */
select order_line, order_id,b.customer_id,a.sales, customer_name,age
from sales as a full join customer b on a.customer_id = b.customer_id
order by customer_id;

-- cross join ( certasian product)

create table month_vales(mm integer);
create table year_values(YYYY integer);

insert into month_vales values (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12);
insert into year_values values (2011),(2012),(2013),(2014),(2015),(2016),(2017),(2018),(2019),(2020);

select * from month_vales;

select y.yyyy, m.mm
from year_values y,month_vales m 
order by YYYY desc,mm;

-- except 

select customer_id from customer
except 
select customer_id from sales;

/* Union 
combine multiple result sets of multiple query */

select customer_id from customer
union 
select customer_id from sales 
order by customer_id;
/* two select fetch same data type and same number of column, multiple union can be used */

