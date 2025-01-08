-- 从 Products表中检索产品名称（prod_name）和描述（prod_desc），仅返回描述中同时出现 toy 和 carrots 的产品。

select
  prod_name, prod_desc
from
  Products
where
  prod_desc like '%toy%' and
  prod_desc like '%carrots%';
