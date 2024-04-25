SELECT first_name,last_name, salary from employees
WHERE salary <6000

SELECT e.first_name,e.last_name,d.department_name, l.city, l.state_province FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l on l.location_id = d.location_id 

SELECT first_name, manager_id FROM employees