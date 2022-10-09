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



