-- to create a database on sql server
-- to use the database
create database payroll_service;
use payroll_service;

-- create employee payroll table with columns id, name, salary and start date as column. Note Id is set to auto increment.
create table employee_roll
(
id           int unsigned not null auto_increment,
name         varchar(150) not null,
salary       double not null,
dateTime     datetime not null,
primary key  (id)
);

-- inserting the values into the table employee_payroll
insert into employee_payroll ( name,salry,dateTime ) values
       ( 'Bill', 100000.00, '2018-01-03 12:34:09'),
       ( 'Mark', 200000.00, '2019-11-13 11:14:29'),
       ( 'Charlie', 300000.00, '2020-05-21 10:36:05');
       
-- to retrieve data from employee_payroll
Select * from employee_payroll;

-- to select a particular salary by using its name
-- Using Select query with Where condition View employees between start dates
select salary from employee_payroll where name = 'bill';
Select * from employee_payroll where start between cast('2018-01-01'as date) and date(now());

-- to add a column gender into the table after name
-- Update Query to set the gender using where condition with the employee name
alter table employee_payroll add gender char(1) after name;
update employee_payroll set gender='M' where name='Bill' or name ='Charlie';



