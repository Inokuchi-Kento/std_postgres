SELECT e.name 
from employees e
join companies c on c.company_id = e.company_id
where e.name like 'Inokuchi%' and c.company_id = 1100;

-- ageが最も若い人を検索
select * from employees
where age = (select min(age) from employees);

-- ageが最も年長の人を検索
select * from employees
where age = (select max(age) from employees);

-- company_idでグループ化して、ageの平均値を求める
select avg(age), company_id from employees
group by company_id;

-- company_idでグループ化して、ageの平均値が30以上のものを抽出
select avg(age), company_id from employees
group by company_id
having avg(age) >= 30;

-- employeesとcompaniesを結合
-- company_idでグループ化して、ageの平均値を求める
select avg(e.age), e.company_id from employees e
left join companies c on e.company_id = c.company_id
group by e.company_id;