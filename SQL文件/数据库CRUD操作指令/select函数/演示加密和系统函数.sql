# 演示加密和系统函数
# USER() 查询用户 用户@IP地址
## 可以查看登录到mysql的有哪些用户,以及登录IP
SELECT USER() FROM DUAL;
# DATABASE() 查询当前使用的数据库名称 
SELECT DATABASE() FROM DUAL;
SELECT DATABASE(); 
# MD5(str) 为字符串算出一个MD5加密,长度为32的字符串,(用户密码)加密
## 用户密码-> md5加密-> 在数据库中存放的是加密后的密码
SELECT MD5('123456') FROM DUAL;
SELECT LENGTH(MD5('123456')) FROM DUAL;
CREATE TABLE users
(
	id INT,
	`name` VARCHAR(32) NOT NULL  DEFAULT '',
	pwd CHAR(32) NOT NULL  DEFAULT ''
);
SELECT * FROM users;
INSERT INTO  users VALUES(1,'张三',MD5(88888888));
SELECT * FROM users
	WHERE `name` = '张三' AND pwd =MD5(88888888);
# PASSWORD(str) 加密函数
## select password('ccc') from dual;
select * from mysql.user