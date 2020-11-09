SELECT 
    de.dept_no, dep.dept_name, COUNT(*), SUM(sal.salary)
FROM
    employees.employees emp
        JOIN
    employees.salaries sal ON emp.emp_no = sal.emp_no
        JOIN
    employees.dept_emp de ON de.emp_no = emp.emp_no
        JOIN
    employees.departments dep ON dep.dept_no = de.dept_no
WHERE
    de.to_date = '9999-01-01'
    AND sal.to_date = '9999-01-01'
GROUP BY dep.dept_no
ORDER BY dept_no ASC;
