

CREATE TABLE EMPLOYEE_SET11(EMP_ID INT PRIMARY KEY,EMP_NAME VARCHAR(80),DEPT_ID INT NULL,SALARY DECIMAL(12,2),PERFORMANCE_SCORE INT,JOIN_DATE DATE,EMAIL VARCHAR(100) NULL,MANAGER_ID INT NULL,SALARY_ADJUSTMENT DECIMAL(12,2) NULL);
INSERT INTO EMPLOYEE_SET11 VALUES
(101,'Amit Sharma',10,50000,82,'2021-01-15','amit@gmail.com',NULL,1500),(102,'Priya Patil',10,70000,91,'2020-03-20','priya@gmail.com',101,-750),(103,'Rahul Verma',20,60000,76,'2022-05-11','rahul@outlook.com',NULL,500),(104,'Sneha Kulkarni',20,80000,95,'2019-08-14','sneha@gmail.com',103,2250),(105,'Neha Joshi',30,55000,68,'2023-02-18','neha@yahoo.com',NULL,NULL),(106,'Karan Mehta',30,90000,88,'2018-11-25','karan@gmail.com',105,1250),(107,'Rohan Shah',40,45000,72,'2022-09-12','rohan@outlook.com',NULL,-500),(108,'Pooja Nair',40,65000,84,'2021-12-01','pooja@gmail.com',107,1000),(109,'Vikas Rao',NULL,72000,79,'2020-06-10','vikas@yahoo.com',101,NULL),(110,'Meera Desai',50,110000,97,'2017-04-22','meera@gmail.com',NULL,3250),(111,'Arjun Singh',10,70000,61,'2024-01-10',NULL,101,-250),(112,'Kavya Iyer',60,125000,93,'2016-07-19','kavya@gmail.com',NULL,5000),(113,'Riya Shah',30,90000,88,'2025-02-01','riya@gmail.com',106,750),(114,'Nikhil Jain',20,80000,90,'2024-05-08','nikhil@gmail.com',104,1000);

CREATE TABLE CUSTOMER_SET11(CUSTOMER_ID INT PRIMARY KEY,CUSTOMER_NAME VARCHAR(80),CITY VARCHAR(50),CUSTOMER_TYPE VARCHAR(30),EMAIL VARCHAR(100) NULL,PHONE VARCHAR(20) NULL,ALT_EMAIL VARCHAR(100) NULL,ALT_PHONE VARCHAR(20) NULL);
INSERT INTO CUSTOMER_SET11 VALUES
(201,'Aditya Kumar','Mumbai','Premium','aditya@gmail.com','9876500001',NULL,NULL),(202,'Bhavna Shah','Pune','Regular',NULL,'9876500002','bhavna.alt@gmail.com',NULL),(203,'Chetan Rao','Delhi','Corporate','chetan@outlook.com',NULL,NULL,'9123400003'),(204,'Divya Nair','Mumbai','Premium',NULL,NULL,'divya.alt@yahoo.com','9123400004'),(205,'Eshan Patil','Nashik','Regular','eshan@gmail.com','9876500005',NULL,NULL),(206,'Farah Khan','Pune','Corporate','farah@company.com',NULL,NULL,'9123400006'),(207,'Gaurav Joshi','Bangalore','Premium','gaurav@gmail.com','9876500007',NULL,NULL),(208,'Hema Desai','Mumbai','Regular',NULL,NULL,NULL,'9123400008'),(209,'Isha Rao','Delhi','Premium','isha@gmail.com','9876500009',NULL,NULL),(210,'Jay Mehta','Pune','Corporate','jay@gmail.com','9876500010',NULL,NULL);

CREATE TABLE ACCOUNT_SET11(ACCOUNT_ID INT PRIMARY KEY,CUSTOMER_ID INT,ACCOUNT_NO VARCHAR(20),ACCOUNT_TYPE VARCHAR(30),ACCOUNT_BALANCE DECIMAL(15,2),OPENING_DATE DATE);
INSERT INTO ACCOUNT_SET11 VALUES(301,201,'AC11001','Savings',125000.50,'2020-04-15'),(302,201,'AC11002','Current',725000.75,'2018-07-20'),(303,202,'AC11003','Savings',350000.25,'2022-01-10'),(304,203,'AC11004','Current',950000.65,'2017-11-05'),(305,204,'AC11005','Salary',180000.55,'2023-06-18'),(306,205,'AC11006','Savings',275000.99,'2021-09-25'),(307,206,'AC11007','Current',1250000.88,'2016-03-12'),(308,207,'AC11008','Savings',620000.44,'2019-12-01'),(309,208,'AC11009','Salary',45000.13,'2024-02-14'),(310,209,'AC11010','Current',875000.33,'2015-08-30'),(311,210,'AC11011','Savings',510000.67,'2020-10-11');
CREATE TABLE TRANSACTION_SET11(TRANSACTION_ID INT PRIMARY KEY,ACCOUNT_ID INT,TRANSACTION_TYPE VARCHAR(20),TRANSACTION_AMOUNT DECIMAL(15,2),TRANSACTION_DATE DATETIME);
INSERT INTO TRANSACTION_SET11 VALUES(401,301,'Credit',1250.46,'2026-01-15 10:30'),(402,301,'Debit',275.13,'2026-02-18 12:10'),(403,301,'Credit',5250.79,'2026-03-05 09:15'),(404,302,'Credit',12500.33,'2026-01-20 16:45'),(405,302,'Debit',9500.87,'2026-03-28 11:20'),(406,302,'Credit',15250.88,'2026-05-19 14:35'),(407,303,'Credit',999.50,'2026-02-07 10:05'),(408,303,'Debit',4500.13,'2026-04-21 15:25'),(409,304,'Credit',125000.65,'2026-03-03 09:50'),(410,304,'Debit',7250.99,'2026-08-17 17:10'),(411,305,'Credit',350.56,'2025-11-23 13:40'),(412,305,'Debit',8750.44,'2026-02-01 10:00'),(413,306,'Credit',11250.78,'2026-06-02 12:30'),(414,306,'Debit',625.25,'2026-09-03 18:15'),(415,307,'Credit',22500.55,'2026-01-10 09:00'),(416,307,'Credit',42500.55,'2026-04-10 09:00'),(417,307,'Debit',12500.55,'2026-07-10 09:00'),(418,308,'Credit',7250.75,'2026-02-12 11:00'),(419,308,'Credit',10250.75,'2026-05-12 11:00'),(420,309,'Debit',1500.25,'2026-03-15 13:00'),(421,310,'Credit',87500.44,'2026-04-01 14:00'),(422,311,'Debit',6250.66,'2026-06-15 16:00');
CREATE TABLE PRODUCT_SET11(PRODUCT_ID INT PRIMARY KEY,PRODUCT_NAME VARCHAR(100),CATEGORY VARCHAR(50),PRICE DECIMAL(12,2),STOCK_QTY INT);
INSERT INTO PRODUCT_SET11 VALUES(501,'Laptop Pro','Electronics',85000.50,15),(502,'Wireless Mouse','Electronics',1250.75,120),(503,'Office Chair','Furniture',9500,8),(504,'Desk','Furniture',15000.25,0),(505,'Monitor 27','Electronics',22000,35),(506,'Keyboard','Electronics',2750.50,60),(507,'Notebook Pack','Stationery',450.25,200),(508,'Printer','Electronics',18500.75,5),(509,'Conference Table','Furniture',45000,2),(510,'Webcam','Electronics',6500.25,0);

CREATE TABLE ORDER_SET11(ORDER_ID INT PRIMARY KEY,CUSTOMER_ID INT,PRODUCT_ID INT,ORDER_AMOUNT DECIMAL(12,2),ORDER_DATE DATE,ORDER_STATUS VARCHAR(30));
INSERT INTO ORDER_SET11 VALUES(601,201,501,85000.50,'2026-01-12','Completed'),(602,201,502,1250.75,'2026-02-15','Completed'),(603,201,505,22000,'2026-06-14','Completed'),(604,202,503,9500,'2026-02-20','Pending'),(605,203,505,44000,'2026-03-05','Completed'),(606,205,507,900.50,'2026-03-18','Completed'),(607,206,506,2750.50,'2026-04-11','Cancelled'),(608,207,501,170001,'2026-05-09','Completed'),(609,203,502,2501.50,'2026-07-22','Completed'),(610,205,504,15000.25,'2026-08-03','Pending'),(611,206,508,18500.75,'2025-12-19','Completed'),(612,207,506,5501,'2026-08-21','Completed'),(613,209,509,45000,'2026-02-08','Completed'),(614,209,510,6500.25,'2026-04-08','Completed'),(615,209,509,45000,'2026-08-08','Completed'),(616,210,502,3752.25,'2026-03-12','Completed');

CREATE TABLE PAYMENT_SET11(PAYMENT_ID INT PRIMARY KEY,CUSTOMER_ID INT,AMOUNT_DUE DECIMAL(12,2),AMOUNT_PAID DECIMAL(12,2) NULL,PAYMENT_DATE DATE NULL);
INSERT INTO PAYMENT_SET11 VALUES(701,201,12500.45,12500.45,'2026-01-31'),(702,202,25000.75,22000.55,'2026-02-28'),(703,203,17500.13,NULL,NULL),(704,204,32000.65,32000.65,'2026-03-31'),(705,205,8500.33,7000.11,'2026-04-30'),(706,206,45000.88,NULL,NULL),(707,207,15000.99,15500.50,'2026-05-31'),(708,208,27500.13,25000.13,'2026-06-30'),(709,209,9500.55,9500.55,'2026-07-31'),(710,210,40000.44,NULL,NULL);

CREATE TABLE SALARY_GRADE_SET11(GRADE_ID INT PRIMARY KEY,GRADE_NAME VARCHAR(20),MIN_SALARY DECIMAL(12,2),MAX_SALARY DECIMAL(12,2));
INSERT INTO SALARY_GRADE_SET11 VALUES(1,'Grade A',0,40000),(2,'Grade B',40000.01,70000),(3,'Grade C',70000.01,100000),(4,'Grade D',100000.01,200000);

CREATE TABLE TARGET_CUSTOMER_SET11(CUSTOMER_ID INT PRIMARY KEY,CUSTOMER_NAME VARCHAR(80));
INSERT INTO TARGET_CUSTOMER_SET11 VALUES(201,'Aditya Kumar'),(202,'Bhavna Shah'),(203,'Chetan Rao'),(205,'Eshan Patil'),(207,'Gaurav Joshi'),(209,'Isha Rao');

CREATE TABLE EMPLOYEE_ACTIVITY_SET11(ACTIVITY_ID INT PRIMARY KEY,EMP_ID INT,ACTIVITY_DATE DATE,ACTIVITY_TYPE VARCHAR(40));
INSERT INTO EMPLOYEE_ACTIVITY_SET11 VALUES(801,101,'2026-08-01','Training'),(802,102,'2026-08-02','Project'),(803,104,'2026-08-03','Project'),(804,106,'2026-08-04','Review'),(805,108,'2026-08-05','Training'),(806,110,'2026-08-06','Project'),(807,112,'2026-08-07','Research'),(808,106,'2026-09-01','Project'),(809,106,'2026-09-05','Review'),(810,101,'2026-09-03','Project');




--SECTION B – 50 SQL QUESTIONS: PREVIOUS TOPICS
--Q21. Display customers from Mumbai, Pune or Delhi whose customer type is not Regular.
select * from CUSTOMER_SET11 where CITY in ('Mumbai','Pune','Delhi') and CUSTOMER_TYPE='Regular'

--Q22. Display unique cities and the number of customers in each city.
select distinct city,count(city) from CUSTOMER_SET11 group by city

--Q23. Find the five highest account balances with customer and account details.
select top 5 account_balance,* from CUSTOMER_SET11 c join  ACCOUNT_SET11 a on c.CUSTOMER_ID=a.CUSTOMER_ID 
order by a.ACCOUNT_BALANCE desc;

--Q24. Find accounts within a supplied balance range.
select * from ACCOUNT_SET11 order by ACCOUNT_BALANCE

select c.CUSTOMER_ID,CUSTOMER_NAME,ACCOUNT_ID,
case
when ACCOUNT_BALANCE<=275000 then 'high balance'
when ACCOUNT_BALANCE<725000 then 'mid balance'
else 'low balanve'
end
from CUSTOMER_SET11 c join  ACCOUNT_SET11 a 
on c.CUSTOMER_ID=a.CUSTOMER_ID 


--Q25. Find customers whose email contains a public email-domain pattern.
select * from CUSTOMER_SET11 where EMAIL like '%gmail.com%'

--Q26. Identify customers with missing phone or email information.
select * from CUSTOMER_SET11 where EMAIL is null or PHONE is null

--Q27. Display accounts ordered by account type and descending balance.
select * from ACCOUNT_SET11 order by ACCOUNT_TYPE ,ACCOUNT_BALANCE desc

--Q28. Calculate total, average, minimum and maximum account balance.
select sum(ACCOUNT_BALANCE) total,avg(ACCOUNT_BALANCE) average,min(ACCOUNT_BALANCE) minimum,
max(ACCOUNT_BALANCE) maximum from ACCOUNT_SET11

--Q29. Calculate account count and total balance by account type.
select ACCOUNT_TYPE , count(*) as total_cust,sum(ACCOUNT_BALANCE) as total_bal 
from ACCOUNT_SET11 group by ACCOUNT_TYPE

--Q30. Return account types whose average balance exceeds the overall average.
select ACCOUNT_TYPE,avg(ACCOUNT_BALANCE) from ACCOUNT_SET11 group by ACCOUNT_TYPE
having avg(ACCOUNT_BALANCE) >(select avg(ACCOUNT_BALANCE) from ACCOUNT_SET11)

--Q31. Display customer, account and transaction details for customers with activity.
select c.CUSTOMER_ID,CUSTOMER_NAME,a.ACCOUNT_ID,TRANSACTION_DATE, TRANSACTION_AMOUNT,TRANSACTION_TYPE
from CUSTOMER_SET11 c join  ACCOUNT_SET11 a on c.CUSTOMER_ID=a.CUSTOMER_ID 
join TRANSACTION_SET11 t on a.ACCOUNT_ID=t.ACCOUNT_ID

--Q32. Display every customer with account information where available.
select c.CUSTOMER_ID,CUSTOMER_NAME,a.ACCOUNT_ID
from CUSTOMER_SET11 c 
join  ACCOUNT_SET11 a on c.CUSTOMER_ID=a.CUSTOMER_ID 

--Q33. Find customers whose account balance is greater than the average account balance.
select * from CUSTOMER_SET11 c join  ACCOUNT_SET11 a on c.CUSTOMER_ID=a.CUSTOMER_ID  
where ACCOUNT_BALANCE>(select avg(ACCOUNT_BALANCE) from ACCOUNT_SET11)


--Q34. Find transactions whose amount is greater than the average transaction amount.
select * from TRANSACTION_SET11 where transaction_amount> (select avg(TRANSACTION_AMOUNT) from TRANSACTION_SET11)

--Q35. Display employees together with their manager names.
select e1.EMP_NAME,e2.EMP_NAME as manager from EMPLOYEE_SET11 e1 
join EMPLOYEE_SET11 e2 on e1.MANAGER_ID=e2.EMP_ID

--Q36. Assign each employee to the correct salary grade.
select * from EMPLOYEE_SET11 e  join SALARY_GRADE s on salary between MIN_SALARY and MAX_SALARY

--Q37. Compare two customer lists and return IDs present only in the first list.
select c1.CUSTOMER_id from CUSTOMER_SET11 c1,CUSTOMER_SET11 c2
--Q38. Find current-year transactions and display year, month name and day.
select * from TRANSACTION_SET11 where year(TRANSACTION_DATE)=year(getdate())

--Q39. Extract the email domain from customer email addresses.

select *,coalesce(EMAIL,alt_email) as mail ,substring(coalesce(EMAIL,alt_email),
CHARINDEX('@',coalesce(EMAIL,alt_email))+1,len(coalesce(EMAIL,alt_email))-4- CHARINDEX('@',coalesce(EMAIL,alt_email)))
from CUSTOMER_SET11

select *,coalesce(EMAIL,alt_email) as mail ,substring(coalesce(EMAIL,alt_email),
CHARINDEX('@',coalesce(EMAIL,alt_email))+1,
PATINDEX('%.com%',(coalesce(EMAIL,alt_email)))-CHARINDEX('@',coalesce(EMAIL,alt_email))-1)
from CUSTOMER_SET11
--Q40. Display a preferred customer contact from available contact columns.
select *,coalesce(phone,alt_phone) as phone
from CUSTOMER_SET11

--Q41. Classify accounts into multiple balance categories.
--Q42. Calculate payment outstanding amount and derive a payment status.
select (AMOUNT_DUE-AMOUNT_PAID) outstanding_amt,
case
when (AMOUNT_DUE-AMOUNT_PAID)<0 then 'Paid Extra Amt'
when (AMOUNT_DUE-AMOUNT_PAID)>0 then 'Partial Paid'
when (AMOUNT_DUE-AMOUNT_PAID)=0 then 'no any payment'
end
from PAYMENT_SET11 

--Q43. Find customers who placed more than one order.
select c.CUSTOMER_ID,count(*) order_placed from CUSTOMER_SET11 c join ORDER_SET11 o 
on o.CUSTOMER_ID=c.CUSTOMER_ID group by c.CUSTOMER_ID

select * from CUSTOMER_SET11 c where exists (select * from ORDER_SET11 o where o.CUSTOMER_ID=c.CUSTOMER_ID)

--Q44. Find customers whose total order amount exceeds the average customer total.
select c.CUSTOMER_ID,sum(ORDER_AMOUNT) total_amt from CUSTOMER_SET11 c join ORDER_SET11 o 
on o.CUSTOMER_ID=c.CUSTOMER_ID group by c.CUSTOMER_ID having sum(ORDER_AMOUNT)>(select avg(ORDER_AMOUNT) from ORDER_SET11)


--Q45. Find products that never appeared in an order.
select * from PRODUCT_SET11 p where not exists (select * from ORDER_SET11 o where p.PRODUCT_ID=o.PRODUCT_ID)
--Q46. Find products that appeared in at least one order.
select * from PRODUCT_SET11 p where  exists (select * from ORDER_SET11 o where p.PRODUCT_ID=o.PRODUCT_ID)

--Q47. Find employees earning above their department average.
select * from employee_set11 e1 where salary>(select avg(salary) from EMPLOYEE_SET11 e2 where e1.DEPT_ID=e2.DEPT_ID)

--Q48. Find employees earning below their department average.
select * from employee_set11 e1 where salary<(select avg(salary) from EMPLOYEE_SET11 e2 where e1.DEPT_ID=e2.DEPT_ID)

--Q49. Find departments with employees and departments without employees.
select *,iif(e.emp_id is null,'dept without employee','dept with emp')
from DEPARTMENT_SET11 d left join EMPLOYEE_SET11 e on d.DEPT_ID=e.DEPT_ID

--Q50. Find source customers missing from the target customer table.

--Q51. Display product prices with an appropriate rounding treatment.
select round(price,0) from PRODUCT_SET11
--Q52. Display the absolute value of salary adjustments.
select ABS(SALARY_ADJUSTMENT) from EMPLOYEE_SET11
--Q53. Display the next whole-number value for each transaction amount.
select CEILING(TRANSACTION_AMOUNT) next_whole_No from TRANSACTION_SET11
--Q54. Display the previous whole-number value for each transaction amount.
select floor(TRANSACTION_AMOUNT) next_whole_No from TRANSACTION_SET11

--Q55. Calculate square root and square of each credit score.

--Q56. Replace missing payment amounts before calculating outstanding amounts.
select (AMOUNT_DUE-isnull(AMOUNT_PAID,0))  outstanding_amt from PAYMENT_SET11
--Q57. Create a customer contact value from multiple contact columns.
select coalesce(email,alt_email,phone,alt_phone) contact_detail from CUSTOMER_SET11
--Q58. Classify customers based on order totals using multiple conditions.

--Q59. Display current-year order dates in a readable formatted representation.
select *,FORMAT(ORDER_DATE,'dd-MMMM-yyyy') from ORDER_SET11 where YEAR(ORDER_DATE)=YEAR(getdate())
--Q60. Convert supplied amount and date values to suitable SQL Server data types.
select convert(varchar(10),ORDER_AMOUNT ),cast(ORDER_date as varchar(10)) from ORDER_SET11
sp_help order_set11
--Q61. Find employees earning more than at least one salary in a selected department.
--select * from EMPLOYEE_SET11 
select * from employee_set11 where salary =
 any(select SALARY from EMPLOYEE_SET11 e1 join DEPARTMENT_SET11 d1 on e1.DEPT_ID=d1.DEPT_ID where DEPT_NAME='HR')

--Q62. Find employees earning more than every salary in a selected department.
select * from employee_set11 where salary >
 all(select SALARY from EMPLOYEE_SET11 e1 join DEPARTMENT_SET11 d1 on e1.DEPT_ID=d1.DEPT_ID where DEPT_NAME='HR')


--Q63. Find employees earning less than at least one salary in a selected department.
select * from employee_set11 where salary <
 any(select SALARY from EMPLOYEE_SET11 e1 join DEPARTMENT_SET11 d1 on e1.DEPT_ID=d1.DEPT_ID where DEPT_NAME='HR')


--Q64. Find employees earning less than every salary in a selected department.
select * from employee_set11 where salary <
 all(select SALARY from EMPLOYEE_SET11 e1 join DEPARTMENT_SET11 d1 on e1.DEPT_ID=d1.DEPT_ID where DEPT_NAME='HR')


--Q65. Identify customers with no orders and display available contact information.
select c.CUSTOMER_ID,CUSTOMER_NAME,city ,coalesce(email,phone,alt_email,alt_phone) contact
from CUSTOMER_SET11 c where not exists (select * from ORDER_SET11 o where c.CUSTOMER_ID=o.CUSTOMER_ID)

--Q66. Identify products with no sales activity and display stock information.
select * from PRODUCT_SET11 p where not exists
(select * from ORDER_SET11 o where p.product_id=o.PRODUCT_ID)
--Q67. Find employees with activity records and employees without activity records.
select *,
iif(activity_id is null,'without','with activity')
from EMPLOYEE_SET11 e left join EMPLOYEE_ACTIVITY_SET11 a on e.EMP_ID=a.EMP_ID
--Q68. Prepare customer order totals and identify customers above the average customer total.
select  c.customer_id,sum(order_amount) from CUSTOMER_SET11 c join ORDER_SET11 o on c.CUSTOMER_ID=o.CUSTOMER_ID 
group by c.CUSTOMER_ID having sum(order_amount)> (select avg(ORDER_AMOUNT) from CUSTOMER_SET11 c join ORDER_SET11 o on c.CUSTOMER_ID=o.CUSTOMER_ID)

--Q69. Prepare department salary statistics and identify employees above their department average.
select * from employee_set11 e1 where salary>(select avg(salary) from EMPLOYEE_SET11 e2 where e1.DEPT_ID=e2.DEPT_ID)

--Q70. Combine customer, account and transaction data and classify customers by total transaction activity.
select *,
case
when TRANSACTION_AMOUNT<4500 then'less trans'
when TRANSACTION_AMOUNT<=7000 then 'moderate trans'
when TRANSACTION_AMOUNT>7000 then'high trans'
end
from CUSTOMER_SET11 c join ACCOUNT_SET11 a on c.CUSTOMER_ID=a.CUSTOMER_ID join TRANSACTION_SET11 t 
on t.ACCOUNT_ID=a.account_id 

--SECTION C – 30 SQL QUESTIONS: TODAY'S TOPICS
--Q51. Display every employee with a sequential number based on salary descending.
select * ,row_number()  over(order by salary desc) from employee_set11

--Q52. Assign a separate sequence to employees within each department by salary descending.
select * ,row_number()  over(partition by dept_id order by salary desc) sep_sequence from employee_set11

--Q53. Rank all employees by salary descending while preserving ties.
select * ,rank()  over(order by salary desc) rank_by_sal from employee_set11

--Q54. Rank employees within each department while retaining rank gaps after ties.
select * ,rank()  over(partition by dept_id order by salary desc) rank_by_sal from employee_set11


--Q55. Rank employees within each department without rank gaps.
select * ,dense_rank()  over(partition by dept_id order by salary desc) rank_by_sal from employee_set11

--Q56. Display row number, rank and dense rank together for employee salaries.
SELECT *,
       ROW_NUMBER() OVER(ORDER BY salary DESC) AS row_no,
       RANK()       OVER(ORDER BY salary DESC) AS rank_sal,
       DENSE_RANK() OVER(ORDER BY salary DESC) AS den_sal
FROM employee_set11;


--Q57. Identify the highest-paid employee from every department.
select * from (select * ,row_number()  over(partition by dept_id order by salary desc) sep_sequence 
from employee_set11)a where sep_sequence =1


--Q58. Identify the second-highest-paid employee from every department.
select * from (select * ,row_number()  over(partition by dept_id order by salary desc) sep_sequence 
from employee_set11)a where sep_sequence =2

--Q59. Return the top three employees by salary from each department.
select * from (select * ,row_number()  over(partition by dept_id order by salary desc) sep_sequence 
from employee_set11)a where sep_sequence <=3
--Q60. Identify the lowest-paid employee from every department.
select * from (select * ,row_number()  over(partition by dept_id order by salary ) sep_sequence 
from employee_set11)a where sep_sequence =1

--Q61. Identify the latest order for every customer.
select * from (select *, row_number() over(partition by customer_id order by order_date desc) orders from order_set11)a
where orders=1

select c.customer_id,max(order_date) from customer_set11 c join order_set11 o on c.customer_id=o.customer_id group by c.customer_id

--Q62. Identify the first order for every customer.
select * from (select *, row_number() over(partition by customer_id order by order_date ) orders from order_set11)a
where orders=1

--Q63. Number each customer’s orders chronologically.
select *, row_number() over(partition by customer_id order by order_date) orders from order_set11

--Q64. Display each transaction with the immediately previous transaction amount for the same account
select *,lag(transaction_amount) over(order by transaction_amount)immediate_prev from transaction_set11

--Q65. Display each transaction with the immediately next transaction amount for the same account.
select *,lead(transaction_amount) over(order by transaction_amount)immediate_prev from transaction_set11


--Q66. Calculate the change between the current and previous transaction amounts.
with prev_tran as
(select *,lag(transaction_amount,1,0) over(order by transaction_date)prev_tran from transaction_set11)
select *, (transaction_amount-prev_tran) differ from prev_tran;

--Q67. Calculate the gap between the current and next transaction amounts.

with next_diff as
(select *,lead(transaction_amount,1,0) over(order by transaction_date)next_tran from transaction_set11)
select *, (next_tran-transaction_amount) differ from next_diff;


--Q68. Display customer order history with previous order date and days since the previous order.
with prev_order as
(select *,lag(order_date,1) 
over(partition by customer_id order by order_date)prev_order from ORDER_SET11)
select *,DATEDIFF(day,prev_order,order_date) from prev_order;

--Q69. Display customer order history with next order date and days until the next order.
with joins as
(select c.CUSTOMER_ID,customer_name,order_date, lead(ORDER_DATE) over(partition by c.customer_id order by order_date) next_order_date
from CUSTOMER_SET11 c join ORDER_SET11 o on c.CUSTOMER_ID=o.CUSTOMER_ID)
select *,days_until_NO=DATEDIFF(day, order_date,next_order_date) from joins
--Q70. Find the highest-value order for every customer while retaining required customer detail.
select * from (select c.CUSTOMER_ID,c.CUSTOMER_NAME,o.ORDER_ID, o.ORDER_AMOUNT,
row_number() over(partition by c.customer_id order by order_amount desc) as high_amt
from CUSTOMER_SET11 c join ORDER_SET11 o on c.CUSTOMER_ID=o.CUSTOMER_ID) a where high_amt=1

--Q71. Identify duplicate customer business records and retain one preferred record from each duplicate group.
begin transaction

with dupl as
(select *,row_number() over(partition by customer_id order by order_amount desc) dup_cid from ORDER_SET11)
delete from dupl where dup_cid>1

rollback;

--Q72. Create an intermediate customer-total result and identify customers above the average total.
with total as
(select c.CUSTOMER_ID,customer_name,order_amount, sum(order_amount) over(partition by c.customer_id) total
from CUSTOMER_SET11 c join ORDER_SET11 o on c.CUSTOMER_ID=o.CUSTOMER_ID),
avg_totl as
(select CUSTOMER_ID,customer_name,total,avg(total) over() avg_total from total group by CUSTOMER_ID,customer_name,total )
select * from avg_totl where total>avg_total


with total as
(select c.CUSTOMER_ID,customer_name,order_amount, sum(order_amount) over(partition by c.customer_id) total
from CUSTOMER_SET11 c join ORDER_SET11 o on c.CUSTOMER_ID=o.CUSTOMER_ID),
avg_totl as
(select distinct CUSTOMER_ID,customer_name,total,avg(total) over() avg_total from total )
select * from avg_totl where total>avg_total




--Q73. Create an intermediate department-average result and identify employees above their department average.
select * from (select *,avg(salary) over(partition by dept_id ) avg_sal from EMPLOYEE_SET11)a
where salary> avg_sal

with avg_dept as 
(select *,avg(salary) over(partition by dept_id ) avg_sal from EMPLOYEE_SET11)
select * from avg_dept where salary>avg_sal

--Q74. Prepare departmental employee rankings and return the top two employees per department.
select * from (select *,rank() over(partition by dept_id order by salary ) rank from EMPLOYEE_SET11)a
where rank<=2


--Q75. Number customer orders and use the sequence to identify each customer’s first and most recent order.
select * from (select *, row_number() over(partition by customer_id order by order_date ) first_tran,
row_number() over(partition by customer_id order by order_date desc) Last_tran
from order_set11)a
where first_tran=1  or Last_tran=1

--Q76. Prepare transaction history and identify unusually large increases compared with the previous transaction.
select * from TRANSACTION_SET11

--Q77. Prepare product sales totals and rank products within each category by total sales.
select * from product_set11
select * from order_set11;

--select *,rank() over(partition by customer_id order by order_amount), from product_set11 p join order_set11 o on p.product_id=o.product_id 

--Q78. Prepare monthly customer order totals and compare each month with the customer’s previous month.
with DiffTable as(
select *,lag(Total) over(partition by customer_id order by year,month) PreviosTotal from(
select  CUSTOMER_ID,year(order_Date) year,month(order_Date) month,sum(ORDER_AMOUNT) Total from order_set11
group by CUSTOMER_ID,year(order_Date),month(order_Date)
) AS A
) 
select *, Comparision = Total -PreviosTotal  from DiffTable
--Q79. Prepare employee activity history and identify the latest activity record for every employee.
select * from (select *, row_number() over(partition by emp_id order by activity_date desc) latest_act from employee_activity_set11)a
where latest_act=1;

--Q80. Create a multi-step analytical result showing customer totals, city rank, previous customer total in the city and the difference from that previous customer.
with cust_order as
(select c.CUSTOMER_ID,CUSTOMER_NAME,ORDER_ID,city,ORDER_AMOUNT 
from CUSTOMER_SET11 c join ORDER_SET11 o  on c.CUSTOMER_ID=o.CUSTOMER_ID),
cust_total as
(select *,sum(ORDER_AMOUNT) over(partition by customer_id) total from cust_order),
rank_city as
(select *,rank() over(partition by city order by total desc) rank_city from cust_total),
prev_total as
(
select *,lag(total) over(partition by city order by total desc ) prev_totl from rank_city),
diff as(
select *,(prev_totl-total) total_diff from prev_total)
select * from diff
