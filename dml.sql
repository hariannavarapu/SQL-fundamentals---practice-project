-- DML: Insert, update, delete operations

INSERT INTO departments VALUES
(1, 'IT'),
(2, 'Finance'),
(3, 'HR');

INSERT INTO employees VALUES
(101, 'John', 'Doe', 1, 55000, '2023-01-15'),
(102, 'Jane', 'Smith', 2, 60000, '2022-06-10'),
(103, 'Mike', 'Brown', 1, 52000, '2023-03-20'),
(104, 'Sara', 'Wilson', 3, 48000, '2021-09-05');

UPDATE employees
SET salary = salary + 3000
WHERE department_id = 1;

DELETE FROM employees
WHERE employee_id = 104;
