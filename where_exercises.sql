USE employees;
# --709 rows
SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');
# --7330 rows
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'e%';
# --135,214 rows
SELECT emp_no, first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';
# --842 rows
SELECT emp_no, first_name, last_name, birth_date
FROM employees
WHERE birth_date LIKE '%12-25';
# --1873 rows
SELECT emp_no, first_name, last_name, gender
FROM employees
WHERE last_name like '%q%';