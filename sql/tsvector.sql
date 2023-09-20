
alter table employees add column ts_name tsvector;

-- 1. トリガーを作成する
create trigger ts_name before insert or update on employees 
for each row execute procedure tsvector_update_trigger(ts_name, 'pg_catalog.english', name);

-- 2. tsvectorに対してGIN(汎用転置インデックス)を作成する
create index ts_name on employees using gin(ts_name);

-- 全文検索
select * from employees where ts_name @@ to_tsquery('pg_catalog.english', 'test');

-- ts_namekaramを削除する
alter table employees drop column ts_name;