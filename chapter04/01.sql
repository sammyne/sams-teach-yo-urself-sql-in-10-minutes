-- 从 Products 表中检索产品 ID（prod_id）和产品名称（prod_name），只返回价格为 9.49 美元的产品。

select
  prod_id, prod_name
from
  Products
where
  prod_price=9.49;
