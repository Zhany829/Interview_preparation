create database demo;
use demo;
create table company (name varchar(20), branch varchar(20), employees int);
insert into company values('HuaWei','US',23);
insert into company values('Google','US',550);
insert into company values('Yahoo','Canada',255);
insert into company values('Google','China',450);
insert into company values('HuaWei','China',480);
insert into company values('HuaWei','UK',11);
insert into company values('HuaWei','Canada',33);
insert into company values('Yahoo','US',220);
insert into company values('Yahoo','China',160);
insert into company values('Facebook','US',60);
select * from company;
delete  from company;


#计算branch列的行数 -- 列名不带引号
select count(branch) from company;
#找一个列中最大最小平局值 -- 列名不带引号
select max(employees) from company;
select avg(employees) from company;

select branch, min(employees) from company group by branch;

#sum 求一列的数的总和
select sum(employees) from company;

select branch, sum(employees) from company group by branch;

select name, sum(employees) from company group by name;

select branch, sum(employees) from company group by branch having branch in ('China','Canada');