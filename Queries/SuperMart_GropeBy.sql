select * from customer

select region, count(customer_id) from customer group by region order by region;

select product_id, sum(quantity) Quantity_Sold from sales group by product_id order by quantity_sold;
-- Quantity_sold alias sum quantity now we can sort by this name, once we mention from then we can call that 

--having 

select region, count(customer_id) 
from customer 
group by region having count(customer_id)>200 ;

select product_id as "Products", sum(sales) "Total Sales", sum(quantity) "Total Quantity", count(distinct order_line) "Total Order", min(sales)"Minimum Sale", max(sales)"Maximum Sale", avg(sales)"Average Sale"  
from sales
group by product_id order by sum(sales) desc;

select product_id as "Products", sum(sales) "Total Sales", sum(quantity) "Total Quantity", count(distinct order_line) "Total Order", min(sales)"Minimum Sale", max(sales)"Maximum Sale", avg(sales)"Average Sale"  
from sales
group by product_id having sum(quantity)>10;


