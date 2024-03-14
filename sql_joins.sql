show databases;
use college;
show tables;



use college3;
show tables;

select * from student;

select * from course;

# JOIN 
# inner join

select * 
from student
inner join course
on student.id = course.id;

# ALIAS
# Use as namae like:
select * from student as s
inner join course as c
on s.id = c.id;


#Left Join
# Return all records from LEFT table & the matched record from the RIGHT table 
# 1st table would be left table and 2nd table would right table

select * from student as s
left join course as c
on s.id = c.id;


#Right Join
# Return all records from RIGHT table & the matched record from the LEFT table 

select * from student as s
right join course as c
on s.id = c.id; 

#Full join**************************************************************************
# return all records when there is a match in either LEFT or RIGHT table. **.UNION.**

select * from student as a
left join course as b
on a.id = b.id
union
select * from student as a
right join course as b
on a.id = b.id;

# Left exlusive join********************************

select * from student as a
left join course as b 
on a.id = b.id
where b.id is null;

union all

SELECT *
FROM student AS a
RIGHT JOIN course AS b ON a.id = b.id
WHERE a.id IS NULL;
#Right Exlusive join*********************************

select * from student as a
right join course as b
on a.id = b.id
where a.id is null;

# FUll exlusive join
# find thats data which are not common

SELECT * 
FROM student AS a
LEFT JOIN course AS b ON a.id = b.id
WHERE b.id IS NULL

UNION ALL

SELECT * 
FROM student AS a
RIGHT JOIN course AS b ON a.id = b.id
WHERE a.id IS NULL;

#Left exclusive

select * from student as a
left join course as b
on a.id = b.id
where b.id is null;

#Right exclusive
select * from student as a
right join course as b
on a.id = b.id
where a.id is null;

create table employee(
id int primary key,
name varchar(50),
manager_id int
);

insert into employee(id,name,manager_id)
values
(101,'adam',103),
(102,'bob',104),
(103,'cascy',null),
(104,'donald',103);

select name from employee
union
select name from employee;

select name from employee
union all
select name from employee;
