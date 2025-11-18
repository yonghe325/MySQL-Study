

ALTER TABLE ex ADD COLUMN image_02 VARCHAR(255) 
	NOT NULL DEFAULT ' ' 
	-- 不允许为空 ,初始化为' '
	AFTER `resume`
	-- 在resume列之后
ALTER TABLE ex MODIFY COLUMN job VARCHAR(60)

ALTER TABLE ex DROP COLUMN sex;

RENAME TABLE ex TO employee;

RENAME TABLE employee TO ex;

ALTER TABLE ex CHARACTER SET utf8mb4;
-- ------------------------------------
INSERT ex (id,`name`,salar) VALUES (2,'李四',300)

UPDATE ex SET salar = 500

UPDATE ex SET salar = 5020 WHERE id = 1

UPDATE ex SET salar = salar+100 WHERE id = 2

SELECT * FROM ex;
DESCRIBE ex;