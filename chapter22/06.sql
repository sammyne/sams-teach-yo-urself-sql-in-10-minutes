-- 触发器

select * from Customers;

-- CREATE TRIGGER customer_state
-- BEFORE INSERT OR UPDATE ON Customers
-- FOR EACH ROW
-- BEGIN
--     UPDATE Customers
--     SET cust_state = UPPER(NEW.cust_state)
--     WHERE cust_id = NEW.cust_id;
-- END;

drop trigger if exists customer_state_to_upper_on_insert;
CREATE TRIGGER customer_state_to_upper_on_insert
AFTER INSERT ON Customers
FOR EACH ROW
BEGIN
    UPDATE Customers
    SET cust_state = UPPER(NEW.cust_state)
    WHERE cust_id = NEW.cust_id;
END;

drop trigger if exists customer_state_to_upper_on_update;
CREATE TRIGGER customer_state_to_upper_on_update
AFTER UPDATE ON Customers
FOR EACH ROW
BEGIN
    UPDATE Customers
    SET cust_state = UPPER(NEW.cust_state)
    WHERE cust_id = NEW.cust_id;
END;

delete from Customers where cust_id='2000000006';

insert into Customers(cust_id, cust_name, cust_state) values('2000000006', 'alice', 'ny');

select * from Customers;

update Customers set cust_state='az' where cust_id='2000000006';

select * from Customers;
