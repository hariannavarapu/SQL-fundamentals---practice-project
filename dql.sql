-- DQL: Queries for analysis

-- View all employees
SELECT * FROM employees;

-- Filter by salary
SELECT first_name, salary
FROM employees
WHERE salary > 55000;

-- Aggregation
SELECT department_id, COUNT(*) AS total_employees
FROM employees
GROUP BY department_id;

-- Join employees with departments
SELECT e.first_name, e.last_name, d.department_name
FROM employees e
JOIN departments d
ON e.department_id = d.department_id;

-- Subquery example
SELECT first_name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary) FROM employees
);

-- Top earners
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 3;
