-- 检索每个顾客的名称（Customers 表中的 cust_name）和所有的订单号（Orders表中的 order_num）

select
  cust_name,
  order_num
from
  Customers as c
  inner join Orders as o
  on c.cust_id = o.cust_id;
