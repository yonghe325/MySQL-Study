where子句中经常用的运算符(过滤)
# 比较运算符
## >,<,<=,>=,=,!=
```
# 查询姓名为赵云的学生
SELECT * FROM student WHERE `name` = '赵云';
# 查询英语成绩大于90分学生
SELECT* FROM student WHERE english>90;
# cx总分大于200分的所有学生
SELECT `name`,(chinese+english+math) FROM student;
SELECT * FROM student WHERE (chinese+english+math) >200;
# 查询math>60并且id大于4的学生总分
SELECT `name`,(chinese+english+math) AS total_score FROM student WHERE math>90 AND id>4;
# 查询英语成绩大于语文成绩的学生
SELECT * FROM student WHERE english >chinese;
# 查询总分大于200 并且 数学成绩小于语文成绩的姓'张'的学生
SELECT * FROM student WHERE (chinese+english+math) >200 AND math<chinese AND `name` LIKE '张%';
## %相当于占位符,代表以张开头的字符串
```
## BETWEEN ... AND ... : 显示在某一区间的值
## IN(set)
显示在in列表中的值
例: in(100,200)

## LIKE / NOT LIKE
模糊查询
## IS NULL
判断是否为空
# 逻辑运算符
and : 多个条件同时成立 
or : 多个条件任一成立
not : 不成立 , 例 : where not(salary >100);