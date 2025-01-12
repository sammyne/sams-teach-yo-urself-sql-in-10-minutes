-- 返回购买价格为 10 美元或以上产品的顾客列表

select
  *
from
  Customers
where
  cust_id in
  (
    select
      cust_id
    from
      Orders
    where
      order_num in
      (
        select
          distinct order_num
        from
          OrderItems
        where
          item_price >= 10
      )
  );
