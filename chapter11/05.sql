-- 从 Products表中检索所有的产品名称（prod_name），以及名为 quant_sold 的计算列，其中包含所售产品的总数
--（在 OrderItems表上使用子查询和 SUM(quantity)检索）。

select
  prod_name,
  (
    select
      sum(quantity)
    from
      OrderItems
    where
      OrderItems.prod_id = Products.prod_id
  ) as quant_sold
from
  Products;
