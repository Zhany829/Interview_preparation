use world;
select * from city;
#打印出CountryCode以A开头的name
select name from city where CountryCode like 'A%';
#CountryCode第三个字符是D的CountryCode
select CountryCode from city where CountryCode like '__D%';
#CountryCode第2个字符是C的CountryCode
select CountryCode from city where CountryCode like '_C%';

use Myfirst;
select * from employeeinfo;
#按字母顺序排序name 升序
select * from employeeinfo order by name;
#按年龄排序 降序要加desc
select * from employeeinfo order by age desc;
insert into employeeinfo values('Boyu', 5, 'wenzhou', 19, 'play');
