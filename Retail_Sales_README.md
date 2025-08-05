# Retail Sales Analysis
## Project Overview
Project Title: Retail Sales Analysis
Level: Beginner
Database: p1_retail_db

This project is designed to demonstrate SQL skills and techniques typically used by data analysts to explore, clean, and analyze retail sales data. The project involves setting up a retail sales database, performing exploratory data analysis (EDA), and answering specific business questions through SQL queries. This project is ideal for those who are starting their journey in data analysis and want to build a solid foundation in SQL.

### Objectives
Set up a retail sales database: Create and populate a retail sales database with the provided sales data.
Data Cleaning: Identify and remove any records with missing or null values.
Exploratory Data Analysis (EDA): Perform basic exploratory data analysis to understand the dataset.
Business Analysis: Use SQL to answer specific business questions and derive insights from the sales data.

### Project Structure
1. Database Setup
Database Creation: The project starts by creating a database named p1_retail_db.
Table Creation: A table named retail_sales is created to store the sales data. The table structure includes columns for:
        transaction ID (int)
        sale date (date)
        sale time (time)
        customer ID (int)
        gender (varchar)
        age int
        category (varchar)
        quantity sold int
        price per unit int
        cost of goods sold (COGS) int
        total sale amount int


2. Data Cleaning: Finding for any null values or invalid data throughout the provided dataset using pre-defined queries IS NULL()


3. Data Exploration: To go through each and every detail and gathering information about what the data exactly point to.
       1) How many sales: select count(*) from retail_sales
       2) How many unique customers: select count(distinct customers_id) from retail_sales
       3) Which unique categories: select distinct category from retail_sales


4. Data Analysis & Findings
The following SQL queries were developed to answer specific business questions:

Write a SQL query to retrieve all columns for sales made on '2022-11-05:
SELECT *
FROM retail_sales
WHERE sale_date = '2022-11-05';

### Questions:
1) Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 4 in the month of Nov-2022:
2) Write a SQL query to calculate the total sales (total_sale) for each category.:
3) Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.:
4) Write a SQL query to find all transactions where the total_sale is greater than 1000.:
5) Write a SQL query to calculate the average sale for each month. Find out best selling month in each year:
6) Write a SQL query to find the top 5 customers based on the highest total sales:
7) Write a SQL query to find the number of unique customers who purchased items from each category.:
and many more....

Thank you!
Have a great learning!!
