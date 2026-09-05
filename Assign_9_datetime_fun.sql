
use practice
CREATE TABLE BANK_CUSTOMER
(
 CUSTOMER_ID INT PRIMARY KEY,
 CUSTOMER_NAME VARCHAR(80) NOT NULL,
 DOB DATE NULL,
 CITY VARCHAR(40),
 CUSTOMER_TYPE VARCHAR(20),
 ONBOARD_DATE DATE,
 EMAIL VARCHAR(100) NULL
);

INSERT INTO BANK_CUSTOMER VALUES
(1001,'Amit Sharma','1988-02-15','PUNE','RETAIL','2021-01-15','amit@gmail.com'),
(1002,'Riya Patil','1992-07-22','MUMBAI','RETAIL','2022-03-10','riya@gmail.com'),
(1003,'Rohan Mehta','1985-11-05','DELHI','PREMIUM','2020-06-18','rohan@gmail.com'),
(1004,'Sneha Kulkarni','1990-01-30','NAGPUR','RETAIL','2023-02-14',NULL),
(1005,'Raj Verma','1982-09-12','BANGALORE','PREMIUM','2019-04-22','raj@gmail.com'),
(1006,'Seema Joshi','1995-04-08','PUNE','RETAIL','2024-01-05','seema@gmail.com'),
(1007,'Ravi Deshmukh','1987-12-19','MUMBAI','PREMIUM','2021-08-30','ravi@gmail.com'),
(1008,'Pooja Shah','1993-06-11','NAGPUR','RETAIL','2023-07-17','pooja@gmail.com'),
(1009,'Sachin Rao','1980-03-25','PUNE','PREMIUM','2018-10-01','sachin@gmail.com'),
(1010,'Neha Singh','1991-10-09','DELHI','RETAIL','2022-11-21',NULL),
(1011,'Kiran More','1986-05-17','HYDERABAD','PREMIUM','2020-12-12','kiran@gmail.com'),
(1012,'Meena Iyer','1994-08-28','CHENNAI','RETAIL','2024-05-20','meena@gmail.com');


CREATE TABLE BANK_ACCOUNT
(
 ACCOUNT_ID INT PRIMARY KEY,
 CUSTOMER_ID INT,
 ACCOUNT_TYPE VARCHAR(30),
 ACCOUNT_OPEN_DATE DATE,
 ACCOUNT_STATUS VARCHAR(20),
 BALANCE DECIMAL(12,2),
 LAST_TRANSACTION_DATE DATE NULL
);

INSERT INTO BANK_ACCOUNT VALUES
(50001,1001,'SAVINGS','2021-01-20','ACTIVE',85000.50,'2026-08-20'),
(50002,1002,'SALARY','2022-03-12','ACTIVE',125000.00,'2026-08-28'),
(50003,1003,'CURRENT','2020-06-20','ACTIVE',450000.75,'2026-07-15'),
(50004,1004,'SAVINGS','2023-02-16','DORMANT',25000.00,'2025-11-30'),
(50005,1005,'CURRENT','2019-04-25','ACTIVE',650000.00,'2026-08-30'),
(50006,1006,'SAVINGS','2024-01-08','ACTIVE',15000.50,'2026-08-05'),
(50007,1007,'SALARY','2021-09-02','ACTIVE',95000.00,'2026-06-25'),
(50008,1008,'SAVINGS','2023-07-20','ACTIVE',72000.25,'2026-08-18'),
(50009,1009,'PREMIUM SAVINGS','2018-10-05','ACTIVE',900000.00,'2026-08-31'),
(50010,1010,'SAVINGS','2022-11-23','DORMANT',18000.00,'2025-12-15'),
(50011,1011,'CURRENT','2020-12-15','ACTIVE',375000.00,'2026-07-30'),
(50012,1012,'SAVINGS','2024-05-22','ACTIVE',42000.00,'2026-08-12'),
(50013,1001,'LOAN ACCOUNT','2022-09-01','ACTIVE',-150000.00,'2026-08-10'),
(50014,1005,'LOAN ACCOUNT','2023-01-15','ACTIVE',-275000.00,'2026-07-25');

CREATE TABLE BANK_TRANSACTION
(
 TXN_ID INT PRIMARY KEY,
 ACCOUNT_ID INT,
 TXN_DATE DATETIME,
 TXN_TYPE VARCHAR(20),
 TXN_AMOUNT DECIMAL(12,2),
 CHANNEL VARCHAR(20),
 TXN_STATUS VARCHAR(20)
);

INSERT INTO BANK_TRANSACTION VALUES
(900001,50001,'2026-08-20 10:15:00','CREDIT',25000,'UPI','SUCCESS'),
(900002,50001,'2026-08-21 14:30:00','DEBIT',5000,'ATM','SUCCESS'),
(900003,50002,'2026-08-28 09:10:00','CREDIT',75000,'NEFT','SUCCESS'),
(900004,50002,'2026-08-29 16:20:00','DEBIT',12000,'UPI','SUCCESS'),
(900005,50003,'2026-07-15 11:45:00','DEBIT',45000,'RTGS','SUCCESS'),
(900006,50003,'2026-07-20 13:05:00','CREDIT',150000,'NEFT','SUCCESS'),
(900007,50004,'2025-11-30 15:10:00','DEBIT',3000,'ATM','SUCCESS'),
(900008,50005,'2026-08-30 10:05:00','CREDIT',200000,'RTGS','SUCCESS'),
(900009,50005,'2026-08-31 18:25:00','DEBIT',45000,'UPI','SUCCESS'),
(900010,50006,'2026-08-05 09:30:00','CREDIT',10000,'UPI','SUCCESS'),
(900011,50007,'2026-06-25 12:20:00','DEBIT',8000,'ATM','FAILED'),
(900012,50008,'2026-08-18 17:15:00','CREDIT',18000,'UPI','SUCCESS'),
(900013,50009,'2026-08-31 10:40:00','CREDIT',250000,'RTGS','SUCCESS'),
(900014,50009,'2026-08-31 15:20:00','DEBIT',60000,'RTGS','SUCCESS'),
(900015,50010,'2025-12-15 14:10:00','DEBIT',2000,'ATM','SUCCESS'),
(900016,50011,'2026-07-30 11:30:00','CREDIT',95000,'NEFT','SUCCESS'),
(900017,50012,'2026-08-12 16:40:00','CREDIT',12000,'UPI','SUCCESS'),
(900018,50013,'2026-08-10 10:00:00','DEBIT',15000,'AUTO-DEBIT','SUCCESS'),
(900019,50014,'2026-07-25 09:45:00','DEBIT',22000,'AUTO-DEBIT','SUCCESS'),
(900020,50002,'2026-08-30 12:15:00','DEBIT',30000,'UPI','FAILED');


CREATE TABLE BANK_LOAN
(
 LOAN_ID INT PRIMARY KEY,
 CUSTOMER_ID INT,
 LOAN_TYPE VARCHAR(30),
 LOAN_START_DATE DATE,
 MATURITY_DATE DATE,
 LOAN_AMOUNT DECIMAL(14,2),
 EMI_AMOUNT DECIMAL(12,2),
 LOAN_STATUS VARCHAR(20)
);

INSERT INTO BANK_LOAN VALUES
(70001,1001,'HOME','2021-05-15','2041-05-15',4500000,42000,'ACTIVE'),
(70002,1003,'PERSONAL','2024-01-10','2029-01-10',600000,14500,'ACTIVE'),
(70003,1005,'BUSINESS','2022-07-01','2030-07-01',2500000,38000,'ACTIVE'),
(70004,1007,'CAR','2023-03-20','2028-03-20',900000,19000,'ACTIVE'),
(70005,1009,'HOME','2020-09-10','2040-09-10',6500000,55000,'ACTIVE'),
(70006,1011,'PERSONAL','2025-02-15','2030-02-15',500000,11000,'ACTIVE'),
(70007,1004,'PERSONAL','2023-08-01','2026-08-01',250000,9000,'CLOSED'),
(70008,1010,'CAR','2022-12-01','2027-12-01',700000,15500,'ACTIVE');


SELECT * FROM BANK_CUSTOMER;
SELECT * FROM BANK_ACCOUNT;
SELECT * FROM BANK_TRANSACTION;
SELECT * FROM BANK_LOAN;


--PART B – 5 IMPORTANT INTERVIEW THEORY QUESTIONS
--Q1. EOMONTH in Banking
--Explain how EOMONTH() can be used for month-end statements, month-end transaction reporting 
--and loan maturity reporting. Explain the optional month offset.
=>          

--Q2. FORMAT vs CAST vs CONVERT
--Explain the difference between FORMAT(), CAST() and CONVERT() and give one banking reporting example for each.
FORMAT()= change date in specific format 
 CAST() =use to change the data type of a column
 CONVERT()= convert the data type and there is different format code according century and without century

--Q3. CONVERT Style Codes
--Explain why style codes are useful with CONVERT() when producing standard date strings such as YYYY-MM-DD.
covert is use to give the format to date

--Q4. Date Filtering
--Why should a tester understand DATE/DATETIME/DATETIME2 before filtering transaction data? Explain the risk of ignoring the time portion.


--Q5. Date Functions with JOINs
--Explain how Customer, Account and Transaction tables can be joined and then analyzed using
--EOMONTH(), DATEDIFF(), DATEADD(), YEAR() and MONTH().

EOMONTH()=find the end date of month,
DATEDIFF()=calculate the difference between the 2 dates, 
DATEADD()=find the date after days where we start ,
YEAR() = to extract the year from date 
and MONTH()= extract the month from the date
 
--PART C – 30 SQL BUSINESS SCENARIO QUESTIONS
--Q6. Current System Timestamp
--Display the current system date/time using GETDATE(), SYSDATETIME() and CURRENT_TIMESTAMP.
--•	Use meaningful aliases.
select GETDATE() default_time, SYSDATETIME() as system_time, CURRENT_TIMESTAMP curr_timestamp

--Q7. Customer Date Profile
--Display customer name, DOB, onboarding date, onboarding year, onboarding month and onboarding month name.
--•	Use YEAR, MONTH and DATENAME.
select customer_name, dob,onboard_date, 
year(onboard_date),month(onboard_date),
datename(month,onboard_date) from BANK_CUSTOMER

--Q8. Account Month-End
--For every account, display ACCOUNT_OPEN_DATE and the last day of its opening month.
select  ACCOUNT_OPEN_DATE,EOMONth(ACCOUNT_OPEN_DATE) as last_day from BANK_ACCOUNT

--•	Use EOMONTH.
--Q9. Next Month-End
--Display account ID, opening date and the last day of the next month.
--•	Use EOMONTH with offset 1.
select  ACCOUNT_ID ,ACCOUNT_OPEN_DATE,EOMONth(ACCOUNT_OPEN_DATE,1) as last_day from BANK_ACCOUNT

--Q10. Account Age
--Calculate how many days each account has been open as of today.
--•	Use DATEDIFF.
--•	Sort descending.
select  ACCOUNT_ID ,ACCOUNT_OPEN_DATE, datediff(day,ACCOUNT_OPEN_DATE,getdate())as account_age from BANK_ACCOUNT


--Q11. Transaction Date Format
--Display transaction ID and transaction date as DD-MMM-YYYY.
--•	Use FORMAT.
select format(getDATE(),'dd-MM-yyyy') 
select TXN_ID ,format(TXN_DATE,'dd-MMM-yyyy') from BANK_TRANSACTION

--Q12. Transaction Date-Time Format
--Display transaction ID and transaction date as YYYY-MM-DD HH:MM.
--•	Use FORMAT.
select txn_id, format(txn_date,'yyyy-MM-dd HH:MM') from BANK_TRANSACTION

--Q13. Date Conversion
--Display transaction date as DATE and as VARCHAR using CONVERT.
--•	Use CONVERT.
select convert( varchar,TXN_DATE) as DATE from BANK_TRANSACTION

--Q14. ISO Date Standardization
--Display customer onboarding dates as YYYY-MM-DD strings.
--•	Use CONVERT with an appropriate style.
select convert( varchar,TXN_DATE,112) as DATE from BANK_TRANSACTION


--Q15. Month-wise Transaction Count
--Show successful transaction count by transaction year and month.
--•	Use YEAR, MONTH, COUNT and GROUP BY.
select year(txn_date) year ,month(txn_date) month,count(*) monthly_transaction 
from BANK_TRANSACTION group by year(txn_date),month(txn_date)
select * from BANK_TRANSACTION
--Q16. Month-wise Transaction Amount
--Calculate total successful transaction amount by year and month.
--•	Use SUM and GROUP BY.
select year(txn_date) year, month(txn_date) month, count(*) monthly_transaction ,sum(TXN_AMOUNT) total_amt  
from BANK_TRANSACTION group by year(txn_date),month(txn_date)

--Q17. Month-End Transaction Report
--Display every successful transaction with the month-end date of its transaction month.
--•	Use EOMONTH.
select txn_id,EOMONTH(txn_date) last_date from BANK_TRANSACTION 

--Q18. Current Month Transactions
--Find successful transactions in the current calendar month.
--•	Use current date/time functions; do not hard-code the month.
select year(txn_date),month(txn_date) from BANK_TRANSACTION
where month(txn_date)=month(getdate()) and year(txn_date)=year(txn_date)

--Q19. Previous Month Transactions
--Find successful transactions in the previous calendar month.
--•	Use EOMONTH and date filtering; do not hard-code dates.
select Eomonth(getdate(),-1)
select * from BANK_TRANSACTION 
where month(TXN_DATE)= month(Eomonth(getdate(),-1))


--Q20. Customer Transaction Dashboard
--Display customer name, account ID, transaction ID, transaction date and amount.
--•	Join Customer, Account and Transaction.
--•	Use INNER JOIN.
select customer_name, a.account_ID, t.TXN_ID, t.TXN_DATE,t.txn_amount from BANK_CUSTOMER c  inner join 
BANK_ACCOUNT a on c.CUSTOMER_ID=a.CUSTOMER_ID join  BANK_TRANSACTION t on a.ACCOUNT_ID = t.ACCOUNT_ID

--Q21. Customer Transaction Month-End
--Create a three-table report with transaction month-end.
--•	Join Customer, Account and Transaction.
--•	Use EOMONTH.
--•	Use INNER JOIN.
select customer_name, a.account_ID, t.TXN_ID, t.TXN_DATE,t.txn_amount,eomonth(TXN_DATE) end_date 
from BANK_CUSTOMER c  inner join 
BANK_ACCOUNT a on c.CUSTOMER_ID=a.CUSTOMER_ID join  BANK_TRANSACTION t 
on a.ACCOUNT_ID = t.ACCOUNT_ID

--Q22. Dormant Account Analysis
--Find dormant accounts and show customer name, account ID, last transaction date and days since last transaction.
--•	Join Customer and Account.
--•	Use DATEDIFF.
select ACCOUNT_STATUS , customer_name, account_ID, last_transaction_date ,
day(last_transaction_date) from BANK_CUSTOMER c  inner join 
BANK_ACCOUNT a on c.CUSTOMER_ID=a.CUSTOMER_ID where a.ACCOUNT_STATUS='dormant'
--Q23. Inactive Account Analysis
--Find accounts where the last transaction was more than 90 days ago.
--•	Join Account and Customer.
--•	Use DATEDIFF.
select ACCOUNT_STATUS , customer_name, account_ID, last_transaction_date ,
DATEDIFF(day,last_transaction_date,getdate()) from BANK_CUSTOMER c  inner join 
BANK_ACCOUNT a on c.CUSTOMER_ID=a.CUSTOMER_ID where DATEDIFF(day,last_transaction_date,getdate())>90

--Q24. Top 5 Transaction Customers
--Find TOP 5 customers by total successful transaction amount.
--•	Join three tables.
--•	Use SUM, GROUP BY, TOP and ORDER BY.
select * from bank_customer
select * from BANK_ACCOUNT
select * from bank_transaction

select top 5 c.customer_id  ,sum(TXN_AMOUNT)
from BANK_CUSTOMER c   join 
BANK_ACCOUNT a on c.CUSTOMER_ID=a.CUSTOMER_ID join  BANK_TRANSACTION t 
on a.ACCOUNT_ID = t.ACCOUNT_ID where t.TXN_STATUS='success' group by c.CUSTOMER_ID 

--select top 5 TXN_amount, sum(txn_amount) as successful_trans from BANK_CUSTOMER c  inner join 
--BANK_ACCOUNT a on c.CUSTOMER_ID=a.CUSTOMER_ID join  BANK_TRANSACTION t on a.ACCOUNT_ID = t.ACCOUNT_ID
-- having TXN_STATUS='success'


--Q25. Customer Loan Dashboard
--Display customer name, loan type, loan amount, loan start date and maturity month name.
--•	Join Customer and Loan.
--•	Use DATENAME.
select* from bank_loan
select* from BANK_CUSTOMER
select customer_name,LOAN_TYPE,LOAN_AMOUNT,LOAN_START_DATE,datename(month,MATURITY_DATE)
from  BANK_CUSTOMER c join BANK_LOAN b
on  c.customer_id=b.CUSTOMER_ID

--Q26. Loan Remaining Days
--Calculate remaining days until maturity for active loans.
--•	Use DATEDIFF.
select customer_name,LOAN_TYPE,LOAN_AMOUNT,LOAN_START_DATE,DATEDIFF(day,getdate(),MATURITY_DATE)
from  BANK_CUSTOMER c join BANK_LOAN b
on  c.customer_id=b.CUSTOMER_ID

--Q27. Loan Maturity Month-End
--Display the month-end date for each active loan's maturity month.
--•	Use EOMONTH.
select EOMONTH(MATURITY_DATE) from BANK_LOAN where LOAN_STATUS='active'

--Q28. Loans Maturing Within 365 Days
--Find active loans maturing within the next 365 days.
--•	Use DATEADD and date filtering.
select * from BANK_LOAN 
 select dateadd(day,1000,getdate()) as within_365_days from BANK_LOAN
 where LOAN_STATUS='active' and dateadd(day,1000,getdate())<=MATURITY_DATE



--Q29. Customer Banking 360
--Combine Customer, Account and Loan data.
--•	Use LEFT JOIN so customers without loans remain.
--•	Display customer, account and loan details.
select * 
from BANK_CUSTOMER c left join
BANK_ACCOUNT a on c.CUSTOMER_ID=a.CUSTOMER_ID left join BANK_LOAN l
on c.CUSTOMER_ID= l.CUSTOMER_ID

--Q30. Three-Table Transaction Analysis
--For each customer and account, calculate total successful transaction amount and latest transaction date.
--•	Join Customer, Account and Transaction.
--•	Use SUM, MAX and GROUP BY.
select TXN_STATUS,sum(TXN_AMOUNT),max(TXN_DATE) latest_txn_date
from BANK_CUSTOMER c  inner join 
BANK_ACCOUNT a on c.CUSTOMER_ID=a.CUSTOMER_ID join  BANK_TRANSACTION t 
on a.ACCOUNT_ID = t.ACCOUNT_ID group by TXN_STATUS having TXN_STATUS='success'

--Q31. Month-End Account Review
--For each account show opening date, opening-month end, latest transaction date and days since latest transaction.
--•	Use LEFT JOIN so accounts without transactions remain.
--•	Use EOMONTH and DATEDIFF.
select* from BANK_ACCOUNT
select * from BANK_TRANSACTION


select ACCOUNT_OPEN_DATE,Eomonth(ACCOUNT_OPEN_DATE) month_end,LAST_TRANSACTION_DATE latest_txn_date,
DATEDIFF(day,ACCOUNT_OPEN_DATE,LAST_TRANSACTION_DATE) days_since_LT
from BANK_ACCOUNT a left join  BANK_TRANSACTION t 
on a.ACCOUNT_ID = t.ACCOUNT_ID 


--Q32. SET + JOIN City Analysis
--Combine cities of customers having accounts and customers having loans into one unique list.
--•	Use UNION and appropriate JOINs.
--•	Return one CITY column.
select  city
from BANK_CUSTOMER c join  
BANK_ACCOUNT a on c.CUSTOMER_ID=a.CUSTOMER_ID 
union  
select  city
from BANK_CUSTOMER c join  
BANK_LOAN l on c.CUSTOMER_ID= l.CUSTOMER_ID

--Q33. Banking Date Conversion Challenge
--Create a report showing transaction date, DATE version, ISO string 
--version and formatted display version.
--•	Use CAST, CONVERT and FORMAT together.
select txn_date, DATE_version=cast(TXN_DATE as date),format(txn_date,'dd-mm-yyyy','en-In') format_date ,
ISO_string = convert(varchar,TXN_DATE,112) from BANK_TRANSACTION

--Q34. FINAL – Banking Operations Dashboard
--Create a management-ready active-account ageing report.
--•	Display CUSTOMER_NAME, ACCOUNT_ID, ACCOUNT_TYPE, BALANCE, LAST_TRANSACTION_DATE, 
--MONTH_END_DATE and DAYS_SINCE_TRANSACTION.
--•	Use Customer + Account + Transaction.
--•	Use LEFT JOIN for transaction retention.
--•	Use EOMONTH and DATEDIFF.
--•	Show ACTIVE accounts where days since transaction > 30 or last transaction is NULL.
--•	Sort by DAYS_SINCE_TRANSACTION DESC.
select CUSTOMER_NAME, ACCOUNT_STATUS,a.ACCOUNT_ID, ACCOUNT_TYPE, BALANCE, LAST_TRANSACTION_DATE, 
MONTH_END_DATE=EOMONTH(LAST_TRANSACTION_DATE),
DAYS_SINCE_TRANSACTION= DATEDIFF(day,LAST_TRANSACTION_DATE,getdate()) from 
BANK_CUSTOMER c  left join 
BANK_ACCOUNT a on c.CUSTOMER_ID=a.CUSTOMER_ID left join  BANK_TRANSACTION t 
on a.ACCOUNT_ID = t.ACCOUNT_ID  where a.ACCOUNT_STATUS='active' and
DATEDIFF(day,LAST_TRANSACTION_DATE,getdate())>30 or TXN_DATE is null

 


