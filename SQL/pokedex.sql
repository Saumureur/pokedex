CREATE TABLE Pokemon (
  ID INT PRIMARY KEY,
  Name VARCHAR(255),
  Description VARCHAR(255),
  previousEvolution INT,
  followingEvolution INT,
  weight INT,
  height INT,
  frontSpriteURL VARCHAR(255),
  backSpriteURL VARCHAR(255),
  FOREIGN KEY (previousEvolution) REFERENCES Pokemon(ID),
  FOREIGN KEY (followingEvolution) REFERENCES Pokemon(ID)
);


CREATE TABLE Talent (
  ID INT PRIMARY KEY,
  Name VARCHAR(255),
  Description VARCHAR(255)
);


CREATE TABLE Type (
  ID INT PRIMARY KEY,
  Nom VARCHAR(255),
  logoURL VARCHAR(255)
);

CREATE TABLE Poketype (
  FOREIGN KEY (PokemonID) REFERENCES Pokemon(ID),
  FOREIGN KEY (TypeID) REFERENCES Type(ID)
);


CREATE TABLE Poketal (
  FOREIGN KEY (PokemonID) REFERENCES Pokemon(ID),
  FOREIGN KEY (TalentID) REFERENCES Talent(ID)
);