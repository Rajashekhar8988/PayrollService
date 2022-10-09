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

-- using database functions sum, avg, min, max, count
-- use GROUP BY GENDER grouping to get the result
select sum(salary) from employee_payroll where gender = 'f' group by gender;
select avg(salary) from employee_payroll where gender = 'm' group by gender;
select min(salary) from employee_payroll where gender = 'f' group by gender;
select max(salary) from employee_payroll where gender = 'm' group by gender;
select count(salary) from employee_payroll where gender = 'f' group by gender;

-- Ability to extend employee_payroll data like employee phone, address and department,
-- Ensure employee department is non nullable fields
-- Add Default Value for address field
alter table employee_payroll add phone_number varchar(250) after name;
alter table employee_payroll add address varchar(250) after phone_number;
alter table employee_payroll add department varchar(250) not null after address;
alter table employee_payroll alter address set default 'TBD';

-- to extend employee_payroll table to have Basic Pay, Deductions, Taxable Pay, Income Tax, Net Pay
alter table employee_payroll rename column salary to basic_pay;
alter table employee_payroll add deductions double not null after basic_pay;
alter table employee_payroll add taxable_pay double not null after deductions;
alter table employee_payroll add tax double not null after taxable_pay;
alter table employee_payroll add net_pay double not null after tax;

-- Ability to make Terissa as part of Sales and Marketing Department
update employee_payroll set department='sales' where name='terissa';
insert into employee_payroll (name,department,gender,basic_pay,deductions,taxable_pay,tax,net_pay,startdate,starttime) values ('terissa','marketting','F',30000000.00,10000000.00,20000000.00,5000000.00,15000000.00,'2018-08-10','06:02');