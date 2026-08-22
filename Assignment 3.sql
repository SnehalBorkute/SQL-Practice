use practice

CREATE TABLE EMP
(
    EMP_ID INT,
    EMP_NAME VARCHAR(50),
    EMP_DEPT VARCHAR(30),
    EMP_CITY VARCHAR(30),
    EMP_SAL INT,
    EMP_DOJ DATE,
    EMP_EMAIL VARCHAR(100)
);


INSERT INTO EMP
(EMP_ID, EMP_NAME, EMP_DEPT, EMP_CITY, EMP_SAL, EMP_DOJ, EMP_EMAIL)
VALUES
(1,'Mohit','IT','PUNE',3000,'2021-01-14','mohit@gmail.com'),
(2,'Sumit','HR','MUMBAI',3500,'2021-03-01','sumit@gmail.com'),
(3,'Shital','IT','DELHI',3000,'2022-05-11',NULL),
(4,'Priyanka','FINANCE','NAGPUR',4000,'2021-08-14','priyanka@gmail.com'),
(5,'Praveen','IT','HYDERABAD',5500,'2020-05-28','praveen@gmail.com'),
(6,'Rajesh','SALES','KOTA',6500,'2022-07-14',NULL),
(7,'Rohit','SALES','KOTA',4500,'2022-09-14','rohit@gmail.com'),
(8,'Sumita','HR','WARDHA',2800,'2023-01-14','sumita@gmail.com'),
(9,'Amit','IT','PUNE',5200,'2022-12-10',NULL),
(10,'Ankit','SALES','MUMBAI',7200,'2023-02-18','ankit@gmail.com'),
(11,'Sneha','FINANCE','NAGPUR',4800,'2022-11-25','sneha@gmail.com'),
(12,'Raj','SALES','KOTA',6500,'2023-01-10','raj@gmail.com'),
(13,'Neha','IT','DELHI',3900,'2021-06-15',NULL),
(14,'Vikas','IT','PUNE',6100,'2020-11-20','vikas@gmail.com'),
(15,'Pooja','HR','MUMBAI',4400,'2022-04-18','pooja@gmail.com'),
(16,'Rakesh','FINANCE','HYDERABAD',5700,'2021-12-05',NULL),
(17,'Kiran','FINANCE','NAGPUR',3200,'2023-03-12','kiran@gmail.com'),
(18,'Meena','SALES','KOTA',7000,'2020-08-25','meena@gmail.com'),
(19,'Suresh','IT','PUNE',3600,'2021-09-17',NULL),
(20,'Nitin','HR','MUMBAI',4900,'2022-10-11','nitin@gmail.com'),
(21,'Rahul','IT','PUNE',NULL,'2023-04-20','rahul@gmail.com'),
(22,'Riya','FINANCE','NAGPUR',NULL,'2022-06-18',NULL),
(23,'Ramesh','SALES','KOTA',5800,NULL,'ramesh@gmail.com'),
(24,'Sunita','HR','DELHI',4200,NULL,NULL),
(25,'Rohan','IT','MUMBAI',5600,'2023-05-15','rohan@gmail.com'),
(26,'Seema','HR','PUNE',3900,'2023-06-20','seema@gmail.com'),
(27,'Ravi','SALES','NAGPUR',4700,'2022-08-12','ravi@gmail.com'),
(28,'Sonal','FINANCE','PUNE',6200,'2021-10-30','sonal@gmail.com'),
(29,'Sachin','IT','MUMBAI',5100,'2020-09-22',NULL),
(30,'Rekha','HR','KOTA',4300,'2022-02-14','rekha@gmail.com');


SELECT * FROM EMP;
--Q1. COUNT – Total Employees
--Find the total number of employees in the EMPLOYEE table.
--•	Display the result as TOTAL_EMPLOYEES.
--•	Use COUNT().
select count(*) TOTAL_EMPLOYEES from emp


--Q2. COUNT(*) vs COUNT(column)
--Find the total number of employee records and the number of employees having a non-NULL salary.
--•	Display TOTAL_RECORDS and EMPLOYEES_WITH_SALARY.
--•	Use COUNT(*) and COUNT(EMP_SAL).
select count(*) as TOTAL_RECORDS,count(EMP_SAL) as EMPLOYEES_WITH_SALARY from EMP

--Q3. GROUP BY – Department Count
--Display the number of employees in each department.
--•	Display EMP_DEPT and TOTAL_EMPLOYEES.
--•	Use GROUP BY EMP_DEPT.
--•	Sort by TOTAL_EMPLOYEES descending.
select emp_dept ,count(*) TOTAL_EMPLOYEES from emp group by EMP_DEPT order by TOTAL_EMPLOYEES desc;

--Q4. GROUP BY – Salary Summary
--For each department, display total salary and average salary.
--•	Display EMP_DEPT, TOTAL_SALARY and AVG_SALARY.
--•	Use SUM(), AVG() and GROUP BY.
--•	Sort by TOTAL_SALARY descending.
select EMP_DEPT, TOTAL_SALARY=sum(emp_sal), AVG_SALARY= avg(EMP_SAL )from emp group by EMP_DEPT order by TOTAL_SALARY desc


--Q5. MIN and MAX – Salary Range
--For each department, find the minimum and maximum available salary.
--•	Display EMP_DEPT, MIN_SALARY and MAX_SALARY.
--•	Use MIN(), MAX() and GROUP BY.
select EMP_DEPT, MIN_SALARY=min(emp_sal) ,MAX_SALARY=max(EMP_SAL) from emp group by EMP_DEPT

--Q6. GROUP BY + WHERE
--For employees whose salary is greater than 3500, find employee count and average salary for each department.
--•	Use WHERE before GROUP BY.
--•	Display EMP_DEPT, EMPLOYEE_COUNT and AVG_SALARY.
--•	Sort by AVG_SALARY descending.
select EMP_DEPT, EMPLOYEE_COUNT=count(*), AVG_SALARY= avg(EMP_SAL) from emp where emp_sal>3500 group by emp_dept order by AVG_SALARY desc;

--Q7. HAVING – Employee Count
--Find departments having more than 3 employees.
--•	Display EMP_DEPT and TOTAL_EMPLOYEES.
--•	Use GROUP BY and HAVING.
select EMP_DEPT , TOTAL_EMPLOYEES=count(*) from emp group by EMP_DEPT having count(*)>3


--Q8. HAVING – Average Salary
--Find departments whose average salary is greater than 4500.
--•	Display EMP_DEPT and AVG_SALARY.
--•	Use GROUP BY and HAVING.
--•	Sort by AVG_SALARY descending.
select EMP_DEPT , avg_sal=avg(EMP_SAL) from emp group by EMP_DEPT having avg(EMP_SAL)>4500 order by avg_sal desc

--Q9. WHERE + GROUP BY + HAVING
--For employees from PUNE, MUMBAI and KOTA only, calculate total salary for each department.
--•	Salary must be >= 3500.
--•	Show only departments whose total salary is > 12000.
--•	Use IN, WHERE, GROUP BY and HAVING.
--•	Sort by TOTAL_SALARY descending.
select emp_dept,total_salary=sum(emp_sal) from emp  where emp_city in('pune','mumbai','kota') and EMP_SAL>=3500 
group by emp_dept having sum(emp_sal)>1200 order by  total_salary desc

--Q10. LIKE + GROUP BY
--Find the number of employees whose names start with 'R' for each department.
--•	Use LIKE 'R%'.
--•	Display EMP_DEPT and TOTAL_EMPLOYEES.
--•	Group by department and sort by count descending.
select emp_dept,employees=count(*) from emp where EMP_NAME like 'r%'group by EMP_DEPT order by count(*) desc

--Q11. NULL + GROUP BY + COUNT
--For each department, display total employee records and number of employees having an email address.
--•	Use COUNT(*) for total records.
--•	Use COUNT(EMP_EMAIL) for non-NULL emails.
--•	Sort by EMAIL_AVAILABLE descending.
select emp_dept , count(*) total_emp,COUNT(EMP_EMAIL) [number of emp having mail]  from emp  group by emp_dept  

--Q12. Department Salary Calculation
--For each department calculate total salary, average salary and annualized total salary.
--•	ANNUAL_TOTAL_SALARY = SUM(EMP_SAL) * 12.
--•	Show only departments with TOTAL_SALARY > 15000.
--•	Use GROUP BY, HAVING and ORDER BY.
select EMP_DEPT, total_salary=sum(EMP_SAL),avg(emp_sal)[average salary] , sum(EMP_SAL)*12 [annualized total salary] from emp 
 group by EMP_DEPT having  sum(EMP_SAL)>15000

--Q13. City Analysis
--For each city, find employee count and average salary for employees whose salary is NOT NULL.
--•	Use IS NOT NULL and GROUP BY.
--•	Show only cities having at least 3 employees.
--•	Sort by AVG_SALARY descending.
select EMP_CITY,count(*)  employee,avg(EMP_SAL) AVG_SALARY from emp where EMP_SAL is not null 
group by EMP_CITY having count(*)>3 order by AVG_SALARY

--Q14. Business Challenge – High Value Departments
--Identify departments meeting all the following conditions:
--•	Salary is NOT NULL and between 3500 and 7000.
--•	At least 4 qualifying employees.
--•	Total qualifying salary > 18000.
--•	Average qualifying salary > 4500.
--•	Display EMP_DEPT, EMPLOYEE_COUNT, TOTAL_SALARY and AVG_SALARY.
--•	Use WHERE, GROUP BY, HAVING and ORDER BY.
select EMP_DEPT, EMPLOYEE_COUNT=count(*), TOTAL_SALARY=sum(emp_sal) , AVG_SALARY=avg(EMP_SAL) from emp 
where EMP_SAL is not null and emp_sal between 3500 and 7000 group by EMP_DEPT
having count(*)>4 and sum(emp_sal) > 18000 and avg(EMP_SAL)>4500

--Q15. FINAL CHALLENGE – Department Performance Report
--Create a department-level performance report using one SELECT statement.
--•	Salary is NOT NULL.
--•	City is PUNE, MUMBAI, KOTA or NAGPUR.
--•	Name starts with R or S.
--•	Salary is between 3500 and 7000.
--•	Group by EMP_DEPT.
--•	Calculate COUNT, SUM, AVG, MIN and MAX salary.
--•	Keep departments with at least 2 qualifying employees.
--•	Keep departments with TOTAL_SALARY > 9000.
--•	Calculate ANNUAL_TOTAL_SALARY = SUM(EMP_SAL) * 12.
--•	Sort by TOTAL_SALARY DESC and AVG_SALARY DESC.
--•	Use WHERE, LIKE, IN, BETWEEN, IS NOT NULL, GROUP BY, aggregates, HAVING and ORDER BY.
 select count(emp_sal) from emp;

select emp_dept,COUNT(EMP_SAL) N_O_E ,sum(EMP_SAL)total_sal,avg(EMP_SAL) avg_sal,min(EMP_SAL) min_sal,max(EMP_SAL) max_sal,ANNUAL_TOTAL_SALARY = SUM(EMP_SAL) * 12 from emp
where EMP_SAL is not null and EMP_CITY in('pune','mumbai','kota','nagpur') and EMP_NAME like '[rs]%'and
EMP_SAL between 3500 and 7000 group by emp_dept having count(*)>2 and sum(emp_sal)>9000 order by sum(EMP_SAL)desc ,avg(EMP_SAL) asc