-- 创建一个名为 CustomersWithOrders 的视图，其中包含 Customers 表中的所有列，但仅仅是那些已下订单的列

create view CustomersWithOrders as
select
  Customers.*
from Customers
inner join Orders
on Customers.cust_id = Orders.cust_id;

select
  *
from CustomersWithOrders;
