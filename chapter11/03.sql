-- 返回购买 prod_id 为 BR01 的产品的所有顾客的电子邮件（Customers表中的 cust_email）

select
  cust_email
from
  Customers
where
  cust_id in (
    select
      cust_id
    from
      Orders
    where
      order_num in (
        select
          order_num
        from
          OrderItems
        where
          prod_id = 'BR01'
      )
  );
