-- Task 1:  Create a New Book Record: "978-1-60129-456-2', 'To Kill a Mockingbird', 'Classic', 6.00, 'yes', 'Harper Lee', 'J.B. Lippincott & Co.')"
select * from books;
insert into books(isbn, book_title, category, rental_price, status, author, publisher)
values
("978-1-60129-456-2",'To Kill a Mockingbird','Classic',
6.00,'yes','Harper Lee','J.B. Lippincott & Co.');

-- Task 2: Update an existing member's address
select * from members;
update members
set member_address='130 Main St'
where member_id='C101';

-- Task 3: Delete a Record from the Issued Status Table 
		-- Objective: Delete the record with issued_id = 'IS121' from the issued_status table.
select * from issued_status;
delete from issued_status where issued_id = 'IS121';

-- Task 4: Retrieve All Books Issued by a Specific Employee 
		-- Objective: Select all books issued by the employee with emp_id = 'E101'.
select * from issued_status;
select * from issued_status where issued_emp_id='E101';

-- Task 5:  List Members Who Have Issued More Than One Book 
		 -- Objective: Use GROUP BY to find members who have issued more than one book.
select * from members;
select * from issued_status;
select  issued_member_id, count(issued_id) as total_issued_books from issued_status group by issued_member_id;

-- Task 6: Create Summary Tables: Used CTAs to generate new tables based on query results - each book and total book_issued_cnt**
create table book_counts as
select b.isbn, b.book_title, count(ist.issued_id) as total_books_issued
from books as b
join issued_status as ist
on ist.issued_book_isbn = b.isbn
group by b.isbn, b.book_title;
select * from book_counts;

-- Task 7: Retrieve All Books in a Specific Category:
select * from books where category='fiction';

-- Task 8: Find Total Rental Income by Category:
select b.category, sum(b.rental_price) as total_rental_price from books as b
join issued_status as ist
on b.isbn = ist.issued_book_isbn
group by b.category;

-- Task 9: List Members Who Registered in the Last 1000 Days
select * from members 
where reg_date >= curdate() - interval 1000 day;

-- Task 10: List Employees with Their Branch Manager's Name and their branch details:
select * from branch;
select * from employees;
select e.*, e1.emp_name as manager, b.manager_id, b.branch_address
from employees as e
join branch as b
on e.branch_id = b.branch_id
join employees as e1
on b.manager_id = e1.emp_id;

-- Task 11: Create a Table of Books with Rental Price Above a Certain Threshold USD 7
create table book_price_greater_than_7
as
select * from books where rental_price > 7;
select * from book_price_greater_than_7;

-- Taske 12: Retrieve the List of Books Not Yet Returned
select ist.issued_book_name
from issued_status as ist
left join return_status as rst
on ist.issued_id = rst.issued_id
where rst.return_id is null;