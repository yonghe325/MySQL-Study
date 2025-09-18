# 创建一个员工表,选用适当的类型
# id
# name
# sex
# birthday
# entry_date
# job
# address
# salar
# resume
CREATE TABLE EX (
	id INT,
	`name` VARCHAR(32),
	sex CHAR(1),
	birthday DATE,
	entry_date DATE,
	job VARCHAR(255),
	address VARCHAR(32),
	salar DOUBLE,
	`resume` TEXT,
	login_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
		
);
SELECT * FROM EX;
INSERT INTO EX(id,
	`name`,
	sex,
	birthday,
	entry_date,
	job,
	address,
	salar,
	`resume`) 
	VALUE(
	1,
	'张三',
	'男',
	'2007-03-25',
	'2025-09-01',
	'学生',
	'北京xxxxxxxx',
	'1000.0',
	'这是简历这是简历这是简历这是简历这是简历这是简历这是简历这是简历这是简历这是简历这是简历这是简历这是简历这是简历这是简历'
);