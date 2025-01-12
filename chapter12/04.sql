-- 返回购买 prod_id 为 BR01 的产品的所有顾客的电子邮件（Customers表中的 cust_email）

select
  c.cust_email as cust_email
from
  OrderItems as i
  inner join Orders as o
  on i.order_num = o.order_num
  inner join Customers as c
  on o.cust_id = c.cust_id
where i.prod_id = 'BR01'