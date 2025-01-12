-- 返回 Customers 表中的顾客名称（cust_name）和
-- Orders 表中的相关订单号（order_num），并按顾客名称再按订单号
-- 对结果进行排序。

-- 方案 1
-- select
--   c.cust_name as cust_name,
--   o.order_num as order_num
-- from
--   Customers as c, Orders as o
-- where
--   c.cust_id = o.cust_id
-- order by
--   o.order_num, c.cust_name;

-- 方案 2
select
  c.cust_name as cust_name,
  o.order_num as order_num
from
  Customers as c
inner join Orders as o
on
  c.cust_id = o.cust_id
order by o.order_num, c.cust_name;
