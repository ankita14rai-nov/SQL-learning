create database employees
use employees

create table employees(
empid int primary key,
firstname varchar(50),
lastname varchar(50),
hire date,
salary decimal(10,2)
)

insert into employees values(1, 'sakshi', 'singh','1-08-2024',50000.00, 'IT'),
                             (2,'aman', 'sharma','2024-06-03',45000.00,'FINANCE'),
							 (3, 'riya', 'sharma','2024-04-02',40000.00,'IT')
              
                                                                          
select * from employees

alter table employees
add department varchar(50)

drop table employees

update employees
set department= 'IT'
where empid = 2

delete from employees
where firstname= 'sakshi'

select * from employees
where department= 'IT'

select * from employees
where salary > 40000.00

select * from employees
where salary <45000.00


select * from employees
where salary != 45000.00

select * from employees
where salary between 40000.00 and 50000.00

select * from employees
where firstname like 'a%'

select * from employees
where salary in (2,3)

select * from employees
where salary not in (4,5)

select * from employees
where salary= 46000.00 or department= 'IT'

select * from employees
where firstname like 'j%'

select * from employees
where department= 'IT' and salary= 45000.00

select * from employees
where salary = 45000.00 or department= 'finance'

select * from employees
where firstname is null 

select * from employees
where lastname is not null

create table T1(
number int,
square int
)

insert into T1 values (2,4), (3,9)
select * from T1

create table T2(
number int,
cube int
)

insert into T2 values(3,27), (4,64)
select * from T2
select * from T1 inner join T2 on T1.number=T2.number

select * from employees
concat (first name, '', last name ) as fullname

select * from T1 left join T2 on T1.number = T2.number

create table current_employee(
emp_id int primary key,
name varchar(50),
age int
)

insert into current_employee values (1, 'satyam', 54), (2, 'hari', 58), (3, 'radha', 53), (4, 'varsha', 50)
select * from current_employee

create table former_employee(
emp_id int primary key,
name varchar(50),
age int
)

insert into former_employee values (1, 'a', 53), (2, 'b', 51), (3, 'c', 59), (4, 'd', 49)
select * from former_employee

select current_employee union select emp_id, name, age from former_employee

select name from former_employee

create table employee(
emp_id int primary key,
emp_name varchar(50),
dept_id int,
salary int
)
insert into employee values (1, 'a', 1001, 50000), (2, 'b', 1002, 55000), (3, 'c', 1003, 60000), (4, 'd', 1004, 65000)
select * from employee

create table department(
dept_id int, 
dept_name varchar(50)
)
insert into department values (1,'engineering'),(2, 'marketing'), (3, 'finance'), (4, 'engineering')
select * from department

select emp_name, salary from employee
where salary>(select AVG(salary) from employee)

select emp_name from employee
where dept_id= (select dept_id from employee where emp_name ='b')

select dept_id, dept_name from department
where dept_id in (select dept_id from employee group by dept_id having COUNT(*)>2)


create table student(
firstname varchar(50),
lastname varchar(25),
department varchar(50)
)
insert into student values('sneha', 'singh', 'CE'),( 'suman', 'sharma', 'EE'), ( 'rekha', 'singh', 'ME'), ( 'aman', 'sharma', 'CE')
select * from student

create view CE_student as
select firstname, Lastname from student
where department= 'CE'

SELECT * FROM student

SELECT * FROM CE_student