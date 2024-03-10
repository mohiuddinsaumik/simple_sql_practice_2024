show databases;

use college;

show tables;

# Turn off safe mood.......to turn it on again replace 1 for 2.
set sql_safe_updates = 0;


update student
set grade = "O"
where grade = "A";

select * from student;

UPDATE student
SET name = 'Ripon', 
marks = 80
WHERE rollno = 109;


update student 
set grade = "A"
where marks between 71 and 88;


update student 
set grade = "A +"
where marks between 88 and 100;





select * from student;

select grade,
count(name)
from student
group by grade;

select grade from student;



UPDATE student
SET marks = marks + 1;


update student
set marks = 95,
grade = "A+"
where rollno = 121;

select * from student;



delete from student
where marks <33;


alter table student
add column age int;

alter table student
drop column age;

alter table student
add column age int not null default 19;

# change age datatype
alter table student 
modify column age varchar(2);

alter table student
change age std_age int;


alter table student
change std_age age int;

#rename table

alter table student
rename to stu;   

alter table stu 
rename to student;


# Truncate  (delete all data from Table. The table exists but tha all datas will be deleted.)
truncate table faculty;



