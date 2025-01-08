-- 从 OrderItems 表中检索出所有不同订单号（order_num），其中包含 100 个或更多的产品。

select
  distinct order_num
from
  OrderItems
where
  quantity>=100;
