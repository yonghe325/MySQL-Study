DESCRIBE student;
SELECT * FROM student;


# 对数学成绩升序
SELECT * FROM student ORDER BY math ASC;
SELECT * FROM student ORDER BY math DESC;
# 按总分降序排序 , 用别名排序
SELECT `name`,(chinese + english + math) AS total_score FROM student ORDER BY total_score DESC;
# 对张姓学生按总分升序排序 ,where + order by
SELECT `name`,(chinese + english + math) AS total_score FROM student WHERE `name` LIKE '张%' ORDER BY total_score ASC;