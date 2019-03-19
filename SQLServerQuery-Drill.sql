USE db_zoo

Select a.species_name as NAME, b.animalia_type as TYPE from tbl_species as A inner join tbl_animalia as B on a.species_animalia = b.animalia_id


/* 
DRILL 1:  
Compose a SELECT statement that queries for the following information 
--> All information from the habitat table.
*/
select * from tbl_habitat


/* 
DRILL 2:  
Compose a SELECT statement that queries for the following information: 
--> Retrieve all names from the species_name column that have a species_order value of 3.
*/
select species_name, species_order from tbl_species where species_order = '3'



/* 
DRILL 3:  
Compose a SELECT statement that queries for the following information: 
--> Retrieve only the nutrition_type from the nutrition table that have a nutrition_cost of 600.00 or less.
*/
select nutrition_type, nutrition_cost from tbl_nutrition where nutrition_cost <= 600


/* 
DRILL 4:  
Compose a SELECT statement that queries for the following information: 
--> Retrieve all species_names with the nutrition_id between 2202 and 2206 from the nutrition table. 
*/
select S.species_name, N.nutrition_id from tbl_species AS S inner join tbl_nutrition as N on S.species_nutrition = N.nutrition_id where N.nutrition_id between 2202 and 2206

/* 
DRILL 5:  
Compose a SELECT statement that queries for the following information: 
--> Retrieve all names within the species_name column using the alias "Species Name:" from the species table and their corresponding nutrition_type under the alias "Nutrition Type:" from the nutrition table.
*/
SELECT S.species_name AS 'Species Name:', N.nutrition_type AS 'Nutrition Type:' FROM tbl_species AS S INNER JOIN tbl_nutrition AS N ON S.species_nutrition = N.nutrition_id


/* 
DRILL 6:  
Compose a SELECT statement that queries for the following information: 
--> From the specialist table, retrieve the first and last name and contact number of those that provide care for the penguins from the species table.
*/
SELECT SP.specialist_fname, SP.specialist_lname, SP.specialist_contact, S.species_name /*, S.species_care, C.care_specialist*/
	FROM tbl_species AS S 
		INNER JOIN tbl_care AS C ON S.species_care = C.care_id 
		INNER JOIN tbl_specialist AS SP ON C.care_specialist = SP.specialist_id
	WHERE S.species_name = 'penguin'

/*select * from tbl_species
select * from tbl_specialist
select * from tbl_care*/



/* 
(73) DRILL 7:  
Creating your own tables: Build a select statement that queries for the following information:  
--> Create a database with two tables. Assign a foreign key constraint on one table that shares related data with the primary key on the second table. Finally, create a statement that queries data from both tables. 
If you need advice...How about a table with a first and last name column and a second table that has a phone number and address column? 
When submitting DRILL 7 be sure to include the table creation code along with your INSERT statements and query. 
Submit your final query statements for each drill, all together, below.
*/

CREATE DATABASE Drill7
USE Drill7
CREATE TABLE name ( id INT PRIMARY KEY IDENTITY (1,1) NOT NULL, first_name VARCHAR(50) NOT NULL, last_name VARCHAR(50) NOT NULL )

INSERT INTO NAME (first_name, last_name) 
	VALUES
	('John','Smith'),
	('Jane','Smith'),
	('Jane','Doe'),
	('Adam','Baker'),
	('Sam','Washington');
	
CREATE TABLE contacts 
	( id INT NOT NULL CONSTRAINT fk_id FOREIGN KEY REFERENCES name (id) ON UPDATE CASCADE ON DELETE CASCADE, 
	address VARCHAR(max) NULL,
	phone VARCHAR(15) NULL) 

INSERT INTO contacts (id,address,phone)
	VALUES
	(1,'123 NW Washington St., Portland, OR, 97201','123-456-7890'),
	(2,'456 NE Main St., Portland, OR, 97202','234-567-8901'),
	(3,'789 W Jefferson St., Portland, OR, 97203','345-678-9012'),
	(4,'135 SE Adams St., Portland, OR, 97204','456-789-0123'),
	(5,'246 SW Jay St., Portland, OR, 97205','567-890-1234');

SELECT * FROM name
SELECT * FROM contacts


SELECT N.first_name, N.last_name, C.address, C.phone FROM name AS N INNER JOIN contacts AS C ON N.id = C.id













