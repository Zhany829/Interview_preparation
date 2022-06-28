use demo;
#用视图隐藏附表的要保密的信息
select * from company;
#创建视图
create view China_info as 
select * from company where branch = 'China';
select * from China_info;

#concat合并两列
select concat(name,branch) as branches from company;

#substring截取cell的字段 5是其实位置，1代表第一个字母，2是往后的step
select substring(name,5,2) from company where name='Google';

#用replace替换字符串
select replace(name,'Facebook','脸书') from company where name='Facebook';
#也可以改单个字母
select replace(branch,'K','S') from company where branch='UK';
#length算字符串的长度
#trim把字符串前后内容
#limit选前几行
select * from company;
#limit选第三个之后4个就是limit 3，4  注意是之后
select * from company limit 3,4;