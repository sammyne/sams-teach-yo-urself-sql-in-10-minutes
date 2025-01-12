-- 两个 SELECT 语句结合起来，以便从 OrderItems
-- 表中检索产品 ID（prod_id）和 quantity。其中，一个 SELECT 语
-- 句过滤数量为 100 的行，另一个 SELECT 语句过滤 ID 以 BNBG 开头的
-- 产品。按产品 ID 对结果进行排序。

select
  prod_id, quantity
from
  OrderItems
where
  quantity = 100
union
select
  prod_id, quantity
from
  OrderItems
where
  prod_id like 'BNBG%'
order by
  prod_id;
