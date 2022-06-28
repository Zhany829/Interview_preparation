create database demo;
use demo;
create table college(id int(50),name varchar(50));
create table students(id int(50),name varchar(50));
describe college;
insert into college values(60,'赵晖');
insert into college values(650,'王宇');
insert into college values(260,'李敏');
insert into college values(580,'刘军');
insert into college values(450,'王华');
insert into college values(986,'李浩');
insert into college values(6666,'张珊');
insert into college values(6666,'张珊');
insert into college values(54,'高刚');
insert into college values(666,'张珊');
insert into college values(4646,'刘海');
insert into college values(46364,'付军');
select * from college;
select * from students;
insert into students values(9888,'王伟');
insert into students values(60,'赵晖');
insert into students values(16,'李花花');
insert into students values(260,'李敏');
insert into students values(4646,'刘海');
insert into students values(688,'张丽');
insert into students values(600,'孙武');
insert into students values(46364,'付军');

#union把另一个表拼接在此表下面，去重
select * from college union(select * from students);
#union all把另一个表拼接在此表下面，不去重
select * from college union all(select * from students);
#insersect找两个表共有的行,但没有这个关键字 只能用逻辑实现
select * from college where id in (select id from students);
#exists 如果exists后面的内容在前面选中的内容里有就返回前面选中的内容 否则返回空白
select * from college where exists (select * from students where name="赵晖");

CREATE TABLE marks(score int(50),name varchar(50));
insert into marks values(24,'张三');
insert into marks values(65,'赵敏');
insert into marks values(66,'王柳');
insert into marks values(99,'谢浩');
insert into marks values(34,'李林');
select * from marks;
#case动态更新表内容
select score, case name
when '赵晖' then score*2
when '赵敏' then score-25
when '张三' then score*3
else score
end
'NewScore', name from marks; #score和name只是从原来表里选出来的column