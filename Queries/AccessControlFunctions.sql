/* Access Control */
/* create user*/

create user shadmin   -- for creating user 
with password 'data2021'-- if we want to add passowrd, other than only before 'with' it would create user ,this part is optional

create user shadmin
with password 'data2021'
valid until '01-Jan-2022' -- specify until when it will expire, optional part

create user shadmin
with password 'data2021'
valid until 'infinity'

/* Grant - revoke */
-- grant to allow privileges to the users
-- revoke to retrieved persimmion

grant select,insert,update, delete on product to shadmin -- 'product' is the table, any view also can be there

grant select,insert,update, delete on product,customer to shadmin -- can have multiple at one time

revoke select,insert,update,delete on product from shadmin 
-- this can be written as
revoke all on customer from shadmin;

/* drop user*/

drop user shadmin -- before dropping a user first have to drop/ delete the database that it owns
-- once I grant the privileges shadmin would not be deleted, before dropping revoke had to be called

/*rename user*/

alter user shadmin
rename to sdm;


select * from pg_user; -- details of user of database

select distinct usename from pg_stat_activity;  -- to show the connected user on which have been logged in


/*tablespace*/
--only superuser can create tablespace, until not giving privilege to any new user

create tablespace newspace location 'C:\Program Files\PostgreSQL\13\data\storage';

create table cust (i int) tablespace newspace;

set default_tablespace = newspace; -- making new space the default one

select * from pg_tablespace 

/*schema*/
create schema test;

create table test.customer as select * from customer;-- creating customer in test schema from public customer, in other schema another table can be named as customer
--apart from public schema, schema name to be mentioned before table name 
select * from test.customer;
/*explain*/
--explain provides the details .. summary of a query
explain select * from customer

explain verbose select * from customer
--verbose gives the more details