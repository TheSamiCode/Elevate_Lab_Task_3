create database Demo;
use Demo;
-- Demo Table
select*from Emp;

-- Display employees names, jobs, salary, hiredates ?
select Ename,Job,sal,Hiredate From emp;

-- Display record of Employees who deptno=20?
select * From Emp Where deptno=20;

-- Display Employees working as clerk,manager and earning more than 4000 ?
Select * from Emp Where (Job='Salesman' Or Job='Clerk') And Sal<1200;

-- Display Employees record who Salary is greater than 1700 And Salary is less than 3000 ?
Select * From Emp Where sal>1700  And sal<3000;

-- Display Employee whose job is Clerk, Manager, Analyst? 
select * from emp where job='Clerk' or job='manager' or job='analyst';
                   -- OR
select * from emp where job in('clerk','manager','analyst');

-- Queries on Arithmatic operators
-- Name of employee along with 6000 rupees incremnt in salary.
select ename, sal, sal+6000 from emp;
-- Name of employee along with 200 rupees decrement in salary.
select ename, sal, sal-200 from emp;

-- Queries on Relational operators
-- Display details of employees who are earning less than 1000
 select * from emp where sal<1000;
 
 -- Display name of employees, annual salary if annual salary is more than 37000'
 select ename, sal*12 from emp where sal*12>37000;
 
 -- Display details of employee who joined before 1981.
 select * from emp where Hiredate<'1981-01-12';
 
 -- Queries on Logical operators
 -- Display details of employee who are earning more than 3000 and are department 10.
  select * from emp where sal>3000 and deptno=10;
  
  -- Display clark and martin information
  select * from emp where ename='clark' or ename='martin';
  
  -- Display ward and james information if they are earning more than 2000.
  select * from emp where(ename='ward' Or ename='james') and sal>1000;
  
  -- Display details of employee who belongs from analyst designation and working in department number 20.
  select * from emp where job='analyst' and deptno=20;
  
  -- Special Operators 
  -- Display details of employee who belongs fro salesman and analyst designation
  select * from emp where job In('Salesman', 'Analyst');
  
  -- Display details of emplyee who are earning from 3000 to 5000.
  select * from emp where sal between 3000 and 5000;
  
  -- Display details of employee apart from who joined in 1981.
  select * from emp where hiredate not between '1981-01-01' and '1981-12-31';

-- Display details of employee whose name start with s.
select * from emp where ename LIKE 's%';

-- Display details of employee whose designation starting 3rd character is alphabet a.
select * from emp where ename LIKE '_A%';

-- Display details of employee who are earning commission.

-- Ordered By
-- Display name and salary of employee where salary is arranged in descending order.
select ename, sal from emp order by sal desc;

-- Display name, job, and hiredate of employee arranged in the order of the join date.
select ename, job, hiredate from emp order by hiredate;

-- Display details of manager whose salary is arranged in descending order.
select * from emp where job='manager' order by sal desc;








