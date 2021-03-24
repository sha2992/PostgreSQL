/*to_char*/
--to_char is a function to convert number or date into string
--to_char(data,format_mask) 

select sales, 'The total sales value is'|| to_char(sales,'9999.99') messages
from sales; -- '9999.99' is the mask, it denotes that upto 4 digit will count without leading zeros and two after decimal point

select sales, 'The total sales value is '|| to_char(sales,'L9999.99') messages
from sales; -- to add a dollar sign L to be used... if we need other sign directly that can be used

select sales, 'The total sales value is '|| to_char(sales,'#9999.99') messages
from sales; 

select order_date,to_char(order_date,'DDMMYYYY') from sales; -- to convert date we have to mention how we want to arrange 

select order_date,to_char(order_date,'Month DD YYYY'), to_char(order_date,'MONTH DD YYYY') from sales;

/*to_date*/

-- to_date converts the string into date
-- to_date(string,format_mask)

select to_date('2016/06/18','yyyy/mm/dd');
select to_date('030303','ddmmyy');

/*to_number*/
--converts string into number

select to_number('199.77','999.99');