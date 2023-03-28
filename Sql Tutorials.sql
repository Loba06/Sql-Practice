--Select statement
    -- Top, Distinct, Count, As, Max, Min, Avg

--Select all the column from the employeedemographics table
select *
from EmployeeDemographics

--Select top 5 of all the column in the employeedemographics table
select top 5 *
from EmployeeDemographics

-- Distinct
--select the distinct values of the employeeid coloumn in the employeedemographic table
select distinct(EmployeeID)
From EmployeeDemographics

--select the distinct values of the gender coloumn in the EmployeeDemographic table
select distinct (Gender)
from EmployeeDemographics

--count/AS
--select the count of the lastname coloumn and rename the new colomn as lastnamecount
select count (LastName) AS lastnamecount
from EmployeeDemographics 

--select all coloumns from the EmployeeSalary table 
select *
from EmployeeSalary

--max, min, avg
--from the EmployeeSalary select the maximum salary
select max (Salary)
from EmployeeSalary

--min
-- from the EmployeeSalary table select the minimum salary 
select min (Salary)
from EmployeeSalary

--avg
-- from the EmployeeSalary table, select the avg salary of the Employees
select avg (Salary)
from EmployeeSalary