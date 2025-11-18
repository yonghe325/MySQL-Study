CREATE TABLE students(
	`ID` INT PRIMARY KEY,
	`姓名` VARCHAR(25),
	`年龄` INT ,
	`性别` CHAR(2) 
);
DESC students;
SELECT * FROM students
	ORDER BY id DESC;

INSERT INTO students VALUES(1,'张勇',18,'男');
INSERT INTO students VALUES(2,'李木',2,'男');
INSERT INTO students VALUES(3,'xx',20,'女');

UPDATE students SET `年龄` = 19
	WHERE ID = 1;
	
DELETE FROM students
	WHERE `姓名` = '李木';
	    
	
