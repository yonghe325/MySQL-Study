#1. 查询course全表
#2. 查询course表的第2到4条数据
#3. 根据课时字段进行倒序查询
#4. 查询课时在40到50之间的课程信息
#5. 查询学分大于2的课程信息
#6. 查询姓名为mysql 数据库应用技术和云平台应用技术的两门课(使用in)
#7. 查询课程名为MySQL开头的课程信息
SELECT *FROM course;
SELECT * FROM student;


SELECT * FROM student_course;


#1.查询course全表
SELECT * FROM course;
#2.查询course表的第2到4条数据
SELECT * FROM course
	LIMIT 1,2;
#3.根据课时字段进行倒序查询
SELECT * FROM course
	ORDER BY class_hours DESC;
#4. 查询课时在40到50之间的课程信息
SELECT * FROM course
	WHERE class_hours BETWEEN 40 AND 50;
#5.查询学分大于2的课程信息
SELECT * FROM course
	WHERE credit >2;
#6.查询姓名为mysql 数据库应用技术和云平台应用技术的两门课(使用in)
SELECT *FROM course
	WHERE course_name IN ('MySQL数据库应用技术','云平台应用技术');
#7.查询课程名为MySQL开头的课程信息
SELECT * FROM course
	WHERE course_name LIKE 'MySQL%';
