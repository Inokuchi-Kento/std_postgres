alter table employees add column company_id int references companies(company_id);

update employees set company_id = 1100 where employee_id = 1;