-- 除了返回顾客名称和订单号，添加第三列 OrderTotal，其中包含每个订单的总价

-- 方案 1
select
  c.cust_name as cust_name,
  o.order_num as order_num,
  (
    select
      sum(items.quantity * items.item_price)
    from
      OrderItems as items
    where
      items.order_num = o.order_num
    group by order_num
  ) as OrderTotal
from
  Customers as c, Orders as o
where
  c.cust_id = o.cust_id
order by
  o.order_num, c.cust_name;

-- 方案 2
select
  c.cust_name as cust_name,
  o.order_num as order_num,
  sum(i.quantity * i.item_price) as OrderTotal
from
  Customers as c, Orders as o, OrderItems as i
where
  c.cust_id = o.cust_id and
  o.order_num = i.order_num
group by o.order_num, c.cust_name
order by o.order_num, c.cust_name;

-- 方案 3
select
  c.cust_name as cust_name,
  o.order_num as order_num,
  sum(i.quantity * i.item_price) as OrderTotal
from
  Customers as c
  inner join Orders as o
    on c.cust_id = o.cust_id
  inner join OrderItems as i
    on o.order_num = i.order_num
group by o.order_num, c.cust_name
order by o.order_num, c.cust_name;
