CREATE TABLE IF NOT EXISTS user (
	uid INT AUTO_INCREMENT,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	e_mail VARCHAR(40) NOT NULL,
	username VARCHAR(30) NOT NULL,
	password CHAR(60) NOT NULL,
	salt VARCHAR(30) NOT NULL,
	admin BIT(1) DEFAULT 0,
	PRIMARY KEY(uid)
);

CREATE TABLE IF NOT EXISTS test1 (
	uid INT,
	q1 TINYINT UNSIGNED NOT NULL,
	q2 TINYINT UNSIGNED NOT NULL,
	q3 TINYINT UNSIGNED NOT NULL,
	q4 TINYINT UNSIGNED NOT NULL,
	q5 TINYINT UNSIGNED NOT NULL,
	q6 TINYINT UNSIGNED NOT NULL,
	q7 TINYINT UNSIGNED NOT NULL,
	q8 TINYINT UNSIGNED NOT NULL,
	q9 TINYINT UNSIGNED NOT NULL,
	q10 TINYINT UNSIGNED NOT NULL,
	q11 TINYINT UNSIGNED NOT NULL,
	q12 TINYINT UNSIGNED NOT NULL,
	q13 TINYINT UNSIGNED NOT NULL,
	q14 TINYINT UNSIGNED NOT NULL,
	q15 TINYINT UNSIGNED NOT NULL,
	q16 TINYINT UNSIGNED NOT NULL,
	q17 TINYINT UNSIGNED NOT NULL,
	q18 TINYINT UNSIGNED NOT NULL,
	q19 TINYINT UNSIGNED NOT NULL,
	q20 TINYINT UNSIGNED NOT NULL,
	q21 TINYINT UNSIGNED NOT NULL,
	q22 TINYINT UNSIGNED NOT NULL,
	q23 TINYINT UNSIGNED NOT NULL,
	q24 TINYINT UNSIGNED NOT NULL,
	q25 TINYINT UNSIGNED NOT NULL,
	q26 TINYINT UNSIGNED NOT NULL,
	q27 TINYINT UNSIGNED NOT NULL,
	q28 TINYINT UNSIGNED NOT NULL,
	q29 TINYINT UNSIGNED NOT NULL,
	q30 TINYINT UNSIGNED NOT NULL,
	FOREIGN KEY (uid) REFERENCES user(uid) ON DELETE CASCADE,
	PRIMARY KEY (uid)
);

CREATE TABLE IF NOT EXISTS HTML_conversion (
	uid INT,
	q1 TINYINT UNSIGNED NOT NULL,
	q2 TINYINT UNSIGNED NOT NULL,
	q3 TINYINT UNSIGNED NOT NULL,
	q4 TINYINT UNSIGNED NOT NULL,
	q5 TINYINT UNSIGNED NOT NULL,
	q6 TINYINT UNSIGNED NOT NULL,
	FOREIGN KEY (uid) REFERENCES user(uid) ON DELETE CASCADE,
	PRIMARY KEY (uid)
)

CREATE TABLE IF NOT EXISTS JS_basics (
	uid INT,
	q1 TINYINT UNSIGNED NOT NULL,
	q2 TINYINT UNSIGNED NOT NULL,
	q3 TINYINT UNSIGNED NOT NULL,
	q4 TINYINT UNSIGNED NOT NULL,
	q5 TINYINT UNSIGNED NOT NULL,
	q6 TINYINT UNSIGNED NOT NULL,
	q7 TINYINT UNSIGNED NOT NULL,
	q8 TINYINT UNSIGNED NOT NULL,
	q9 TINYINT UNSIGNED NOT NULL,
	q10 TINYINT UNSIGNED NOT NULL,
	q11 TINYINT UNSIGNED NOT NULL,
	q12 TINYINT UNSIGNED NOT NULL,
	q13 TINYINT UNSIGNED NOT NULL,
	FOREIGN KEY (uid) REFERENCES user(uid) ON DELETE CASCADE,
	PRIMARY KEY (uid)
)

CREATE TABLE IF NOT EXISTS JS_numbers (
	uid INT,
	q1 TINYINT UNSIGNED NOT NULL,
	q2 TINYINT UNSIGNED NOT NULL,
	q3 TINYINT UNSIGNED NOT NULL,
	q4 TINYINT UNSIGNED NOT NULL,
	q5 TINYINT UNSIGNED NOT NULL,
	q6 TINYINT UNSIGNED NOT NULL,
	FOREIGN KEY (uid) REFERENCES user(uid) ON DELETE CASCADE,
	PRIMARY KEY (uid)
)