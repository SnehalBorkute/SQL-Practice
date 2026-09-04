--use practice

--PART A – 10 INTERVIEW / THEORY QUESTIONS
--Q1. What is a SQL JOIN?
--Explain why relational databases store information in multiple tables and how JOINs combine related business data.
=> join is cartesian product + condition
databases store information in multiple tables for remove duplicate and increase redability
by uding join and condition combine related business data 

--Q2. INNER JOIN vs OUTER JOIN
--Explain the difference between INNER JOIN and OUTER JOIN. Give one real-time business use case for each.
--Q3. LEFT JOIN vs RIGHT JOIN
--Explain how LEFT JOIN and RIGHT JOIN work. Can the same result sometimes be achieved by changing table order?
--Q4. FULL OUTER JOIN
--Explain how FULL OUTER JOIN is useful for data reconciliation and data quality validation.
--Q5. SELF JOIN
--What is a SELF JOIN? Explain a real-time employee-manager hierarchy scenario.
--Q6. CROSS JOIN
--What is a CROSS JOIN? Explain Cartesian product and mention one practical business use case.
--Q7. EQUI JOIN
--What is an EQUI JOIN? Explain why Primary Key–Foreign Key relationships commonly use equality conditions.
--Q8. NON-EQUI JOIN
--What is a NON-EQUI JOIN? Explain a salary-range or grading example using BETWEEN or comparison operators.
--Q9. JOIN Condition vs WHERE Condition
--Explain the difference between filtering in JOIN ON and filtering in WHERE, especially when using OUTER JOINs.
--Q10. Three-Table JOIN Design
--Explain how Employee, Department and Salary Grade information can be combined in a real-time organization report.
 




CREATE TABLE EMPLOYEE_JOIN_ADV
(
 EMP_ID INT PRIMARY KEY,
 EMP_NAME VARCHAR(50) NOT NULL,
 DEPT_ID INT NULL,
 MANAGER_ID INT NULL,
 EMP_CITY VARCHAR(30),
 EMP_SALARY INT,
 EMP_EMAIL VARCHAR(100)
);

CREATE TABLE DEPARTMENT_JOIN_ADV
(
 DEPT_ID INT PRIMARY KEY,
 DEPT_NAME VARCHAR(50) NOT NULL,
 DEPT_LOCATION VARCHAR(30)
);
CREATE TABLE SALARY_GRADE
(
 GRADE_ID INT PRIMARY KEY,
 GRADE_NAME VARCHAR(20) NOT NULL,
 MIN_SALARY INT,
 MAX_SALARY INT
);

INSERT INTO DEPARTMENT_JOIN_ADV VALUES
(10,'IT','PUNE'),
(20,'HR','MUMBAI'),
(30,'FINANCE','NAGPUR'),
(40,'SALES','KOTA'),
(50,'OPERATIONS','HYDERABAD'),
(60,'MARKETING','DELHI');

INSERT INTO SALARY_GRADE VALUES
(1,'JUNIOR',3000,4499),
(2,'ASSOCIATE',4500,5499),
(3,'SENIOR',5500,6499),
(4,'LEAD',6500,7499),
(5,'MANAGER',7500,9000);

INSERT INTO EMPLOYEE_JOIN_ADV VALUES
(101,'Amit',10,109,'PUNE',5500,'amit@gmail.com'),
(102,'Riya',20,110,'MUMBAI',4800,'riya@gmail.com'),
(103,'Rohan',10,109,'PUNE',6500,'rohan@gmail.com'),
(104,'Sneha',30,111,'NAGPUR',5200,'sneha@gmail.com'),
(105,'Raj',40,112,'KOTA',7000,'raj@gmail.com'),
(106,'Seema',20,110,'PUNE',4300,'seema@gmail.com'),
(107,'Ravi',40,112,'MUMBAI',6200,'ravi@gmail.com'),
(108,'Pooja',30,111,'NAGPUR',5100,'pooja@gmail.com'),
(109,'Sachin',10,NULL,'PUNE',8200,'sachin@gmail.com'),
(110,'Neha',20,NULL,'MUMBAI',7800,'neha@gmail.com'),
(111,'Kiran',30,NULL,'NAGPUR',7600,'kiran@gmail.com'),
(112,'Rakesh',40,NULL,'KOTA',8000,'rakesh@gmail.com'),
(113,'Meena',NULL,109,'DELHI',4700,NULL),
(114,'Sunita',50,112,'HYDERABAD',5400,'sunita@gmail.com'),
(115,'Rohan Kumar',10,109,'PUNE',5900,'rohank@gmail.com'),
(116,'Priya',NULL,NULL,'DELHI',NULL,'priya@gmail.com'),
(117,'Suresh',50,112,'HYDERABAD',4500,'suresh@gmail.com'),
(118,'Rahul',40,112,'KOTA',6800,NULL);

SELECT * FROM EMPLOYEE_JOIN_ADV;
SELECT * FROM DEPARTMENT_JOIN_ADV;
SELECT * FROM SALARY_GRADE;


--PART C – 30 BUSINESS SCENARIO SQL QUESTIONS
--Q11. Employee Department Directory
--HR needs only employees who have a matching department.
--•	Use a two-table join.
--•	Display EMP_ID, EMP_NAME, DEPT_NAME and DEPT_LOCATION.
--•	Sort by department and employee name.
select e.EMP_ID, e.EMP_NAME, d.DEPT_NAME,d.DEPT_LOCATION from EMPLOYEE_JOIN_ADV E inner join DEPARTMENT_JOIN_ADV D on e.dept_id=d.DEPT_ID
order by d.dept_name , e.emp_name
--Q12. Complete Employee Department Report
--Management wants every employee displayed, even if a department is not assigned.
--•	Display EMP_ID, EMP_NAME, EMP_CITY and DEPT_NAME.
--•	Choose the correct OUTER JOIN.
--•	Sort by EMP_ID.
select e.EMP_ID, e.EMP_NAME, e.emp_city,d.DEPT_name from EMPLOYEE_JOIN_ADV E left join DEPARTMENT_JOIN_ADV D on e.dept_id=d.DEPT_ID
order by  e.emp_id

--Q13. Employees Without Department Assignment
--HR wants employees who do not currently have a matching department.
--•	Use an OUTER JOIN and IS NULL.
--•	Display EMP_ID, EMP_NAME and EMP_CITY.
select e.EMP_ID, e.EMP_NAME,e.emp_city from EMPLOYEE_JOIN_ADV E left join DEPARTMENT_JOIN_ADV D 
on e.dept_id=d.DEPT_ID where d.dept_name is null
order by d.dept_name , e.emp_name 

--Q14. Department Master Coverage
--Every department must appear even when no employees are assigned.
--•	Display DEPT_ID, DEPT_NAME, EMP_ID and EMP_NAME.
--•	Ensure MARKETING appears.
select e.EMP_ID,d.DEPT_NAME, e.EMP_ID , e.EMP_NAME from EMPLOYEE_JOIN_ADV E left join DEPARTMENT_JOIN_ADV D 
on e.dept_id=d.DEPT_ID


--Q15. Department Staffing Gap
--Find departments that currently have zero employees.
--•	Use an OUTER JOIN and IS NULL.
--•	Display department details.
select d.dept_id,d.dept_name,d.dept_location from EMPLOYEE_JOIN_ADV E right join DEPARTMENT_JOIN_ADV D 
on e.dept_id=d.DEPT_ID where e.emp_name is null

--Q16. FULL OUTER JOIN Reconciliation
--Show matched records plus employees without departments and departments without employees.
--•	Use FULL OUTER JOIN.
--•	Display employee and department identifiers/names.
select d.dept_id,d.dept_name,e.emp_id,e.emp_name from EMPLOYEE_JOIN_ADV E full join DEPARTMENT_JOIN_ADV D 
on e.dept_id=d.DEPT_ID 

--Q17. Unmatched Relationship Report
--Identify only records existing on one side of Employee–Department relationship.
--•	Use FULL OUTER JOIN.
--•	Return only unmatched records.
select d.dept_id,d.dept_name,e.emp_id,e.emp_name from EMPLOYEE_JOIN_ADV E full join DEPARTMENT_JOIN_ADV D 
on e.dept_id=d.DEPT_ID where d.dept_id is  null or  e.dept_id is null

--Q18. High Salary Employee Department Report
--Compensation needs employees earning more than 5500 with department details.
--•	Use WHERE EMP_SALARY > 5500.
--•	Sort by salary descending.
select e.EMP_ID, e.emp_salary,e.EMP_NAME, d.DEPT_NAME,d.DEPT_LOCATION from EMPLOYEE_JOIN_ADV E inner join DEPARTMENT_JOIN_ADV D on e.dept_id=d.DEPT_ID
where e.emp_salary>5500 order by e.emp_salary desc;

--Q19. Top 5 Employees with Department
--Management wants TOP 5 highest-paid employees with department details.
--•	Use TOP 5.
--•	Sort by EMP_SALARY DESC.
select top 5 e.emp_salary,e.EMP_ID, e.EMP_NAME, d.DEPT_NAME,d.DEPT_LOCATION from EMPLOYEE_JOIN_ADV E 
inner join DEPARTMENT_JOIN_ADV D on e.dept_id=d.DEPT_ID
order by EMP_SALARY DESC

--Q20. Department Salary Analytics
--Finance wants employee count, total salary and average salary for each department.
--•	Use JOIN, COUNT, SUM, AVG and GROUP BY
--select d.dept_id from EMPLOYEE_JOIN_ADV E inner join DEPARTMENT_JOIN_ADV D on e.dept_id=d.DEPT_ID group by dept_name
select  d.dept_name,count=count(*), total_salary=sum(emp_salary), average_salary =avg(emp_salary) from EMPLOYEE_JOIN_ADV E 
inner join DEPARTMENT_JOIN_ADV D on e.dept_id=d.DEPT_ID group by dept_name


--Q21. Three-Table Employee Dashboard
--Combine Employee, Department and Salary Grade information.
--•	Display EMP_NAME, DEPT_NAME, EMP_SALARY and GRADE_NAME.
--•	Use equality relationship plus salary-range matching.
select * from EMPLOYEE_JOIN_ADV E 
 join DEPARTMENT_JOIN_ADV D on e.dept_id=d.DEPT_ID
 join SALARY_GRADE s on e.EMP_SALARY between s.min_salary and s.max_salary


--Q22. Three-Table Workforce Classification
--Show all employees with department details and salary grade.
--•	Include employees without departments.
--•	Handle NULL salary appropriately.
select *from EMPLOYEE_JOIN_ADV E left join department_JOIN_ADV  d on e.dept_ID=d.DEPT_ID left join SALARY_GRADE s 
on e.EMP_SALARY between s.min_salary and s.MAX_SALARY 

--Q23. Department and Salary Grade Analysis
--Show employee distribution across departments and salary grades.
--•	Use all three tables.
--•	Display DEPT_NAME, GRADE_NAME and TOTAL_EMPLOYEES.
--•	Use GROUP BY.
select d.dept_name,s.grade_name, total_emp=count(*) from EMPLOYEE_JOIN_ADV e join DEPARTMENT_JOIN_ADV d on 
e.DEPT_ID=d.dept_id join SALARY_GRADE s on  e.EMP_SALARY between s.Min_SALARY and s.Max_SALARY group by d.dept_name,s.grade_name

--Q24. High Value Three-Table Report
--Find employees in IT, SALES or OPERATIONS who belong to SENIOR, LEAD or MANAGER grades.
--•	Use all three tables.
--•	Use IN.
--•	Display employee, department, salary and grade.
select e.emp_id,e.EMP_NAME,d.dept_name,s.grade_name, e.emp_salary  from EMPLOYEE_JOIN_ADV e join DEPARTMENT_JOIN_ADV d on 
e.DEPT_ID=d.dept_id left join SALARY_GRADE s on  e.EMP_SALARY between s.Min_SALARY and s.MIN_SALARY
where s.GRADE_NAME in ('SENIOR', 'LEAD' , 'MANAGER') and d.DEPT_NAME in('IT', 'SALES',' OPERATIONS' ) 

--Q25. Top Paid Employees with Grade
--Return TOP 5 highest-paid employees with department and grade.
--•	Use all three tables.
--•	Exclude NULL salary from grade matching.
--•	Sort descending.

select top 5 e.emp_salary,d.dept_name,s.grade_name  from EMPLOYEE_JOIN_ADV e join DEPARTMENT_JOIN_ADV d on 
e.DEPT_ID=d.dept_id join SALARY_GRADE s on e.emp_salary between s.min_salary and s.max_salary where e.emp_salary is not null order by e.EMP_SALARY desc;

--Q26. SELF JOIN – Employee Manager Directory
--Create an employee-manager hierarchy report.
--•	Use EMPLOYEE table twice.
--•	Display EMPLOYEE_NAME and MANAGER_NAME.
select * from EMPLOYEE_JOIN_ADV 
select e1.EMP_ID,e1.emp_name,e1.MANAGER_ID,e2.EMP_NAME as manager_name from EMPLOYEE_JOIN_ADV e1 , EMPLOYEE_JOIN_ADV e2 where e1.MANAGER_ID=e2.EMP_ID


--Q27. SELF JOIN – Employees Reporting to Sachin
--Find employees directly reporting to Sachin.
--•	Use SELF JOIN.
--•	Display employee and manager names.
select e1.EMP_ID,e1.emp_name,e1.MANAGER_ID,e2.EMP_NAME as manager_name 
from EMPLOYEE_JOIN_ADV e1 , EMPLOYEE_JOIN_ADV e2 
where e1.MANAGER_ID=e2.EMP_ID and e1.manager_id=109

--Q28. SELF JOIN – Employees Without Manager
--Find employees who do not report to a manager.
--•	Display EMP_ID and EMP_NAME.
--•	Use NULL logic appropriately.
select e1.EMP_ID,e1.emp_name ,e1.MANAGER_ID 
from EMPLOYEE_JOIN_ADV e1 left join EMPLOYEE_JOIN_ADV e2 
on e1.MANAGER_ID=e2.EMP_ID where  e1.MANAGER_ID is null


--Q29. SELF JOIN – Manager Team Size
--Find each manager and the number of direct reports.
--•	Use SELF JOIN.
--•	Use COUNT and GROUP BY.
select e2.EMP_NAME as manager_name,count(e1.emp_name) as n_of_report
from EMPLOYEE_JOIN_ADV e1 , EMPLOYEE_JOIN_ADV e2 
where e1.MANAGER_ID=e2.EMP_ID group by e2.EMP_NAME

--Q30. SELF JOIN – Same Manager Colleagues
--Find pairs of employees reporting to the same manager.
--•	Avoid pairing an employee with themselves.
--•	Avoid duplicate pairs.
select e2.EMP_NAME as manager_name,count(e1.emp_name) as n_of_report
from EMPLOYEE_JOIN_ADV e1 , EMPLOYEE_JOIN_ADV e2 
where e1.MANAGER_ID=e2.EMP_ID group by e2.EMP_NAME

--Q31. CROSS JOIN – Employee Department Planning
--Generate every possible Employee × Department combination.
--•	Use CROSS JOIN.
--•	Display EMP_NAME and DEPT_NAME.
--•	Explain Cartesian product.
shjsh
select DEPT_NAME,emp_name from EMPLOYEE_JOIN_ADV cross join DEPARTMENT_JOIN_ADV

--Q32. CROSS JOIN – Location Simulation
--Generate every employee and department-location combination.
--•	Use CROSS JOIN.
--•	Display EMP_NAME and DEPT_LOCATION.
select emp_name , dept_location from EMPLOYEE_JOIN_ADV e cross join  DEPARTMENT_JOIN_ADV d 

--Q33. CROSS JOIN – Count Combinations
--Calculate total Employee × Department combinations.
--•	Use CROSS JOIN and COUNT(*).
select count(*) from EMPLOYEE_JOIN_ADV e cross join  DEPARTMENT_JOIN_ADV d 


--Q34. EQUI JOIN – Standard Relationship
--Match employees to departments using equal DEPT_ID values.
--•	Display EMP_NAME, DEPT_ID and DEPT_NAME.
select e.emp_name,d.dept_name,d.dept_id from EMPLOYEE_JOIN_ADV e ,  DEPARTMENT_JOIN_ADV d

--Q35. EQUI JOIN – Department Employee Count
--Calculate employee count by department using equality relationship.
--•	Use GROUP BY.
select d.dept_name,count(*) from EMPLOYEE_JOIN_ADV e ,  DEPARTMENT_JOIN_ADV d group by d.dept_name


--Q36. EQUI JOIN – HR and IT Employees
--Display HR or IT employees with department location.
--•	Use equality relationship and IN.
select emp_name,dept_name,d.dept_location from EMPLOYEE_JOIN_ADV e ,  DEPARTMENT_JOIN_ADV d where  DEPT_NAME in('hr','it')


--Q37. NON-EQUI JOIN – Salary Grade Mapping
--Map each employee with valid salary to the correct grade.
--•	Use EMP_SALARY BETWEEN MIN_SALARY AND MAX_SALARY.
--•	Display employee, salary and grade.
select emp_name,EMP_SALARY,grade_name from EMPLOYEE_JOIN_ADV e , SALARY_GRADE s where  EMP_SALARY BETWEEN MIN_SALARY AND MAX_SALARY


--Q38. NON-EQUI JOIN – Grade Distribution
--Find employee count in each salary grade.
--•	Use salary range matching.
--•	Use COUNT and GROUP BY.
select grade_name , count(*) from EMPLOYEE_JOIN_ADV e , SALARY_GRADE s where  EMP_SALARY BETWEEN MIN_SALARY AND MAX_SALARY group by GRADE_NAME


--Q39. NON-EQUI JOIN – High Salary Grades
--Find employees in LEAD or MANAGER grade.
--•	Use salary range matching and IN.
--•	Sort salary descending.
select emp_name ,grade_name ,emp_salary from EMPLOYEE_JOIN_ADV e , SALARY_GRADE s 
where  EMP_SALARY BETWEEN MIN_SALARY and  MAX_SALARY and grade_name in('lead','manager')  order by emp_salary desc;

--Q40. FINAL – Organization Analytics Dashboard
--Create a management-ready report combining hierarchy, department and compensation classification.
--•	Display EMP_NAME, MANAGER_NAME, DEPT_NAME, EMP_SALARY and GRADE_NAME.
--•	Use SELF JOIN for manager.
--•	Use OUTER JOIN for department where appropriate.
--•	Use NON-EQUI JOIN for salary grade.
--•	Filter salary >= 4500 OR NULL salary.
--•	Sort by department and salary DESC.
--•	Write one line explaining the JOIN strategy.
select* from EMPLOYEE_JOIN_ADV 

select e1.EMP_NAME, e2.EMP_NAME manager, d.DEPT_NAME, e1.EMP_SALARY,s.grade_name 
from EMPLOYEE_JOIN_ADV e1  join EMPLOYEE_JOIN_ADV e2 
on  e1.manager_ID=e2.emp_ID  left join DEPARTMENT_JOIN_ADV d  
on e1.DEPT_ID=d.DEPT_ID  left join SALARY_GRADE s
on e1.emp_salary between s.min_salary and s.max_salary 
where  e1.EMP_SALARY >=4500 or e1.EMP_SALARY is null 
order by d.DEPT_NAME,EMP_SALARY desc