-- 从 Vendors 表中检索
-- vend_id、vend_name、vend_address 和 vend_city，将 vend_name
-- 重命名为 vname，将 vend_city 重命名为 vcity，将 vend_address
-- 重命名为 vaddress。按供应商名称对结果进行排序（可以使用原始
-- 名称或新的名称）

select
  vend_id,
  vend_name as vname,
  vend_address as vaddress,
  vend_city as vcity
from
  Vendors
order by vname;
