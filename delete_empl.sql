delete from employees e where e.emp_no = (
SELECT 
    s.emp_no
FROM
    salaries s,
    employees empl
WHERE
    s.emp_no = empl.emp_no
ORDER BY s.salary DESC
LIMIT 1
    );