# 创建用户
CREATE USER 'zyzy'@'localhost' IDENTIFIED BY 'zyzyzy';
SELECT * FROM mysql.`user`;
	## 查看ip地址,用户名,密码
SELECT `host`,`user`,authentication_string
	FROM mysql.`user`;
# 删除用户
DROP USER 'zyzy'@'localhost';
# 