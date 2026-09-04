use practice
CREATE TABLE DEPARTMENT_CONSOLIDATED
(
 DEPT_ID INT PRIMARY KEY,
 DEPT_NAME VARCHAR(50) NOT NULL,
 DEPT_LOCATION VARCHAR(50)
);

INSERT INTO DEPARTMENT_CONSOLIDATED VALUES
(10,'IT','PUNE'),
(20,'HR','MUMBAI'),
(30,'FINANCE','NAGPUR'),
(40,'SALES','KOTA'),
(50,'OPERATIONS','HYDERABAD'),
(60,'MARKETING','DELHI');



CREATE TABLE EMPLOYEE_CONSOLIDATED
(
 EMP_ID INT PRIMARY KEY,
 EMP_NAME VARCHAR(60) NOT NULL,
 DEPT_ID INT NULL,
 MANAGER_ID INT NULL,
 EMP_CITY VARCHAR(30),
 EMP_SALARY INT NULL,
 EMP_EMAIL VARCHAR(100) NULL,
 JOIN_DATE DATE
);

INSERT INTO EMPLOYEE_CONSOLIDATED VALUES
(101,'Amit',10,109,'PUNE',5500,'amit@gmail.com','2023-01-15'),
(102,'Riya',20,110,'MUMBAI',4800,'riya@gmail.com','2024-02-10'),
(103,'Rohan',10,109,'PUNE',6500,'rohan@gmail.com','2022-07-21'),
(104,'Sneha',30,111,'NAGPUR',5200,'sneha@gmail.com','2023-11-05'),
(105,'Raj',40,112,'KOTA',7000,'raj@gmail.com','2021-05-12'),
(106,'Seema',20,110,'PUNE',4300,'seema@gmail.com','2024-06-18'),
(107,'Ravi',40,112,'MUMBAI',6200,'ravi@gmail.com','2022-09-01'),
(108,'Pooja',30,111,'NAGPUR',5100,'pooja@gmail.com','2023-03-25'),
(109,'Sachin',10,NULL,'PUNE',8200,'sachin@gmail.com','2020-01-10'),
(110,'Neha',20,NULL,'MUMBAI',7800,'neha@gmail.com','2019-08-16'),
(111,'Kiran',30,NULL,'NAGPUR',7600,'kiran@gmail.com','2020-10-20'),
(112,'Rakesh',40,NULL,'KOTA',8000,'rakesh@gmail.com','2018-04-05'),
(113,'Meena',NULL,109,'DELHI',4700,NULL,'2024-01-08'),
(114,'Sunita',50,112,'HYDERABAD',5400,'sunita@gmail.com','2023-08-11'),
(115,'Rohan Kumar',10,109,'PUNE',5900,'rohank@gmail.com','2022-12-15'),
(116,'Priya',NULL,NULL,'DELHI',NULL,'priya@gmail.com','2025-01-01'),
(117,'Suresh',50,112,'HYDERABAD',4500,'suresh@gmail.com','2024-09-30'),
(118,'Rahul',40,112,'KOTA',6800,NULL,'2021-06-25');

CREATE TABLE SALARY_GRADE_CONSOLIDATED
(
 GRADE_ID INT PRIMARY KEY,
 GRADE_NAME VARCHAR(30),
 MIN_SALARY INT,
 MAX_SALARY INT
);

INSERT INTO SALARY_GRADE_CONSOLIDATED VALUES
(1,'JUNIOR',3000,4499),
(2,'ASSOCIATE',4500,5499),
(3,'SENIOR',5500,6499),
(4,'LEAD',6500,7499),
(5,'MANAGER',7500,9000);

CREATE TABLE PROJECT_CONSOLIDATED
(
 PROJECT_ID INT PRIMARY KEY,
 PROJECT_NAME VARCHAR(80),
 DEPT_ID INT,
 START_DATE DATE,
 END_DATE DATE,
 PROJECT_STATUS VARCHAR(20)
);

INSERT INTO PROJECT_CONSOLIDATED VALUES
(201,'Cloud Migration',10,'2025-01-15','2025-12-31','ACTIVE'),
(202,'HR Automation',20,'2025-03-01','2025-10-31','ACTIVE'),
(203,'Finance Reporting',30,'2024-06-01','2025-03-31','COMPLETED'),
(204,'Sales Dashboard',40,'2025-04-10','2025-11-30','ACTIVE'),
(205,'Operations Optimization',50,'2025-02-01','2025-09-30','ACTIVE'),
(206,'Marketing Campaign',60,'2025-05-01','2025-08-31','PLANNED');

CREATE TABLE EMPLOYEE_2024
(
 EMP_ID INT,
 EMP_NAME VARCHAR(60),
 EMP_CITY VARCHAR(30)
);

CREATE TABLE EMPLOYEE_2025
(
 EMP_ID INT,
 EMP_NAME VARCHAR(60),
 EMP_CITY VARCHAR(30)
);

INSERT INTO EMPLOYEE_2024 VALUES
(101,'Amit','PUNE'),(102,'Riya','MUMBAI'),(103,'Rohan','PUNE'),
(104,'Sneha','NAGPUR'),(105,'Raj','KOTA'),(106,'Seema','PUNE'),
(109,'Sachin','PUNE'),(110,'Neha','MUMBAI');

INSERT INTO EMPLOYEE_2025 VALUES
(101,'Amit','PUNE'),(103,'Rohan','PUNE'),(104,'Sneha','NAGPUR'),
(107,'Ravi','MUMBAI'),(108,'Pooja','NAGPUR'),(109,'Sachin','PUNE'),
(114,'Sunita','HYDERABAD'),(116,'Priya','DELHI');

--Q1. Employee Master Report
--Display EMP_ID, EMP_NAME, EMP_CITY and EMP_SALARY for all employees.
--•	Sort by EMP_ID.
select EMP_ID, EMP_NAME, EMP_CITY , EMP_SALARY from EMPLOYEE_CONSOLIDATED order by emp_id 

--Q2. Distinct Employee Cities
--Management wants all unique employee cities.
--•	Use DISTINCT.
select distinct emp_city from EMPLOYEE_CONSOLIDATED

--Q3. Top Paid Employees
--Display the TOP 5 highest-paid employees.
--•	Exclude NULL salary.
--•	Sort descending.
select top 5 emp_salary ,emp_name from EMPLOYEE_CONSOLIDATED where EMP_SALARY is not null order by EMP_SALARY desc 


--Q4. Salary Range Analysis
--Find employees whose salary is between 5000 and 7000.
--•	Display name, city and salary.
select emp_name,emp_city,emp_salary from EMPLOYEE_CONSOLIDATED where  EMP_SALARY  between 5000 and 7000

--Q5. Multi-City Search
--Find employees working in PUNE, MUMBAI or NAGPUR.
--•	Use IN.
select * from EMPLOYEE_CONSOLIDATED where  EMP_city in('pune','mumbai','nagpur')


--Q6. Email Data Quality
--Find employees whose email address is missing.
--•	Use IS NULL.
select * from EMPLOYEE_CONSOLIDATED where EMP_EMAIL is null

--Q7. Name Pattern Search
--Find employees whose names start with R.
--•	Use LIKE.
select * from EMPLOYEE_CONSOLIDATED where EMP_NAME like 'r%'

--Q8. Combined Business Filter
--Find employees from PUNE whose salary is greater than 5000.
--•	Sort by salary descending.
select * from EMPLOYEE_CONSOLIDATED where emp_city='pune' and emp_salary>5000 order by emp_salary desc

--Q9. Outside Selected Cities
--Find employees not located in PUNE or MUMBAI.
--•	Use NOT IN.
select * from EMPLOYEE_CONSOLIDATED where  EMP_city not in('pune','mumbai')


--Q10. Aggregate Employee Summary
--Display total employees, total salary, average, minimum and maximum salary.
--•	Use aggregate functions.
select total_employees=count(*),sum(EMP_SALARY) sum,avg(EMP_SALARY) avg,
max(EMP_SALARY) max,min(EMP_SALARY) min from EMPLOYEE_CONSOLIDATED


--Q11. Department Employee Count
--Show employee count by DEPT_ID.
--•	Use GROUP BY.
select DEPT_ID,count(*) from EMPLOYEE_CONSOLIDATED group by DEPT_ID  

--Q12. Department Salary Summary
--Calculate total and average salary by department.
--•	Use GROUP BY.
select DEPT_ID,sum(EMP_SALARY) sum, avg(emp_salary) from EMPLOYEE_CONSOLIDATED group by DEPT_ID  


--Q13. High Salary Departments
--Find departments with average salary greater than 6000.
--•	Use HAVING.
select DEPT_ID, avg(emp_salary) from EMPLOYEE_CONSOLIDATED group by DEPT_ID  having avg(EMP_SALARY)>6000


--Q14. Duplicate Business Data Check
--Identify duplicate EMP_NAME and EMP_CITY combinations.
--•	Use GROUP BY, COUNT and HAVING.
select emp_name,emp_city,count(*)  from EMPLOYEE_CONSOLIDATED group by  emp_name,emp_city having COUNT(*)>1

--Q15. Above Company Average
--Find employees earning more than overall average salary.
--•	Use a subquery.
select * from EMPLOYEE_CONSOLIDATED where emp_salary > (select avg(emp_salary)from EMPLOYEE_CONSOLIDATED)

--Q16. Highest Paid Employee
--Find employee(s) earning maximum salary.
--•	Use MAX in a subquery.
select * from EMPLOYEE_CONSOLIDATED where emp_salary = (select max(emp_salary) from EMPLOYEE_CONSOLIDATED)

--Q17. Second Highest Distinct Salary
--Find the second-highest distinct salary.
--•	Do not use Window Functions.
select max(emp_salary) from EMPLOYEE_CONSOLIDATED where emp_salary  < (select max(emp_salary) from EMPLOYEE_CONSOLIDATED)

 select min(emp_salary) from (select distinct  top 2 emp_salary  from EMPLOYEE_CONSOLIDATED  order by emp_salary desc) as second

--Q18. Above Department Average
--Find employees earning more than their department average.
--•	Use correlated subquery.
select * from  EMPLOYEE_CONSOLIDATED e1 where e1.emp_salary > (select avg(emp_salary) from EMPLOYEE_CONSOLIDATED e2 where e1.dept_id=e2.dept_id )


--Q19. Top 3 Above-Average Employees
--Find TOP 3 employees earning above company average.
--•	Use TOP + subquery + ORDER BY.
select  top 3 emp_salary,emp_name from EMPLOYEE_CONSOLIDATED where emp_salary > (select avg(emp_salary) from EMPLOYEE_CONSOLIDATED) order by EMP_SALARY desc


--Q20. Departments With More Than 3 Employees
--Find departments having more than 3 employees.
--•	Use GROUP BY and HAVING.

select DEPT_ID, count(*) total from EMPLOYEE_CONSOLIDATED group by DEPT_ID  having count(*)>3

--Q21. Employee Department Directory
--Show employees with matching department details.
--•	Use INNER JOIN.
select * from EMPLOYEE_CONSOLIDATED e inner join DEPARTMENT_CONSOLIDATED d on e.DEPT_ID=d.DEPT_ID
select * from DEPARTMENT_CONSOLIDATED
select * from EMPLOYEE_CONSOLIDATED

--Q22. Complete Employee Department Report
--Show every employee even without department.
--•	Use LEFT JOIN.
select * from EMPLOYEE_CONSOLIDATED e left join DEPARTMENT_CONSOLIDATED d on e.DEPT_ID=d.DEPT_ID


--Q23. Employees Without Department
--Identify employees without matching department.
--•	Use JOIN and IS NULL.
select * from EMPLOYEE_CONSOLIDATED e left join DEPARTMENT_CONSOLIDATED d on e.DEPT_ID=d.DEPT_ID where d.dept_id is null


--Q24. Departments Without Employees
--Find departments with zero employees.
--•	Use OUTER JOIN and IS NULL.
select * from EMPLOYEE_CONSOLIDATED e right join DEPARTMENT_CONSOLIDATED d on e.DEPT_ID=d.DEPT_ID where e.emp_id is null


--Q25. Full Data Reconciliation
--Show matched and unmatched records from Employee and Department.
--•	Use FULL OUTER JOIN.
select * from EMPLOYEE_CONSOLIDATED e full join DEPARTMENT_CONSOLIDATED d on e.DEPT_ID=d.DEPT_ID 

--Q26. Department Salary Analytics
--Show department name, employee count, total salary and average salary.
--•	Use JOIN + GROUP BY.
select d.dept_name, count_emp=count(*),total_sal=sum(emp_salary),avg_sal=avg(emp_salary)
from EMPLOYEE_CONSOLIDATED e  join DEPARTMENT_CONSOLIDATED d on e.DEPT_ID=d.DEPT_ID group by dept_name

--Q27. High Value Departments
--Find departments with average salary greater than 5500.
--•	Use JOIN + HAVING.
select dept_name,avg(emp_salary) from EMPLOYEE_CONSOLIDATED e  join DEPARTMENT_CONSOLIDATED d on e.DEPT_ID=d.DEPT_ID 
group by dept_name having avg(emp_salary)>5500

--Q28. Employee Manager Directory
--Display each employee with manager name.
--•	Use SELF JOIN.
select e1.EMP_ID,e1.EMP_NAME,e1.MANAGER_ID,e2.EMP_NAME 
from EMPLOYEE_CONSOLIDATED e1,EMPLOYEE_CONSOLIDATED e2 
where e1.MANAGER_ID=e2.EMP_ID

--Q29. Manager Team Size
--Display manager and number of direct reports.
--•	Use SELF JOIN + COUNT + GROUP BY.
select e1.MANAGER_ID,count(*)
from EMPLOYEE_CONSOLIDATED e1,EMPLOYEE_CONSOLIDATED e2 
where e1.MANAGER_ID=e2.EMP_ID group by e1.manager_id

--Q30. Same Manager Colleagues
--Find employee pairs reporting to same manager.
--•	Avoid self-pairs and duplicate pairs.
select distinct e1.MANAGER_ID,count(*)
from EMPLOYEE_CONSOLIDATED e1,EMPLOYEE_CONSOLIDATED e2 
where e1.MANAGER_ID=e2.EMP_ID and e1.EMP_ID!=e2.EMP_ID group by e1.manager_id

--Q31. Three-Table Employee Dashboard
--Display EMP_NAME, DEPT_NAME, EMP_SALARY and GRADE_NAME.
--•	Use equality and salary-range matching.
select EMP_NAME, DEPT_NAME, EMP_SALARY ,GRADE_NAME 
from EMPLOYEE_CONSOLIDATED e  join DEPARTMENT_CONSOLIDATED d on e.DEPT_ID=d.DEPT_ID join
SALARY_GRADE_CONSOLIDATED  s on e.EMP_SALARY between s.MIN_SALARY and s.MAX_SALARY

select * from DEPARTMENT_CONSOLIDATED

--Q32. All Employee Classification
--Show all employees with department and salary-grade details.
--•	Keep employees without department.
--•	Handle NULL salary.
select * from EMPLOYEE_CONSOLIDATED e  left join DEPARTMENT_CONSOLIDATED d on e.DEPT_ID=d.DEPT_ID
left join
SALARY_GRADE s on e.EMP_SALARY between s.MIN_SALARY and s.MAX_SALARY 

--Q33. Department Grade Distribution
--Show DEPT_NAME, GRADE_NAME and TOTAL_EMPLOYEES.
--•	Use all three tables and GROUP BY.
select DEPT_NAME, GRADE_NAME ,TOTAL_EMPLOYEES=count(*) from EMPLOYEE_CONSOLIDATED e 
 join DEPARTMENT_CONSOLIDATED d on e.DEPT_ID=d.DEPT_ID join
SALARY_GRADE s on e.EMP_SALARY between s.MIN_SALARY and s.MAX_SALARY  group by d.DEPT_NAME, s.GRADE_NAME 

--Q34. High Value Workforce
--Find IT, SALES or OPERATIONS employees in SENIOR, LEAD or MANAGER grades.
--•	Use IN and three tables.
select * from EMPLOYEE_CONSOLIDATED e 
 join DEPARTMENT_CONSOLIDATED d on e.DEPT_ID=d.DEPT_ID join
SALARY_GRADE_CONSOLIDATED s on e.EMP_SALARY between s.MIN_SALARY and s.MAX_SALARY 
where DEPT_NAME in('IT', 'SALES', 'OPERATIONS') and s.grade_name in ('SENIOR', 'LEAD', 'MANAGER' )

--Q35. Cross Join Planning Matrix
--Generate every possible Employee × Department combination.
--•	Use CROSS JOIN.
select * from EMPLOYEE_CONSOLIDATED e cross join DEPARTMENT_CONSOLIDATED d 

--Q36. Cross Join Combination Count
--Calculate total Employee × Department combinations.
--•	Use CROSS JOIN and COUNT(*)
select count(*) from EMPLOYEE_CONSOLIDATED e cross join DEPARTMENT_CONSOLIDATED d 


--Q37. Salary Grade Mapping
--Map employees with valid salary to correct grade.
--•	Use NON-EQUI JOIN and BETWEEN.
select * from EMPLOYEE_CONSOLIDATED e join SALARY_GRADE_CONSOLIDATED s
on e.EMP_SALARY between s.MIN_SALARY and s.MAX_SALARY


--Q38. Grade-wise Employee Count
--Find employee count in each salary grade.
--•	Use NON-EQUI JOIN + GROUP BY.
select grade_name,count(*) employee_count from EMPLOYEE_CONSOLIDATED e join SALARY_GRADE_CONSOLIDATED s
on e.EMP_SALARY between s.MIN_SALARY and s.MAX_SALARY group by grade_name

--Q39. Equi Join Validation
--Display employees and departments where DEPT_ID values are equal.
--•	Use equality condition in JOIN.
select * from EMPLOYEE_CONSOLIDATED e , DEPARTMENT_CONSOLIDATED d 
where e.DEPT_ID=d.DEPT_ID


--Q40. Project Department Dashboard
--Display PROJECT_NAME, PROJECT_STATUS, DEPT_NAME, DEPT_LOCATION and START_DATE.
--•	Join Project and Department.
select PROJECT_NAME, PROJECT_STATUS, DEPT_NAME, DEPT_LOCATION , START_DATE from PROJECT_CONSOLIDATED p join 
 DEPARTMENT_CONSOLIDATED d on p.dept_id=d.DEPT_ID

--Q41. UNION – Combined Employee List
--Create one combined employee list from EMPLOYEE_2024 and EMPLOYEE_2025.
 --•	Use UNION.
 select * from EMPLOYEE_2024
 union
 select * from EMPLOYEE_2025

--Q42. UNION ALL – Historical List
--Display all rows from both yearly tables including duplicates.
--•	Use UNION ALL.
 select * from EMPLOYEE_2024
 union all
 select * from EMPLOYEE_2025

--Q43. INTERSECT – Common Employees
--Find employees existing in both yearly tables.
--•	Use INTERSECT.
 select * from EMPLOYEE_2024
intersect
 select * from EMPLOYEE_2025

--Q44. EXCEPT – Missing in 2025
--Find employees in 2024 but not in 2025.
--•	Use EXCEPT.
 select * from EMPLOYEE_2024
 except
 select * from EMPLOYEE_2025

--Q45. SET Operator City Challenge
--Find all unique cities across both yearly tables.
--•	Use UNION.
 select * from EMPLOYEE_2024
 union
 select * from EMPLOYEE_2025



-- CREATE TABLE EMPLOYEE_CONSOLIDATED
--(
-- EMP_ID INT PRIMARY KEY,
-- EMP_NAME VARCHAR(60) NOT NULL,
-- DEPT_ID INT NULL,
-- MANAGER_ID INT NULL,
-- EMP_CITY VARCHAR(30),
-- EMP_SALARY INT NULL,
-- EMP_EMAIL VARCHAR(100) NULL,
-- JOIN_DATE DATE
--);

--Q46. Current Date and Time Report
--Display GETDATE(), SYSDATETIME() and CURRENT_TIMESTAMP.
--•	Use meaningful aliases.
select GETDATE() today_date,SYSDATETIME() curr_time,CURRENT_TIMESTAMP 
--Q47. Employee Joining Date Parts
--Display employee name, JOIN_DATE, joining year, month number, day number and month name.
--•	Use YEAR, MONTH, DAY and DATENAME.
select emp_name, JOIN_DATE , [joining year]= year(join_date),
[month number]= month(join_date), [day number]=day(join_date),
[month name]=datename(month,join_date)
from employee_CONSOLIDATED

--CREATE TABLE PROJECT_CONSOLIDATED
--(
-- PROJECT_ID INT PRIMARY KEY,
-- PROJECT_NAME VARCHAR(80),
-- DEPT_ID INT,
-- START_DATE DATE,
-- END_DATE DATE,
-- PROJECT_STATUS VARCHAR(20)
--);

--Q48. Project Date Part Analysis
--Display project, start date, year, month name, weekday name and quarter.
--•	Use YEAR, DATENAME and DATEPART.
select  start_date, year=year(start_date), month=month(start_date), day=day(start_date),
datepart(Quarter,start_date) as quart from project_CONSOLIDATED

--Q49. Employee Service Duration
--Calculate number of days each employee has worked from JOIN_DATE until today.
--•	Use DATEDIFF.
select datediff(day,join_date,getdate())  from EMPLOYEE_CONSOLIDATED

--Q50. Project Timeline Challenge
--For each project show duration in days, month-end of START_DATE and date 30 days after START_DATE.
--•	Use DATEDIFF, EOMONTH and DATEADD.
select start_date,datediff(day,START_DATE,getdate()),eomonth(START_DATE) [month-end] , DATEADD(day,30,start_date)
 from project_CONSOLIDATED




