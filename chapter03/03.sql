-- 显示 OrderItems 表中的数量和价格（item_price），并按数量由多到少、价格由高到低排序。

select
  quantity, item_price  
from
  OrderItems
order by quantity desc, item_price desc;
