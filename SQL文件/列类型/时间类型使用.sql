# 演示时间相关的类型
# 创建一张表 date , datetime , timestamp
CREATE TABLE date_Study(
	birthday DATE,
	jobtime DATETIME,
	login_time TIMESTAMP 
		NOT NULL DEFAULT CURRENT_TIMESTAMP 
		# 不允许为空
		ON UPDATE CURRENT_TIMESTAMP
		# 以更新时间更新该时间戳
		# 及时不输入该列,服务器也会自动填入该时间戳
);
SELECT * FROM date_Study;
INSERT INTO date_Study(birthday,jobtime) VALUE('2022_11_11','2022_11_11 10:10:10');
# 指定输入列