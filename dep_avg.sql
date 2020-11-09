SELECT d.dept_no as id, d.dept_name AS 'Департамент', round(avg(s.salary), 2) as 'Средняя зарплата'
FROM departments d
left join dept_emp as de on d.dept_no = de.dept_no
left join salaries s on s.emp_no = de.emp_no
left join employees e on de.emp_no = e.emp_no
group by d.dept_no
;