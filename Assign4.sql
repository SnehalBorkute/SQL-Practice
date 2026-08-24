use practice;
CREATE TABLE EMPLOYEE3
(
 EMP_ID INT, EMP_NAME VARCHAR(50), EMP_DEPT VARCHAR(30),
 EMP_CITY VARCHAR(30), EMP_SAL INT, EMP_DOJ DATE, EMP_EMAIL VARCHAR(100)
);
SELECT * FROM EMPLOYEE3;


--Q1. DISTINCT – Unique Locations
--Display all distinct cities where employees are located.
--•	Use DISTINCT EMP_CITY.
--•	Sort alphabetically.
select distinct emp_city from employee3 

--Q2. DISTINCT – Department/City Footprint
--Display unique EMP_DEPT and EMP_CITY combinations.
--•	Use DISTINCT.
--•	Sort by department, then city.
select distinct EMP_DEPT,emp_city from employee3 order by EMP_DEPT,emp_city

--Q3. TOP – Compensation Review
--Management wants the TOP 5 highest-paid employees.
--•	Display ID, name, department and salary.
--•	Exclude NULL salary.
--•	Use TOP 5 and ORDER BY salary DESC.
select top 5 emp_id,emp_name,emp_dept,emp_sal from  employee3 where emp_sal is not null
 order by emp_sal desc;

--Q4. TOP + DISTINCT – Salary Bands
--Return the TOP 5 highest distinct salary values.
--•	Use TOP and DISTINCT.
--•	Return only the salary value.
--•	Sort highest to lowest.
select distinct top 5  Emp_sal from EMPLOYEE3 order by emp_sal desc

--Q5. Department Benchmark
--Create department-level employee count, total salary and average salary.
--•	Use COUNT, SUM, AVG and GROUP BY.
--•	Sort by average salary descending.
select emp_dept,count(*) emp_count,total_salary=sum(emp_sal),average_sal=avg(emp_sal) from EMPLOYEE3 group by EMP_DEPT order by average_sal desc; 

--Q6. Subquery – Above Company Average
--Find employees earning more than the overall average salary.
--•	Use a scalar subquery for AVG(EMP_SAL).
--•	Exclude NULL salary.
--•	Sort salary descending.
select * from EMPLOYEE3 where emp_sal>(select avg(emp_sal)from EMPLOYEE3)

--Q7. Subquery – Maximum Salary
--Find every employee earning the maximum salary.
--•	Use MAX() in a subquery.
--•	Do not assume only one employee can tie.
--•	Sort by name.
select * from employee3 where emp_sal = (select max(emp_sal) from EMPLOYEE3)

--Q8. Subquery + GROUP BY/HAVING – Strong Departments
--Find departments whose average salary is greater than the overall company average.
--•	Use GROUP BY and AVG.
--•	Compare department AVG with a subquery.
--•	Use HAVING.
--•	Sort average salary descending.
select emp_dept,avg(emp_sal) average_sal from EMPLOYEE3  group by emp_dept
having avg(emp_sal)>(select avg(emp_sal) overallsal from employee3 ) order by avg(emp_sal) desc;
--Q9. Correlated Subquery – Above Department Average
--Find employees whose salary is greater than the average salary of their own department.
--•	Use a correlated subquery.
--•	Exclude NULL salaries.
--•	Sort by department and salary descending.
--NOT COMPLETED
select * from employee3 where emp_sal is not null and 
emp_sal  > (select emp_dept, avg(emp_sal) avgsal from EMPLOYEE3 group by emp_dept) order by emp_dept,emp_sal desc 

--Q10. TOP + Subquery – Top Above-Average Employees
--Return TOP 3 employees whose salary is above the overall average.
--•	Use a subquery for the overall average.
--•	Use TOP 3 and ORDER BY salary DESC.
  select top 3 emp_sal from employee3 where emp_sal> (select avg(EMP_SAL) from EMPLOYEE3)order by emp_sal desc;

--Q11. DISTINCT + Subquery – High-Earner Cities
--Return distinct cities containing at least one employee above the overall average salary.
--•	Use DISTINCT.
--•	Use a subquery for the company average.
--•	Exclude NULL salary.
select distinct emp_city,emp_sal  from EMPLOYEE3 where emp_sal>(select avg(emp_sal) from EMPLOYEE3) and emp_sal is not null

--Q12. Subquery + HAVING – High Payroll Departments
--Find departments whose total salary is greater than the average of all department totals.
--•	Use GROUP BY and SUM.
--•	Compare each department total against a subquery representing average department total.
--•	Use HAVING.
--NOT COMPLETED
(select count(emp_dept) numberofrecord from EMPLOYEE3)

--Q13. Business Case – Compensation Outliers
--Find potential high-salary outliers.
--•	Salary NOT NULL and above company average.
--•	City IN PUNE, MUMBAI, KOTA, NAGPUR.
--•	Name starts with R or S.
--•	Use LIKE, IN, IS NOT NULL and subquery.
--•	Sort salary DESC.
select * from employee3 where emp_sal is not null and emp_city in('pune','mumbai','kota','nagpur') and EMP_NAME like '[rs]%'
and emp_sal>(select avg(emp_sal)avg_sal from employee3 ) order by emp_sal desc;

--Q14. Interview Challenge – Second Highest Distinct Salary
--Find the second-highest DISTINCT salary without Window Functions.
--•	Use DISTINCT and a subquery.
--•	Do not use TOP 2 alone.
--•	Handle duplicate highest salaries correctly.
--•	Return only the second-highest salary.
select distinct max(emp_sal) secondlarge from employee3 where emp_sal< (select max(emp_sal) max_sal from EMPLOYEE3) ;

--Q15. FINAL – Hiring & Compensation Analysis
--Return TOP 5 employees above their department average for a targeted hiring/compensation review.
--•	Salary NOT NULL and BETWEEN 3500 and 7000.
--•	City IN PUNE, MUMBAI, KOTA, NAGPUR.
--•	Name starts with R or S.
--•	Use TOP 5.
--•	Use a correlated subquery for department AVG.
--•	Calculate ANNUAL_SALARY = EMP_SAL * 12.
--•	Use LIKE, IN, BETWEEN, IS NOT NULL, subquery and ORDER BY.
--•	No JOIN, CTE, CASE or Window Functions.
--NOT COMPLETED

select top 5 * from employee3  where EMP_SAL is not null and emp_sal between 3500 and 7000 and 
emp_city in('pune','mumbai','kota','nagpur') and EMP_NAME like '[rs]%'
 
