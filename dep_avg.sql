SELECT 
    d.dept_no AS id,
    d.dept_name AS 'Департамент',
    ROUND(AVG(s.salary), 2) AS 'Средняя зарплата'
FROM
    departments d
        JOIN
    dept_emp AS de ON d.dept_no = de.dept_no
        JOIN
    salaries s ON s.emp_no = de.emp_no
        JOIN
    employees e ON de.emp_no = e.emp_no
WHERE
    s.to_date = '9999-01-01'
    AND de.to_date = '9999-01-01'
GROUP BY d.dept_no
;
