DROP DATABASE IF EXISTS pokedex;
CREATE DATABASE pokedex;
USE pokedex;

DROP TABLE IF EXISTS Pokemon;
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

DROP TABLE IF EXISTS Talent;
CREATE TABLE Talent (
  ID INT PRIMARY KEY,
  Name VARCHAR(255),
  Description VARCHAR(255)
);

DROP TABLE IF EXISTS Type;
CREATE TABLE Type (
  ID INT PRIMARY KEY,
  Nom VARCHAR(255),
  logoURL VARCHAR(255)
);

DROP TABLE IF EXISTS Poketype;
CREATE TABLE Poketype (
  PokemonID INT,
  TypeID INT,
  FOREIGN KEY (PokemonID) REFERENCES Pokemon(ID),
  FOREIGN KEY (TypeID) REFERENCES Type(ID)
);

DROP TABLE IF EXISTS Poketal;
CREATE TABLE Poketal (
  PokemonID INT,
  TalentID INT,
  FOREIGN KEY (PokemonID) REFERENCES Pokemon(ID),
  FOREIGN KEY (TalentID) REFERENCES Talent(ID)
);