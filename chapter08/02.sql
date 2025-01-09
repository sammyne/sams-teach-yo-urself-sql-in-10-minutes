-- 返回 2020 年 1 月的所有订单的订单号（order_num）
-- 和订单日期（order_date），并按订单日期排序。

select
  order_num,
  order_date
from
  Orders
where
  strftime('%Y', order_date)='2020' and
  strftime('%m', order_date)='01' 
order by order_date;
