-- OrderItems 表包含每个订单的每个产品。编写 SQL 语句，返回每个
-- 订单号（order_num） 各有多少行数（order_lines），并按 order_lines
-- 对结果进行排序。

select
  order_num,
  count(*) as order_lines
from
  OrderItems
group by
  order_num
order by
  order_lines desc;
