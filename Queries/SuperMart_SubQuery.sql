select * from sales 
where customer_id in (select Customer_id from customer where age>60);

select quantity from sales;

select a.product_id, a.product_name, a.category,b.quantity
from product a left join(select product_id,sum(quantity) from sales group by product_id) as b
on a.product_id=b.product_id;


-- subquery at select level, as same as left join

select customer_id,order_line, (select customer_name from customer where customer.customer_id = sales.customer_id)
from sales
order by customer_id;