CREATE DATABASE db250125
USE db250125

DROP DATABASE xyz_company


CREATE DATABASE xyz_company;
Use xyz_company;

--create command--
CREATE TABLE employee(
   id INT PRIMARY KEY,
   name VARCHAR(50),
   salary INT
   )

   CREATE TABLE student(
   id int ,
   name varchar(50),
   marks int
   )

   --insert command--
   INSERT INTO employee (id, name, salary) VALUES (2,'Akanksha', 25000)
   INSERT INTO employee (id, name, salary) VALUES (1,'Riddhi', 35000)
   INSERT INTO employee (id, name, salary) VALUES (3,'Sakshi', 45000)

   insert into student(id, name, marks) values(3, 'riddhi', 75), (1, 'siddhi', 85), (5, 'nidhi', 74)
	
--AGGREGATE FUNCTION--
SELECT MAX(salary) FROM employee
SELECT MIN(salary) as salary FROM employee
SELECT count(salary) FROM employee
SELECT sum(salary) FROM employee
SELECT avg(salary) FROM employee

select * from employee 
select * from student order by name


--for select top salary of employee--
SELECT * FROM employee where salary =(SELECT MAX(salary) FROM employee
)
 
 --USE FOREIGN KEY--
 create table dept (
 id int primary key,
 name varchar (50)
 )

 insert into dept values(101, 'english'),(102,'science')

create table teacher(
id int primary key, 
name varchar(50),
dept_id int,
foreign key(dept_id) references dept(id)    --not executed--	
on delete cascade
on update cascade
)


--Table related queries--

create database student
use student

create table student(
id int primary key,
name varchar(50),
marks int,
city varchar(50)
)

insert into student(id, name, marks, city) values(1,'Aditya', 87, 'delhi'),(2, 'shankar', 97, 'delhi'),
                                                 (3, 'casey', 78, 'mumbai'),(4,'donald', 98, 'mumbai'),
                                                 (5, 'lakhan', 90, 'mumbai'), (6, 'sita', 93, 'delhi')

select * from student
where city='delhi'

select * from student 
where marks>90 or city='mumbai'

select * from student
where marks between 80 and 90

--ALTER(to change)--
alter table student
add column age int;  --not executed--

--to drop--
alter table student
drop column marks

select * from student 

--to rename--
alter table student
rename to stu_name

--to change--
alter table student
change id as stu_id int 

---TRUNCATE(to delete table's data)--

truncate table student
update student 
