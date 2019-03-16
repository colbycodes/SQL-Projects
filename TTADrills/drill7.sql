
/*Databases and SQL drill 7*/
CREATE DATABASE db_drill7


CREATE TABLE tbl_people(
	id int IDENTITY(1,1) PRIMARY KEY,
	people_fname varchar(50) NOT NULL,
	people_lname varchar(50) NOT NULL,
);

CREATE TABLE tbl_contact(
	contact_address varchar(100) NOT NULL,
	contact_phone varchar(30)NOT NULL,
	person_id int FOREIGN KEY REFERENCES tbl_people(id)
);

INSERT INTO tbl_people
	VALUES
	('George','Lewis'),
	('Martha','Berg'),
	('Jake','Long'),
	('Drew','Bledsoe'),
	('Mark','Rypin'),
	('Bob','Boberetston')
;

INSERT INTO tbl_contact
	VALUES
	('123 Hikory Lane', '509-955-8564', 1),
	('321 Bobs Basement', '509-556-8869', 2),
	('5800 Sum Street', '208-855-1234', 3),
	('4659 Burnt Dr.', '654-189-3454', 4),
	('789 Ur MUMs HOUSE', '879-465-1323', 5),
	('156 Outthere Ave', '519-735-1958', 6)
;

SELECT people_fname, people_lname FROM tbl_people p
INNER JOIN tbl_contact c ON c.person_id = p.id
WHERE c.contact_phone = '509-955-8564'

