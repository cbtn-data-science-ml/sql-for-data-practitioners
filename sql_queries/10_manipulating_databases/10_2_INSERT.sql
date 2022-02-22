--  INSERT into the membership table
SELECT * 
FROM membership;


INSERT INTO membership (username, password, email, member_since)
VALUES 
    ('Nance', 'password', 'nance@emails.com', CURRENT_TIMESTAMP)

SELECT *
FROM membership;

--  INSERT into the gold_member table
SELECT *
FROM gold_member;


INSERT INTO gold_member (level)
VALUES 
	('LEVEL 42');


SELECT *
FROM gold_member;


INSERT INTO gold_member (level)
VALUES 
	('Platinum');

SELECT *
FROM gold_member;


--  INSERT into the member_rewards table
SELECT *
FROM member_rewards;

INSERT INTO member_rewards (member_id, gold_id, award_date)
VALUES 
	(1,1, CURRENT_TIMESTAMP);

SELECT *
FROM member_rewards;

--  Simulated error: no member_id or gold_id equals 3 
INSERT INTO member_rewards (member_id, gold_id, award_date)
VALUES 
	(3,3, CURRENT_TIMESTAMP);