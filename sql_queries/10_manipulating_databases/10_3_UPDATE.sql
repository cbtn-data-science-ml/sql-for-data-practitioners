SELECT membership
FROM *

UPDATE membership
SET last_visit = CURRENT_TIMESTAMP
WHERE last_visit IS NULL;


SELECT membership
FROM *


UPDATE membership
SET last_visit = member_since;


SELECT membership
FROM *

UPDATE membership
SET last_visit = member_since;


SELECT *
FROM membership;

-- The member_rewards tables: silent join update
SELECT * FROM member_rewards;

UPDATE member_rewards
SET award_date = membership.member_since
FROM membership
WHERE member_rewards.member_id = membership.member_id;


SELECT * FROM member_rewards;


SELECT * 
FROM membership;


--  RETURNING keyword
UPDATE membership
SET last_visit = CURRENT_TIMESTAMP
RETURNING member_id, member_since, last_visit;

-- Reset to NULL
UPDATE membership
SET last_visit = NULL
RETURNING member_id, member_since, last_visit;