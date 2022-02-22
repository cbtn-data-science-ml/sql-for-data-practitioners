-- Create a new table to ALTER (can be anything you like)
CREATE TABLE poll (
    poll_id SERIAL PRIMARY KEY,
    address VARCHAR(200) NOT NULL,
    participant VARCHAR(200) NOT NULL UNIQUE   
);

SELECT *
FROM poll;


-- Rename the table
ALTER TABLE poll
RENAME TO disctrict_poll;

SELECT * 
FROM district_poll;

ALTER TABLE district_poll
RENAME COLUMN participant to respondent

SELECT * 
FROM district_poll;


-- Constraint violation
INSERT INTO district_poll(address)
VALUES
('na');

-- Drop constraint
ALTER TABLE district_poll
ALTER COLUMN respondent DROP NOT NULL

-- Set constraint
ALTER TABLE district_poll
ALTER COLUMN respondent SET NOT NULL

-- Test new constraint
INSERT INTO district_poll(address)
VALUES
('na');