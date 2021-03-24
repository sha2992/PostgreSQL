/*create table customer(
cust_id varchar primary key,
	cust_fname varchar,
	cust_lname varchar,
	address varchar default 'Dhaka',
	email varchar
);*/

--insert into customer(cust_id,cust_fname,cust_lname,email) values('C001','Mac','Luv','as@jj.com');

--alter table customer rename column address to age;

/*create table student(
Enrollment_NO int,
	SName varchar,
	Science_Marks varchar);
*/	
--copy student from 'C:\Program Files\PostgreSQL\13\data\Student.csv' delimiter ',' csv header;

select * from customer;

select * from student;

select sname,science_marks from student where not science_marks = '79' ;

drop table student;

create table ScienceClass(
	Enrollment_NO int,
	SName varchar,
	Science_Marks int
);

copy ScienceClass from 'C:\Program Files\PostgreSQL\13\data\Student.csv' delimiter ',' csv header;

select * from scienceclass;

select sname from scienceclass where science_marks > 60;

select * from scienceclass where science_marks >35 and science_marks<60;

select * from scienceclass where science_marks <=35 and science_marks>=60;

update scienceclass set science_marks = 60 where sname = 'Sansa'; 

delete from scienceclass where enrollment_no = 6;

delete from scienceclass; -- to delete all rows of table

alter table customer add column test varchar; -- or can be written as alter table customer add test varchar;