SELECT * FROM student;
SELECT * FROM student_course;
SELECT * FROM course;

DESC student;

SELECT * FROM student
	WHERE 年龄 > 18;
SELECT *FROM student 
	WHERE `name` = "陈凯文" OR `name` = "丁航";
SELECT * FROM student
	WHERE 出生日期 BETWEEN '2004-11-15' AND '2005-06-12';
SELECT * FROM student 
	WHERE `name` = '吴美玉';
SELECT student_id,student_name,course_name,score
	FROM student_course LEFT JOIN course
	ON student_course.`course_code` = course.`course_code`;
SELECT * FROM student 
	WHERE `name` LIKE '刘%';
SELECT * FROM student 
	WHERE `name` LIKE '刘__';
SELECT *FROM student
	WHERE `name`IN ('刘博文','刘斯莹','吴美玉');
SELECT * FROM student
	WHERE id BETWEEN '1809201004' AND '1809201010';