create table ankita2(
id int primary key,
name varchar(50),
city varchar(60),
age int,
gender varchar(50)
)
INSERT INTO ankita2 (id, name, city, age, gender) VALUES
  (1, 'Amit Kumar', 'New Delhi', 20, 'Male'),
  (2, 'Neha Singh', 'Mumbai', 21, 'Female'),
  (3, 'Rahul Sharma', 'Jaipur', 22, 'Male'),
  (4, 'Priya Patel', 'Ahmedabad', 19, 'Female'),
  (5, 'Sachin Verma', 'New Delhi', 20, 'Male'),
  (6, 'Kavya Gupta', 'Jaipur', 21, 'Female'),
  (7, 'Rohit Kumar', 'Lucknow', 22, 'Male'),
  (8, 'Anjali Singh', 'Jaipur', 19, 'Female'),
  (9, 'Vikram Joshi', 'Pune', 23, 'Male'),
  (10, 'Sneha Reddy', 'Hyderabad', 20, 'Female')
  select * from ankita2

  --logical operator
select * from ankita2 where id=2 and gender ='female'
select * from ankita2 where id=10 or gender ='female'
select * from ankita2 where not gender='female'
select * from ankita2 where gender is null
select * from ankita2 where name is not null
select * from ankita2 where not gender='female' and gender='male'
select * from ankita2 where name is null or gender='male'

--between
select * from ankita2 where age between 20 and 30 
select * from ankita2 where age>=20 and age<=20 --And
select * from ankita2 where city between 'delhi' and 'mumbai'
select * from ankita2 where not age between 20 and 30 

--IN
select * from ankita2 where gender in ('female')
select * from ankita2 where gender not in ('female')
select * from ankita2 where age in (27,26,23)
select * from ankita2 where age in (select top 1 age from ankita2 where age=23)  --for top values find
select * from ankita2 where age in (23)
select * from ankita2 where age in (select age from ankita2 where age=19) 


--like operator
select * from ankita2
where name like '_a%'
select * from ankita2
where name like 'a%'
select * from ankita2
where name like 'a_%'
select * from ankita2
where name like 'a_j%'
select * from ankita2
where name like '__a%'
select * from ankita2
where name like '_a_%'
select * from ankita2
where name like 'anj%'
select * from ankita2
where name like '%%'
select * from ankita2
where name like '%an%'
select * from ankita2
where name like 'a%a%'
select * from ankita2
where name like 'p%a'
select * from ankita2
where name like '[A,P,W]%'
select * from ankita2
where name like '[A-P]%'
select * from ankita2
where name like '[^A-P]%'  --the name who are not belongs to (a to p)

--All operator
create table ankita3(
id int primary key,
name varchar(50),
city varchar(60),
age int,
gender varchar(50)
)
INSERT INTO ankita3 (id, name, city, age, gender) VALUES
  (1, 'Ankita Sharma', 'Lucknow', 23, 'Female'),
  (2, 'Ravi Mehta', 'Kanpur', 24, 'Male'),
  (3, 'Sonal Verma', 'Varanasi', 25, 'Female'),
  (4, 'Amit Gupta', 'Agra', 26, 'Male'),
  (5, 'Priya Singh', 'Allahabad', 27, 'Female'),
  (6, 'Ankita Sharma', 'Lucknow', 23, 'Female')
    select * from ankita3
	--drop table ankita3
	--now apply all operator
select age from ankita2
select age from ankita3

select * from ankita3 where age>all (select * from ankita2
)  --not executed

--union 
select * from ankita2
union
select * from ankita3

--union all
select * from ankita2 where gender ='female'
union all                                         --we can use where clause
select * from ankita3 where gender ='female'

select name, gender from ankita2 where gender ='female'
union all                                         
select name, gender from ankita3 where gender ='female'

select name, gender from ankita2 where gender in ('male','female')
union all                                         
select name, gender from ankita3 where gender in ('male','female')

select name, gender from ankita2 where gender in ('male','female')
union                                         
select name, gender from ankita3 where gender in ('male','female')

--intersect 
select * from ankita2
intersect
select * from ankita3

select name, gender from ankita2 where gender in ('male','female')
intersect                                        
select name, gender from ankita3 where gender in ('male','female')

--except
select name, gender from ankita2 
except                                      
select name, gender from ankita3 order by name  --campare two tables and return different values

---JOIN
--INNER JOIN
select * from ankita2 inner join ankita3 on ankita2.id= ankita3.id --we can use update function in it too.


--LEFT JOIN
select * from ankita2 left outer join ankita3 on ankita2.id= ankita3.id 

--right join
select * from ankita2 right outer join ankita3 on ankita2.id= ankita3.id 

--full join
select * from ankita2 full join ankita3 on ankita2.id= ankita3.id   --we can use update function in it too.
