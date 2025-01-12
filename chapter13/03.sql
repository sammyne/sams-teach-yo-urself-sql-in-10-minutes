-- 使用 OUTER JOIN 联结 Products 表和 OrderItems 表，返回产品名
-- 称（prod_name）和与之相关的订单号（order_num）的列表，并按
-- 商品名称排序。

select
  p.prod_name,
  i.order_num
from
  Products as p
  left outer join OrderItems as i
  on p.prod_id = i.prod_id
order by
  p.prod_name;