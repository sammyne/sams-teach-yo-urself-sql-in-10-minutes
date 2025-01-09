-- 返回顾客 ID
-- （cust_id） 、顾客名称（customer_name）和登录名（user_login），
-- 其中登录名全部为大写字母，并由顾客联系人的前两个字符（cust_
-- contact）和其所在城市的前三个字符（cust_city）组成。例如，
-- 我的登录名是 BEOAK（Ben Forta，居住在 Oak Park）
--
-- substr( string, start, length )
-- - start 从 1 开始

select
  cust_id,
  cust_name,
  upper(substr(cust_contact, 1, 2)) || upper(substr(cust_city, 1, 3)) as user_login
from
  Customers;
