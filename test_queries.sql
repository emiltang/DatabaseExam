CREATE TABLE Employees (
    EID INTEGER PRIMARY KEY,
    firstname VARCHAR(64),
	lastname VARCHAR(64)
);

CREATE TABLE Mechanic (
    EID INTEGER PRIMARY KEY REFERENCES Employees (EID),
    hourlyPrice FLOAT NOT NULL CHECK (hourlyPrice > 10)
);
CREATE TABLE Cars (
    license INTEGER PRIMARY KEY,
    brand VARCHAR(64),
    year INTEGER
);
CREATE TABLE Repairs (
    EID INTEGER REFERENCES Mechanic (EID),
	license INTEGER REFERENCES Cars (license),
	partCost FLOAT,
	hours INTEGER,
	PRIMARY KEY(EID,license)
);


INSERT INTO Employees (EID, firstname, lastname) VALUES 
(1, 'Bob', 'Bobson'),
(2, 'Joe', 'Joeson'),
(3, 'Jack', 'Jackson');
INSERT INTO Mechanic (EID, hourlyPrice) VALUES 
(1,12),
(2,17),
(3,14);
INSERT INTO Cars (license, brand, year) VALUES 
(1,'Mercedes',2000),
(2,'Audi',1998),
(3,'Mercedes',2000),
(4,'BMW',2000),
(5,'VW',2002);
INSERT INTO Repairs (EID, license, partCost, hours) VALUES 
(1,1,50,1),
(2,1,70,2),
(2,2,100,3),
(1,2,10,1),
(3,3,10,1),
(3,4,200,5),
(2,4,120,3),
(1,5,40,2),
(3,5,80,1);
