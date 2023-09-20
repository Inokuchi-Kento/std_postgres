-- nameとageの複合index
-- name と age の両方を同時に検索条件とした場合に有効
create index employees_name_age_idx on employees (name, age);

-- nameとageそれぞれの個別index
create index employees_name on employees (name);
create index employees_age on employees (age);

