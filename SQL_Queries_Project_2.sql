-- Create database name company and use it.
CREATE DATABASE company;
USE company;

-- Imported table from the sample data ALTER Some column from text to VARCHAR and create some PRIMARY AND FOREIGN KEYS.
-- What is the gender distribution across all departments?
SELECT d.department_name, e.gender, COUNT(*)
FROM departments d
INNER JOIN employees e
ON d.Department_ID = e.Department_ID
GROUP BY d.Department_Name, e.gender
ORDER BY d.Department_Name, e.gender;

-- List all departments and the number of active employees in each.
SELECT d.department_name, count(*) AS Active_employees
FROM departments d
INNER JOIN employees e
ON d.Department_ID = e.Department_ID
WHERE status = 'Active'
GROUP BY d.Department_Name;

-- Show the top 3 departments with the highest number of interns.
SELECT d.department_name, count(*) AS Highest_interns
FROM departments d
INNER JOIN employees e
ON d.Department_ID = e.Department_ID
WHERE Designation = "Intern"
GROUP BY d.Department_Name
ORDER BY highest_interns DESC
LIMIT 3;

-- What is the average CTC of employees by department?
SELECT d.department_name, ROUND(AVG(e.ctc), 2) AS AVG_CTC
FROM departments d
INNER JOIN employees e
ON d.Department_ID = e.Department_ID
GROUP BY d.Department_Name;

-- List all ongoing projects, the department they belong to, and their budgets
SELECT p.project_name, p.project_id, d.department_name, p.budget
FROM departments d
INNER JOIN projects p
ON D.Department_ID = p.Department_ID
WHERE End_Date = "Ongoing"
ORDER BY p.project_name;

-- Identify department heads who have the highest nummber of ongoing projects under their departments.
SELECT d.head_Employee_ID, d.department_name, COUNT(*) AS Total_ongoing_projects
FROM departments d
INNER JOIN projects p
ON d.Department_ID = p.Department_ID
WHERE End_Date = 'Ongoing'
GROUP BY d.head_Employee_ID, d.department_name
ORDER BY Total_ongoing_projects DESC;

-- For each department, list Active headcount, number of Ongoing projects
SELECT 
    d.department_name,
    COUNT(DISTINCT CASE WHEN e.status = 'Active' THEN e.employee_id END) AS Active_employees,
    COUNT(DISTINCT CASE WHEN p.end_date = 'ONGOING' THEN p.project_id END) AS Ongoing_projects
FROM departments d
LEFT JOIN employees e 
    ON d.department_id = e.department_id
LEFT JOIN projects p 
    ON d.department_id = p.department_id
GROUP BY d.department_name;

