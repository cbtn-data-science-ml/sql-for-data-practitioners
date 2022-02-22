CREATE TABLE tiki_bar(
bar_id SERIAL PRIMARY KEY,
birthdate DATE NOT NULL,
age SMALLINT CHECK(age>21),
payment INTEGER CHECK(payment >= 5)
);

-- Constraint violation
INSERT INTO tiki_bar(
birthdate,
	age,
	payment
)
VALUES
(
'1990-01-01',
	22,
	4
);



INSERT INTO tiki_bar(
birthdate,
	age,
	payment
)
VALUES
(
'1990-01-01',
	19,
	10
);




-- Success
INSERT INTO tiki_bar(
birthdate,
	age,
	payment
)
VALUES
(
'1990-01-01',
	22,
	5
);

SELECT * FROM tiki_bar;