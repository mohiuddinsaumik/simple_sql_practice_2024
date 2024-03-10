show databases;
use college;
show tables;
select * from student;
select * from payment;

select city,
avg(marks)
from student
group by city;

select city,
count(rollno)
from student
group by city
order by city;

select city,
avg(marks),
count(rollno)
from student
group by city;

select city,
avg(marks)
from student
group by city
order by marks;

select city,
avg(marks)
from student
group by city
order by avg(marks) desc;


select mode,
city,
count(customer_id)
from payment
group by mode;


select mode,
city
from payment
group by mode;

select mode,
city,
count(name)
from payment
group by mode;

select mode,
city,
count(name)
from payment
group by city;


select grade,
count(rollno)
from student
group by grade;

select grade,
count(rollno),
city
from student
group by grade;

select city 
from student
group by city;

select city,
count(rollno)
from student
group by city;

/*use of havingn-- "where" is basically makes condition on rows & "having" makes conditions on groups." */

select city,
count(rollno)
from student
group by city
having max(marks)>90 ;


select city,
count(rollno)
from student
group by city
having min(marks)<30;


select city,
count(rollno)
from student
group by city
having avg(marks)>50;

select city,
count(rollno)
from student
where grade = "F"
group by city;


select city,
marks,
count(rollno)
from student
where grade = "F"
group by city
having min(marks);

select city,
marks,
count(rollno)
from student
where grade = "F"
group by city
having min(marks)<=33
order by marks ASC;


select city,
marks,
count(rollno)
from student
where grade = "F"
group by city
having min(marks)<=33
order by marks desc;


