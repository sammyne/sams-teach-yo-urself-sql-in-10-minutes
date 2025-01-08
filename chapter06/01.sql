-- 从 Products表中检索产品名称（prod_name）和描述（prod_desc），仅返回描述中包含 toy一词的产品。

select
  prod_name, prod_desc
from
  Products
where
  prod_desc like '%toy%';
