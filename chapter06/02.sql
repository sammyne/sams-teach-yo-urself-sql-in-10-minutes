-- 从 Products 表中检索产品名称（prod_name）和描述（prod_desc），仅返回描述中未出现 toy 一词的产品。这次，按产品名称对结果进行排序。

select
  prod_name, prod_desc
from
  Products
where
  prod_desc not like '%toy%'
order by prod_name;
