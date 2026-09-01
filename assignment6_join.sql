PART A – 5 THEORETICAL INTERVIEW QUESTIONS
Q1. What is a SQL JOIN?
Explain why JOINs are used in relational databases and why data is commonly stored across multiple related tables.
=> join is a cross product + condition 
it is use in in relational databases to join the two or more tables
data is commonly stored across multiple related tables to keep data organized  


Q2. INNER JOIN vs LEFT JOIN
Explain the difference between INNER JOIN and LEFT JOIN with respect to matched and unmatched records.
=>INNER JOIN = inner join only extract the match record
 LEFT JOIN = extract all data from left table and  take match record and if not matched  then store null

Q3. LEFT JOIN vs RIGHT JOIN
 Explain the difference between LEFT JOIN and RIGHT JOIN. Can changing table order produce the same business result?
=> LEFT JOIN = extract all left side table data and if there is not match found in right side table store null
RIGHT JOIN = extract all righ side table data and if there is not match found in left table  store null

by changing table order produce the different business result


Q4. FULL OUTER JOIN
Explain what a FULL OUTER JOIN returns for matched records, left-only records and right-only records.
=> FULL OUTER JOIN = full outer join takes  record from both tables 
for matching record store that dont store duplicate record
if match not found then store null

Q5. NULL Values After JOIN
Why do NULL values appear after LEFT, RIGHT and FULL OUTER JOIN? How can IS NULL identify unmatched records?
=> NULL values appear after LEFT, RIGHT and FULL OUTER JOIN when match is not found
IS NULL identify unmatched records beacuse if there is not matching any value then is store null value
 



use practice
CREATE TABLE EMPLOYEE_JOIN
(
 EMP_ID INT PRIMARY KEY,
 EMP_NAME VARCHAR(50) NOT NULL,
 DEPT_ID INT NULL,
 EMP_CITY VARCHAR(30),
 EMP_SALARY INT
);

CREATE TABLE DEPARTMENT_JOIN
(
 DEPT_ID INT PRIMARY KEY,
 DEPT_NAME VARCHAR(50) NOT NULL,
 DEPT_LOCATION VARCHAR(30)
);
INSERT INTO DEPARTMENT_JOIN VALUES
(10,'IT','PUNE'),
(20,'HR','MUMBAI'),
(30,'FINANCE','NAGPUR'),
(40,'SALES','KOTA'),
(50,'OPERATIONS','HYDERABAD'),
(60,'MARKETING','DELHI');
dep

INSERT INTO EMPLOYEE_JOIN VALUES
(101,'Amit',10,'PUNE',5500),
(102,'Riya',20,'MUMBAI',4800),
(103,'Rohan',10,'PUNE',6500),
(104,'Sneha',30,'NAGPUR',5200),
(105,'Raj',40,'KOTA',7000),
(106,'Seema',20,'PUNE',4300),
(107,'Ravi',40,'MUMBAI',6200),
(108,'Pooja',30,'NAGPUR',5100),
(109,'Sachin',10,'PUNE',5900),
(110,'Neha',NULL,'DELHI',4500),
(111,'Kiran',50,'HYDERABAD',5400),
(112,'Meena',NULL,'KOTA',4700),
(113,'Rakesh',40,'KOTA',6800),
(114,'Sunita',20,'MUMBAI',4600);

SELECT * FROM EMPLOYEE_JOIN;
SELECT * FROM DEPARTMENT_JOIN;

--PART C – 15 BUSINESS SCENARIO SQL QUESTIONS
--Q6. Employee Department Directory
--HR needs only employees assigned to a valid department.
--•	Display EMP_ID, EMP_NAME, DEPT_NAME and DEPT_LOCATION.
--•	Use the JOIN that returns only matching records.
--•	Sort by department and employee name.
select ej.EMP_ID, ej.EMP_NAME, dj.DEPT_NAME , dj.DEPT_LOCATION from EMPLOYEE_JOIN ej join DEPARTMENT_JOIN dj on ej.dept_id = dj.dept_id 
order by dj.DEPT_NAME , ej.EMP_NAME

--Q7. Employee Profile Report
--Management needs employee name, city, salary and department details only for employees having a valid department.
--•	Display EMP_NAME, EMP_CITY, EMP_SALARY and DEPT_NAME.
--•	Sort by salary descending.

select EMP_NAME, EMP_CITY, EMP_SALARY, DEPT_NAME from EMPLOYEE_JOIN ej right join DEPARTMENT_JOIN dj on ej.dept_id = dj.dept_id 
order by EMP_SALARY desc;

--Q8. Department-wise Employee Count
--HR wants employee count for every department, including departments with zero employees.
--•	Display DEPT_NAME and TOTAL_EMPLOYEES.
--•	Use the appropriate OUTER JOIN.
--•	Use GROUP BY and ORDER BY.
select dj.DEPT_NAME, count(*) TOTAL_EMPLOYEES from EMPLOYEE_JOIN ej  join DEPARTMENT_JOIN dj on ej.dept_id = dj.dept_id
group by dj.DEPT_NAME order by TOTAL_EMPLOYEES


--Q9. Complete Employee Report
--Every employee must appear even if a department is not assigned.
--•	Display EMP_ID, EMP_NAME, DEPT_ID and DEPT_NAME.
--•	Choose the JOIN based on this requirement.
--•	Sort by EMP_ID.
select ej.EMP_ID, ej.EMP_NAME, dj.DEPT_ID ,dj.DEPT_NAME from EMPLOYEE_JOIN ej left join DEPARTMENT_JOIN dj on ej.dept_id = dj.dept_id 
order by EMP_ID;
select count(*) from EMPLOYEE_JOIN

--Q10. Employees Without Department
--Identify employees who are not assigned to any department.
--•	Use an OUTER JOIN and IS NULL.
--•	Display EMP_ID, EMP_NAME and EMP_CITY.
select ej.EMP_ID, ej.EMP_NAME, ej.emp_city from EMPLOYEE_JOIN ej left join DEPARTMENT_JOIN dj on ej.dept_id = dj.dept_id 
where DEPT_name is null


--Q11. Department Master Report
--Display every department with employee information where available.
--•	Ensure MARKETING appears even though it has no employees.
--•	Display DEPT_NAME, DEPT_LOCATION and EMP_NAME.
select dj.DEPT_NAME, dj.DEPT_LOCATION ,ej.EMP_NAME from EMPLOYEE_JOIN ej right join DEPARTMENT_JOIN dj on ej.dept_id = dj.dept_id 


--Q12. Department Staffing Gap
--Find departments that currently have no employees.
--•	Use an OUTER JOIN and IS NULL.
--•	Display DEPT_ID, DEPT_NAME and DEPT_LOCATION.
select dj.DEPT_NAME, dj.DEPT_LOCATION ,ej.EMP_NAME from EMPLOYEE_JOIN ej right join DEPARTMENT_JOIN dj on ej.dept_id = dj.dept_id 
where emp_id is null

--Q13. RIGHT JOIN Practice
--The DEPARTMENT table is treated as the master list and every department must be displayed.
--•	Use RIGHT JOIN.
--•	Place EMPLOYEE_JOIN on the left side.
--•	Display DEPT_NAME, DEPT_LOCATION, EMP_ID and EMP_NAME.
select dj.DEPT_NAME, dj.DEPT_LOCATION ,ej.emp_id,ej.EMP_NAME from EMPLOYEE_JOIN ej right join DEPARTMENT_JOIN dj on ej.dept_id = dj.dept_id 


--Q14. Complete Organization Mapping
--Data governance needs matched records plus employees without departments and departments without employees.
--•	Use FULL OUTER JOIN.
--•	Display employee and department details.
--•	Do not remove NULL records.
select dj.DEPT_NAME, dj.DEPT_LOCATION ,ej.emp_id,ej.EMP_NAME from EMPLOYEE_JOIN ej full outer join DEPARTMENT_JOIN dj on ej.dept_id = dj.dept_id 
select * from EMPLOYEE_JOIN ej full outer join DEPARTMENT_JOIN dj on ej.dept_id = dj.dept_id 


--Q15. Join Reconciliation
--Identify records existing only on one side of the employee-department relationship.
--•	Use FULL OUTER JOIN.
--•	Return only unmatched records using appropriate IS NULL conditions.

select dj.DEPT_NAME, dj.DEPT_LOCATION ,ej.emp_id,ej.EMP_NAME from EMPLOYEE_JOIN ej full outer join DEPARTMENT_JOIN dj on ej.dept_id = dj.dept_id 
where ej.dept_id is null or dj.dept_id is null


--Q16. High Salary Employees
--Compensation team needs employees earning more than 5500 with department details.
--•	Display EMP_NAME, EMP_SALARY and DEPT_NAME.
--•	Use WHERE EMP_SALARY > 5500.
--•	Sort by salary descending.
select dj.DEPT_NAME ,ej.EMP_SALARY,ej.EMP_NAME from EMPLOYEE_JOIN ej join DEPARTMENT_JOIN dj on ej.dept_id = dj.dept_id 
where ej.EMP_SALARY>5500 order by EMP_SALARY desc;


--Q17. Top 5 Paid Employees
--Management wants the TOP 5 highest-paid employees with department and location.
--•	Use TOP 5.
--•	Display employee, salary, department and department location.
--•	Sort by EMP_SALARY DESC.
select top 5 ej.EMP_SALARY,ej.EMP_NAME,dj.DEPT_NAME,dj.DEPT_LOCATION from EMPLOYEE_JOIN ej
join DEPARTMENT_JOIN dj on ej.dept_id = dj.dept_id 
order by EMP_SALARY desc;

--Q18. Department Salary Analytics
--Finance needs department-wise employee count, total salary and average salary.
--•	Display DEPT_NAME, TOTAL_EMPLOYEES, TOTAL_SALARY and AVG_SALARY.
--•	Use aggregate functions and GROUP BY.
--•	Sort by total salary descending.
select dj.DEPT_NAME , TOTAL_EMPLOYEES=count(*), TOTAL_SALARY=sum(emp_salary) , AVG_SALARY=avg(EMP_SALARY) from EMPLOYEE_JOIN ej
join DEPARTMENT_JOIN dj on ej.dept_id = dj.dept_id group by dj.DEPT_NAME
order by total_salary desc;

--Q19. High Value Departments
--Find departments where average employee salary is greater than 5500.
--•	Use JOIN, GROUP BY and HAVING.
--•	Display DEPT_NAME and AVG_SALARY.
--•	Sort by average salary descending.
select dj.DEPT_NAME ,  AVG_SALARY=avg(EMP_SALARY) from EMPLOYEE_JOIN ej
join DEPARTMENT_JOIN dj on ej.dept_id = dj.dept_id group by dj.DEPT_NAME
having avg(emp_salary) >5500
order by AVG_SALARY desc;


--Q20. FINAL – Workforce Coverage Dashboard
--Create a management-ready department workforce report.
--•	Include every department, including zero-employee departments.
--•	Display DEPT_NAME, TOTAL_EMPLOYEES, TOTAL_SALARY and AVG_SALARY.
--•	For employees, consider salary between 4500 and 7000.
--•	Show departments with at least 2 qualifying employees OR zero employees.
--•	Use JOIN, careful filtering, GROUP BY, HAVING and ORDER BY.
--•	Write one line explaining why your JOIN is appropriate.


 SELECT 
    dj.DEPT_NAME,
    COUNT(ej.EMP_ID) AS TOTAL_EMPLOYEES,
    SUM(ej.EMP_SALARY) AS TOTAL_SALARY,
    AVG(ej.EMP_SALARY) AS AVG_SALARY
FROM EMPLOYEE_JOIN ej
RIGHT JOIN DEPARTMENT_JOIN dj
    ON ej.DEPT_ID = dj.DEPT_ID
    AND ej.EMP_SALARY BETWEEN 4500 AND 7000
GROUP BY dj.DEPT_NAME
HAVING COUNT(ej.EMP_ID) >= 2
    OR COUNT(ej.EMP_ID) = 0
ORDER BY TOTAL_SALARY DESC;


i apply right join beacause there is the condition including zero-employee departments

