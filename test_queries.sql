CREATE TABLE Mechanic (
        EID INTEGER PRIMARY KEY REFERENCES Employees (EID),
        hourlyPrice FLOAT NOT NULL CHECK (hourlyPrice > 10)
);
CREATE TABLE Repairs (
        EID INTEGER REFERENCES Mechanic (EID),
	license INTEGER,
	partCost FLOAT,
	hours INTEGER,
	PRIMARY KEY(EID,license)
);
CREATE TABLE Employees (
        EID INTEGER PRIMARY KEY,
	firstname VARCHAR(64),
	lastname VARCHAR(64)
);

INSERT INTO Employees (EID, firstname, lastname) VALUES 
(1, 'Bob', 'Bobson'),
(2, 'Joe', 'Joeson').
(3, 'Jack', 'Jackson');

INSERT INTO Mechanic (EID, hourlyPrice) VALUES 
(1,12),
(2,17),
(3,14);

INSERT INTO Repairs (EID, licence, partCost, hours) VALUES 
(1,1,50,1),
(1,5,40,2),
(2,2,100,3),
(3,3,10,1);
(3,4,200,5);
