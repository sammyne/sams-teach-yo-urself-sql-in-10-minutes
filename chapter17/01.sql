-- 在 Vendors 表中添加一个网站列（vend_web）。你需要一个足以容纳 URL 的大文本字段。

select * from Vendors;

alter table Vendors add column vend_web text;

select * from Vendors;
