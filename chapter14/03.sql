-- 组合 Products表中的产品名称（prod_name）和 Customers表中的
-- 顾客名称（cust_name）并返回，然后按产品名称对结果进行排序。

select
  prod_name
from
  Products
union
select
  cust_name
from
  Customers;
