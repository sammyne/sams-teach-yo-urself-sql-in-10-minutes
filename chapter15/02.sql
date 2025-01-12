-- 备份 Orders 表和 OrderItems 表。

insert into OrdersBackup
select
  *
from
  Orders;


insert into OrderItemsBackup
select
  *
from
  OrderItems;

.tables
