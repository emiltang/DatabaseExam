CREATE TABLE Mechanic (
    EID INTEGER PRIMARY KEY REFERENCES Employees (EID),
    hourlyPrice FLOAT NOT NULL CHECK (hourlyPrice > 10)
);
