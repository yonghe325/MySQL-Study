# 统计一个班数学总成绩
SELECT SUM(math) FROM student;
# 统计一个班语文,英语,数学各科总成绩
SELECT SUM(chinese+math+english) AS total_score FROM student;
# 统计一个班语文,英语,数学成绩总和
SELECT SUM(math) AS math,SUM(chinese) AS chinese,SUM(english) AS english FROM student;
# 统计一个班的语文成绩的平均分
SELECT SUM(chinese)/COUNT(`name`) AS chinese_a FROM student;
SELECT AVG(chinese) AS chinese_avg FROM student;