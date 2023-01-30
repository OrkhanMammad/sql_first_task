create database Company
use Company
create table Employees(Name nvarchar(20), Surname nvarchar(20), Position nvarchar(20), Salary int)
insert into Employees values('Huseyn', 'Abdullayev', 'front-end developer', 1500),('Nurlan', 'Nazarov', 'back-end developer', 2000),('Samad','Aliyev','designer',2500)
select avg(Salary) as 'minimum maas' from Employees
select Name, Surname, Salary from Employees where Salary > (select avg(Salary) from Employees)
select min(Salary) from Employees
select max(Salary) from Employees



create database Market
use Market
create table Products(ID int, Name nvarchar(30), Price int)
alter table Products add Brand nvarchar(30)
insert into Products values (1,'bread',5,'chorekci'),(2,'meat',10,'qochet'),(3,'milk',7,'milla'),(4,'coke',6,'pepsi'),(5,'chips',3,'doritos'),(6,'energy drink',15,'red bull')
select * from Products where Price < (select avg(price) from Products)
select * from Products where Price > 10
select (Name+' - '+Brand) as 'Product Info' from Products where len(Name)>5


