select * from customer

select *, 
case when age < 30 then 'Young' 
when age > 60 then 'Senior Citizen' 
else 'Middle Aged' 
end As "Age Category" 
from customer;