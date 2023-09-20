-- inner join
select * from employees 
inner join companies on employees.company_id = companies.company_id;

-- left join
select * from employees
left join companies on employees.company_id = companies.company_id;

-- right join
select * from employees
right join companies on employees.company_id = companies.company_id;

-- full join
select * from employees
full join companies on employees.company_id = companies.company_id;

select e.employee_id, e.name, e.age, e.company_id, c.name 
from employees e
left join companies c on e.company_id = c.company_id
where c.company_id = 1100;
