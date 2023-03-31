--creating a table
--create table WarehouseDemographics
--(EmployeeID int,
--FirstName varchar(50),
--LastName varchar(50),
--Age int,
--Gender varchar(50))

--inserting data into a table
insert into WarehouseDemographics values
(1021, 'Tiawo', 'Ayinde', 32, 'Female'),
(1022, 'Melinder', 'Chwukuemeka', 28, 'Male'),
(1023, 'Oyinda', 'Wasiu', 34, 'Female'),
(1024, 'Mary', 'John', 30, 'Female')

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

--Group By, Order By 
--from the EmployeeDemographics table count the number of gender 
select Gender, count(Gender)
from EmployeeDemographics
group by gender

--from the employeeDemographics table count the number of Gender and Age
select Gender, Age, count (Gender)
from EmployeeDemographics
group by Gender, Age

--with Gender and Age from the EmployeeDemographics count the gender older than 30
select Gender, count (Gender) AS countgender
from EmployeeDemographics
where Age>31
group by Gender

--inner join, full/left/right outer joins
--join the EmployeeDemographics table and the EmployeeSalary table
select*
from EmployeeDemographics
inner join EmployeeSalary on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--call out the EmployeeID, Firstname, LastName, JobTitle,Salary coloumn from the EmployeeDemographics and EmployeeSalary table
select EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
from EmployeeDemographics
inner join EmployeeSalary on EmployeeDemographics.EmployeeID =EmployeeSalary.EmployeeID

--from the EmployeeDemographics and EmployeeSalary table find out the salary of all the Employees except the manager
select EmployeeDemographics.EmployeeID, FirstName, LastName, Salary, JobTitle
from EmployeeDemographics
inner join EmployeeSalary on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
where JobTitle <> 'manager'
order by salary desc

--from the EmployeeSalary table find the avg salary of a salesman in the company
select JobTitle, avg(Salary)
from EmployeeSalary
where JobTitle = 'Salesperson'
group by JobTitle

--unions, union all
select *
from EmployeeDemographics 
union
select*
from WarehouseDemographics

select EmployeeID,Firstname, Age
from EmployeeDemoGraphics
union
select EmployeeID, JobTitle, Salary
from EmployeeSalary

--case statement
select Firstname, Lastname, Age,
CASE 
when Age > 30 then 'old'
else 'young'
end
from EmployeeDemographics
where Age is not null 
order by Age