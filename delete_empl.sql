delete from employees e where e.emp_no = (
SELECT 
    s.emp_no
FROM
    salaries s
ORDER BY s.salary DESC
LIMIT 1
    );
