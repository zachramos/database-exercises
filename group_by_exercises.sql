USE employees;

SELECT DISTINCT title
FROM titles
GROUP BY title
ORDER BY title;

SELECT last_name,first_name
FROM employees
WHERE last_name like 'e%e'
GROUP BY last_name , first_name
ORDER BY first_name, last_name;

SELECT  count(*), last_name
FROM employees
WHERE last_name like '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY count(*);

SELECT count(gender), gender
FROM employees
WHERE first_name IN ('irena', 'vidya', 'maya')
GROUP BY gender;