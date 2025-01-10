-- 返回至少含 100 项的所有订单的订单号（OrderItems表中的 order_num）

select
  order_num
from
  OrderItems
group by order_num
having sum(quantity) >= 100;
