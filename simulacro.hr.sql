1_
SELECT department_name FROM departments
ORDER by department_name ASC

2_
SELECT DISTINCT salary FROM employees
ORDER by salary DESC
  
3_
SELECT  job_title as manager,min_salary,max_salary FROM jobs
WHERE job_title like '%manager'
ORDER by min_salary,max_salary DESC

4_
SELECT country_name,region_name FROM countries c
JOIN  regions r on r.region_id = c.region_id
ORDER by region_name,country_name ASC