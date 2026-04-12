-- DDL QUERY (Data Defination Language) CREATE, DROP, ALTER, TRUNCATE
-- DML QUERY (Data Manipulation Language) INSERT, UPADTE, SELECT, DELETE

create database db240125
use db240125

 drop database db240125
-- create command--

create table tblstudents(
rollno int primary key identity,
name varchar(50),
father_name varchar(50),
pincode int
)
--insert command---
insert into tblstudents(name, father_name, pincode) values('ankita rai', 'sanjeev kumar rai', '851111')
insert into tblstudents(name, father_name, pincode) values('ankit kumar', 'Abhay Singh', '851113')
insert into tblstudents(name, father_name, pincode) values('akshita kumari', 'Sanjeev kumar rai', '851113')


--DISPLAY/SHOW/READ---
select * from tblstudents

-- delete---
delete from tblstudents where rollno = 3

--update--

update tblstudents set pincode = 851111 where rollno =4

delete from tblstudents
where rollno= 9


truncate table tblstudents
select * from tblstudents

drop table tblstudents

create table dbo.employee(
id int identity (1,1),
empname varchar (50),
gender varchar (50),
age int,
city varchar(50)
)

insert into dbo.employee values('emp1', 'm', 21, 'city1'),
      ('emp2', 'm', 27, 'city2'),
	   ('emp3', 'f', 24, 'city3'),
	   ('emp4', 'm', 26, 'city4'),
	   ('emp5', 'f', 25, 'city5')

select * from dbo.employee

delete from dbo.employee where id= 5

truncate table dbo.employee
drop table dbo.employee


--create new database--
create database [dbo.employee]
 use employee

create table [dbo.employee](
id int identity,
name varchar(50),
age int not null,
gender varchar(50),
city varchar(60)
) 
 
select * from [dbo.employee]

alter table [dbo.employee]
add pincode int

insert into [dbo.employee] (name, age, gender, city, pincode) values ('ankita', 20, 'f', 'begusarai', 851111),
                                                                     ('akshita', 23, 'f', 'begusarai', 851111),
																	 ('aman', 34, 'm', 'samastipur', 851113),
																	 ('aditya', 26, 'm', 'tajpur', 851114),
																	 ('soni', 26, 'f', 'tajpur', 851114),
																	 ('riya', 29, 'f', 'jaipur', 851116),
	                                                                  ('subhan', 36, 'm', 'jaipur', 851117)
select * from [dbo.employee]

update [dbo.employee]
set age =45 where id=3

alter table [dbo.employee]
add constraint name_unique unique(name)

alter table [dbo.employee]
add constraint age_check check(age>=18 and age<=5)

--CREATE ANOTHER TABLE--
create table human(
id int identity,
firstname varchar(50),
lastname varchar(50),
age int not null,
gender varchar(50),
city varchar(60), 
constraint fnamelname_unique unique (firstname, lastname)    --composite constraints--
) 

insert into human (firstname, lastname, age, gender, city) values ('emp1', 'emp2', 21, 'female', 'baliya'),		
                                                                  ('emp2', 'emp3', 26, 'male', 'begusarai'),
																  ('emp4', 'emp5', 27, 'male', 'chhapra' ),
																  ('emp6', 'emp7', 25, 'female', 'patna'),
																  ('emp7', 'emp8', 34, 'male', 'darbhanga')
delete from human where city= 'baliya'

--add any column--
alter table human
add address varchar(50)

--after add update added column--
update human
set address= 'rani' where gender= 'male'
select * from human

--aggregate function--
select SUM(age) from human 
select max(age) from human 
select min(age) from human 
select count(age) from human 
select avg(age) from human 

--order by clause--
select * from human order by age DESC
select * from human order by age ASC

--where clause--
select * from human where city='begusarai' and age>24
select * from human where age>26
select * from human where city='begusarai' or age>24
select * from human where age between 26 and 35
select * from human where city='begusarai' 
select * from human where city in ('begusarai', 'chhapra')
select * from human where city not in ('begusarai', 'chhapra')

alter table human rename to insaan








