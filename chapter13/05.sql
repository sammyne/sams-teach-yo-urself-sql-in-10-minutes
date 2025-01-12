-- 列出供应商（Vendors表中的 vend_id）及其可供产品的数量，包括没有产品的供应商。

select
  v.vend_id as vend_id,
  count(p.prod_id) as total_prod 
from
  Vendors as v
  left outer join Products as p
  on v.vend_id = p.vend_id
group by
  v.vend_id;
