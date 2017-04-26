/* Each entity becomes a table with its arritibutes */
CREATE TABLE Player (
    name VARCHAR(64) PRIMARY KEY,
    money FLOAT
);
CREATE TABLE Zone (
    id INTEGER PRIMARY KEY
);
CREATE TABLE Boss (
    name VARCHAR(64) PRIMARY KEY,
    money FLOAT
);
CREATE TABLE Monster (
    name VARCHAR(64) PRIMARY KEY,
    money FLOAT
);
CREATE TABLE Item (
    name VARCHAR(64) PRIMARY KEY,
    value INTEGER
);
/* Each relationship becomes a table with keys from each entity */
CREATE TABLE Holds (
    playerName VARCHAR(64) REFERENCES Player(name),
    itemName VARCHAR(64) REFRENCES Item(name),
    PRIMARY KEY(playerName, itemName)
);
CREATE TABLE Drops (
    bossName VARCHAR(64) REFERENCES Boss(name),
    itemName VARCHAR(64) REFERENCES Item(name),
    PRIMARY KEY(bossName, itemName)
);
CREATE TABLE BossContains (
    bossName VARCHAR(64) REFERENCES Boss(name),
    zoneID INTEGER REFERENCES Zone(id),
    PRIMARY KEY(bossName, zoneID)
);
CREATE TABLE PlayerContains (
    playerName VARCHAR(64) REFERENCES Player(name),
    zoneID INTEGER REFERENCES Zone(id),
    PRIMARY KEY(playerName, zoneID)
);
CREATE TABLE MonsterContains (
    monsterName VARCHAR(64) REFERENCES Monster(name),
    zoneID INTEGER REFERENCES Zone(id),
    PRIMARY KEY(monsterName, zoneID)
);
