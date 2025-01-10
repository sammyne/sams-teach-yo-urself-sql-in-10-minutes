-- 返回总价至少为 1000 的所有订单的订单号（OrderItems 表中的 order_num）。
-- 按订单号对结果进行排序。

select
  order_num, sum(item_price*quantity) AS total_price
from
  OrderItems
group by order_num
having sum(quantity * item_price) >= 1000
order by order_num;
