use demo;
create table UserDetails(userid int(50), address varchar(20), zipcode int(50), 
primary key(userid));

create table OrderDetails(orderid int(50), userid int(50), amonut int(50), date varchar(50),product varchar(50),
primary key(orderid), foreign key(userid) references UserDetails(userid)on delete cascade);
#加上on delete cascade可以当主键删除时外键自动删除；


insert into userDetails values(12345, "北京",10086);
insert into userDetails values(12321, "北京",10086);
insert into OrderDetails values(76688,6688,988,"jan",'phone');#报错因为6688不是userDetails里userid
insert into OrderDetails values(701688,12345,988,"jan",'phone');
delete from userDetails where userid = 12345; #有外键依赖这个记录 所以不能删除
delete from userDetails where userid = 12321;
#OrderDetails设置了userid为外键，所以另一个表没有对应的userid值就不能直接加
#删除要先在orderDetails删掉对应userid
select * from orderDetails;
