
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