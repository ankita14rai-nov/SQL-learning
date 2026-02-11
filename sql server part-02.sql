create table ankita(
id int primary key,
name varchar(50),
city varchar(50),
department varchar(50),
gender varchar(50)
)
INSERT INTO ankita (id, name, city, department, gender) VALUES
(1, 'Ankita Sharma', 'Lucknow', 'HR', 'Female'),
(2, 'Ravi Kumar', 'Delhi', 'Finance', 'Male'),
(3, 'Priya Singh', 'Mumbai', 'IT', 'Female'),
(4, 'Amit Verma', 'Chennai', 'Marketing', 'Male'),
(5, 'Sneha Das', 'Kolkata', 'Sales', 'Female'),
(6, 'Rahul Mehta', 'Pune', 'HR', 'Male'),
(7, 'Neha Gupta', 'Jaipur', 'Finance', 'Female'),
(8, 'Vikram Joshi', 'Hyderabad', 'IT', 'Male'),
(9, 'Pooja Rani', 'Bangalore', 'Marketing', 'Female'),
(10, 'Suresh Yadav', 'Ahmedabad', 'Sales', 'Male'),
(11, 'Kavita Jain', 'Lucknow', 'HR', 'Female'),
(12, 'Manish Tiwari', 'Delhi', 'Finance', 'Male'),
(13, 'Anjali Kapoor', 'Mumbai', 'IT', 'Female'),
(14, 'Rohit Sharma', 'Chennai', 'Marketing', 'Male'),
(15, 'Deepa Nair', 'Kolkata', 'Sales', 'Female'),
(16, 'Arjun Singh', 'Pune', 'HR', 'Male'),
(17, 'Meena Kumari', 'Jaipur', 'Finance', 'Female'),
(18, 'Nikhil Rao', 'Hyderabad', 'IT', 'Male'),
(19, 'Shweta Mishra', 'Bangalore', 'Marketing', 'Female'),
(20, 'Rajesh Khanna', 'Ahmedabad', 'Sales', 'Male'),
(21, 'Divya Patel', 'Lucknow', 'HR', 'Female'),
(22, 'Sanjay Gupta', 'Delhi', 'Finance', 'Male'),
(23, 'Pallavi Joshi', 'Mumbai', 'IT', 'Female'),
(24, 'Karan Malhotra', 'Chennai', 'Marketing', 'Male'),
(25, 'Ritu Sharma', 'Kolkata', 'Sales', 'Female'),
(26, 'Abhishek Verma', 'Pune', 'HR', 'Male'),
(27, 'Nisha Singh', 'Jaipur', 'Finance', 'Female'),
(28, 'Tarun Mehta', 'Hyderabad', 'IT', 'Male'),
(29, 'Preeti Kaur', 'Bangalore', 'Marketing', 'Female'),
(30, 'Vivek Sinha', 'Ahmedabad', 'Sales', 'Male')

--SELECT STATEMENT--
select * from ankita
select 
id as 'emp id',
name as 'emp name',
city, 
department, 
gender 
from ankita

select
gender,
*
from ankita

select
department,
*
from ankita

select
department,
*,
city
from ankita
select * from ankita where id= 19
select name from ankita
select department from ankita
select city from ankita

--DISTINCT--
select distinct gender, department from ankita
select distinct name from ankita
select distinct id,name, city, department,gender from ankita

--FIND TOP VALUES--
select top(10) * from ankita
select top(10) * from ankita where id>20
select top(10) department from ankita
select top(10) percent * from ankita
select top(7) percent name from ankita



--OPERATORS--
select gender from ankita where id=26 and id= 34
select gender from ankita where id=26 or id= 34
select city from ankita where city='delhi' and id=21
select city from ankita where city='delhi' or id=21    
select * from ankita where id between 21 and 30
select * from ankita where city in ('delhi', 'mumbai')
select * from ankita where city not in ('delhi', 'mumbai')

--OPERATORS--
declare @a int=5
--set @a= @a+1 --normal assignment-
set @a*= 1  --to ways to write this-- (compound assignment)
print @a

declare @b int= 78
--set @b= @b+1   (+, *,/, -)
set @b/= 1  
print @b

declare @c decimal= 78.5
--set @c= @c+1   (+, *,/, -)
set @c/= 1  
print @c

--ORDER BY--
select * from ankita order by city asc
select * from ankita order by city desc
select * from ankita order by name asc
select * from ankita order by name desc
select * from ankita order by department asc
select * from ankita order by department desc
select * from ankita where id>20 order by name,department,gender,city desc

--GROUP BY--
select COUNT(*) as ankitabygender, gender
from ankita group by gender

select gender,city, COUNT(*) as ankitabygenderandcity
from ankita group by gender,city

select gender,city, COUNT(*) as ankitabygenderandcity
from ankita where id>10 group by gender,city having COUNT(*) >1

--cross check for group by question
select * from ankita where gender='female'
select * from ankita where gender='male'

--Aggregate function--
select SUM(id) from ankita
select count(city) from ankita
select max(department) from ankita 
select min(name) from ankita
select avg(id) from ankita

--VARIABLES--
--local variable-
Declare @name varchar(50)= 'Ankita'  --in this case we can declare values like (name,age,date) as other way like set@name, set@age, set@date
select @name
GO
Declare @age int= 61
select @age
GO
Declare @todaydate datetime= 12/05/25
select @todaydate
GO

--print @name
--print @age
--print @todaydate

Declare @name varchar(50)= 'Ankita'
Declare @age int= 61
Declare @todaydate datetime= 12/05/25
print 'Name='+ TRIM(@name) + ' ,' + 'age='+ TRIM(str(@age)) +', ' + 'todaydate='+ TRIM(convert(varchar(15),@todaydate)) --cast function
 --is similar as convert function

 --GLOBAL VARIABLE--
 select left(@@VERSION,25) --here 'left' is function
 select @@SERVERNAME
 select @@CONNECTIONS --the variable returns the no. of login attempts since sql server was last started. it returns an int value.
 select @@ERROR
 select @@IDENTITY
 select @@LANGUAGE
 select @@SPID

 if (@@ERROR>0)
 begin
    print 'some error occured'
end
else
begin
   print 'no error'
end
--FOREIGN KEY--
create table ankita1(
id int primary key,
department varchar(40),
)
INSERT INTO Ankita1 VALUES
(1, 'CSE'),
(2, 'IT'),
(3, 'CE'),
(4, 'EE'),
(5, 'ME'),
(6, 'CSE')
select * from Ankita1

create table Ankita2(
id int primary key,
name varchar(50),
city varchar(50),
gender varchar(50),
ankita1id int foreign key references ankita1(id)
)
insert into Ankita2 values (1,'amisha','lko','F',6)
insert into Ankita2 values (2,'anish','lko','M',5)
insert into Ankita2 values (3,'aradhya','lko','F',4)
select * from Ankita2     --try again



create table student6(
id int primary key,
name varchar(50),
department varchar(50),
salary int,
city varchar(50),
age int
)

insert into student6 values(1, 'Rohit', 'IT', 38000, 'Delhi', 25),
    (2, 'Simaran', 'HR', 25000, 'Bhopal', 28),
    (3, 'Ankit', 'IT', 52000, 'Indore', 30),
    (4, 'Neha', 'Finance', 60000, 'Mumbai', 32),
    (5, 'Aman', 'HR', 35000, 'Delhi', 24),
    (6, 'Pooja', 'IT', 46000, 'Jaipur', 27);

	select * from student6

select name from student6 where salary >45000
	select name from student6 where department= 'IT'
	select name from student6 where city= 'delhi'

	SELECT *
FROM student6
WHERE salary BETWEEN 40000 AND 55000;

	SELECT *
FROM student6
WHERE age >= 28;

SELECT *
FROM student6
WHERE city <> 'Delhi';

SELECT *
FROM student6
ORDER BY salary ASC;

SELECT *
FROM student6
WHERE department = 'IT'
  AND salary > 45000;

  SELECT *
FROM student6
WHERE city = 'Delhi'
   OR city = 'Mumbai';

   SELECT *
FROM student6
WHERE name LIKE 'A%';

 SELECT *
FROM student6
WHERE salary < 40000;

SELECT *
FROM student6
ORDER BY department ASC, salary ASC;






