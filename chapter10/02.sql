-- 返回名为 cheapest_item 的字段，该字段包含每个
-- 供应商成本最低的产品（使用 Products 表中的 prod_price），然后
-- 从最低成本到最高成本对结果进行排序。

select
  vend_id,
  min(prod_price) as cheapest_item
from
  Products
group by
  vend_id
order by
  cheapest_item;
