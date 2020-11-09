select de.dept_no, dep.dept_name, count(*), sum(sal.salary)
  from employees.employees emp
  join employees.salaries sal on emp.emp_no = sal.emp_no and sal.from_date <= curdate() and sal.to_date > curdate()
  join employees.dept_emp de on de.emp_no = emp.emp_no
  join employees.departments dep on dep.dept_no = de.dept_no
 where de.from_date <= curdate()
   and de.to_date > curdate()
group by dep.dept_no
order by dept_no asc;