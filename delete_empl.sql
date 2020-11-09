delete from employees e where e.emp_no = (
SELECT 
    s.emp_no
FROM
    salaries s
WHERE to_date = '9999-01-01'    
ORDER BY s.salary DESC
LIMIT 1
    );
