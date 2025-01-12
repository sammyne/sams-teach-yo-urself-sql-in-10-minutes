-- 使用子查询来确定
-- 哪些订单（在 OrderItems中）购买了 prod_id为 BR01的产品，然
-- 后从 Orders 表中返回每个产品对应的顾客 ID（cust_id）和订单日
-- 期（order_date）。按订购日期对结果进行排序。

select
  cust_id, order_date
from
  Orders
where
  order_num in
  (
    select
      order_num
    from
      OrderItems
    where
      prod_id = 'BR01'
  )
order by order_date;