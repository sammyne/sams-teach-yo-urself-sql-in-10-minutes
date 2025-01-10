-- 确定 Products 表中价格不超过 10 美元的最贵产品的价格（prod_price）。将计算所得的字段命名为 max_price。

select
  max(prod_price) as max_price
from
  Products
where
  prod_price <= 10;
