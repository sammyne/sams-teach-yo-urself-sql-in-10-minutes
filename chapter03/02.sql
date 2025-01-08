-- 从 Orders 表中检索顾客 ID（cust_id）和订单号（order_num），并先按顾客 ID 对结果进行排序，再按订单日期倒序排列

select
  cust_id, order_num
from
  Orders
order by cust_id, order_date desc;
