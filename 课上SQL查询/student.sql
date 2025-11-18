CREATE TABLE student(
	id CHAR(11) PRIMARY KEY,
	`name` VARCHAR(20),
	性别 CHAR(2),
	年龄 INT,
	出生日期 DATE,
	民族 VARCHAR(10),
	政治面貌 VARCHAR(8)
);
SELECT * FROM student;
DESC student;
DROP TABLE student;

-- 宋佳琪
INSERT INTO student (id, NAME, 性别, 年龄, 出生日期, 民族, 政治面貌) 
VALUES ('1809201012', '宋佳琪', NULL, NULL, NULL, NULL, NULL);
-- 杨悠然
INSERT INTO student (id, NAME, 性别, 年龄, 出生日期, 民族, 政治面貌) 
VALUES ('1809201003', '杨悠然', '男', 19, '2004-11-15', '汉族', '共青团员');
-- 张静
INSERT INTO student (id, NAME, 性别, 年龄, 出生日期, 民族, 政治面貌) 
VALUES ('1809201005', '张静', '女', 18, '2005-03-08', '汉族', '共青团员');
-- 丁航
INSERT INTO student (id, NAME, 性别, 年龄, 出生日期, 民族, 政治面貌) 
VALUES ('1809201006', '丁航', '男', 18, '2005-06-18', '汉族', '共青团员');
-- 刘斯莹
INSERT INTO student (id, NAME, 性别, 年龄, 出生日期, 民族, 政治面貌) 
VALUES ('1809201008', '刘斯莹', '女', 18, '2005-06-12', '汉族', '共青团员');
-- 陈凯文
INSERT INTO student (id, NAME, 性别, 年龄, 出生日期, 民族, 政治面貌) 
VALUES ('1809201001', '陈凯文', '男', 18, '2005-06-18', '汉族', '共青团员');
-- 刘博文
INSERT INTO student (id, NAME, 性别, 年龄, 出生日期, 民族, 政治面貌) 
VALUES ('1809201004', '刘博文', '男', 18, '2005-06-20', '汉族', '共青团员');
-- 李志豪
INSERT INTO student (id, NAME, 性别, 年龄, 出生日期, 民族, 政治面貌) 
VALUES ('1809201007', '李志豪', '男', 18, '2005-09-21', '汉族', '共青团员');
-- 李婷婷
INSERT INTO student (id, NAME, 性别, 年龄, 出生日期, 民族, 政治面貌) 
VALUES ('1809201009', '李婷婷', '女', 18, '2005-10-16', '汉族', '共青团员');
-- 吴美玉
INSERT INTO student (id, NAME, 性别, 年龄, 出生日期, 民族, 政治面貌) 
VALUES ('1809201010', '吴美玉', '女', 17, '2006-06-30', '汉族', '共青团员');


SELECT * FROM student
	WHERE 年龄 > 18;
SELECT *FROM student 
	WHERE `name` = "陈凯文" OR `name` = "丁航";
SELECT * FROM student
	WHERE 出生日期 BETWEEN '2004-11-15' AND '2005-06-12';
	
SELECT * FROM student 
	WHERE `name` = '吴美玉';