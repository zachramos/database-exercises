USE employees;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
  JOIN dept_emp as de
    ON de.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

SELECT d.dept_name AS department_name, concat(first_name, ' ', last_name) AS department_manager, hire_date
FROM employees as e
  JOIN dept_manager AS dm
    ON dm.emp_no = e.emp_no
  JOIN departments AS d
    ON d.dept_no = dm.dept_no
  WHERE dm.to_date like '9999-%';

SELECT d.dept_name AS department_name, concat(first_name, ' ', last_name) AS department_manager, hire_date
FROM employees as e
  JOIN dept_manager AS dm
    ON dm.emp_no = e.emp_no
  JOIN departments AS d
    ON d.dept_no = dm.dept_no
  WHERE dm.to_date like '9999-%' AND e.gender = 'F';

SELECT t.title AS 'Title',COUNT(t.title)
FROM titles AS t
  JOIN dept_emp AS de
    ON de.emp_no = t.emp_no
WHERE de.dept_no = 'd009'
      AND de.to_date LIKE '9999-%'
      AND t.to_date LIKE '9999-%'
GROUP BY t.title;

SELECT d.dept_name AS 'Department',CONCAT(e.first_name, ' ', e.last_name) AS 'Name',s.salary AS 'Salary'
FROM employees as e
  JOIN dept_manager as dm
    ON dm.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = dm.dept_no
  JOIN salaries as s
    ON s.emp_no = e.emp_no
WHERE dm.to_date LIKE '9999-%'
      AND s.to_date LIKE '9999-%';

