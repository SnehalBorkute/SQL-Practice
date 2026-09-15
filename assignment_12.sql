
CREATE TABLE Employee_Department (
    Emp_ID INT,
    Emp_Name VARCHAR(50),
    Department VARCHAR(50),
    Salary INT
);

INSERT INTO Employee_Department VALUES
(1, 'Amit',   'IT',       50000),
(2, 'Sneha',  'IT',       70000),
(3, 'Rahul',  'IT',       60000),
(4, 'Priya',  'HR',       40000),
(5, 'Neha',   'HR',       55000),
(6, 'Rohit',  'HR',       45000),
(7, 'Vikas',  'Finance',  80000),
(8, 'Pooja',  'Finance',  60000),
(9, 'Kiran',  'Finance',  70000),
(10,'Raj',    'Sales',    65000);

select * from employee_department

CREATE TABLE DEPARTMENT_SET10 (
    DEPT_ID INT PRIMARY KEY,
    DEPT_NAME VARCHAR(50)
);
INSERT INTO DEPARTMENT_SET10 VALUES
(10,'IT'),(20,'HR'),(30,'Finance'),(40,'Testing'),(50,'Operations'),(60,'Research');

CREATE TABLE EMPLOYEE_SET10 (
    EMP_ID INT PRIMARY KEY,
    EMP_NAME VARCHAR(80),
    DEPT_ID INT NULL,
    SALARY DECIMAL(12,2),
    PERFORMANCE_SCORE INT,
    EMAIL VARCHAR(100) NULL,
    SALARY_ADJUSTMENT DECIMAL(12,2) NULL
);
INSERT INTO EMPLOYEE_SET10 VALUES
(101,'Amit Sharma',10,50000.00,82,'amit.sharma@gmail.com',1500.25),
(102,'Priya Patil',10,70000.50,91,'priya.patil@gmail.com',-750.75),
(103,'Rahul Verma',20,60000.00,76,'rahul.verma@outlook.com',500.00),
(104,'Sneha Kulkarni',20,80000.75,95,'sneha.kulkarni@gmail.com',2250.50),
(105,'Neha Joshi',30,55000.25,68,'neha.joshi@yahoo.com',NULL),
(106,'Karan Mehta',30,90000.00,88,'karan.mehta@gmail.com',1250.00),
(107,'Rohan Shah',40,45000.50,72,'rohan.shah@outlook.com',-500.25),
(108,'Pooja Nair',40,65000.00,84,'pooja.nair@gmail.com',1000.00),
(109,'Vikas Rao',NULL,72000.25,79,'vikas.rao@yahoo.com',NULL),
(110,'Meera Desai',50,110000.00,97,'meera.desai@gmail.com',3250.75),
(111,'Arjun Singh',10,40000.00,61,NULL,-250.50),
(112,'Kavya Iyer',60,125000.00,93,'kavya.iyer@gmail.com',5000.00);


CREATE TABLE CUSTOMER_SET10 (
    CUSTOMER_ID INT PRIMARY KEY,
    CUSTOMER_NAME VARCHAR(80),
    CITY VARCHAR(50),
    EMAIL VARCHAR(100) NULL,
    PHONE VARCHAR(20) NULL,
    ALT_EMAIL VARCHAR(100) NULL,
    ALT_PHONE VARCHAR(20) NULL,
    CUSTOMER_TYPE VARCHAR(30)
);
INSERT INTO CUSTOMER_SET10 VALUES
(201,'Aditya Kumar','Mumbai','aditya@gmail.com','9876500001',NULL,NULL,'Premium'),
(202,'Bhavna Shah','Pune',NULL,'9876500002','bhavna.alt@gmail.com',NULL,'Regular'),
(203,'Chetan Rao','Delhi','chetan@outlook.com',NULL,NULL,'9123400003','Corporate'),
(204,'Divya Nair','Mumbai',NULL,NULL,'divya.alt@yahoo.com','9123400004','Premium'),
(205,'Eshan Patil','Nashik','eshan@gmail.com','9876500005',NULL,NULL,'Regular'),
(206,'Farah Khan','Pune','farah@company.com',NULL,NULL,'9123400006','Corporate'),
(207,'Gaurav Joshi','Bangalore','gaurav@gmail.com','9876500007',NULL,NULL,'Premium'),
(208,'Hema Desai','Mumbai',NULL,NULL,NULL,'9123400008','Regular');

CREATE TABLE PRODUCT_SET10 (
    PRODUCT_ID INT PRIMARY KEY,
    PRODUCT_NAME VARCHAR(100),
    CATEGORY VARCHAR(50),
    PRICE DECIMAL(12,2),
    STOCK_QTY INT,
    SUPPLIER_ID INT NULL
);
INSERT INTO PRODUCT_SET10 VALUES
(301,'Laptop Pro','Electronics',85000.50,15,501),
(302,'Wireless Mouse','Electronics',1250.75,120,502),
(303,'Office Chair','Furniture',9500.00,8,503),
(304,'Desk','Furniture',15000.25,0,NULL),
(305,'Monitor 27','Electronics',22000.00,35,501),
(306,'Keyboard','Electronics',2750.50,60,502),
(307,'Notebook Pack','Stationery',450.25,200,504),
(308,'Printer','Electronics',18500.75,5,NULL),
(309,'Conference Table','Furniture',45000.00,2,503),
(310,'Webcam','Electronics',6500.25,0,502);

CREATE TABLE ORDER_SET10 (
    ORDER_ID INT PRIMARY KEY,
    CUSTOMER_ID INT,
    PRODUCT_ID INT,
    ORDER_AMOUNT DECIMAL(12,2),
    ORDER_DATE DATE,
    ORDER_STATUS VARCHAR(30)
);
INSERT INTO ORDER_SET10 VALUES
(401,201,301,85000.50,'2026-01-12','Completed'),
(402,201,302,1250.75,'2026-02-15','Completed'),
(403,202,303,9500.00,'2026-02-20','Pending'),
(404,203,305,44000.00,'2026-03-05','Completed'),
(405,205,307,900.50,'2026-03-18','Completed'),
(406,206,306,2750.50,'2026-04-11','Cancelled'),
(407,207,301,170001.00,'2026-05-09','Completed'),
(408,201,305,22000.00,'2026-06-14','Completed'),
(409,203,302,2501.50,'2026-07-22','Completed'),
(410,205,304,15000.25,'2026-08-03','Pending'),
(411,206,308,18500.75,'2025-12-19','Completed'),
(412,207,306,5501.00,'2026-08-21','Completed');

CREATE TABLE TARGET_CUSTOMER_SET10 (
    CUSTOMER_ID INT PRIMARY KEY,
    CUSTOMER_NAME VARCHAR(80)
);
INSERT INTO TARGET_CUSTOMER_SET10 VALUES
(201,'Aditya Kumar'),(202,'Bhavna Shah'),(203,'Chetan Rao'),
(205,'Eshan Patil'),(207,'Gaurav Joshi');

CREATE TABLE EMPLOYEE_ACTIVITY_SET10 (
    ACTIVITY_ID INT PRIMARY KEY,
    EMP_ID INT,
    ACTIVITY_DATE DATE,
    ACTIVITY_TYPE VARCHAR(40)
);
INSERT INTO EMPLOYEE_ACTIVITY_SET10 VALUES
(601,101,'2026-08-01','Training'),
(602,102,'2026-08-02','Project'),
(603,104,'2026-08-03','Project'),
(604,106,'2026-08-04','Review'),
(605,108,'2026-08-05','Training'),
(606,110,'2026-08-06','Project'),
(607,112,'2026-08-07','Research');

--SECTION B – 15 QUESTIONS: CASE, COALESCE AND PREVIOUS TOPICS
--Q11. Display each employee's name, department and a derived employment category based on salary range.
select * from Employee_Department order by salary

select emp_name,department,
case
when salary<55000 then 'low'
when salary between 55000 and 65000 then 'mid'
when salary>65000 then 'high'
end
from Employee_Department as salary_range

--Q12. Display each employee's name and a derived performance label based on performance score.
select * from EMPLOYEE_SET10 order by performance_score desc

select emp_name,PERFORMANCE_SCORE,
case 
when PERFORMANCE_SCORE<70 then 'poor'
when PERFORMANCE_SCORE between 70 and 80 then 'average'
when PERFORMANCE_SCORE between 80 and 90 then 'good'
else 'excellent'
end
from EMPLOYEE_SET10

--Q13. Display each customer's name and one preferred contact value using the available contact details.
select * from CUSTOMER_SET10
select customer_name,coalesce(Email,phone,alt_email,alt_phone,'no details') from CUSTOMER_SET10

--Q14. Display each product's name, category and a derived stock status based on current stock quantity.
select * from product_set10

select product_name,category,stock_qty,
case
when stock_qty=0 then 'out of stock'
when stock_qty between 1 and 50 then 'low stock'
when stock_qty>50 then 'in stock'
end
from product_set10

--Q15. Display each order's order ID, amount and a derived order-size classification using multiple amount ranges.
select * from order_set10 order by order_amount

select order_id,order_amount,
case
when order_amount<5501 then 'small order'
when order_amount between 5501 and 22000 then 'mid order'
when order_amount>22000 then 'large order'
end
from order_set10 as salary_range

--Q16. Find employees whose salary is greater than the average salary of all employees.
select * from employee_set10 where salary>
(select avg(salary) from employee_set10)

--Q17. Find customers whose total order value is greater than the average total order value across customers.
select * from order_set10 where order_amount > (select avg(order_amount) from order_set10)

--Q18. Display departments together with the number of employees belonging to each department.
select * from department_set10
select * from employee_set10

select e.DEPT_ID,DEPT_NAME,count(*) as total_emp
from employee_set10 e join department_set10 d 
on e.dept_id=d.dept_id
group by e.DEPT_ID,DEPT_NAME

--Q19. Display all employees and their department names,
--including employees whose department relationship is missing.
select * from employee_set10 e left join department_set10 d 
on e.dept_id=d.dept_id

--Q20. Find products whose price falls within the range represented by 
--the supplied product-price data.
select * from PRODUCT_SET10 order by PRICE

select order_id,order_amount,
case
when order_amount<2750 then 'less price product'
when order_amount between 2750 and 18000 then 'mid price'
else 'more price'
end
from order_set10 as salary_range

--Q21. Find customers whose email addresses belong to the supplied email domain pattern.
select * from EMPLOYEE_SET10 where email like '%@gmail.com'

--Q22. Display the current year's orders with the order year, month name and day.
select *,year(order_date) from ORDER_SET10 where year(order_date)=year(getdate())

--Q23. Display employee names in uppercase and extract 
--the domain portion from their email addresses.
select upper(EMP_NAME),substring(email,charindex('@',email)+1,
(PATINDEX('%.com',email)-2-charindex('@',email)+1 ))
from EMPLOYEE_SET10

select PATINDEX('%.com',email),len(email)
from EMPLOYEE_SET10 
use banking

select upper(EMP_NAME),substring(email,charindex('@',email)+1,len(email)-4-(charindex('@',email)))
from EMPLOYEE_SET10

--Q24. Display each employee's salary rounded to two decimal places 
--and also show the absolute value of the salary adjustment.
select * from EMPLOYEE_SET10

select salary,round(salary,2),abs(salary) from EMPLOYEE_SET10

--Q25. Using employee and department data, display employees 
--with their department name and classify their salary into meaningful categories.
select EMP_NAME,DEPT_NAME,iif(salary<80000,'low','')
from employee_set10 e join department_set10 d 
on e.dept_id=d.dept_id


--SECTION C – 10 QUESTIONS: CORRELATED SUBQUERY, EXISTS, NOT EXISTS, ANY AND ALL

--Q26. Find employees whose salary is greater than the average salary of their own department.
select * from EMPLOYEE_SET10 e1 where salary>
(select avg(salary) from EMPLOYEE_SET10  e2 
where e1.dept_id=e2.dept_ID)


select * from employee_department e1 where salary>
(select avg(salary) from employee_department  e2 
where e1.Department=e2.department)



--Q27. Find employees whose salary is less than the average salary of their own department.
select * from EMPLOYEE_SET10 e1 where salary<
(select avg(salary) from EMPLOYEE_SET10 e2 where e1.DEPT_ID=e2.DEPT_ID)

select * from employee_department e1 where salary<
(select avg(salary) from employee_department e2 where e1.department=e2.Department)

--Q28. Find employees who earn the highest salary within their own department.
select * from EMPLOYEE_SET10 e1 where salary in
(select max(salary) from EMPLOYEE_SET10 e2 where e1.DEPT_ID=e2.DEPT_ID)

select * from EMPLOYEE_SET10 e1 where salary in
(select max(salary) from EMPLOYEE_SET10 e2 where e1.DEPT_ID=e2.DEPT_ID)

--Q29. Find employees who earn the lowest salary within their own department.
select * from EMPLOYEE_SET10 e1 where salary in
(select min(salary) from EMPLOYEE_SET10 e2 where e1.DEPT_ID=e2.DEPT_ID)

select * from employee_department e1 where salary in
(select min(salary) from employee_department e2 where e1.department=e2.Department)


--Q30. Find departments that have at least one employee.
select *   from DEPARTMENT_SET10 e1
where  exists  (select 1 from EMPLOYEE_SET10 e2 where e1.DEPT_ID = e2.DEPT_ID)

--Q31. Find departments that currently have no employees.

select *   from DEPARTMENT_SET10 e1
where not exists  (select 1 from EMPLOYEE_SET10 e2 where e1.DEPT_ID = e2.DEPT_ID)

--Q32. Find customers who have placed at least one order.
select * from CUSTOMER_SET10
select * from ORDER_SET10

select * from CUSTOMER_SET10 c1
where exists  (select 1 from ORDER_SET10 c2 where c1.CUSTOMER_ID=c2.CUSTOMER_ID)

--Q33. Find customers who have never placed an order.
select * from CUSTOMER_SET10 c1
where  not exists  (select 1 from ORDER_SET10 c2 where c1.CUSTOMER_ID=c2.CUSTOMER_ID)


--Q34. Find products that have at least one order associated with them
select * from  PRODUCT_SET10
select * from ORDER_SET10

select * from PRODUCT_SET10 c1
where   exists  (select 1 from ORDER_SET10 c2 where c1.PRODUCT_ID=c2.PRODUCT_ID)

--Q35. Find products that have never appeared in an order.
select * from PRODUCT_SET10 c1
where  not exists  (select 1 from ORDER_SET10 c2 where c1.PRODUCT_ID=c2.PRODUCT_ID)

--SECTION D – 5 QUESTIONS: ANY AND ALL
--Q36. Find employees whose salary is greater than at least one salary in the HR department.
SELECT *
FROM EMPLOYEE_SET10 e1
WHERE e1.SALARY > ANY
(
    SELECT e2.SALARY
    FROM EMPLOYEE_SET10 e2
    JOIN DEPARTMENT_SET10 d
        ON e2.DEPT_ID = d.DEPT_ID
    WHERE d.DEPT_NAME = 'HR'
);

--Q37. Find employees whose salary is greater than every salary in the HR department.
SELECT *
FROM EMPLOYEE_SET10 e1
WHERE e1.SALARY > All
(
    SELECT e2.SALARY
    FROM EMPLOYEE_SET10 e2
    JOIN DEPARTMENT_SET10 d
        ON e2.DEPT_ID = d.DEPT_ID
    WHERE d.DEPT_NAME = 'HR'
);

--Q38. Find employees whose salary is lower than at least one salary in the IT department.
select * from employee_set10 where salary< any(select salary from EMPLOYEE_SET10 e1 
join DEPARTMENT_SET10 d1 on e1.DEPT_ID=d1.DEPT_ID where DEPT_NAME='it')

--Q39. Find employees whose salary is lower than every salary in the IT department.
select * from employee_set10 where salary< all(select salary from EMPLOYEE_SET10 e1 
join DEPARTMENT_SET10 d1 on e1.DEPT_ID=d1.DEPT_ID where DEPT_NAME='it')

--Q40. Compare employee salaries with salaries in a selected department and produce a result that 
--clearly distinguishes employees exceeding at least one comparison value from employees exceeding 
--every comparison value.
SELECT *,
CASE
    WHEN salary > ALL
    (
        SELECT e1.salary
        FROM EMPLOYEE_SET10 e1
        JOIN DEPARTMENT_SET10 d1
            ON e1.DEPT_ID = d1.DEPT_ID
        WHERE d1.DEPT_NAME = 'HR'
    )
    THEN 'Exceeds all salary'

    WHEN salary > ANY
    (
        SELECT e1.salary
        FROM EMPLOYEE_SET10 e1
        JOIN DEPARTMENT_SET10 d1
            ON e1.DEPT_ID = d1.DEPT_ID
        WHERE d1.DEPT_NAME = 'HR'
    )
    THEN 'Exceeds at least one salary'

    ELSE 'Does not exceed HR salary'
END AS Salary_Result
FROM EMPLOYEE_SET10;

--SECTION E – 5 INTEGRATED CHALLENGE QUESTIONS
--Q41. Using the supplied customer and order data, identify customers with no related orders and display an appropriate
--contact value using the available contact columns.
select * from ORDER_SET10
select * from BANK_CUSTOMER

select *,coalesce(EMAIL_ID,phone_number) preffered_contact from BANK_CUSTOMER c where 
not exists (select 1 from ORDER_SET10 o  WHERE c.CUSTOMER_ID = o.CUSTOMER_ID)

--Q42. Using employee and department data, identify employees whose salary is above
--their department average and classify 
--the result into meaningful salary bands.
select *,CASE
           WHEN salary >= 80000 THEN 'High Salary'
           WHEN salary >= 70000 THEN 'Medium Salary'
           ELSE 'Low Salary'
       END AS Salary_Band from employee_set10 e1 where salary> (select avg(salary) 
from EMPLOYEE_SET10 e2 where e1.dept_id=e2.dept_id ) 

--Q43. Using product and order data, identify products that have no related orders and
--classify each product based on its current stock level.
--the result into meaningful salary bands.
select * from ORDER_SET10
select * from PRODUCT_SET10

select *,CASE
when stock_qty=0 then 'out of stock'
when stock_qty between 1 and 50 then 'low stock'
when stock_qty>50 then 'in stock'
end
 from PRODUCT_SET10 p  where exists (select 1
from ORDER_SET10 o where p.product_id=o.PRODUCT_ID ) 


--Q44. Find source customer records for which no corresponding target customer record exists.
select * from TARGET_CUSTOMER_SET10
select * from CUSTOMER_SET10

select * from CUSTOMER_SET10 c where not exists (select * from TARGET_CUSTOMER_SET10 t
where c.CUSTOMER_ID=t.CUSTOMER_ID)

--Q45. Build one integrated query using the supplied tables that combines 
--conditional classification, NULL handling, a row-dependent comparison,
--an existence check and a set-based salary comparison.
 
select * from PRODUCT_SET10

select *,isnull(SUPPLIER_ID,0),CASE
when stock_qty=0 then 'out of stock'
when stock_qty between 1 and 50 then 'low stock'
when stock_qty>50 then 'in stock'
end
 from PRODUCT_SET10 p  where exists (select 1
from ORDER_SET10 o where p.product_id=o.PRODUCT_ID ) 
AND p.PRICE > ANY
(
    SELECT SALARY
    FROM EMPLOYEE_SET10
);
