create database lib_mng_sys;
use lib_mng_sys;

-- Creating Branch table
create table branch (
branch_id varchar(10) primary key,
manager_id varchar(10),
branch_address varchar(50),
contact_no varchar(15)
);

-- Creating Employees table
create table employees (
emp_id varchar(10) primary key,
emp_name varchar(25),
position varchar(25),
salary int,
branch_id varchar(10) -- FK
);

-- Creating Books table
create table books (
isbn varchar(20) primary key,
book_title varchar(75),
category varchar(20),
rental_price float,
status varchar(10),
author varchar(30),
publisher varchar(40)
);

-- Creating Members table
create table members (
member_id varchar(10) primary key,
member_name varchar(20),
member_address varchar(75),
reg_date date
);

-- Creating Issued_Status table
create table issued_status (
issued_id varchar(10) primary key,
issued_member_id varchar(8), -- FK
issued_book_name varchar(75),
issued_date date,
issued_book_isbn varchar(25), -- FK
issued_emp_id varchar(8) -- FK
);

-- Creating Return_Status table
create table return_status (
return_id varchar(10) primary key,
issued_id varchar(10), -- FK
return_book_name varchar(75),
return_date date,
return_book_isbn varchar(25)
);

-- Foreign Keys
alter table issued_status
add constraint fk_members
foreign key (issued_member_id)
references members(member_id);

alter table issued_status
add constraint fk_books
foreign key (issued_book_isbn)
references books(isbn);

alter table issued_status
add constraint fk_employees
foreign key (issued_emp_id)
references employees(emp_id);


select * from books;
select * from branch;
select * from employees;
select * from issued_status;
select * from members;
select * from return_status;