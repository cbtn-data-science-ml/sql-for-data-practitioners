SELECT * 
FROM district_poll;

-- Drop the respondent column
ALTER TABLE district_poll
DROP COLUMN respondent;

-- Column be gone! Evanesco! 🪄
SELECT * 
FROM district_poll;


-- Drop the respondent column AGAIN (error ahead)
ALTER TABLE district_poll
DROP COLUMN respondent;


-- Drop the respondent column IF EXISTS 
ALTER TABLE district_poll
DROP COLUMN IF EXISTS respondent;✨