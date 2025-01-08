-- 原始 SQL
-- SELECT vend_name
-- FROM Vendors
-- ORDER BY vend_name
-- WHERE vend_country = 'USA' AND vend_state = 'CA';

-- 修正的 SQL
SELECT vend_name
FROM Vendors
WHERE vend_country = 'USA' AND vend_state = 'CA'
ORDER BY vend_name;
