create database banking
use banking

CREATE TABLE BANK_CUSTOMER (
 CUSTOMER_ID INT PRIMARY KEY, CUSTOMER_NAME VARCHAR(100), EMAIL_ID VARCHAR(100),
 PHONE_NUMBER VARCHAR(20), CITY VARCHAR(50), CUSTOMER_TYPE VARCHAR(30),
 CUSTOMER_SINCE DATE, PAN_NUMBER VARCHAR(20)
);
select * from bank_customer
INSERT INTO BANK_CUSTOMER VALUES
(101,'Amit Sharma','amit.sharma@gmail.com','9876543210','Mumbai','Premium','2018-04-15','ABCDE1234F'),
(102,'Priya Verma','priya.verma@yahoo.com','9876501234','Pune','Regular','2020-07-21','BCDEF2345G'),
(103,'Rajesh Kumar','rajesh.kumar@exl.com','9988776655','Bangalore','Premium','2017-01-10','CDEFG3456H'),
(104,'Sneha Iyer','sneha.iyer@gmail.com','9123456780','Chennai','Regular','2021-11-05','DEFGH4567J'),
(105,'Ankit Patel','ankit.patel@rediffmail.com','9012345678','Ahmedabad','Corporate','2016-09-18','EFGHI5678K'),
(106,'Deepika Reddy','deepika.reddy@outlook.com','9090909090','Hyderabad','Premium','2019-02-25','FGHIJ6789L'),
(107,'Vikram Singh','vikram.singh@yahoo.com','9988001122','Delhi','Regular','2022-03-12','GHIJK7890M'),
(108,'Kavita Das','kavita.das@exl.com','9876112233','Kolkata','Corporate','2015-06-30','HIJKL8901N'),
(109,'Suresh Nair','suresh.nair@gmail.com','8888777766','Kochi','Regular','2023-01-08','IJKLM9012P'),
(110,'Pooja Joshi','pooja.joshi@outlook.com','7777666655','Pune','Premium','2019-12-19','JKLMN0123Q'),
(111,'Neha Kulkarni','neha.kulkarni@gmail.com','9000011111','Mumbai','Regular','2024-02-14','KLMNO1234R'),
(112,'Rohan Mehta','rohan.mehta@bankmail.com','9111122222','Delhi','Corporate','2014-08-22','LMNOP2345S');

CREATE TABLE BANK_ACCOUNT (
 ACCOUNT_ID INT PRIMARY KEY, CUSTOMER_ID INT, ACCOUNT_NUMBER VARCHAR(20),
 ACCOUNT_TYPE VARCHAR(30), ACCOUNT_STATUS VARCHAR(20), ACCOUNT_OPEN_DATE DATETIME,
 ACCOUNT_BALANCE DECIMAL(18,2), BRANCH_CODE VARCHAR(20)
);

INSERT INTO BANK_ACCOUNT VALUES
(2001,101,'SB100001','Savings','Active','2018-04-16 10:15:00',850000,'MUM001'),
(2002,101,'CC100001','Current','Active','2020-01-10 11:20:00',1250000,'MUM002'),
(2003,102,'SB100002','Savings','Active','2020-07-22 09:30:00',325000,'PUN001'),
(2004,103,'SB100003','Savings','Active','2017-01-11 12:10:00',675000,'BLR001'),
(2005,104,'SB100004','Savings','Dormant','2021-11-06 14:00:00',95000,'CHE001'),
(2006,105,'CA100001','Current','Active','2016-09-19 10:00:00',2500000,'AHM001'),
(2007,106,'SB100005','Savings','Active','2019-02-26 13:45:00',1125000,'HYD001'),
(2008,107,'SB100006','Savings','Active','2022-03-13 15:30:00',180000,'DEL001'),
(2009,108,'CA100002','Current','Active','2015-07-01 10:10:00',3200000,'KOL001'),
(2010,109,'SB100007','Savings','Active','2023-01-09 11:11:00',210000,'KOC001'),
(2011,110,'SB100008','Savings','Active','2019-12-20 09:50:00',780000,'PUN002'),
(2012,111,'SB100009','Savings','Active','2024-02-15 12:00:00',145000,'MUM003'),
(2013,112,'CA100003','Current','Active','2014-08-23 16:10:00',4100000,'DEL002'),
(2014,102,'FD100001','Fixed Deposit','Active','2022-05-01 10:30:00',500000,'PUN001');


CREATE TABLE BANK_TRANSACTION (
 TRANSACTION_ID INT PRIMARY KEY, ACCOUNT_ID INT, TRANSACTION_TYPE VARCHAR(30),
 TRANSACTION_AMOUNT DECIMAL(18,2), TRANSACTION_DATE DATETIME, CHANNEL VARCHAR(30),
 TRANSACTION_STATUS VARCHAR(20), REFERENCE_NUMBER VARCHAR(40)
);

INSERT INTO BANK_TRANSACTION VALUES
(50001,2001,'Deposit',150000,'2026-08-01 10:15:00','Branch','Success','NEFT-MUM-001'),
(50002,2001,'Withdrawal',25000,'2026-08-05 14:20:00','ATM','Success','ATM-MUM-002'),
(50003,2002,'Deposit',500000,'2026-08-07 09:10:00','NEFT','Success','NEFT-MUM-003'),
(50004,2002,'Withdrawal',125000,'2026-08-15 16:40:00','Online','Success','UPI-MUM-004'),
(50005,2003,'Deposit',100000,'2026-07-10 11:00:00','UPI','Success','UPI-PUN-005'),
(50006,2003,'Withdrawal',15000,'2026-07-22 18:10:00','ATM','Success','ATM-PUN-006'),
(50007,2004,'Deposit',225000,'2026-06-05 10:45:00','NEFT','Success','NEFT-BLR-007'),
(50008,2004,'Withdrawal',30000,'2026-06-25 13:15:00','ATM','Failed','ATM-BLR-008'),
(50009,2005,'Withdrawal',10000,'2025-12-15 12:30:00','ATM','Success','ATM-CHE-009'),
(50010,2006,'Deposit',750000,'2026-08-03 09:25:00','NEFT','Success','NEFT-AHM-010'),
(50011,2006,'Withdrawal',225000,'2026-08-20 15:05:00','Online','Success','RTGS-AHM-011'),
(50012,2007,'Deposit',300000,'2026-05-12 10:10:00','Branch','Success','CASH-HYD-012'),
(50013,2007,'Withdrawal',45000,'2026-05-20 17:00:00','ATM','Success','ATM-HYD-013'),
(50014,2008,'Deposit',80000,'2026-04-15 11:15:00','UPI','Success','UPI-DEL-014'),
(50015,2009,'Deposit',1200000,'2026-08-02 09:45:00','NEFT','Success','NEFT-KOL-015'),
(50016,2009,'Withdrawal',350000,'2026-08-18 16:20:00','RTGS','Success','RTGS-KOL-016'),
(50017,2010,'Deposit',50000,'2026-03-10 10:30:00','UPI','Success','UPI-KOC-017'),
(50018,2011,'Deposit',175000,'2026-07-01 09:15:00','NEFT','Success','NEFT-PUN-018'),
(50019,2011,'Withdrawal',25000,'2026-07-25 14:00:00','ATM','Success','ATM-PUN-019'),
(50020,2012,'Deposit',45000,'2025-11-20 10:00:00','UPI','Success','UPI-MUM-020'),
(50021,2013,'Deposit',900000,'2026-08-10 10:10:00','RTGS','Success','RTGS-DEL-021'),
(50022,2013,'Withdrawal',500000,'2026-08-25 15:30:00','Online','Success','NEFT-DEL-022'),
(50023,2014,'Deposit',200000,'2026-01-15 11:40:00','Branch','Success','FD-PUN-023'),
(50024,2001,'Deposit',50000,'2026-08-28 12:15:00','UPI','Failed','UPI-MUM-024'),
(50025,2006,'Withdrawal',100000,'2026-08-30 17:45:00','ATM','Success','ATM-AHM-025');


CREATE TABLE BANK_LOAN (
 LOAN_ID INT PRIMARY KEY, CUSTOMER_ID INT, LOAN_TYPE VARCHAR(40),
 LOAN_AMOUNT DECIMAL(18,2), LOAN_START_DATE DATE, TENURE_MONTHS INT,
 LOAN_STATUS VARCHAR(20)
);

INSERT INTO BANK_LOAN VALUES
(7001,101,'Home Loan',4500000,'2022-01-15',240,'Active'),
(7002,102,'Personal Loan',750000,'2024-06-10',36,'Active'),
(7003,103,'Car Loan',1200000,'2023-03-20',60,'Active'),
(7004,105,'Business Loan',8000000,'2021-09-01',120,'Active'),
(7005,106,'Home Loan',3500000,'2020-05-15',180,'Active'),
(7006,108,'Business Loan',12000000,'2019-07-01',120,'Active'),
(7007,110,'Personal Loan',500000,'2025-02-01',24,'Active'),
(7008,112,'Home Loan',6000000,'2018-08-15',180,'Active'),
(7009,104,'Education Loan',900000,'2022-07-10',60,'Closed'),
(7010,107,'Vehicle Loan',650000,'2023-05-05',48,'Active');
select * from BANK_CUSTOMER 
select * from BANK_account
select * from BANK_transaction




--Q1. Customer Account 360
--Display Customer ID, Customer Name, City, Account Number,
--Account Type, Account Balance and Account Opening Date
--for every customer having an account.
select c.Customer_ID, Customer_Name, City, Account_Number,
Account_Type, Account_Balance, Account_Open_Date from BANK_CUSTOMER c
join BANK_ACCOUNT a on c.CUSTOMER_ID=a.CUSTOMER_ID

--Q2. Customers Without Accounts
--Identify customers registered with the bank but without any bank account.
--Display Customer ID, Customer Name and City.
select c.Customer_ID, Customer_Name, City
from BANK_CUSTOMER c left join BANK_ACCOUNT a 
on c.CUSTOMER_ID=a.CUSTOMER_ID where ACCOUNT_ID is null

--Q3. Customers by City
--Find the number of customers in each city. Display City and Total Customers. 
--Sort by highest count first.
select city ,count(*) from BANK_CUSTOMER group by city order by count(*) desc

--Q4. High-Value Customers
--Identify customers whose total balance across all accounts is greater than ₹5,00,000.
--Display Customer ID, Customer Name and Total Balance.
select c.Customer_ID,customer_name, total_balance=sum(account_balance)
from BANK_CUSTOMER c  join BANK_ACCOUNT a 
on c.CUSTOMER_ID=a.CUSTOMER_ID group by c.CUSTOMER_ID,CUSTOMER_NAME 
having sum(account_balance)>500000

--Q5. Top 5 Customers by Balance
--Find the top 5 customers based on total account balance.
select top 5 c.Customer_ID,customer_name, total_balance=sum(account_balance)
from BANK_CUSTOMER c  join BANK_ACCOUNT a 
on c.CUSTOMER_ID=a.CUSTOMER_ID group by c.CUSTOMER_ID,CUSTOMER_NAME 
having sum(account_balance)>500000 order by sum(account_balance) desc

--Q6. Transaction Details with Customer
--Display Customer Name, Account Number, Transaction ID, Transaction Type, 
--Transaction Amount, Transaction Date and Channel for every transaction.
select Customer_Name, Account_Number,transaction_id,TRANSACTION_TYPE,
TRANSACTION_AMOUNT,TRANSACTION_DATE,CHANNEL from BANK_CUSTOMER c
join BANK_ACCOUNT a on c.CUSTOMER_ID=a.CUSTOMER_ID join BANK_TRANSACTION t
on a.ACCOUNT_ID=t.ACCOUNT_ID

--Q7. Customer Transaction Exposure
--Calculate total transaction amount for each customer and
--show only customers whose total exceeds ₹10,00,000.
select Customer_Name,total_trans_amt =sum(transaction_amount) from BANK_CUSTOMER c
join BANK_ACCOUNT a on c.CUSTOMER_ID=a.CUSTOMER_ID join BANK_TRANSACTION t
on a.ACCOUNT_ID=t.ACCOUNT_ID group by CUSTOMER_NAME having sum(transaction_amount)>1000000

--Q8. Deposit vs Withdrawal
--Calculate transaction count and total amount separately for Deposit and Withdrawal.
select TRANSACTION_TYPE,total =count(TRANSACTION_id),sum=sum(TRANSACTION_AMOUNT) 
from BANK_TRANSACTION
group by TRANSACTION_TYPE

--Q9. Highest Transaction by Customer
--Find the highest transaction amount performed by each customer.
select c.CUSTOMER_ID,max(TRANSACTION_AMOUNT) from BANK_CUSTOMER c
join BANK_ACCOUNT a on c.CUSTOMER_ID=a.CUSTOMER_ID join BANK_TRANSACTION t
on a.ACCOUNT_ID=t.ACCOUNT_ID  group by c.CUSTOMER_ID

--Q10. Accounts with No Transactions
--Identify accounts that have never had a transaction.
select *from BANK_ACCOUNT a  left join BANK_TRANSACTION t
on a.ACCOUNT_ID=t.ACCOUNT_ID where TRANSACTION_ID is null

--Q11. Transaction Year Analysis
--Display Transaction Year, Number of Transactions and Total Transaction 
--Amount for each year.
select year(TRANSACTION_DATE),count(*)  number_of_trans,sum(TRANSACTION_AMOUNT) sum_tran
from BANK_TRANSACTION group by year(TRANSACTION_DATE)


--Q12. Monthly Transaction Analysis
--Display Transaction Year, Transaction Month, Transaction Count and
--Total Transaction Amount for each month.
select year(TRANSACTION_DATE) year_trans,MONTH(TRANSACTION_DATE) month_trans,
count(transaction_id) transaction_count,sum(transaction_amount) total_trans_pmonth
from BANK_TRANSACTION group by year(TRANSACTION_DATE),MONTH(TRANSACTION_DATE)

--Q13. Month Name Report
--Create a monthly report containing Month Number, Month Name,
--Transaction Count and Total Transaction Amount.
select month(TRANSACTION_DATE) month,DATENAME(month,TRANSACTION_DATE),
count(*),sum(TRANSACTION_AMOUNT) from BANK_TRANSACTION
group by month(TRANSACTION_DATE),DATENAME(month,TRANSACTION_DATE)

--Q14. Day-of-Week Transaction Analysis
--Find the number of successful transactions performed on each day of the week.
select DATENAME(weekday,TRANSACTION_DATE),
count(*) succesful_transaction from BANK_TRANSACTION where TRANSACTION_STATUS='success'
group by DATENAME(weekday,TRANSACTION_DATE)

--Q15. Weekend Banking Activity
--Identify transactions performed on Saturday or Sunday and display Day Name.
select DATENAME(weekday,TRANSACTION_DATE),
count(*) succesful_transaction from BANK_TRANSACTION where TRANSACTION_STATUS='success'
group by DATENAME(weekday,TRANSACTION_DATE) having
DATENAME(weekday,TRANSACTION_DATE) in ('saturday','sunday')

--Q16. Current-Day Transactions
--Find all successful transactions performed on the current system date.
--Do not hardcode today's date.
select * from BANK_TRANSACTION where TRANSACTION_STATUS='success' 
and TRANSACTION_DATE = getdate()

--Q17. Last 30 Days Transactions
--Find successful transactions performed during the last 30 days relative 
--to the current system date.
select * from BANK_TRANSACTION 
where TRANSACTION_STATUS='success' and TRANSACTION_DATE between 
(getdate()-30) and getdate()


--Q18. Transaction Ageing
--For every transaction, calculate the number of days between 
--Transaction Date and the current system date.
select DATEDIFF(day,transaction_date,getdate())days_diff from BANK_TRANSACTION

--Q19. Account Ageing
--Calculate how many days each account has been active.
select * from BANK_ACCOUNT
 select DATEDIFF(day,account_open_date,getdate())days_diff 
 from bank_account where ACCOUNT_STATUS='active'

--Q20. Accounts Opened This Year
--Find all accounts opened during the current calendar year without hardcoding the year.
select year(getdate()) from BANK_ACCOUNT where year(ACCOUNT_OPEN_DATE)=year(getdate())

--Q21. Account Month-End
--For every account, display the last day of the account-opening month.
select eomonth(ACCOUNT_OPEN_DATE) from  BANK_ACCOUNT

--Q22. Next Month-End
--For every account, calculate the last day of the month following the opening month.
select eomonth(ACCOUNT_OPEN_DATE,1),month(ACCOUNT_OPEN_DATE)acc_open_month 
from  BANK_ACCOUNT


--Q23. Previous Month-End
--For every transaction, display the last day of the previous month.
select eomonth(TRANSACTION_DATE,-1),month(TRANSACTION_DATE) last_trans
from  BANK_TRANSACTION

--Q24. Month-End Transaction Summary
--Create a monthly report showing Month-End Date, Transaction Count and Total Transaction Amount.
select eomonth(TRANSACTION_DATE) E_O_M ,count(*) trans_cnt,sum(TRANSACTION_AMOUNT) ttl_trans_amt
from  BANK_TRANSACTION group by eomonth(TRANSACTION_DATE)

--Q25. Recent Account Openings
--Identify accounts opened within the last 3 months and
--display Opening Date, Month-End Date and Balance.

select ACCOUNT_OPEN_DATE,eomonth(ACCOUNT_OPEN_DATE) eom,ACCOUNT_BALANCE
from BANK_ACCOUNT WHERE ACCOUNT_OPEN_DATE >= DATEADD(MONTH, -3, GETDATE())
  AND ACCOUNT_OPEN_DATE <= GETDATE()

  select ACCOUNT_OPEN_DATE,eomonth(ACCOUNT_OPEN_DATE) eom,ACCOUNT_BALANCE
from BANK_ACCOUNT WHERE ACCOUNT_OPEN_DATE BETWEEN 
DATEADD(MONTH, -3, GETDATE()) AND GETDATE()
                            

--Q26. Bank Statement Date Format
--Display Transaction Date in dd-MM-yyyy format for a customer statement.
select format(TRANSACTION_DATE,'dd-MM-yyyy') from BANK_TRANSACTION

--Q27. Month-Year Reporting
--Display transaction month and year as MMM-yyyy along with count and total amount.
select format(TRANSACTION_DATE,'MMMM-yyyy'),count(*) count,
sum(TRANSACTION_AMOUNT) as total_amt from BANK_TRANSACTION 
group by format(TRANSACTION_DATE,'MMMM-yyyy')


--Q28. Indian Currency Formatting
--Display account balances using Indian currency/number formatting with en-IN culture.
select format(ACCOUNT_BALANCE,'C','en-IN') from BANK_ACCOUNT

--Q29. Transaction Date CAST
--Display Transaction ID, original Transaction Date and
--the same value converted to DATE using CAST.
select TRANSACTION_ID,TRANSACTION_DATE, cast(transaction_date as date ) date_cast
from BANK_TRANSACTION

--Q30. Transaction Date CONVERT
--Display Transaction ID and Transaction Date converted to YYYY-MM-DD 
--using CONVERT and the appropriate style.
select TRANSACTION_ID,convert(varchar,TRANSACTION_DATE,102)from BANK_TRANSACTION

--Q31. Loan Maturity Date
--Calculate Loan Maturity Date using Loan Start Date and Tenure in Months.
select * from BANK_LOAN
select dateadd(month,TENURE_MONTHS,LOAN_START_DATE) from BANK_LOAN

--Q32. Loan Remaining Tenure
--Calculate the number of months between the current date and each active loan's maturity date.
select DATEDIFF(month,getdate(),(dateadd(month,TENURE_MONTHS,LOAN_START_DATE)))
 month_betn_curdate
from BANK_LOAN where LOAN_STATUS='active'

--Q33. Overdue Loans
--Identify active loans whose calculated maturity date has passed.
select dateadd(month,TENURE_MONTHS,LOAN_START_DATE) from BANK_LOAN 
where LOAN_STATUS='active' and dateadd(month,TENURE_MONTHS,LOAN_START_DATE)<getdate()


--Q34. Loans Maturing This Year
--Find loans whose calculated maturity date falls in the current year.
select year(dateadd(month,TENURE_MONTHS,LOAN_START_DATE)) from BANK_LOAN 
where  year(dateadd(month,TENURE_MONTHS,LOAN_START_DATE))=year(getdate())

--Q35. High Exposure Customers
--Identify customers with total loan amount above ₹10,00,000 and 
--successful transaction amount below ₹2,00,000.
select * from BANK_CUSTOMER c join BANK_LOAN l on  c.CUSTOMER_ID=l.CUSTOMER_ID
join BANK_ACCOUNT a on c.CUSTOMER_ID=a.CUSTOMER_ID join BANK_TRANSACTION t
on a.ACCOUNT_ID=t.ACCOUNT_ID where LOAN_AMOUNT>1000000 and TRANSACTION_AMOUNT<200000

----Q36. Inactive Customers – 90 Days
----Identify customers who have not performed a successful transaction in the last 90 days. Display Customer ID, Customer Name and Last Transaction Date.
--select DATEADD(day,-90,TRANSACTION_DATE) from BANK_CUSTOMER c join BANK_ACCOUNT a 
--on c.CUSTOMER_ID=a.CUSTOMER_ID join BANK_TRANSACTION t
--on a.ACCOUNT_ID=t.ACCOUNT_ID where TRANSACTION_DATE!=DATEADD(day,-90,TRANSACTION_DATE)

--Q37. Transaction Customers Without Loans
--Identify customers with successful transaction activity but no loan.
select * from BANK_CUSTOMER c join  BANK_ACCOUNT a on c.CUSTOMER_ID=a.CUSTOMER_ID 
 join BANK_TRANSACTION t on a.ACCOUNT_ID=t.ACCOUNT_ID left join 
 BANK_LOAN l on  c.CUSTOMER_ID=l.CUSTOMER_ID 


--Q38. Deposit and Withdrawal Customers
--Identify customers who have performed both Deposit and Withdrawal transactions. Display customer and the two transaction totals.

--Q39. Customer 360 Banking Report
--Create a customer-level report with Customer ID, Name, City, Number of Accounts, Total Balance, Transaction Count, Total Transaction Amount, Total Loan Amount, Latest Transaction Date and Account Age.

--Q40. Banking Management Dashboard
--Create a management report with Customer Name, City, Account Type, Balance, Transaction Count, Total Transaction Amount, Last Transaction Date, Days Since Last Transaction, Loan Amount, Loan Maturity Date and Loan Status. Add a business-oriented customer classification using only topics already covered.
