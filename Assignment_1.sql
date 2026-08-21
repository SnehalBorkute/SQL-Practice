--SQL PRACTICAL ASSIGNMENT

CREATE TABLE EMPLOYEE
(
    EMP_ID INT,
    EMP_NAME VARCHAR(50),
    EMP_CITY VARCHAR(50),
    EMP_SAL INT,
    EMP_DOJ DATE
);
INSERT INTO EMPLOYEE
(EMP_ID, EMP_NAME, EMP_CITY, EMP_SAL, EMP_DOJ)
VALUES
(1, 'Mohit', 'PUNE', 3000, '2021-01-14'),
(2, 'Sumit', 'MUMBAI', 3500, '2021-03-01'),
(3, 'Shital', 'DELHI', 3000, '2022-05-11'),
(4, 'Priyanka', 'NAGPUR', 4000, '2021-08-14'),
(5, 'Praveen', 'HYDERABAD', 5500, '2020-05-28'),
(6, 'Rajesh', 'KOTA', 6500, '2022-07-14'),
(7, 'Rohit', 'KOTA', 4500, '2022-09-14'),
(8, 'Sumita', 'WARDHA', 2800, '2023-01-14'),
(9, 'Amit', 'PUNE', 5200, '2022-12-10'),
(10, 'Ankit', 'MUMBAI', 7200, '2023-02-18'),
(11, 'Sneha', 'NAGPUR', 4800, '2022-11-25'),
(12, 'Raj', 'KOTA', 6500, '2023-01-10'),
(13, 'Neha', 'DELHI', 3900, '2021-06-15'),
(14, 'Vikas', 'PUNE', 6100, '2020-11-20'),
(15, 'Pooja', 'MUMBAI', 4400, '2022-04-18'),
(16, 'Rakesh', 'HYDERABAD', 5700, '2021-12-05'),
(17, 'Kiran', 'NAGPUR', 3200, '2023-03-12'),
(18, 'Meena', 'KOTA', 7000, '2020-08-25'),
(19, 'Suresh', 'PUNE', 3600, '2021-09-17'),
(20, 'Nitin', 'MUMBAI', 4900, '2022-10-11');

SELECT * FROM EMPLOYEE;


--Q1. Comparison Operator Challenge
--Display employees whose salary is greater than 4000 and who belong to PUNE. Display EMP_ID, EMP_NAME, EMP_CITY and EMP_SAL.

select EMP_ID, EMP_NAME, EMP_CITY , EMP_SAL from employee where EMP_SAL>4000 and EMP_CITY = 'pune'

--Q2. AND + OR Challenge
--Display employees who satisfy either Condition 1 OR Condition 2.
--•	Condition 1: City = KOTA AND Salary > 5000.
--•	Condition 2: City = PUNE AND Salary > 5000.
--•	Use only WHERE, AND and OR.

select * from employee where (EMP_CITY='kota' and EMP_SAL>5000) or (EMP_CITY='pune' and EMP_SAL>5000)

--Q3. IN Challenge
--Display employees who belong to any of the following cities: PUNE, MUMBAI, KOTA or NAGPUR, and whose salary is greater than 4000.
 select * from employee where EMP_CITY in('pune','mumbai','kota','nagpur') and EMP_SAL > 4000
 
-- Q4. NOT IN Challenge
--Display employees whose city is not DELHI, HYDERABAD or WARDHA, and whose salary is greater than 3000.

select * from employee where EMP_CITY not in('delhi','hyderabad','wardha') and EMP_SAL>3000


--Q5. BETWEEN Challenge
--Display employees whose salary is between 3500 and 6000. Employees with salary exactly 3500 and 6000 should also be included. Display EMP_ID, EMP_NAME, EMP_CITY and EMP_SAL.

select EMP_ID, EMP_NAME, EMP_CITY, EMP_SAL from employee where EMP_SAL  between 3500 and 6000


--Q6. NOT BETWEEN Challenge
--Display employees whose salary is outside the range 4000 to 6000. Display all employee details.

select * from employee where EMP_SAL not between 4000 and 6000

--select EMP_ID, EMP_NAME, EMP_CITY, EMP_SAL from employee where EMP_SAL  between 3500 and 6000

select EMP_ID, EMP_NAME ,EMP_SAL, Annual_Salary=EMP_SAL*12 from employee


--Q8. Salary Increment Challenge
--Display employees whose salary is greater than or equal to 4000. Calculate INCREMENT_AMOUNT = EMP_SAL * 10 / 100 and NEW_SALARY = EMP_SAL + INCREMENT_AMOUNT. Display EMP_ID, EMP_NAME, EMP_SAL, INCREMENT_AMOUNT and NEW_SALARY.

select EMP_ID, EMP_NAME, EMP_SAL, INCREMENT_AMOUNT = EMP_SAL* 10 / 100 , NEW_SALARY = EMP_SAL + (EMP_SAL* 10 / 100)  from employee where EMP_SAL >=4000

--Q9. Modulus Operator Challenge
--Display employees whose EMP_ID is an even number. Display EMP_ID, EMP_NAME, EMP_CITY and EMP_SAL. Bonus: Modify the query to display employees whose EMP_ID is an odd number.

select EMP_ID, EMP_NAME, EMP_CITY , EMP_SAL from employee where EMP_ID % 2=0
select EMP_ID, EMP_NAME, EMP_CITY , EMP_SAL from employee where EMP_ID % 2=1

--Q10. Multiple Conditions
--Display employees who satisfy all of the following: Salary > 3000, Salary < 7000, City is PUNE/MUMBAI/KOTA, and Employee ID is even. Use AND, IN, comparison operators and %.

select * from employee where EMP_SAL>3000 and EMP_SAL< 7000 and EMP_CITY in('pune','mumbai','kota') and EMP_ID % 2=0

--Q11. NOT + IN + BETWEEN
--Display employees who do NOT belong to DELHI, HYDERABAD or WARDHA, whose salary is between 3500 and 6500, and whose Employee ID is odd. Use NOT, IN, BETWEEN, AND and %.

select * from employee where EMP_CITY not in('delhi','hyderabad','wardha') and EMP_SAL between 3500 and 6500 and EMP_ID%2=1


--Q12. Salary Calculation – Moderate Level
--For employees whose salary is between 3000 and 6000, calculate MONTHLY_SALARY = EMP_SAL, YEARLY_SALARY = EMP_SAL * 12, BONUS = EMP_SAL * 15 / 100, and FINAL_SALARY = EMP_SAL + BONUS. Display EMP_ID, EMP_NAME, EMP_CITY, EMP_SAL, YEARLY_SALARY, BONUS and FINAL_SALARY. Use aliases for calculated columns.

select  EMP_ID, EMP_NAME, EMP_CITY, MONTHLY_SALARY = EMP_SAL, YEARLY_SALARY= EMP_SAL* 12, BONUS = EMP_SAL * 15 / 100,FINAL_SALARY = EMP_SAL + EMP_SAL * 15 / 100 from employee


--Q13. Employee Eligibility Challenge
--An employee is eligible for a special benefit if Salary >= 4500, City is PUNE/KOTA/NAGPUR, Employee ID is even, and the employee is NOT from MUMBAI. Calculate SPECIAL_BONUS = EMP_SAL * 20 / 100. Display EMP_ID, EMP_NAME, EMP_CITY, EMP_SAL and SPECIAL_BONUS.
 

select EMP_ID, EMP_NAME, EMP_CITY, EMP_SAL, SPECIAL_BONUS= EMP_SAL * 20 / 100 from employee where EMP_SAL>4500  and EMP_CITY in ('pune','kota','nagpur')  and EMP_ID%2=0 and EMP_CITY <>'mumbai'





--Q14. Complex Business Condition
--Display employees whose salary is between 3500 and 7000, who belong to PUNE/KOTA/NAGPUR, and whose Employee ID is odd. However, employees from KOTA with salary greater than 6000 must be excluded. Write this as one SELECT query.


select * from employee where EMP_SAL between 3500 and 7000 and  EMP_CITY='PUNE'or (EMP_CITY='KOTA' and  EMP_SAL >6000) or EMP_CITY='NAGPUR' and EMP_ID%2=1 


--Q15. FINAL CHALLENGE – Performance Bonus
--Write one SQL query for employees eligible for a Performance Bonus.
--•	Condition 1: Salary is greater than or equal to 4000 and less than 7000.
--•	Condition 2: Employee belongs to PUNE, KOTA, MUMBAI or NAGPUR.
--•	Condition 3: Employee ID is even.
--•	Condition 4: Employee does NOT belong to MUMBAI.
--•	Condition 5: Employee joined on or after 2021-01-01.
--•	Calculate BONUS = EMP_SAL * 25 / 100.
--•	Calculate REVISED_SALARY = EMP_SAL + BONUS.
--•	Display EMP_ID, EMP_NAME, EMP_CITY, EMP_SAL, EMP_DOJ, BONUS and REVISED_SALARY.

select EMP_ID, EMP_NAME, EMP_CITY, EMP_SAL, EMP_DOJ, BONUS=EMP_SAL * 25 / 100, REVISED_SALARY=EMP_SAL + EMP_SAL * 25 / 100 from employee where EMP_SAl >=4000 and EMP_SAl < 7000 and EMP_CITY in ('pune','kota','mumbai','nagpur') and  EMP_ID%2=0 and EMP_CITY<>'mumbai' and EMP_DOJ>='2021-01-01'
 




