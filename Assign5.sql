PART A – 20 THEORETICAL QUESTIONS
Q1. What is a duplicate record?
Explain when two rows can be considered duplicate records in a table.
=> when the table includes  exact same entry in  two or more rows  then it is  a duplicate record


Q2. How can duplicate records be identified?
Explain the GROUP BY + COUNT(*) + HAVING COUNT(*) > 1 approach.
=> when we have to find the duplicate record ,first make a group of columns that we see there is duplicate or not using group 
by means if we have to check each column in a table then we group all that first then use count on that if there is 
value of count greater than 1 , means simply there is the another rows also , which contains the same values


Q3. Primary Key
What is a Primary Key? Explain why a Primary Key cannot contain duplicate values and NULL values.
=> the primary is unique and not null.primary key is a key from using that we identify the rows , means suppose
id is pk then by using id we can find each value in that row such as name,city... so if there is non unique primary key 
and table content same id but different name and city etc.. other values ,then system get confuse to display value 
and it must not null for same reason


Q4. Primary Key vs UNIQUE Key
Write at least three differences between Primary Key and UNIQUE Key based on the concepts covered.
=> 1.primary key is uniquely identify each row ,          unique key is prevent from duplicate value
   2.in pk we cannot insert null value ,                  unique key we can insert 1 blank and null value
   3.in table there is only one primary key,              in table there can be multiple unique key 

Q5. Foreign Key
What is a Foreign Key? Explain the Parent–Child relationship and referential integrity.
=> the foreign key is a column in one that is the primary key of another table. it is used to create the relationship between two tables. 
Parent–Child relationship=> the table from which refer key that is parent table and table which used as a foreign key that is child
referential integrity=> the  foreign key value in a child table that must be same in the existing
primary key in the parent table , the name can be differ but value must same


Q6. Foreign Key and NULL
=> Can a Foreign Key column contain NULL values? Explain with a simple example.
yes a foreign key column contain null values. 
EX- if one table contains the column id as pk and name ,if  id is refer as foreign key of other table and 
there are column id , city and foreign key if we dont give foreign key it takes default value null


Q7. NOT NULL Constraint
What is the purpose of the NOT NULL constraint? What happens when a required value is not supplied?
=> NOT NULL Constraint=> the column must have value it should not null. if required value is not supplied then it shows error 
 "violate the rule that perticular column should  not null"


Q8. UNIQUE Constraint
What is the purpose of a UNIQUE constraint? Why is it useful for business fields such as email or mobile number?
=> UNIQUE Constraint is used to avoid the duplicate values.
is it useful for business fields such  the 2 differ person cannot have the same  email or mobile number so it prevent from duplicate value

Q9. DEFAULT Constraint
=> What is a DEFAULT constraint? Explain when the default value is applied during INSERT.
default constraint is used to give the default value to perticular column if user not enter the data in that column then
rather than null it takes default value

suppose in a table there is id ,name, city and city is default pune ,if we only insert id and name during insert  not provide city
then automatically it takes pune


Q10. CHECK Constraint
What is a CHECK constraint? Give two examples of business rules that can be enforced using CHECK.
check constraint is first check the value, only insert value in table when it is true for that perticular condition
1.if in business we want the employee thats age is >18 then=> create table t_name (age int check (age>18))
2.if we have to only take record of employee that salary >50000 then also we can use


Q11. IDENTITY / Auto Increment
What is an IDENTITY column in SQL Server? Explain the meaning of IDENTITY(start, increment).
=> identity column is use to auto increment the values in column.
IDENTITY(start, increment)=> here  in start we have to give the starting value and in increament by
which value there.
for ex.incrementIDENTITY(1, 1) , here the initial value is 1 and increment with 1 so the final value is 1,2,3...
 IDENTITY_INSERT
Q12. IDENTITY_INSERT
Why can an explicit value normally not be inserted into an IDENTITY column? What is IDENTITY_INSERT used for?
beacuse the identity is auto increment the value so give  explicit value is normally not possible so to insert explicit value
we use IDENTITY_INSERT on when we on that then we can add value explicitly

syntax : set identity_insert table_name on

Q13. Table Backup
How can SELECT INTO be used to create a table backup? What is created automatically?
=> select * into table_name_bkp_date from table_name
 this will create a backup table with table_name_bkp_date this table name

Q14. Copying Structure Only
Explain why WHERE 1 = 2 can be used while copying only the structure of a table.
=> select * into table_name_bkp_date from table_name where 1=2

WHERE 1 = 2 can be used while copying only the structure of a table  

Q15. Copying Data Between Tables
Explain INSERT INTO ... SELECT and the requirement for source and target columns
insert into dest_name select * from source_name
for copying data we use  select the data from source table and insert into to insert in  destination table 
.
Q16. INFORMATION_SCHEMA
What is INFORMATION_SCHEMA? What is meant by metadata or 'data about data'?
 => ..information schema gives the whole information in schema like tables colums, and all data
metadat is data about data means the information about the data inside a table like col names,data types etc..
select * from INFORMATION_SCHEMA.tables => this gives all tables in a schema 

Q17. DML vs DDL
Differentiate DML and DDL statements with examples.
=> DML- 1.data manipulation language make changes in data 
commands: s_uid=> select, insert,update,delete
and DDL - 1.data defination language (work on structure or schema  of table before thet always use table )
          2.dr_cat => drop,rename,create,alter,truncate
Q18. DELETE vs TRUNCATE vs DROP
Compare DELETE, TRUNCATE and DROP in terms of data, table structure and usage.
DELETE - use to delete the record in a table can delete single and multiple records
        - it only delete the rows structure not delete
          - it is slower
         -after begin transaction can be rollback

TRUNCATE - use to delete all data in a table only structure remains
          - it is faster than delete
         -after begin transaction can be rollback

DROP- drop is use to delete table and structure both 
    -after begin transaction can be rollback

Q19. UPDATE Statement Risk
Why should a WHERE condition be used carefully with UPDATE? What can happen if it is omitted?
=> UPDATE Statement Risk - when we update the coulumns so we have to use where condition properly if it is omitted 
then it updates the all value in the column so if we have to work for specific record then we have to mension condition 

Q20. ALTER TABLE
List the major operations that can be performed using ALTER TABLE based on today's covered topics.

1.by using alter can add, drop the column
2.  can change  data types , constrainsts can use










use practice
CREATE TABLE EMPLOYEE_TRAINING
(
    EMP_ID INT PRIMARY KEY,
    EMP_NAME VARCHAR(50) NOT NULL,
    EMP_EMAIL VARCHAR(100) UNIQUE,
    EMP_CITY VARCHAR(30) DEFAULT 'PUNE',
    EMP_SALARY INT CHECK (EMP_SALARY >= 2000),
    EMP_DEPT VARCHAR(30),
    EMP_DOJ DATE DEFAULT GETDATE()
);


INSERT INTO EMPLOYEE_TRAINING
(EMP_ID, EMP_NAME, EMP_EMAIL, EMP_CITY, EMP_SALARY, EMP_DEPT, EMP_DOJ)
VALUES
(101,'Amit','amit@gmail.com','PUNE',4500,'IT','2024-01-10'),
(102,'Riya','riya@gmail.com','MUMBAI',5200,'HR','2024-02-15'),
(103,'Rohan','rohan@gmail.com','PUNE',6000,'IT','2023-11-20'),
(104,'Sneha','sneha@gmail.com','NAGPUR',4800,'FINANCE','2024-03-01'),
(105,'Raj','raj@gmail.com','KOTA',5500,'SALES','2023-09-12'),
(106,'Seema','seema@gmail.com','PUNE',4200,'HR','2024-04-05'),
(107,'Ravi','ravi@gmail.com','MUMBAI',7000,'SALES','2022-08-18'),
(108,'Pooja','pooja@gmail.com','NAGPUR',3900,'FINANCE','2024-05-10'),
(109,'Sachin','sachin@gmail.com','PUNE',5100,'IT','2023-07-22'),
(110,'Neha','neha@gmail.com','KOTA',4600,'HR','2024-06-01');

SELECT * FROM EMPLOYEE_TRAINING;

--Q1. Find Duplicate Records
--Create a query to identify duplicate combinations of EMP_NAME, EMP_CITY and EMP_DEPT from EMPLOYEE_TRAINING.
--•	Use GROUP BY, COUNT(*) and HAVING.
--•	For practice, you may first insert one duplicate business record with a different EMP_ID.

select EMP_NAME, EMP_CITY , EMP_DEPT ,count(*) from EMPLOYEE_TRAINING
group by EMP_NAME, EMP_CITY , EMP_DEPT  having count(*)>1

INSERT INTO EMPLOYEE_TRAINING
(EMP_ID, EMP_NAME, EMP_EMAIL, EMP_CITY, EMP_SALARY, EMP_DEPT, EMP_DOJ)
VALUES
(115,'Riya','riya1@gmail.com','MUMBAI',5200,'HR','2024-02-15')


--Q2. Primary Key Validation
--Try inserting another record with EMP_ID = 101 and observe the result.
--•	Write the INSERT statement.
--•	Mention why the statement fails.



INSERT INTO EMPLOYEE_TRAINING
(EMP_ID, EMP_NAME, EMP_EMAIL, EMP_CITY, EMP_SALARY, EMP_DEPT, EMP_DOJ)
VALUES
(101,'Amit','amit@gmail.com','PUNE',4500,'IT','2024-01-10')

ans=>
Violation of PRIMARY KEY constraint 'PK__EMPLOYEE__16EBFA263A0638E3'.
Cannot insert duplicate key in object 'dbo.EMPLOYEE_TRAINING'.


--Q3. NOT NULL Validation
--Try inserting a record without EMP_NAME.
--•	Use the column list in INSERT.
--•	Observe the NOT NULL constraint behavior.

INSERT INTO EMPLOYEE_TRAINING
(EMP_ID, EMP_EMAIL, EMP_CITY, EMP_SALARY, EMP_DEPT, EMP_DOJ)
VALUES
(113, 'test@gmail.com', 'PUNE', 4000, 'IT', '2024-07-10');

--Insert a new employee without providing EMP_CITY and EMP_DOJ.
--•	Use a column list.
--•	Verify that default values are populated


INSERT INTO EMPLOYEE_TRAINING
(EMP_ID, EMP_NAME, EMP_EMAIL,  EMP_SALARY, EMP_DEPT)
VALUES
(117,'Amit','amit15@gmail.com',4500,'IT')

select * from EMPLOYEE_TRAINING

--Q6. CHECK Constraint
--Try inserting an employee with EMP_SALARY = 1500.
--•	Observe whether the CHECK condition allows the record.
--•	Then insert a valid salary value.


INSERT INTO EMPLOYEE_TRAINING
(EMP_ID, EMP_NAME, EMP_EMAIL, EMP_CITY, EMP_SALARY, EMP_DEPT, EMP_DOJ)
VALUES
(116,'Amit','amit78@gmail.com','PUNE',33500,'IT','2024-01-10')



CREATE TABLE DEPARTMENT_TRAINING
(
    DEPT_ID INT PRIMARY KEY,
    DEPT_NAME VARCHAR(30) UNIQUE NOT NULL
);

INSERT INTO DEPARTMENT_TRAINING VALUES
(1,'HR'),(2,'IT'),(3,'FINANCE'),(4,'SALES');

CREATE TABLE EMPLOYEE_FK_TRAINING
(
    EMP_ID INT PRIMARY KEY,
    EMP_NAME VARCHAR(50) NOT NULL,
    DEPT_ID INT FOREIGN KEY REFERENCES DEPARTMENT_TRAINING(DEPT_ID)
);


--Q7. Foreign Key – Valid Relationship
--Insert an employee into EMPLOYEE_FK_TRAINING using an existing DEPT_ID.
--•	Use DEPT_ID 1, 2, 3 or 4.
--•	Verify the inserted record.



insert into EMPLOYEE_FK_TRAINING values(1,'mihir',2)
select * from EMPLOYEE_FK_TRAINING

--Q8. Foreign Key – Invalid Relationship
--Try inserting an employee with DEPT_ID = 10.
--•	Observe the Foreign Key error.
--•	Explain which table/column is being referenced.


insert into EMPLOYEE_FK_TRAINING values(1,'mona',10)
select * from EMPLOYEE_FK_TRAINING


--Q9. Foreign Key – NULL Value
--Insert an employee with DEPT_ID as NULL.
--•	Verify whether the operation succeeds based on the table definition.
insert into EMPLOYEE_FK_TRAINING values(2,'mona')
select * from EMPLOYEE_FK_TRAINING

Msg 213, Level 16, State 1, Line 131
Column name or number of supplied values does not match table definition.

--Q10. IDENTITY Table
--Create a CUSTOMER_TRAINING table with CUSTOMER_ID as IDENTITY(1001,1), CUSTOMER_NAME as NOT NULL and CITY with DEFAULT 'PUNE'.
--•	Insert at least 3 records without explicitly inserting CUSTOMER_ID.
--•	Display the generated IDs.



Create table CUSTOMER_TRAINING ( CUSTOMER_ID int IDENTITY(1001,1), 
CUSTOMER_NAME varchar(50) NOT NULL,  CITY varchar(100) DEFAULT 'PUNE')

insert    into CUSTOMER_TRAINING (CUSTOMER_NAME, CITY)
values('snehal','cp'),('meera','pune'),('sai','sirdi')
select * from CUSTOMER_TRAINING

insert    into CUSTOMER_TRAINING (CUSTOMER_NAME, CITY)
values('snehal',default)

delete from CUSTOMER_TRAINING where CUSTOMER_ID=1004 or CUSTOMER_ID=1005 or CUSTOMER_ID=1006



--Q11. IDENTITY_INSERT Practice
--Create a practice statement showing how IDENTITY_INSERT can be turned ON to insert a specific identity value.
--•	Turn it ON.
--•	Insert one explicit ID value.
--•	Turn it OFF after the insert.
set identity_insert  CUSTOMER_TRAINING on
insert into CUSTOMER_TRAINING(CUSTOMER_ID,CUSTOMER_NAME,city) values(456348,'runchi','nagpur')
select * from CUSTOMER_TRAINING
set identity_insert  CUSTOMER_TRAINING off


--Q12. Table Backup
--Create a backup of EMPLOYEE_TRAINING using SELECT INTO.
--•	Use a meaningful backup table name.
--•	Verify row count in both tables
select * into employee_training_bkp_280826 from  employee_TRAINING 
select count(*) from employee_training_bkp_280826
select count(*)from EMPLOYEE_TRAINING
select * into employee_training_bkp_290826 from  employee_TRAINING where EMP_SALARY>4500
select count(*) from employee_training_bkp_290826


--Q13. Copy Structure Only
--Create EMPLOYEE_EMPTY_COPY with only the structure of EMPLOYEE_TRAINING.
--•	Use SELECT INTO.
--•	Use WHERE 1 = 2.
--•	Verify that the table contains zero rows.

select * into EMPLOYEE_EMPTY_COPY from EMPLOYEE_TRAINING where 1=2
select * from EMPLOYEE_EMPTY_COPY

--Q14. Copy Selected Data
--Copy only IT department employees from EMPLOYEE_TRAINING into a new table.
--•	Create the destination structure first if required.
--•	Use INSERT INTO ... SELECT or SELECT INTO.
--•	Verify copied records.
insert into EMPLOYEE_EMPTY_COPY
select *  from EMPLOYEE_TRAINING where EMP_DEPT='IT'
select * from EMPLOYEE_EMPTY_COPY



--Q15. INFORMATION_SCHEMA – Tables
--Display metadata for all base tables available in the current database.
--•	Use INFORMATION_SCHEMA.TABLES.
--•	Filter if required.
select * from INFORMATION_SCHEMA.TABLES 
Select * from INFORMATION_SCHEMA.TABLES  where TABLE_NAME like '%empt%'
Select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME like '%empt%'

--Q16. INFORMATION_SCHEMA – Columns
--Display metadata for columns of EMPLOYEE_TRAINING.
--•	Use INFORMATION_SCHEMA.COLUMNS.
--•	Display column name and data type.
Select COLUMN_NAME,DATA_TYPE from INFORMATION_SCHEMA.COLUMNS 

--Q17. UPDATE – Controlled Update
--Update the city of employees belonging to HR department to 'PUNE'.
--•	Use a WHERE condition.
--•	Display the records before and after the update.
select emp_city from EMPLOYEE_TRAINING where EMP_DEPT='hr'
update  EMPLOYEE_TRAINING set emp_city = 'pune' where EMP_DEPT='hr'


--Q18. DELETE – Controlled Delete
--Delete one specific employee using EMP_ID.
--•	Use WHERE condition.
--•	Verify the record after DELETE.

begin transaction
delete from EMPLOYEE_TRAINING where emp_id=101
select * from EMPLOYEE_TRAINING
rollback

--Q19. ALTER TABLE – Add and Modify
--Add a PHONE_NUMBER column to EMPLOYEE_TRAINING and then increase its size.
--•	Use ALTER TABLE ADD.
--•	Use ALTER TABLE ALTER COLUMN.

alter table EMPLOYEE_TRAINING add  PHONE_NUMBER  int

alter table EMPLOYEE_TRAINING alter column phone_number varchar(100)
alter table EMPLOYEE_TRAINING alter column phone_number varchar(10);



--Q20. ALTER TABLE – Drop and Rename
--Drop the PHONE_NUMBER column and rename EMP_CITY to CITY using SQL Server's sp_rename.
--•	First execute DROP COLUMN.
--•	Then use sp_rename.
--•	Use INFORMATION_SCHEMA.COLUMNS or sp_help to verify the final structure.
 
alter table EMPLOYEE_TRAINING drop column phone_number 
sp_help EMPLOYEE_TRAINING

sp_rename 'dbo.EMPLOYEE_TRAINING.emp_city','city'
sp_rename 'practice.dbo.EMPLOYEE_TRAINING','EMPLOYEE_TRAINING1'
select* from EMPLOYEE_TRAINING1

sp_rename 'practice.dbo.EMPLOYEE_TRAINING1','EMPLOYEE_TRAINING'
select* from EMPLOYEE_TRAINING 

--alter table employee_training  rename column 'emp_city' to 'city'