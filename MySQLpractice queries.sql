create database employee;
use employee;
create table employeetable(emp_id int primary key,first_name varchar(255),last_name varchar(255),salary int,joining_date date,deptartment varchar(255));
insert into employeetable values(1,"Venkatesh","s",100000,"2015-08-28","BANKING");
insert into employeetable values(2,"Rgavi","p",75000,"2015-08-28","BUSINESS"),
(3,"Gopinath","C",50000,"2016-03-02","PHARMA"),
(4,"Dinesh","G",50000,"2016-03-02","INSURANCE"),
(5,"Saibabu","E",40000,"2017-07-08","SOFTWARE"),
(6,"Hasan","S",29000,"2017-07-08","MANUFACTURE"),
(7,"Divya","P",33000,"2017-07-08","HEALTHCARE"),
(8,"Aravindhan","R",40000,"2017-07-08","HEALTHCARE"),
(9,"Sathish","MD",45000,"2016-03-02","AUTOMOBILE"),
(10,"Prasanth","PKD",34000,"2016-03-02","INSURANCE"),
(11,"Vijay","R",25684,"2016-03-02","BUSINESS"),
(12,"Sivakumar","K",54789,"2016-03-02","SOFTWARE");
-- Get all employee details from the employee table
select *from employeetable;
select first_name,last_name from employeetable;
-- Get First_Name from employee table using alias name “Employee Name”
select first_name as Employee_Name from employeetable;
-- Get First_Name from employee table in upper case
select upper(first_name) from employeetable;
-- Get First_Name from employee table in lower case
select lower(first_name)from employeetable;
-- Get unique DEPARTMENT from employee table
select distinct deptartment from employeetable;
-- select first 3 characters of FIRST_NAME from EMPLOYEE
select substring(first_name,1,3)from employeetable;
-- Get position of 'a' in name 'ragavi' from employee table
select position("a" in "Ragavi");
-- Get FIRST_NAME from employee table after removing white spaces from right side
select ltrim(first_name),rtrim(first_name)from employeetable;
-- Get length of FIRST_NAME from employee table
select length(first_name)from employeetable;
-- Get First_Name from employee table after replacing 'a' with '$'
select replace(first_name,"a","$")from employeetable;
-- Get First_Name and Last_Name as single column from employee table separated by a '_'
select concat(first_name,"_",last_name)from employeetable;
-- Get FIRST_NAME ,Joining year,Joining Month and Joining Date from employee table
select first_name,year(joining_date),month(joining_date),day(joining_date) from employeetable;
-- Get all employee details from the employee table order by First_Name Ascending
select *from employeetable order by first_name asc;
-- Get all employee details from the employee table order by First_Name descending
select*from employeetable order by first_name desc;
-- Get all employee details from the employee table order by First_Name Ascending and Salary descending
select*from employeetable order by first_name asc,salary desc;
-- Get employee details from employee table whose employee name is “Dinesh”
select*from employeetable where first_name="Dinesh";
-- Get employee details from employee table whose employee name are “Dinesh” or “Roy”
select*from employeetable where first_name="Dinesh" or first_name="Roy";
-- Get employee details from employee table whose employee name are not “Dinesh” and “Roy”
select *from employeetable where not first_name="Dinesh" and not first_name="Roy";

