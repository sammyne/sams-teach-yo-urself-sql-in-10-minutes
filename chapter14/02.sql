-- 从 OrderItems 表中检索产品 ID（prod_id）和 quantity。过滤数量为 100 的行或 ID 以 BNBG 开头的产品。按产品 ID 对结果进行排序。

select
  prod_id, quantity
from
  OrderItems
where
  quantity = 100 or
  prod_id like 'BNBG%'
order by
  prod_id;
