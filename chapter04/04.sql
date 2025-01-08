-- 返回 Products 表中所有价格在 3 美元到 6 美元之间的产品的名称（prod_name）和价格（prod_price），然后按价格对结果进行排序。

select
  prod_name, prod_price
from
  Products
where 
  prod_price between 3 and 6
order by prod_price;

