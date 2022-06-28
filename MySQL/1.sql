#创建
create database Myfirst;
#用use指向要用的数据库
use Myfirst;
#先run use才能删除数据库
drop database Myfirst;
#创建表
create table employeeinfo(name varchar(20), id int, location varchar(20), age int);
#得到每列信息如名字和类型
describe employeeinfo; 

#insert插入行数据
insert into employeeinfo values('Zhan', 1, 'hangzhou', 20);
insert into employeeinfo values('Chun', 2, 'shaoxing', 22);
#delete删除行数据
delete from employeeinfo where name = 'Chun';

#alter 用于增删列和修改列的属性
#插入列
alter table employeeinfo add department varchar(20);
#删除列
alter table employeeinfo drop department;
#改列的属性
alter table employeeinfo modify department varchar(30);

# update 往列插数据 --- 要依靠where来确定哪一行
update employeeinfo set department = 'Backend' where name = 'Zhan';
update employeeinfo set department = 'Product' where name = 'Chun';

#select 查看列的数据
select name, id, location, age from employeeinfo;
select name, location, age from employeeinfo;
select * from employeeinfo


