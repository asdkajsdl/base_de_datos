"Actividad 1"

SELECT  j.job_title AS job_title, COUNT(e.employee_id) AS employee_count,SUM(e.salary) AS total_salary FROM jobs j
LEFT JOIN employees e ON j.job_id = e.job_id
GROUP BY j.job_title
ORDER BY employee_count DESC;

"Actividad 2"
SELECT first_name, last_name, job_title, department_name, city FROM employees e
JOIN jobs j on e.job_id = j.job_id
JOIN departments d on e.department_id = d.department_id
JOIN locations l on d.location_id = l.location_id
 
"Actividad 3"
UPDATE employees
SET salary = salary * 1.55
WHERE salary < 7500 AND department_id IN (
    SELECT department_id 
    FROM departments 
    WHERE department_name = 'IT' OR department_name = 'Finance'
);


"actividad 5"
UPDATE employees
SET phone_number = '333.444.555'
WHERE phone_number IS NULL OR phone_number = '';
