use banking

--SECTION A – 10 IMPORTANT SQL INTERVIEW THEORY QUESTIONS
--Q1. Explain the difference between NULL, blank/empty string and zero. How would you handle each in SQL Server?
null- there is value null
vlank-the value is blank
zero- the value is 0

--Q2. Explain the difference between ISNULL and COALESCE. Discuss a situation where choosing the correct one matters.
isnull - we can set the value is not present or some message where value is not present
coalesce-when it get the first value not null it takes that and not go further if get all null the display null,use for priority


--Q3. Explain the difference between CASE and IIF and when you would prefer one over the other.
case=if we have to give more than one condition
iff=use where we have to give only single condition

--Q4. Explain the difference between ROUND, FLOOR and CEILING with suitable numeric examples.
Rount-round the value before point and after point
-for before it takes negative and after point takes positive

floor-takes the below/lower values
ex. 34556.787=>ans 34556

celing - always takes upper or greater value
ex.34556.787=>ans 34557

--Q5. Explain the difference between WHERE and HAVING and how aggregation changes their usage.
where is use before group by it is apply on single value, do not use with aggregate 

having is use after group by to filter grouped data ,use with aggregate

--Q6. Explain the difference between INNER JOIN, LEFT JOIN, RIGHT JOIN and FULL OUTER JOIN. How do you decide which one is required?
inner join when having same record from table1 and t2
left-want all in table 1 and similar betn both
right-opposite of left

--Q7. What is a subquery? Explain the difference between a subquery used for filtering and one used as a derived result.
--Q8. Explain UNION, UNION ALL, INTERSECT and EXCEPT. What conditions must be satisfied to use them?
--Q9. Explain the difference between FORMAT, CAST and CONVERT in SQL Server, including when each should be used.
--Q10. A SQL query returns results but the row count is unexpectedly higher after adding a JOIN. 
--Explain how you would investigate the issue.


--SECTION B – 20 QUESTIONS: PREVIOUSLY COVERED TOPICS

CREATE TABLE CUSTOMER_SET9 (
    CUSTOMER_ID INT PRIMARY KEY,
    CUSTOMER_NAME VARCHAR(100),
    CITY VARCHAR(50),
    CUSTOMER_TYPE VARCHAR(30),
    EMAIL VARCHAR(100) NULL,
    PHONE VARCHAR(20) NULL,
    ALT_EMAIL VARCHAR(100) NULL,
    ALT_PHONE VARCHAR(20) NULL
);

INSERT INTO CUSTOMER_SET9 VALUES
(101,'Amit Sharma','Mumbai','Premium','amit.sharma@gmail.com','9876500011',NULL,'9123400011'),
(102,'Priya Patil','Pune','Corporate','priya.patil@outlook.com',NULL,'priya.alt@gmail.com','9123400012'),
(103,'Rahul Verma','Mumbai','Regular','rahul.verma@gmail.com','9876500013',NULL,NULL),
(104,'Sneha Kulkarni','Delhi','Premium',NULL,'9876500014','sneha.k@gmail.com',NULL),
(105,'Vikas Joshi','Pune','Regular','vikas.joshi@gmail.com',NULL,NULL,'9123400015'),
(106,'Neha Deshmukh','Nashik','Corporate','neha.d@company.com','9876500016','neha.alt@company.com',NULL),
(107,'Rohan Mehta','Bangalore','Premium','rohan.mehta@gmail.com','9876500017',NULL,NULL),
(108,'Pooja Shah','Mumbai','Corporate','pooja.shah@yahoo.com','9876500018',NULL,'9123400018'),
(109,'Karan Singh','Hyderabad','Regular','karan.singh@gmail.com','9876500019',NULL,NULL),
(110,'Meera Nair','Pune','Premium',NULL,NULL,'meera.nair@gmail.com','9123400020');

select * from customer_set9
CREATE TABLE ACCOUNT_SET9 (
    ACCOUNT_ID INT PRIMARY KEY,
    CUSTOMER_ID INT,
    ACCOUNT_NO VARCHAR(20),
    ACCOUNT_TYPE VARCHAR(30),
    ACCOUNT_BALANCE DECIMAL(15,3),
    OPENING_DATE DATE
);

INSERT INTO ACCOUNT_SET9 VALUES
(201,101,'AC10001','Savings',125000.456,'2020-04-15'),
(202,101,'AC10002','Current',725000.789,'2018-07-20'),
(203,102,'AC10003','Savings',350000.125,'2022-01-10'),
(204,103,'AC10004','Current',950000.650,'2017-11-05'),
(205,104,'AC10005','Salary',180000.555,'2023-06-18'),
(206,105,'AC10006','Savings',275000.999,'2021-09-25'),
(207,106,'AC10007','Current',1250000.875,'2016-03-12'),
(208,107,'AC10008','Savings',620000.444,'2019-12-01'),
(209,108,'AC10009','Salary',45000.125,'2024-02-14'),
(210,109,'AC10010','Current',875000.333,'2015-08-30'),
(211,110,'AC10011','Savings',510000.666,'2020-10-11'),
(212,104,'AC10012','Current',150000.250,'2025-01-08');

CREATE TABLE TRANSACTION_SET9 (
    TRANSACTION_ID INT PRIMARY KEY,
    ACCOUNT_ID INT,
    TRANSACTION_TYPE VARCHAR(20),
    TRANSACTION_AMOUNT DECIMAL(15,3),
    TRANSACTION_DATE DATETIME
);

INSERT INTO TRANSACTION_SET9 VALUES
(301,201,'Credit',1250.456,'2026-01-15 10:30:00'),
(302,201,'Debit',275.125,'2026-02-18 12:10:00'),
(303,202,'Credit',52500.789,'2026-03-05 09:15:00'),
(304,202,'Debit',12500.333,'2025-12-28 16:45:00'),
(305,203,'Credit',7800.555,'2026-04-11 11:20:00'),
(306,204,'Debit',15250.875,'2026-05-19 14:35:00'),
(307,205,'Credit',999.499,'2026-06-07 10:05:00'),
(308,206,'Debit',4500.125,'2026-07-21 15:25:00'),
(309,207,'Credit',125000.650,'2026-08-03 09:50:00'),
(310,208,'Debit',7250.999,'2026-08-17 17:10:00'),
(311,209,'Credit',350.555,'2025-11-23 13:40:00'),
(312,210,'Debit',87500.444,'2026-09-01 10:00:00'),
(313,211,'Credit',11250.777,'2026-09-02 12:30:00'),
(314,212,'Debit',625.250,'2026-09-03 18:15:00');

CREATE TABLE PAYMENT_SET9 (
    PAYMENT_ID INT PRIMARY KEY,
    CUSTOMER_ID INT,
    AMOUNT_DUE DECIMAL(15,3),
    AMOUNT_PAID DECIMAL(15,3) NULL,
    PAYMENT_DATE DATE NULL
);

INSERT INTO PAYMENT_SET9 VALUES
(401,101,12500.456,12500.456,'2026-01-31'),
(402,102,25000.789,22000.555,'2026-02-28'),
(403,103,17500.125,NULL,NULL),
(404,104,32000.650,32000.650,'2026-03-31'),
(405,105,8500.333,7000.111,'2026-04-30'),
(406,106,45000.875,NULL,NULL),
(407,107,15000.999,15500.500,'2026-05-31'),
(408,108,27500.125,25000.125,'2026-06-30'),
(409,109,9500.555,9500.555,'2026-07-31'),
(410,110,40000.444,NULL,NULL);

CREATE TABLE BALANCE_ADJUSTMENT_SET9 (
    ADJUSTMENT_ID INT PRIMARY KEY,
    ACCOUNT_ID INT,
    ADJUSTMENT_AMOUNT DECIMAL(15,3)
);

INSERT INTO BALANCE_ADJUSTMENT_SET9 VALUES
(501,201,1250.456),
(502,202,-2750.125),
(503,203,3500.750),
(504,204,-12500.875),
(505,205,-750.333),
(506,206,2250.999),
(507,207,-45000.555),
(508,208,8750.125);

CREATE TABLE CREDIT_SCORE_SET9 (
    CUSTOMER_ID INT PRIMARY KEY,
    CREDIT_SCORE INT,
    TOTAL_DEBT DECIMAL(15,3)
);

INSERT INTO CREDIT_SCORE_SET9 VALUES
(101,720,125000.555),
(102,680,350000.125),
(103,590,525000.789),
(104,760,85000.333),
(105,625,275000.650),
(106,810,450000.875),
(107,705,150000.444),
(108,650,625000.999),
(109,560,750000.555),
(110,735,200000.125);

CREATE TABLE EMPLOYEE_SET9 (
    EMP_ID INT PRIMARY KEY,
    EMP_NAME VARCHAR(100),
    MANAGER_ID INT NULL,
    SALARY DECIMAL(15,3),
    DEPT_ID INT
);

INSERT INTO EMPLOYEE_SET9 VALUES
(1,'Arun Kumar',NULL,1200000.500,10),
(2,'Bhavna Rao',1,850000.250,10),
(3,'Chetan Shah',1,650000.750,20),
(4,'Divya Nair',2,450000.125,20),
(5,'Eshan Patil',2,300000.999,30),
(6,'Farah Khan',3,575000.555,30),
(7,'Gaurav Joshi',3,925000.333,40),
(8,'Hema Desai',7,725000.875,40);

CREATE TABLE DEPARTMENT_SET9 (
    DEPT_ID INT PRIMARY KEY,
    DEPT_NAME VARCHAR(50)
);

INSERT INTO DEPARTMENT_SET9 VALUES
(10,'Technology'),
(20,'Data'),
(30,'Testing'),
(40,'Operations'),
(50,'HR');

CREATE TABLE SALARY_GRADE_SET9 (
    GRADE_ID INT PRIMARY KEY,
    GRADE_NAME VARCHAR(20),
    MIN_SALARY DECIMAL(15,3),
    MAX_SALARY DECIMAL(15,3)
);

INSERT INTO SALARY_GRADE_SET9 VALUES
(1,'Grade A',0,400000),
(2,'Grade B',400000.001,700000),
(3,'Grade C',700000.001,1000000),
(4,'Grade D',1000000.001,2000000);

CREATE TABLE CUSTOMER_LIST_A_SET9 (CUSTOMER_ID INT);
INSERT INTO CUSTOMER_LIST_A_SET9 VALUES
(101),(102),(103),(104),(105),(106),(110);

CREATE TABLE CUSTOMER_LIST_B_SET9 (CUSTOMER_ID INT);
INSERT INTO CUSTOMER_LIST_B_SET9 VALUES
(102),(104),(106),(107),(108),(109);




--Q11. Display all customers whose city is Mumbai or Pune and whose customer type is not Regular.
select city,customer_type from customer_set9 where city in('pune','mumbai') and customer_type!='ragular'

--Q12. Display all unique cities from the customer table.
select distinct city from customer_set9
--Q13. Find the top 5 accounts with the highest account balance.
select top 5 account_balance from account_set9 order by account_balance  desc

--Q14. Find accounts whose balance is between ₹2,00,000 and ₹10,00,000.
select account_balance from account_set9 where account_balance between 200000 and 1000000

--Q15. Find customers whose email address contains gmail.
select * from customer_set9 where email like '%gmail%'

--Q16. Find records where phone number or email address is missing.
select * from customer_set9 where email is null or phone is null

--Q17. Display accounts ordered by account type and then by balance from highest to lowest.
select * from account_set9 order by account_type,account_balance desc

--Q18. Calculate the total, average, minimum and maximum account balance.
select count(*) count ,sum(account_balance) total,min(account_balance) min,max(account_balance)max,
avg(account_balance) avg from account_set9

--Q19. Find the number of accounts for each account type.
select account_type,count(account_id) total_acc from account_set9 group by account_type

--Q20. Find account types whose average balance is greater than ₹5,00,000.
select account_type,avg(account_balance) total_acc from account_set9 group by account_type having avg(account_balance)>5000000

--Q21. Display customer name, account number, account type and balance for customers having accounts.
select customer_name, account_no, account_type, account_balance  from customer_set9 c join account_set9 a 
on c.customer_id=a.customer_id

--Q22. Display all customers and their account numbers, including customers without accounts.
select customer_name, account_no, account_type, account_balance 
from customer_set9 c left join account_set9 a 
on c.customer_id=a.customer_id

select * from customer_set9 
select * from account_set9 a 
--Q23. Display customer name, account number, transaction type and transaction amount using the customer,
--account and transaction tables.
select customer_name, account_no,transaction_type,transaction_amount from customer_set9 c join account_set9 a 
on c.customer_id=a.customer_id join transaction_set9 t on a.account_id=t.account_id

--Q24. Find customers whose account balance is greater than the average account balance.
select * from account_set9 where account_balance > (select avg(account_balance))
--Q25. Find transactions whose amount is greater than the average transaction amount.
select * from transaction_set9 where transaction_amount > 
(select avg(transaction_amount) from transaction_set9)

--Q26. Using an employee-style table if available, display employees together with their manager names.
select e1.emp_id,e1.emp_name,e2.emp_id,e2.emp_name as manager
from employee_set9 e1,employee_set9 e2 where e1.manager_id=e2.emp_id 

--Q27. Using the salary-grade table, assign the appropriate grade to 
--each employee based on the salary range.
select * from salary_grade_set9
select * from employee_set9

select * from employee_set9 join salary_grade_set9 on salary between min_salary and max_salary

--Q28. Compare two customer ID lists and find IDs present in the first list but not the second, 
--using an appropriate SET operator.
select * from CUSTOMER_LIST_A_SET9

select * from CUSTOMER_LIST_B_SET9

select * from CUSTOMER_LIST_A_SET9
except
select * from CUSTOMER_LIST_B_SET9


--Q29. Find transactions from the current year and display the year, 
--month name and day of the transaction.
select year(transaction_date) year ,month(transaction_date) month,datename(weekday,transaction_date)day
from transaction_set9  where year(transaction_date)=year(getdate())

--Q30. Extract the domain portion from each customer email address and display 
--the customer name, email and domain.
select * from customer_set9
select charindex('@',email) from customer_set9
select len(email) from customer_set9

select substring(email,charindex('@',email)+1,(len(email)-4)-charindex('@',email))
from customer_set9

select substring(email,charindex('@',email)+1,patindex('%.com%',email)-charindex('@',email)-1)
from customer_set9


--SECTION C – 20 QUESTIONS: TODAY’S TOPICS
--Q31. For each transaction amount, display 
--the original amount and a value rounded to two decimal places.
select transaction_amount,round(transaction_amount,2) from transaction_set9
select transaction_amount,round(transaction_amount,2,0) from transaction_set9
select transaction_amount,round(transaction_amount,2,7) from transaction_set9

--Q32. For each transaction amount, display the amount rounded to the nearest whole number.
select transaction_amount,round(transaction_amount,0) from transaction_set9

--Q33. For each transaction amount, display the value 
--after removing the decimal portion without rounding.
select transaction_amount,cast(transaction_amount as int) using_cast,
floor(transaction_amount)using_floor from transaction_set9

--Q34. For each account balance adjustment in a table containing positive and negative values, 
--display its absolute value.
select account_balance,abs(account_balance) from account_set9

--Q35. For each transaction amount, display the smallest whole number 
--greater than or equal to the amount.
select transaction_amount,ceiling(transaction_amount) smallest_WN from transaction_set9
select ceiling(12.00)

--Q36. For each transaction amount, display the largest whole number less than or equal to the amount.
select transaction_amount,floor(transaction_amount)using_floor from transaction_set9

--Q37. Calculate the square root of each credit score and display 
--the original score and calculated value.
select credit_score,sqrt(credit_score) sqrt_ON,square(sqrt(credit_score)) from CREDIT_SCORE_SET9

--Q38. Calculate the square of each credit score.
select credit_score,square(credit_score) square_CCS from CREDIT_SCORE_SET9

--Q39. For each payment, calculate the outstanding amount and then apply an appropriate rounding operation to the result.
SELECT round(ISNULL(amount_due - amount_paid, 0) ,2)AS outstanding_value
FROM payment_set9;
--Q40. For every account, classify the balance into two categories 
--based on a condition you define from the supplied data.
 select * from account_set9 order by account_balance desc
  select account_balance, iif(account_balance<510000,'low','high') from account_set9 

--Q41. For each transaction, derive a value from a numbered list based on 
--the month number of the transaction date.
select *,month(transaction_date) from transaction_set9

--Q42. Display all payments and replace missing payment amounts 
--with an appropriate value before further calculation.
select *,  isnull(cast(amount_paid as varchar),'not paid') from payment_set9

--Q43. Create a single contact value by selecting the first available value 
--from multiple customer contact columns.
select coalesce(phone,alt_phone) from customer_set9

--Q44. Classify accounts into three balance categories based on thresholds you define.
select account_balance,
case
when account_balance<725000 then 'low'
when account_balance between 725000 and 875000 then 'mid'
when account_balance>875000 and account_balance>0 then 'high'
end
from account_set9 

--Q45. Determine a payment status by comparing the amount paid with the amount due.
select * from payment_set9
--Q46. Classify transactions into categories according to their amounts using multiple conditions.
select * from transaction_set9 order by transaction_amount
select transaction_amount,
case
when transaction_amount<1250 then 'low'
when transaction_amount between 1250 and 12500 then 'mid'
when transaction_amount>12500 and transaction_amount>0 then 'high'
end
from transaction_set9  as case_1 order by transaction_amount

--Q47. Classify accounts based on the number of years since account opening.
select* from account_set9
select *, iif(opening_date>dateadd(year,-5,getdate()),'recent_opened_account','old account')from account_set9
--Q48. Classify customers using credit score and debt information, applying suitable 
--mathematical calculations where necessary.
select iif(credit_score>700 and total_debt<150000,'low risk','high risk') from credit_score_set9

--case

select *,
case 
when credit_score>700 and total_debt<150000 then'low risk'
when credit_score<700 and total_debt<150000 then'moderate risk'
when credit_score>700 and total_debt>150000 then'moderate risk'
else 'high risk'
end
from credit_score_set9


select * from credit_score_set9 order by credit_score,total_debt desc

--Q49. Calculate customer-level totals and classify customers based on the resulting total values.
select c.customer_id,sum(account_balance) total_bal ,iif(sum(account_balance)>510000,'high','low')
from customer_set9 c join account_set9 a on c.customer_id=a.customer_id
group by c.customer_id order by sum(account_balance)

--using case
select c.customer_id,sum(account_balance) total_bal ,
case
when sum(account_balance)<350000 then 'low'
when sum(account_balance) between 350000 and 850000 then 'mid'
else 'high'
end
from customer_set9 c join account_set9 a on c.customer_id=a.customer_id
group by c.customer_id 

--Q50. Using the supplied tables, create one query that 
--combines NULL handling, conditional logic and at least two mathematical calculations 
--to produce a final result at customer level.
SELECT amount_due - amount_paid ,
iif(
ISNULL(amount_due - amount_paid, 0) >0,
cast(floor(amount_due - amount_paid) as varchar),
'not paid'
) as status
FROM payment_set9;

