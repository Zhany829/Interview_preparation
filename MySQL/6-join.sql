use demo;
create table employee_loc(name varchar(20),location varchar(20));
insert into employee_loc values('WangWei','QianTangXian');
insert into employee_loc values('Sushi','QianTangXian');
insert into employee_loc values('Dudu','SuZhou');
insert into employee_loc values('MengHaoRan','QianTangXian');
insert into employee_loc values('Libai','XiHu');
select * from employee_loc;
create table employees(name varchar(20),age int, exp int);
insert into employees values('WangWei',30,5);
insert into employees values('Sushi',30,5);
insert into employees values('Dudu',40,15);
insert into employees values('MengHaoRan',25,2);
insert into employees values('Libai',28,4);
select * from employees;

select location,name from employee_loc where name = (select name from employees where age = 40);

# join
select e.name, el.location, e.age,e.exp from employees as e join employee_loc as el on e.name=el.name where el.location='QianTangxian';

select e.year, c.name,sum(c.employees) from company as c join established as e on e.name = c.name  group by c.name having e.year=1987;
#inner join
select s.name,s.id,s.gender,s.age,g.grade from student as s inner join grades as g on s.id=g.id where gender='Female';
#left join
select s.name,s.id,s.gender,s.age,g.grade from student as s left join grades as g on s.id=g.id where gender='male';
#right join 
select s.name,s.id,s.gender,s.age,g.grade from student as s right join grades as g on s.id=g.id where age>12;