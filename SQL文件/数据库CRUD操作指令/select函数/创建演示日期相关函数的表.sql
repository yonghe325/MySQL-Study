CREATE TABLE mes(
	id INT,
	content VARCHAR(30),
	send_time DATETIME); 
	
SELECT * FROM mes;

INSERT INTO mes VALUES(1,'北京新闻',CURRENT_TIMESTAMP());
INSERT INTO mes VALUES(2,'上海新闻',NOW());
INSERT INTO mes VALUES(3,'广州新闻',NOW());

SELECT id,content,DATE(send_time) FROM mes;
SELECT id,content,send_time