-- to create a database on sql server
create database payroll_service;

-- to use the database
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



