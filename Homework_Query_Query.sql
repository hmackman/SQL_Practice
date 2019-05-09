-- Each employee: employee number, last name, first name, gender, and salary
select e.Employee_Number, e.Last_Name, e.First_Name, e.Gender, s.Salary 
from Employees e
join Salaries s on s.Employee_Number = e.Employee_Number


-- Employees who were hired in 1986
select * 
from Employees e
where e.Hire_Date >= '01-01-1986'
order by e.Hire_Date ASC


-- Manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates
select m.Department_Number, d.Department_Name, m.Employee_Number, e.Last_Name, e.First_Name, m.From_Date, m.To_Date
from Department_Manager as m
join Departments d on d.Department_Number=m.Department_Number
join Employees e on e.Employee_Number=m.Employee_Number
order by m.Employee_Number DESC

--department of each employee with the following information: employee number, last name, first name, and department name
select e.Employee_Number,e.Last_Name,e.First_Name,d.Department_Name
from Employees e 
join Department_Employee de on de.Employee_Number=e.Employee_Number
join Departments d on d.Department_Number=de.Department_Number
order by e.Employee_Number ASC


-- Employees whose first name is "Hercules" and last names begin with "B."
select *
from Employees e 
where e.First_Name='Hercules'
and e.Last_Name like 'B%'


--Sales department, including their employee number, last name, first name, and department name.
select e.Employee_Number, e.Last_Name, e.First_Name, d.Department_Name
from Departments d 
join Department_Employee de on de.Department_Number=d.Department_Number
join Employees e on e.Employee_Number=de.Employee_Number
where d.Department_Name='Sales'


--Employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.Employee_Number, e.Last_Name, e.First_Name, d.Department_Name
from Departments d 
join Department_Employee de on de.Department_Number=d.Department_Number
join Employees e on e.Employee_Number=de.Employee_Number
where d.Department_Name in ('Sales','Development')


--Descending order, list the frequency count of employee last names, i.e., how many employees share each last name
select e.Last_Name, count(e.Last_Name) as "Count"
from Employees e
group by e.Last_Name
order by "Count" DESC
