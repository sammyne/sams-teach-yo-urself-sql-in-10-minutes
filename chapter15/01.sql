-- 使用 INSERT 和指定的列，将你自己添加到 Customers 表中。明确列出要添加哪几列，且仅需列出你需要的列。

insert into Customers (
  cust_id,
  cust_name
)
values ('2000000006', 'sammyne');

select
  cust_id,
  cust_name
from
  Customers;
