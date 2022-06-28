use demo;
create table constab (flightname varchar(20),flightid integer not null);
#not null: 在创建表时加了not null如果插入了null值会报错
describe constab;
insert into constab values("1",null); 
#default: 加了default表示没输入默认的值, 但插入的时候要加要加列的名字
create table constab2 (name varchar(20), age integer default 25);
insert into constab2(name) values("Zhan"); 
#unique: 不能插入行里不能有和其他行重复的值
create table constab3 (name varchar(20), age integer unique);
insert constab3 values("Lucy", 26);
insert constab3 values("mark", 26);
#check: 不满足check内容的不能加
create table constab6 (name varchar(20), age integer check(age>10));
insert constab6 values("Lucy", 26);
insert constab6 values("mark", 6);
#如果primary key为null会报错
create table constab6 (name varchar(20), age integer check(age>10), primary key(age));
#foreign key：当还有依赖时不能删 -- 要先删除另一个表的映射