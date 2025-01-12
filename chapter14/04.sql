-- 原始 SQL 语句
-- SELECT cust_name, cust_contact, cust_email
-- FROM Customers
-- WHERE cust_state = 'MI'
-- ORDER BY cust_name;
-- UNION
-- SELECT cust_name, cust_contact, cust_email
-- FROM Customers
-- WHERE cust_state = 'IL'ORDER BY cust_name;

-- 修正的 SQL 语句
SELECT cust_name, cust_contact, cust_email
FROM Customers
WHERE cust_state = 'MI'
UNION
SELECT cust_name, cust_contact, cust_email
FROM Customers
WHERE cust_state = 'IL'
ORDER BY cust_name;