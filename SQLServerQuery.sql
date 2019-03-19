CREATE DATABASE db_zoo;

USE db_zoo;

CREATE TABLE tbl_animalia (
	animalia_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	animalia_type VARCHAR(50) NOT NULL
);

SELECT * FROM tbl_animalia;

INSERT INTO tbl_animalia
	(animalia_type)
	VALUES
	('vertebrate'),
	('invertebrate');

SELECT * FROM tbl_animalia;

CREATE TABLE tbl_class (
	class_id INT PRIMARY KEY NOT NULL IDENTITY (100,1),
	class_type VARCHAR(50) NOT NULL
);

SELECT * FROM  tbl_class;

INSERT INTO tbl_class 
	(class_type)
	VALUES
	('bird'),
	('reptilian'),
	('mammal'),
	('arthropod'),
	('fish'),
	('worm'),
	('cnidaria'),
	('echinoderm');

SELECT * FROM  tbl_class;

UPDATE tbl_class SET class_type = 'bird' WHERE class_type = 'birds';

SELECT REPLACE(class_type, 'bird', 'birds') FROM tbl_class;


SELECT class_type FROM tbl_class WHERE class_type = 'bird';

SELECT UPPER(class_type) FROM tbl_class WHERE class_type = 'bird';

SELECT COUNT(class_type) FROM tbl_class WHERE class_type = 'bird';

CREATE TABLE tbl_persons (
	persons_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	persons_fname VARCHAR(50) NOT NULL,
	persons_lname VARCHAR(50) NOT NULL,
	persons_contact VARCHAR(50) NOT NULL
);

INSERT INTO tbl_persons
	(persons_fname, persons_lname, persons_contact)
	VALUES
	('bob', 'smith', '232-345-5768'),
	('mary', 'ann', '232-345-5768'),
	('tex', 'burns', '232-345-5768'),
	('gerry', 'kerns', '232-345-5768'),
	('sally', 'fields', '232-345-5768');

SELECT * FROM tbl_persons;

SELECT persons_fname, persons_lname, persons_contact FROM tbl_persons WHERE persons_id BETWEEN 2 AND 5;


SELECT persons_fname, persons_lname, persons_contact FROM tbl_persons WHERE persons_lname LIKE 'ke%';

SELECT persons_fname, persons_lname, persons_contact FROM tbl_persons WHERE persons_lname LIKE '_u%s';


UPDATE tbl_persons SET persons_fname = 'mars' WHERE persons_fname = 'bob';


SELECT * FROM tbl_persons;


SELECT persons_fname, persons_lname, persons_contact FROM tbl_persons WHERE persons_fname LIKE 'm%' ORDER BY persons_lname DESC;


SELECT persons_fname AS 'Firstname', persons_lname AS 'Lastname', persons_contact AS 'Phone: ' FROM tbl_persons WHERE persons_fname LIKE 'm%' ORDER BY persons_lname DESC;


DELETE FROM tbl_persons WHERE persons_lname = 'smith';


SELECT * FROM tbl_persons;


DROP TABLE tbl_persons;












