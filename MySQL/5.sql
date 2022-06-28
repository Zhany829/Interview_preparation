use demo;
create table Transactions (Month varchar(20), Day int, Amount int, Branch varchar(20));
insert into Transactions values('Feb',13,125,'BeiJing');
insert into Transactions values('Feb',17,20800,'ShangHai');
insert into Transactions values('Feb',21,380,'NewYork');
insert into Transactions values('Mar',22,8800,'BeiJing');
insert into Transactions values('Mar',16,5200,'ShangHai');
insert into Transactions values('April',12,23,'NewYork');
insert into Transactions values('Jan',13,888,'BeiJing');
insert into Transactions values('May',2,3666,'NewYork');
insert into Transactions values('May',1,77777,'Paris');
insert into Transactions values('Jan',12,6000,'Paris');
select * from Transactions;
delete from Transactions where Day = 1;
select Month, sum(Amount) from Transactions group by Month;
select Month, max(Amount) from Transactions group by Month;
select Month, min(Amount) from Transactions group by Month;
select Branch, min(Amount) from Transactions group by Branch;
#得到每月的行数
select count(*), month from Transactions group by Month;
select count(*), month from Transactions group by Month having count(*) < 2;

select sum(Amount), month from Transactions where branch ='BeiJing'or branch = 'ShangHai' group by Month having sum(Amount) < 1000;

select branch, sum(Amount) from Transactions where Month = 'Feb' group by branch having sum(Amount)>4000;

