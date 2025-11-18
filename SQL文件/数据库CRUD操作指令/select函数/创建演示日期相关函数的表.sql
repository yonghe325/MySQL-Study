CREATE TABLE mes(
	id INT,
	content VARCHAR(30),
	send_time DATETIME); 
	
SELECT * FROM mes;

INSERT INTO mes VALUES(1,'北京新闻',CURRENT_TIMESTAMP());
INSERT INTO mes VALUES(2,'上海新闻',NOW());
INSERT INTO mes VALUES(3,'广州新闻',NOW());
INSERT INTO mes VALUES(4,'山东新闻',NOW());
INSERT INTO mes VALUES(5,'河北新闻',NOW());

# 显示所有新闻,只显示日期不显示时间
SELECT id,content,DATE(send_time) FROM mes;
# 查询在十分钟内发布的新闻
SELECT * FROM mes
	WHERE DATE_ADD(send_time,INTERVAL 10 MINUTE) >= NOW();
SELECT * FROM mes
	WHERE DATE_SUB(CURRENT_TIME,INTERVAL 20 MINUTE) <= send_time;
