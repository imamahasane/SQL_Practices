-- show databases;
-- use mysql;
-- show tables;
-- select * from db;
-- describe db;

create database sql_intro;
show databases;

use sql_intro;
create table emp_details (
Name varchar(25), 
Age int, sex char(11),
doj date, 
city varchar(15), 
salary float);

describe emp_details;