/*
* DB: Employees
* Table: employees
* Question: Sort employees by first name ascending and last name descending
*/
select first_name, last_name from employees
order by first_name asc, last_name desc;

/*
* DB: Employees
* Table: employees
* Question: Sort employees by age
*/
SELECT * FROM EMPLOYEES 
ORDER BY age(birth_date) desc

/*
* DB: Employees
* Table: employees
* Question: Sort employees who's name starts with a "k" by hire_date
*/
SELECT first_name,last_name,hire_date from employees
where first_name ilike 'k%'
order by hire_date
