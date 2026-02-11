create database worker
use worker

create table teacher(
id int primary key,
name varchar(50),
department varchar(50),
salary int
)

insert into teacher values (1, 'Raj', 'CSE', 30000), (2, 'Rahul', 'IT', 40000), (3, 'Vinod', 'EE', 45000), (4, 'Shyam', 'CSE', 50000),
                           (5, 'Nisha', 'CE',55000), (6, 'Payal', 'IT', 60000), (7, 'Riya', 'IT', 65000), (8, 'Neha', 'EE', 65000),
						   (9, 'Rekha', 'EE', 66000), (10, 'Umang', 'IT', 70000), (11, 'Mahi', 'CSE', 75000), (12, 'Sneha', 'CE', 80000)
select * from teacher

alter table teacher
add age int

update teacher
set age=30
where id=1

update teacher
set age=40
where id=2

update teacher
set age=34
where id=3

update teacher
set age=38
where id=4

update teacher
set age=45
where id=5

update teacher
set age=39
where id=6

update teacher
set age=30
where id=7

update teacher
set age=50
where id=8

update teacher
set age=47
where id=9

update teacher
set age=33
where id=10

update teacher
set age=42
where id=11

update teacher
set age=44
where id=12

select * from teacher

drop table teacher

delete from teacher
where name='shyam'

truncate table teacher

--- CREATE ANOTHER TABLE ---
create table people(
id int identity(1,1) not null,
name varchar(50),
age int,
city varchar(40)
)

insert into people values('sachin', 34, 'begusarai'), ('vali', 26, 'baliya'), ('aliya', 43, 'mithila'), ('sneha', 42, 'begusarai')
insert into people values('neha', 32, 'lko')
select city from people
select * from people
select name from people

delete from people
where id =2

delete from people
where id =4

truncate table people

set identity_insert people on
insert into people values('raj', 34, 'begusarai'), ('nidhi', 26, 'baliya'), ('aliya', 43, 'lko'), ('sneha', 42, 'begusarai')

dbcc checkident (people, reseed, 0)

create table college(
id int identity,
s_name varchar(50),
age int,
gender varchar(40) default ('female')
)

insert into college values ('a', 34, 'female'), ('b', 32, 'male'), ('c', 23, 'null')
insert into college (s_name, age) values ('a', 34), ('b', 32), ('c', 23)

select * from college

alter table college
add salary int default(50000)

insert into college (s_name, age) values ('m', 24), ('p', 22), ('c', 23)

update college
set salary= 40000
where id=2
update college
set salary= 40000
where id=3
update college
set salary= 40000
where id=4
update college
set salary= 40000
where id=5

delete from college
where id=4
delete from college
where id=5
delete from college
where id=6
delete from college
where id=7
delete from college
where id=8
delete from college
where id=11
delete from college
where id=12
delete from college
where id=13
delete from college
where id=14
delete from college
where id=15

select * from college

delete from college
where id=9

alter table college
add constraint s_name_unique unique(s_name)

insert into college (s_name, age) values ('y', 24), ('t', 22), ('o', 23)
insert into college (s_name, age) values ('d', 24), ('f', 22), ('r', 23)
insert into college (s_name, age) values ('k', 42)
alter table college
add constraint age_check check(age>20)


