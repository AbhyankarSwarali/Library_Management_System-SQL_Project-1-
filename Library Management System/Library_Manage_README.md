# Library Management System

## Project Overview

**Project Title**: Library Management System  
**Level**: Intermediate  
**Database**: `library_db`

This project demonstrates the implementation of a Library Management System using SQL. It includes creating and managing tables, performing CRUD operations, and executing advanced SQL queries. The goal is to showcase skills in database design, manipulation, and querying.


## Objectives

1. Set up the Library Management System Database: Create and populate the database with tables for branches, employees, members, books, issued status, and return status.
2. CRUD Operations: Perform Create, Read, Update, and Delete operations on the data.
3. CTAS (Create Table As Select): Utilize CTAS to create new tables based on query results.
4. Advanced SQL Queries: Develop complex queries to analyze and retrieve specific data.

## Project Structure

### 1. Database Setup
- Database Creation: Created a database named `library_db`.
- Table Creation: Created tables for branches, employees, members, books, issued status, and return status. Each table includes relevant columns and relationships.
- Tables Created:
        1. Books
        2. Branch
        3. Employees
        4. Issued_status
        5.Members
        6. Return_status

### 2. CRUD Operations
- Create: Inserted sample records into the `books` table.
- Read: Retrieved and displayed data from various tables.
- Update: Updated records in the `employees` table.
- Delete: Removed records from the `members` table as needed.

### 3. CTAS (Create Table As Select)

### 4. Data Analysis & Findings

## Tasks covered:
1. Create a new book record.
2: Update an existing member's address.
3: Delete a record from the issued status table with issued_id = 'IS121'.
4: Retrieve all books issued by a specific employee with emp_id = 'E101'.
5: List members who have issued more than one book using GROUP BY.
6: Create summary tables using CTAS to generate new tables based on query results - each book and total book_issued_count.
7: Retrieve all books in a Specific category.
8: Find total rental income by bategory.
9: List members who registered in the last 750 days.
10: List employees with their branch manager's name and their branch details.
11: Create a table of books with rental price above a ertain threshold.
12: Retrieve the list of books not yet returned.


## Reports

- **Database Schema**: Detailed table structures and relationships.
- **Data Analysis**: Insights into book categories, employee salaries, member registration trends, and issued books.
- **Summary Reports**: Aggregated data on high-demand books and employee performance.

## Conclusion

This project demonstrates the application of SQL skills in creating and managing a library management system. It includes database setup, data manipulation, and advanced querying, providing a solid foundation for data management and analysis.

## How to Use
1. Clone the Repository: Clone this repository to your local machine.
   ```bash
   git clone https://github.com/AbhyankarSwarali/Library_Management_System-SQL_Project-1-.git
   ```

2. Set Up the Database: Execute the SQL scripts in the `database_setup.sql` file to create and populate the database.
3. Run the Queries: Use the SQL queries in the `analysis_queries.sql` file to perform the analysis.
4. Explore and Modify: Customize the queries as needed to explore different aspects of the data or answer additional questions.


## This project showcases SQL skills essential for database management and analysis.

## Happy Learning!!
