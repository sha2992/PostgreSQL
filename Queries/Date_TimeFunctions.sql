select current_date,current_time,current_time(1),current_time(3),current_timestamp;

-- timestamp will provide date time together

/* age () returns years, months, days between two dates*/

select age('2018-03-16','2017-11-20'); -- later date should be older one

select order_line, order_date, ship_date,age(ship_date,order_date) as time_taken
from sales
order by time_taken desc;

/* extract */
--extract funtion used to derive the part of a unit.. suppose if one need only days not years or months then extract to be used

select extract(day from current_date);

select order_date, ship_date, (extract(epoch from ship_date) - extract(epoch from order_date)) sec_taken from sales; 
--epoch will provide difference of secend between two dates
--epoch make it integer so it has to be written as it is

select age(current_date,'1939-04-06') "As of Batman"