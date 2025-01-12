-- 使用子查询来确定
-- 哪些订单（在 OrderItems中）购买了 prod_id为 BR01的产品，然
-- 后从 Orders 表中返回每个产品对应的顾客 ID（cust_id）和订单日
-- 期（order_date）。按订购日期对结果进行排序。

-- 方案 1
select
  o.cust_id as cust_id,
  o.order_date as order_date
from
  Orders as o, OrderItems as i
where
  o.order_num = i.order_num
  and i.prod_id = 'BR01'
order by
  o.order_date;

-- 方案 2
select
  o.cust_id as cust_id,
  o.order_date as order_date
from
  Orders as o
  inner join OrderItems as i
    on o.order_num = i.order_num
  where
    i.prod_id = 'BR01'
order by
  o.order_date;