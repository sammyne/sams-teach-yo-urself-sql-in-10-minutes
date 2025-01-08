-- 从 Products 表中检索产品名称（prod_name）和描述（prod_desc），仅返回在描述中以先后顺序同时出现 toy 和 carrots 的产品

select
  prod_name, prod_desc
from
  Products
where
  prod_desc like '%toy%carrots%';
