select * from scienceclass;

delete from scienceclass where sname = 'Robb';

alter table scienceclass rename sname to student_name;

update scienceclass 
set science_marks = 45 
where lower(student_name) = 'jon'; 
/* lower () to lowercase the field so that no uppercase and match, 
otherwise have to write exactly same as stored at table;
where student_name = 'Jon' */