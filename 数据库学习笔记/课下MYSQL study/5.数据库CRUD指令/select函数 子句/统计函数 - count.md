count返回查询的结果共有多少行
```
select count(*)| count(列名) from tb_name [where where_definition]
```
count(\*) : 返回满足条件的记录的行数
count(列) : 统计蛮熟条件的某列有多少个,但是会排除为null的情况
```
# 统计共有多少学生
SELECT COUNT(*) FROM student;
# 统计数学成绩大于90分的学生
SELECT COUNT(*) FROM student WHERE math>90 ;
# 统计总分大于250的学生人数
SELECT COUNT(*) FROM student WHERE (chinese+math+english)>250 ;
```

# count (\*) 与 count (列)的区别
```
CREATE TABLE count_try (
	`id` INT);
INSERT INTO count_try VALUES(1);
INSERT INTO count_try VALUES(2);
INSERT INTO count_try VALUES(3);
INSERT INTO count_try VALUES(4);
INSERT INTO count_try VALUES(NULL);
SELECT * FROM count_try;
SELECT COUNT(*) FROM count_try;
SELECT COUNT(id) FROM count_try;
```
![[count(xing).png]]
count(\*)
![[count(列名).png]]count(id)