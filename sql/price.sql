-- productのpriceの合計
select sum(price) from products;

-- productのpriceの平均(小数点以下切り捨て)
select floor(avg(price)) from products;