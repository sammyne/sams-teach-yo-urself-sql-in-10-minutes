-- 使用 OUTER JOIN 联结 Products 表和 OrderItems 表，返回产品名
-- 称（prod_name）和总订单数，并按商品名称排序。

select
  p.prod_name,
  count(i.order_num) as total_ordered
from
  Products as p
  left outer join OrderItems as i
  on p.prod_id = i.prod_id
group by p.prod_name
order by
  p.prod_name;
