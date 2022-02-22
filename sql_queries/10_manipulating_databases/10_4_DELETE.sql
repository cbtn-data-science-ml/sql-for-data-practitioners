SELECT * 
FROM gold_member;


INSERT INTO gold_member(level)
	VALUES
	('Silver');



SELECT * 
FROM gold_member;

DELETE FROM gold_member
WHERE level = 'Silver'
RETURNING gold_id, level;


-- Try it a second time
DELETE FROM gold_member
WHERE level = 'Silver'
RETURNING gold_id, level;
