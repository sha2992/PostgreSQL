create or replace view logistics as 
select a.order_line, a.order_id,b.customer_name,b.city,b.state,b.country
from sales as a
left join customer b
on a.customer_id=b.customer_id
order by a.order_line;  

select * from logistics -- now logistics is behaving like a table, but it is not a table. when we call the view it triggers the query

-- instead of 'create or replace view' 'create view' can be used

drop view logistics -- deleting view


/* index */
--index is a performance tuning method of allowing faster retrieval 
-- index should be on integer and not null column

create unique index mon_idx
on month_vales(mm);

drop index mon_idx -- droping index 

select * from sales;

create or replace view Daily_Billing as 
select order_line,product_id,sales,discount  
from sales
order by discount;

select * from daily_billing;