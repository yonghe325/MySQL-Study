SELECT * FROM student;
# SELECT 性别,SUM(id) AS id总和 FROM student GROUP BY 性别;
SELECT MAX(年龄) AS 最大年龄,MIN(年龄) AS 最小年龄 FROM student
	GROUP BY 性别;
SELECT COUNT(*) AS 学生总数 FROM student;
SELECT COUNT(年龄) AS 学生年龄个数 FROM student;