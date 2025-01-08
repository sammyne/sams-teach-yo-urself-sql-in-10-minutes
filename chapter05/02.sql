-- 查找所有至少订购了总量 100 个的 BR01、BR02 或 BR03 的订单。

select
  order_num, prod_id
from
  OrderItems
where
  prod_id in ('BR01', 'BR02', 'BR03') and
  quantity>=100;
