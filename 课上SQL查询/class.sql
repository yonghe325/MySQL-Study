DROP DATABASE class01;
CREATE DATABASE class01;
CREATE TABLE course (
    course_code CHAR(8) PRIMARY KEY,  -- 课程代码（主键，唯一且非空）
    course_name VARCHAR(50) NOT NULL, -- 课程名称
    course_type VARCHAR(20) NOT NULL, -- 课程类型
    class_hours INT NOT NULL,         -- 课时
    credit INT NOT NULL,              -- 学分
    term INT NOT NULL                 -- 开课学期
);
SELECT * FROM course;

INSERT INTO course (course_code, course_name, course_type, class_hours, credit, term) 
VALUES 
('09Z00003', '网络应用技术', '专业基础课程', 48, 3, 1),
('09Z00007', 'MySQL数据库应用技术', '专业基础课程', 48, 3, 2),
('09Z01060', 'Linux应用技术', '专业基础课程', 64, 4, 2),
('09Z01061', 'Python程序设计', '专业基础课程', 64, 4, 3),
('09Z01068', '云平台应用技术', '专业基础课程', 64, 4, 3);

CREATE TABLE student_course (
    id INT AUTO_INCREMENT PRIMARY KEY,  -- 自增主键，简单唯一标识
    student_id VARCHAR(10) NOT NULL,    -- 学生学号
    student_name VARCHAR(20) NOT NULL,  -- 学生姓名
    course_code CHAR(8),                -- 关联课程表的课程代码
    score INT,                          -- 成绩（整数，简化）
    -- 外键关联课程表（确保课程代码有效）
    FOREIGN KEY (course_code) REFERENCES course(course_code)   
);
SELECT * FROM student_course;


INSERT INTO student_course (student_id, student_name, course_code, score) VALUES
-- 选了课的学生（课程表有对应课程）
('2301', '张三', '09Z00003', 85),
('2301', '张三', '09Z00007', 92),
('2302', '李四', '09Z01061', 88),
-- 未选课的学生（course_code为NULL）
('2303', '王五', NULL, NULL),
-- 选了某课程的学生
('2304', '赵六', '09Z01068', 65);


SELECT * FROM student_course LIMIT 0,2;
SELECT * FROM student_course LIMIT 2,2;
SELECT * FROM student_course LIMIT 4,2;
SELECT * FROM student_course LIMIT 6,2;


