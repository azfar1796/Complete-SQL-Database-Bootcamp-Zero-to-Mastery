
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/
Select o.orderid,c.customerid,c.state from orders as o
inner join customers as c 
ON o.customerid=c.customerid 
AND
c.state in ('OH','NY','OR')


/*
* DB: Store
* Table: products
* Question: Show me the inventory for each product
*/
Select i.prod_id,p.category FROM inventory i 
inner join products as p 
on p.prod_id = i.prod_id

/*
* DB: Employees
* Table: employees
* Question: Show me for each employee which department they work in
*/

SELECT d.emp_no,dep.dept_no,dep.dept_name  from dept_emp AS d INNER JOIN departments as dep 
on d.dept_no = dep.dept_no


