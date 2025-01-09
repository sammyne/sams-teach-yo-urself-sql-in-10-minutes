-- 示例商店正在进行打折促销，所有产品均降价 10%。
-- 从 Products 表中返回 prod_id、prod_price 和 sale_price。
-- sale_price 是一个包含促销价格的计算字段

select
  prod_id, prod_price, prod_price*0.9 as sale_price
from
  Products;
