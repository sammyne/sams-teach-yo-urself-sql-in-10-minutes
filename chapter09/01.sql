-- 确定已售出产品的总数（使用 OrderItems 中的 quantity 列）

select
  sum(quantity)
from
  OrderItems;
