-- 使用 UPDATE 语句更新 Vendor 记录，以便加入网站（你可以编造任何地址）。

select * from Vendors;

update Vendors
set vend_web = 'http://www.example.com'
where
  vend_id = 'DLL01';

select * from Vendors;
