CREATE TABLE SECURITY (
	USERNAME VARCHAR(50) NOT NULL,
	PASSWORD VARCHAR(50) NOT NULL
);

CREATE TABLE ULTIMI_LAVORI (
	ID DECIMAL(10) NOT NULL PRIMARY KEY,
	TITLE VARCHAR(100) NOT NULL,
	IMAGE BLOB NOT NULL
);

CREATE TABLE OFFERTE(
	ID DECIMAL(10) NOT NULL PRIMARY KEY,
	TITLE VARCHAR(100) NOT NULL,
	IMAGE BLOB NOT NULL,
	DESCRIPTION VARCHAR(200) NOT NULL,
	PRICE VARCHAR(100) NOT NULL
);
