-- 返回顾客 ID（Orders 表中的 cust_id），并使用子查询返回
-- total_ordered 以便返回每个顾客的订单总数。将结果按金额从大到
-- 小排序。

select
  cust_id,
  (
    select
      sum(quantity * item_price)
    from
      OrderItems
    where
      OrderItems.order_num = Orders.order_num
    group by OrderItems.order_num
  ) as total_ordered
from
  Orders
order by total_ordered desc;
