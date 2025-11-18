DESCRIBE student;
SELECT * FROM student;

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
# 查询总分大于200 并且 数学成绩小于语文成绩的名字中带'勇'的学生
SELECT * FROM student WHERE (chinese+english+math) >200 AND math<chinese AND `name` LIKE '张%';
