-- 回所有价格在 3 美元到 6 美元之间的产品的名称（prod_name）和价格（prod_price）。使用 AND，然后按价格对结果进行排序。

select
  prod_name, prod_price
from
  Products
where
  prod_price>=3 and prod_price<=6;
