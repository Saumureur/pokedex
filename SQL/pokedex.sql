DROP DATABASE IF EXISTS pokedex;
CREATE DATABASE pokedex;
USE pokedex;

DROP TABLE IF EXISTS Type;
CREATE TABLE Type (
  TypeID INT PRIMARY KEY,
  typeNom VARCHAR(255),
  typelogoURL VARCHAR(255)
);


DROP TABLE IF EXISTS Pokemon;
CREATE TABLE Pokemon (
  pokemonID INT PRIMARY KEY,
  pokemonName VARCHAR(255),
  pokemonDescription VARCHAR(255),
  pokemonPreviousEvolution INT,
  pokemonFollowingEvolution INT,
  pokemonFrontSpriteURL VARCHAR(255),
  pokemonBackSpriteURL VARCHAR(255),
  pokemonType1 INT,
  pokemonType2 INT,
  FOREIGN KEY (pokemonPreviousEvolution) REFERENCES Pokemon(pokemonID),
  FOREIGN KEY (pokemonFollowingEvolution) REFERENCES Pokemon(pokemonID),
  FOREIGN KEY (pokemonType1) REFERENCES Type(TypeID),
  FOREIGN KEY (pokemonType2) REFERENCES Type(TypeID)
);

DROP TABLE IF EXISTS Talent;
CREATE TABLE Talent (
  talentID INT PRIMARY KEY,
  talenName VARCHAR(255),
  talentDescription VARCHAR(255)
);

DROP TABLE IF EXISTS Attack;
CREATE TABLE Attack (
  attackID INT PRIMARY KEY,
  attackName VARCHAR(255),
  attackDescription VARCHAR(255),
  attackType INT,
  FOREIGN KEY (attackType) REFERENCES Type(TypeID)
);

DROP TABLE IF EXISTS PokeTal;
CREATE TABLE PokeTal (
  PokeTalID INT PRIMARY KEY,
  pokemonID INT,
  talentID INT,
  FOREIGN KEY (pokemonID) REFERENCES Pokemon(pokemonID),
  FOREIGN KEY (talentID) REFERENCES Talent(talentID),
  poketalIsHide boolean
);

DROP TABLE IF EXISTS PokAttack;
CREATE TABLE PokAttack(
  PokAttackID INT PRIMARY KEY,
  pokemonID INT,
  attackID INT,
  FOREIGN KEY (pokemonID) REFERENCES Pokemon(pokemonID),
  FOREIGN KEY (attackID) REFERENCES Attack(attackID),
  naturalLearn boolean
)

