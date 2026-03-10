CREATE DATABASE SQL_Task_2;
USE SQL_Task_2;

SHOW TABLES;
SHOW COLUMNS FROM employee_data1;

SELECT * FROM employee_data1;

# 1. Average salary by department
SELECT Department, AVG(Salary) AS Average_Salary FROM employee_data1 
GROUP BY Department;

# 2. Total salary by department
SELECT Department, SUM(Salary) AS Total_Salary FROM employee_data1
GROUP BY Department;

# 3. Total number of employees in each department
SELECT Department, COUNT(*) AS Employee_Count FROM employee_data1
GROUP BY Department;

# 4. Total number of employees 
SELECT COUNT(*) AS Employee_Count FROM employee_data1;

# 5. Average experience by department
SELECT Department, AVG(Experience) AS Average_Experience FROM employee_data1
GROUP BY Department;

# 6. Total number of managers
SELECT Is_Manager, COUNT(*) AS Manager_Count FROM employee_data1
GROUP BY Is_Manager;

# 7. Minimum salary by department
SELECT Department, MIN(Salary) AS Min_Salary FROM employee_data1
GROUP BY Department;

# 8. Maximum salary by deparment
SELECT Department, MAX(Salary) AS Max_Salary FROM employee_data1 
GROUP BY Department;

