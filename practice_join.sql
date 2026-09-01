use practice;
create table std
(
sid int,
name varchar(30),
did int
)
insert into std values(1,'om',2),(2,'sai',1),(3,'sita',3),(4,'ram',5)
select* from std

create table dept
(
d_id int,
dept_name varchar(30),
lid int
)
insert into dept values(1,'HR',2),(4,'IT',3),(3,'finance',1)
select * from dept



select * from std s join dept d on s.did=d.d_id

select * from std s left join dept d on s.did=d.d_id

select * from std s right join dept d on s.did=d.d_id

select * from std s full join dept d on s.did=d.d_id


create table lab
(
lid int,
lab_name varchar(30),
)
insert into lab values(1,'chemistry') ,(3,'physics'), (6,'maths') 



select * from std s join dept d on s.did=d.d_id join lab l  on d.lid=l.lid
