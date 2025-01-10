-- 确定 OrderItems 表中已售出产品项（prod_item）BR01 的总数。

select
  sum(quantity)
from
  OrderItems
where
  prod_id = 'BR01';
