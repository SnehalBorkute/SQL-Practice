create database practice;
use practice;



Declare @num int;
set @num=256;
print @num;

-- tinyint
Declare @num1 tinyint;
set @num1=255;
print @num1;

Declare @num1 real;
set @num1=25545.9854758576;
print @num1;
select @num1

Declare @num3 float;
set @num3=25545.9854758576
print @num3;
select @num3

Declare @num2 decimal(8,1);
set @num2=255.333;
print @num2;

declare @nam char(15);
set @nam='snehal'
print @nam
print len(@nam)
print datalength(@nam)

declare @name varchar(15);
set @name='snehal'
print @name
print len(@name)
print datalength(@name)

declare @name1 nchar(15);
set @name1='snehal'
print @name1
print len(@name1)
print datalength(@name1)

declare @name2 nvarchar(15);
set @name2='snehal'
print @name2
print len(@name2)
print datalength(@name2)

