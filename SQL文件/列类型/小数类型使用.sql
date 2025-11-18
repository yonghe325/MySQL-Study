# 小数类型
# float : 单精度浮点数 4 byte
# double : 双精度浮点数 8 byte
# decimall \[M,D\] : 大小依据MD决定
CREATE TABLE floating_study (
	id01 FLOAT,
	id02 DOUBLE,
	id03 DECIMAL(30,20)
	
);
INSERT INTO floating_study VALUE (88.12345678912345,88.12345678912345,88.12345678912345);
SELECT * FROM floating_study;
CREATE TABLE floating_study_02 (
	id DECIMAL(65));
INSERT INTO floating_study_02 VALUE (8812345678901234567890123456789012345678901234567890);
SELECT * FROM floating_study_02;

