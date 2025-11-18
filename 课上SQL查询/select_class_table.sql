SELECT * FROM student_course;
SELECT * FROM course;
# 分页查询
SELECT * FROM student_course LIMIT 0,2;
SELECT * FROM student_course LIMIT 2,2;
SELECT * FROM student_course LIMIT 4,2;
SELECT * FROM student_course LIMIT 6,2;

# 排序
SELECT * FROM student_course
	ORDER BY id DESC;
# 分组
SELECT SUM(student_id) FROM student_course 
	GROUP BY student_name
	HAVING SUM(student_id) > 2304;
