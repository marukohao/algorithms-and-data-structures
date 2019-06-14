The Employee table holds all employees. Every employee has an Id, a salary, and there is also a column for the department Id.
+----+-------+--------+--------------+
| Id | Name  | Salary | DepartmentId |
+----+-------+--------+--------------+
| 1  | Joe   | 70000  | 1            |
| 2  | Jim   | 90000  | 1            |
| 3  | Henry | 80000  | 2            |
| 4  | Sam   | 60000  | 2            |
| 5  | Max   | 90000  | 1            |
+----+-------+--------+--------------+
The Department table holds all departments of the company.
+----+----------+
| Id | Name     |
+----+----------+
| 1  | IT       |
| 2  | Sales    |
+----+----------+
Write a SQL query to find employees who have the highest salary in each of the departments. 
For the above tables, your SQL query should return the following rows (order of rows does not matter).
+------------+----------+--------+
| Department | Employee | Salary |
+------------+----------+--------+
| IT         | Max      | 90000  |
| IT         | Jim      | 90000  |
| Sales      | Henry    | 80000  |
+------------+----------+--------+
BONUS:
Give all the the Employees a 2% Salary increase

UPDATE employee SET salary = salary * 1.02;

SELECT
  max_salary_table.department_name AS Department, 
  employee.name AS Employee,
  employee.salary AS Salary
FROM
  employee 
INNER JOIN (
  SELECT 
    department.id AS id, 
    MAX(employee.salary) AS max_salary, 
    department.name AS department_name
  FROM 
    department
  INNER JOIN 
    employee 
  ON 
    employee.department_id = department.id
  GROUP BY
    department_name
) max_salary_table 
ON 
  employee.department_id = max_salary_table.id 
AND 
  max_salary_table.max_salary = employee.salary







