# 复制表结构
CREATE TABLE tab_02 LIKE emp;
DESC tab_02;
# 复制表数据
INSERT INTO tab_02 
	SELECT * FROM emp;
SELECT * FROM tab_02 ;
# 去重
## 1.创建一张临时表,该表的结构与tab_02相同
CREATE TABLE linshi LIKE tab_02;
SELECT * FROM linshi;
## 2. 把tab_02的记录通过关键字 distinct 处理后 把记录复制到 临时表中
INSERT INTO linshi 
	SELECT DISTINCT * FROM tab_02;
## 3. 清除tab_02的记录 
DELETE FROM tab_02;
SELECT * FROM tab_02;
## 4. 把临时表的记录复制到tab_02
INSERT INTO tab_02
	SELECT * FROM linshi;
## 5. 去重成功
SELECT * FROM tab_02;
## 6. 删除临时表
DROP TABLE linshi;
