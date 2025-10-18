

SELECT country_id, country_name
FROM hr.countries 
MINUS
SELECT hr.countries.country_id, hr.countries.country_name
FROM hr.countries, hr.locations, hr.departments
WHERE hr.countries.country_id = hr.locations.country_id
AND hr.locations.location_id = hr.departments.location_id;

SELECT department_id
FROM hr.departments

MINUS

SELECT DISTINCT department_id
FROM hr.employees
WHERE job_id = 'ST_CLERK';


SELECT department_id, department_name
FROM hr.departments
WHERE department_name = 'Sales'

UNION

SELECT department_id, department_name
FROM hr.departments
WHERE department_name = 'Accounting';




SELECT department_id, department_name
FROM hr.departments

MINUS

SELECT DISTINCT d.department_id, d.department_name
FROM hr.departments d
JOIN hr.employees e
ON d.department_id = e.department_id;


SELECT job_id, department_id
FROM hr.employees
WHERE department_id = 10

UNION ALL

SELECT job_id, department_id
FROM hr.employees
WHERE department_id = 50

UNION ALL

SELECT job_id, department_id
FROM hr.employees
WHERE department_id = 20;











select employee_id,last_name,job_id,department_id
from hr.employees
where department_id = 90;

select last_name,job_id,department_id
from hr.employees
where last_name = 'Whalen';

select last_name
from hr.employees
where hire_date = '17-FEB-96';

select last_name,salary
from hr.employees
where salary <= 3000;

select last_name,salary
from hr.employees
where salary BETWEEN 2500 AND 3500;

select last_name
from hr.employees
where last_name BETWEEN 'King' AND 'Smith';


select last_name,salary,manager_id
from hr.employees
where last_name IN('Hartstein','Vargas');

select last_name
from hr.employees
where last_name LIKE '_o%';

select last_name,manager_id
from hr.employees
where manager_id IS NULL;

select 

