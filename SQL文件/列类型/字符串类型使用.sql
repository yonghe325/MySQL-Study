-- 字符串类型使用 char varbinary
-- 固定长度字符串char(size) : 0-255 字符,
-- 可变长度字符串varchar(size):  0-65535=\[0~2^16-1]byte
DROP TABLE char_study_01;
DROP TABLE char_study_02;
CREATE TABLE char_study_01(
	char_01 CHAR(255),
	char_02 VARCHAR(255)
);

CREATE TABLE char_study_02(
	char_02 VARCHAR(16383));
CREATE TABLE char_study_03 (
  content_01 TEXT,
  content_02 MEDIUMTEXT,
  content_03 LONGTEXT
);
INSERT INTO char_study_03 VALUES(
	'一一一一一一一一一一一',
	'二二二二二二二二二二二',
	'三三三三三三三三三三三'
);

