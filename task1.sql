CREATE DATABASE IF NOT EXISTS task1;
USE task1;
CREATE TABLE IF NOT EXISTS sales
(
id INT PRIMARY KEY AUTO_INCREMENT,
order_date VARCHAR(45),
count_product INT(5)
);
INSERT sales (order_date, count_product)
VALUE
	("2022-01-01", "156"),
    ("2022-01-02", "180"),
    ("2022-01-03", "21"),
    ("2022-01-04", "124"),
    ("2022-01-05", "341");
SELECT *
FROM sales;
SELECT
	id AS "номер заказа",
    order_date AS "дата заказа",
    count_product AS "колличество",
	IF (count_product < 100, "маленький заказ",
		IF (count_product BETWEEN 101 AND 299, "средний заказ",
			IF (count_product BETWEEN 300 AND 500, "большой заказ", "ошибка")))
	AS "вид заказа"
FROM sales;