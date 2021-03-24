-- string functions applied on strings to make it more meaningful

/* length () says the length of strings, returns how many chars r there */

select customer_name, length(customer_name) Characterss 
from customer
where age > 60;

select customer_name, length(customer_name) Characterss 
from customer
where length(customer_name)  > 15;

/* upper - lower ... to match string character make it uniform case*/

select upper(customer_name) from customer

select lower(customer_name) from customer

/* replace */

select customer_name, country, replace(country,'United States','US') as "New name" from customer;
-- replace(_,1,2), 1 and 2 string is case sensitive while using

/* trim, ltrim,rtrim*/

select trim(leading' ' from ' Shakil Ahmed');
select trim(trailing ' ' from ' Shakil Ahmed ');
select trim(both ' ' from ' Shakil Ahmed ');

select trim(' ' from ' Shakil Ahmed ');-- if not mentioned leading trim 
select trim( from ' Shakil Ahmed '); -- if not mentioned charater 'space' will be eliminated

select ltrim(' Shakil Ahmed ',' ');

select rtrim(' Shakil Ahmed ',' ');
--for ltrim and rtrim string to be mentiond first then the character to be eliminated

/* concate */

select customer_name, city||', '||state||', '||country as "Address" 
from customer;

/* substring */

select customer_id, customer_name, 
substring(customer_id for 2) as cust_group
from customer
where substring(customer_id for 2) = 'AB'

select customer_id, customer_name, 
substring(customer_id from 4 for 5) as cust_num  -- starting from 4th character and have 5 character 
from customer
where substring(customer_id for 2) = 'AB' 

/* string_agg aggregation (list aggregations) */

select order_id, string_agg(product_id,', ') -- (column name,' delim')
from sales
group by order_id
order by order_id;
-- concate functions concate from differents column where string_agg concate from same column
