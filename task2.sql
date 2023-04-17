CREATE DATABASE IF NOT EXISTS task2;
USE task2;
CREATE TABLE IF NOT EXISTS orders
(
id INT PRIMARY KEY AUTO_INCREMENT,
employee_id VARCHAR(45),
amount FLOAT(10.10),
order_status VARCHAR(45)
);
INSERT orders (employee_id, amount, order_status)
VALUE
	('e03', '15.00', 'open'),
    ('e01', '25.50', 'open'),
    ('e05', '100.70', 'closed'),
    ('e02', '22.18', 'open'),
    ('e04', '9.50', 'cancelled');
SELECT *
FROM orders;
SELECT id AS 'позиция',
employee_id AS 'номер заказа',
CASE
	WHEN order_status = 'open' THEN 'order is in open state'
    WHEN order_status = 'closed' THEN 'order is closed'
    WHEN order_status = 'cancelled' THEN 'order is cancelled'
    ELSE 'FATALERROR'
END AS 'комментарий'
FROM orders;