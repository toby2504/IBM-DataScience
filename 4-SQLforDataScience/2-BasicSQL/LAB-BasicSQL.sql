DROP TABLE INSTRUCTOR;
CREATE TABLE INSTRUCTOR (
    ins_id int NOT NULL,
    lastname varchar(255) NOT NULL,
    firstname varchar(255) NOT NULL,
    city varchar(255),
    country char(2),
    PRIMARY KEY (ins_id)
);

INSERT INTO INSTRUCTOR 
	(ins_id,lastname,firstname,city,country)
	VALUES
	(1,'Ahuja','Rav','Toronto','CA');
	
INSERT INTO INSTRUCTOR 
	(ins_id,lastname,firstname,city,country)
	VALUES
	(2,'Chong','Raul','Toronto','CA'),
	(3,'Vasudevan','Hima','Chicago','US');

SELECT * FROM INSTRUCTOR;

SELECT firstname, lastname, country FROM INSTRUCTOR
	WHERE city = 'Toronto';
	
UPDATE INSTRUCTOR
SET city = 'Markham'
WHERE firstname = 'Rav';

-- comment

DELETE FROM INSTRUCTOR
WHERE ins_id = 2;

