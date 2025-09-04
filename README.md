# SQL_PROJECTS
A SQL projects for managing employees, departments, and projects, bookings featuring advanced queries for HR and business analytics.
All data is fully generated online and does not correspond to real individuals or organizations.
# 💻 Tech Stack:
![MySQL](https://img.shields.io/badge/mysql-4479A1.svg?style=for-the-badge&logo=mysql&logoColor=white) ![Power Bi](https://img.shields.io/badge/power_bi-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
# Table of Contents
- [Overview](https://github.com/KrishatCoding/SQL_PROJECT#overview)
- [Files Included](https://github.com/KrishatCoding/SQL_PROJECT#files-included)
- [Database Structure](https://github.com/KrishatCoding/SQL_PROJECT#database-structure)
- [Analytical Queries](https://github.com/KrishatCoding/SQL_PROJECT#analytical-queries)
- [Getting Started](https://github.com/KrishatCoding/SQL_PROJECT#getting-started)
- [Learning Outcomes](https://github.com/KrishatCoding/SQL_PROJECT#learning-outcomes)
- [License](https://github.com/KrishatCoding/SQL_PROJECT#license)
# Overview
This project demonstrates a relational company database built with three main tables: employees, departments, and projects. Pre-built SQL queries provide solutions for questions like gender distribution, active staff metrics, intern counts, departmental CTC, project budgets, and department head analytics.
# Files Included
PROJECT 1 RAPDIO_BOOKING of August 2025
- rapido_delhi_aug2025_100k.xlsx — Sample booking of Rapido Car 100k rows

PROJECT 2 EMPLOYEES, DEPARTMENT AND PROJECTS
- Employees.csv — Sample employee data
- Departments.csv — Sample department data
- Projects.csv — Sample project data
- SQL Queries — Upload your SQL script here for queries and table creation
- README.md — This project overview and instructions
- LICENSE — MIT License
# Database Structure
PROJECT 1
- rapido: Contains Date, Time, Booking_ID, Booking_Status, Customer_ID	Vehicle_Type, Pickup_Location	Drop_Location, Avg_VTAT, Avg_CTAT, Cancelled_Rides_by_Customer, Reason_for_cancelling_by_Customer, Cancelled_Rides_by_Driver, Incomplete_Rides, Incomplete_Rides_Reason, Booking_Value, Ride_Distance, Driver_Ratings, Customer_Rating

PROJECT 2
- employees: Contains fields such as gender, designation, salary, status, and department reference.
- departments: Holds department IDs, names, and head employee IDs.
- projects: Stores project names, budgets, related departments, and timelines.
# Analytical Queries
The provided SQL file have answer of Project 1:
1. Retrieve all successful bookings:
2. Find the average ride distance for each vehicle type:
3. Get the total number of cancelled rides by customers:
4. List the top 5 customers who booked the highest number of rides:
5. Get the number of rides cancelled by drivers due to personal and car-related issues:
6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
7. Retrieve all rides where payment was made using UPI:
8. Find the average customer rating per vehicle type:
9. Calculate the total booking value of rides completed successfully:
10. List all incomplete rides along with the reason:

The provided SQL file have answer of Project 2:
1. What is the gender distribution across all departments?
2. How many active employees are in each department?
3. Which departments have the most interns?
4. What is the average CTC per department?
5. What ongoing projects exist per department, and what are their budgets?
6. How many ongoing projects does each department head manage?
- All query examples are included in SQL_Queries.sql.
# Getting Started
- Download or clone the repository.
- Open the CSV files in your SQL client to load sample data [(guide on importing CSV in MySQL)](https://dev.mysql.com/doc/workbench/en/wb-admin-export-import-table.html).
- Run the SQL script for table creation and to execute built-in analytical queries.
- Explore and modify queries as per your requirements.
# Learning Outcomes
- Apply SQL for realistic HR and business analytics scenarios.
- Practice multi-table joins, aggregation, and data modeling.
- Gain experience working with structured, artificial datasets for portfolios, tests, or interviews.
# License
This project is licensed under the MIT License.

Feel free to copy and adapt this README; simply replace file links or section names as your repo grows. This ensures all users see where to find and how to use your scripts and data files for robust results.
