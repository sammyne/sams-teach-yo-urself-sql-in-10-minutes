-- 从 Vendors表中检索供应商名称（vend_name），仅返回加利福尼亚州的供应商

select
  vend_name
from
  vendors
where
  vend_country='USA' and
  vend_state='CA';
