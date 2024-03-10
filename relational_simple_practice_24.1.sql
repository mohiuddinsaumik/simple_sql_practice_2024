show databases;
 use college;
 
 show tables;
 
 create table dept (
 id int primary key,
 name varchar(50)
 );
 
show tables;

CREATE TABLE faculty (
  id int primary key,
  name varchar(50),
  dept_id int,
  FOREIGN KEY (dept_id) REFERENCES dept(id)
);


# Cascadng foreign key
# if being change once it change another tablw whic is connected.alter

# on delete cascade
# on update cascade

/*
CREATE TABLE faculty (
  id int primary key,
  name varchar(50),
  dept_id int,
  FOREIGN KEY (dept_id) REFERENCES dept(id)
  on delete cascade
  on update cascade
);
*/


