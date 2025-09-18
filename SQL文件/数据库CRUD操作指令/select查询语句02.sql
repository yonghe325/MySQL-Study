# 统计每个学生的总分,以表达式作为列名
SELECT `name` ,(chinese+english+math) FROM student;
# 在总分的基础上加10分
SELECT `name` ,(chinese+english+math+10) FROM student;
# 用别名表示学生分数
SELECT `name` ,(chinese+english+math+10) AS total_score FROM student;
# 用别名替换生成列
SELECT `name` AS  学生名 ,(chinese+english+math+10) AS total_score FROM student;
