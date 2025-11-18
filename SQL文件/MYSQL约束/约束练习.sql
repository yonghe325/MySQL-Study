CREATE DATABASE shop_db;
DROP DATABASE shop_db;
# 新建goods表,商品号goods_id为主键
CREATE TABLE goods (
	goods_id INT PRIMARY KEY,
	goods_name VARCHAR(50) NOT NULL DEFAULT ' ',
	unitprice DECIMAL(10,2) NOT NULL DEFAULT 0
		CHECK ( unitprice > 1.0 AND unitprice < 9999.99 ),
	category INT NOT NULL DEFAULT 0,
	provider VARCHAR(64) NOT NULL DEFAULT' '
);
SELECT * FROM goods;
DESC goods;

# 新建客户表 客户号customer_id为主键
CREATE TABLE customer (
	customer_id INT PRIMARY KEY,
	`name` VARCHAR(64) NOT NULL DEFAULT '',
	address VARCHAR(64) NOT NULL DEFAULT '',
	email VARCHAR (32) UNIQUE,
	sex ENUM('男','女') NOT NULL,
	card_id INT 	
);
DESC customer ;
SELECT * FROM customer;
# 新建购买表purchase,订单号order_id为主键,客户号,商品号为外键
CREATE TABLE purchase (
	ord_id INT UNSIGNED PRIMARY KEY,
	customer_id INT NOT NULL DEFAULT 0, -- 外键约束在后
	goods_id INT NOT NULL DEFAULT 0,
	nums INT NOT NULL DEFAULT 1,
	FOREIGN KEY (customer_id)REFERENCES customer(customer_id),
	FOREIGN KEY (goods_id) REFERENCES goods(goods_id)
);
SELECT * FROM purchase;
DESC purchase;

