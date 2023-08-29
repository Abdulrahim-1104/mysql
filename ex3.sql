CREATE DATABASE FOR_CONSTRAINTS;
USE  FOR_CONSTRAINTS;
-- CREATING TABLE USING SOME OF THE CONSTRAINTS --
CREATE TABLE FK(
ID INT PRIMARY KEY NOT NULL);

 CREATE TABLE USERS(
 ID INT PRIMARY KEY AUTO_INCREMENT,
 USERNAME VARCHAR(20) UNIQUE,
 PASSWORD VARCHAR(20) CHECK(CHAR_LENGTH(PASSWORD)>8),
 DOB DATE
 ) auto_increment=1;
INSERT INTO USERS(USERNAME,PASSWORD,DOB) VALUES("ABDUL1104","MASHAALLAH1104",'2002-11-11'); 
INSERT INTO USERS(USERNAME,PASSWORD,DOB) VALUES("SANTHOSH","SANTHOSH1103",'2002-11-11'); 
INSERT INTO USERS(USERNAME,PASSWORD,DOB) VALUES("GOKUL11","GOKEEE1104",'2002-1-13'); 
INSERT INTO USERS(USERNAME,PASSWORD,DOB) VALUES("DEVA11","DEVA10355",'2002-12-3'); 
SELECT * FROM USERS;

ALTER TABLE USERS MODIFY ID INT auto_increment;

ALTER TABLE USERS ALTER PASSWORD SET DEFAULT "NOPASSWORD";
INSERT INTO USERS(USERNAME,DOB) VALUES("NEWUSER",'2023-11-13');
INSERT INTO USERS(USERNAME,DOB) VALUES("NEWUSER1",'2023-10-13');
ALTER TABLE USERS ALTER PASSWORD DROP DEFAULT;
INSERT INTO USERS(DOB) VALUES('2023-10-13');
ALTER TABLE USERS ALTER USERNAME SET DEFAULT "NONAME";
DELETE FROM USERS WHERE ID=6;
UPDATE  USERS
SET DOB='2001-03-01'
WHERE USERNAME='DEVA11';
ALTER TABLE USERS ADD COLUMN BRANCH_ID INT;
ALTER TABLE USERS ADD CONSTRAINT FK_BRANCH FOREIGN KEY(BRANCH_ID) REFERENCES FK(ID);