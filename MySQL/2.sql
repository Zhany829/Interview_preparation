use myfirst;
#取表里唯一名字
insert into employeeinfo values('Zhan', 3, 'hangzhou', 24, 'test');
delete from employeeinfo where age=24;
select * from employeeinfo;

#加入distinct去掉重复值的cell
select distinct name from employeeinfo;

#or和and
select name from employeeinfo where location='hangzhou' and age>21;
select name from employeeinfo where (location='hangzhou' and age>21) or location='shaoxing';

#in和between
#打印年龄在20到23之间的人的名字
select name from employeeinfo where age in (20,21,22,23);
#
select name from employeeinfo where age between 20 and 23;
#not between用法
select name from employeeinfo where age not between 1 and 10;

#正则表达
#%表示任意字母 _表示一个字母
#  a%表示开头为a的字符串
#  _d%表示第二个字母为d后面随便什么的字符串