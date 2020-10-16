/*
*  How many people were hired on did we hire on any given hire date?
*  Database: Employees
*  Table: Employees
*/

select hire_date,count(emp_no) 
from employees
group by hire_date
order by count(emp_no) desc
/*
*  Show me all the employees, hired after 1991, that have had more than 2 titles
*  Database: Employees
*/

SELECT e.emp_no, count(t.title) as "amount of titles"
FROM employees as e
JOIN titles as t USING(emp_no)
WHERE EXTRACT (YEAR FROM e.hire_date) > 1991
GROUP BY e.emp_no
HAVING count(t.title) > 2
ORDER BY e.emp_no;



/*
*  Show me all the employees that have had more than 15 salary changes that work in the department development
*  Database: Employees
*/

select d.dept_name,de.dept_no,s.emp_no,e.first_name,count(salary) from employees as e 
inner join salaries as s using(emp_no)
inner join dept_emp as de using(emp_no)
INNER JOIN departments AS d using(dept_no)
GROUP BY s.emp_no,e.first_name,de.dept_no,d.dept_name
having count(salary) > 15 AND de.dept_no = 'd005'

*  Show me all the employees that have worked for multiple departments
*  Database: Employees
*/

select e.emp_no,e.first_name,count(de.dept_no) 
from employees as e 
inner join dept_emp as de using(emp_no)
INNER JOIN departments AS d using(dept_no)
GROUP BY e.emp_no,e.first_name
Having count(de.dept_no) > 1
