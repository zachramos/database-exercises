USE employees;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name DESC;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;

SELECT *
FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';
# Add a condition to the previous query to find everybody with those names who is also male
SELECT *
FROM employees
WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
      AND gender = 'M';
# --7330 rows
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'e%'
ORDER BY emp_no;
# --135,214 rows
SELECT emp_no, first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '199%';
# --842 rows
SELECT emp_no, first_name, last_name, birth_date
FROM employees
WHERE birth_date LIKE '%12-25';
# --1873 rows
SELECT emp_no, first_name, last_name, gender
FROM employees
WHERE last_name like '%q%';

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'e%' OR last_name LIKE '%e';

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name like 'e%e';

SELECT first_name, last_name, hire_date,  datediff(curdate(), hire_date)
FROM employees
WHERE hire_date LIKE '199%' AND birth_date LIKE '%12-25'
ORDER BY birth_date, hire_date DESC;

SELECT *
FROM employees
WHERE last_name like '%q%' AND last_name NOT LIKE '%qu%';