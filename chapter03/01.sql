-- 从 Customers 中检索所有的顾客名称（cust_names），并按从 Z 到 A 的顺序显示结果

select
  cust_name
from
  Customers
order by cust_name desc;
