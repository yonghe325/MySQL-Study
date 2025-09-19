```
SELECT \[DISTINCT] (*) \ ( {column01,column02,column03,column04} ) FROM tb_name;
```

select指定查询那些列的数据
\[DISTINCT]关键字可选,取消重复,去重
\*代表所有列
from代表查询哪一张表
# 去同查询
```
CREATE TABLE student (
	id INT NOT NULL DEFAULT 1,
	`name` VARCHAR(20) NOT NULL DEFAULT ' ',
	chinese FLOAT NOT NULL DEFAULT 0.0,
	english FLOAT NOT NULL DEFAULT 0.0,
	math FLOAT NOT NULL DEFAULT 0.0
);

INSERT INTO student (id,`name`,chinese,english,math) VALUES (1,'张勇',89,78,90);
INSERT INTO student (id,`name`,chinese,english,math) VALUES (2,'张飞',67,98,56);
INSERT INTO student (id,`name`,chinese,english,math) VALUES (3,'宋江',87,78,77);
INSERT INTO student (id,`name`,chinese,english,math) VALUES (4,'关羽',88,98,90);
INSERT INTO student (id,`name`,chinese,english,math) VALUES (5,'赵云',82,84,67);
INSERT INTO student (id,`name`,chinese,english,math) VALUES (6,'欧阳风',55,85,67);
INSERT INTO student (id,`name`,chinese,english,math) VALUES (7,'黄蓉',75,65,30);
-- ---------------------------------------------------

# 查询表中所有学生的信息
SELECT * FROM student;
# 查询表中所有学生的信命和对应的英语成绩
SELECT `name` , english FROM student;
# 过滤表中的重复数据 distinct
SELECT english FROM student;
SELECT DISTINCT english FROM student;
# 只有每个字段相同才会去同
SELECT DISTINCT `name`,english FROM student;


DESCRIBE student;


```

# 使用表达式对查询列进行运算
## 表达式
```
SELECT (*) \ ( {column01|expression ,column02,column03,column04} ) FROM tb_name;
```
统计每个学生的总分
```
SELECT `name` ,(chinese+english+math) FROM student;
```
在总分的基础上加10分
```
SELECT `name` ,(chinese+english+math+10) FROM student;
```
## 别名
在select语句中使用as语句,用别名替换生成列名
```
select column_name as from 表名;
```
 用别名表示学生分数
```
SELECT `name` ,(chinese+english+math+10) AS total_score FROM student;
```
用别名替换生成列
```
SELECT `name` AS  学生名 ,(chinese+english+math+10) AS total_score FROM student;

```

