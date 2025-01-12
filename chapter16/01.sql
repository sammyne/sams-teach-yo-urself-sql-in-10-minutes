-- 更新所有美国地址，包括供应商状态（Vendors表中的 vend_state）和顾客状态（Customers 表中的 cust_state），使它们均为大写。

select
  *
from
  Vendors;

update Vendors
set vend_state = upper(vend_state)
where
  vend_country = 'USA';

select
  *
from
  Vendors;

select
  *
from
  Customers;

update Customers
set cust_state = upper(cust_state)
where
  cust_country = 'USA';

select
  *
from
  Customers;
