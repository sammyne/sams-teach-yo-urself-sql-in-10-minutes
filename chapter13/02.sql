-- 检索每个顾客的名称（Customers 表中的 cust_name）和所有的订单号（Orders表中的 order_num），即使他们没有下过订单。

select
  cust_name,
  order_num
from
  Customers as c
  left outer join Orders as o
  on c.cust_id = o.cust_id;
