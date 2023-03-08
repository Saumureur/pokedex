DROP DATABASE IF EXISTS pokedex;
CREATE DATABASE pokedex;
USE pokedex;

DROP TABLE IF EXISTS Pokemon;
CREATE TABLE Pokemon (
  pokemonID INT PRIMARY KEY,
  pokemonName VARCHAR(255),
  pokemonDescription VARCHAR(255),
  pokemonPreviousEvolution INT,
  pokemonFollowingEvolution INT,
  pokemonFrontSpriteURL VARCHAR(255),
  pokemonBackSpriteURL VARCHAR(255),
  FOREIGN KEY (previousEvolution) REFERENCES Pokemon(pokemonID),
  FOREIGN KEY (followingEvolution) REFERENCES Pokemon(pokemonID),
  FOREIGN KEY (pokemonType1) REFERENCES Type(TypeID),
  FOREIGN KEY (pokemonType2) REFERENCES Type(TypeID),
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
  attackDescription VARCHAR(255)
  FOREIGN KEY (attackType) REFERENCES Type(TypeID),
);

DROP TABLE IF EXISTS Type;
CREATE TABLE Type (
  TypeID INT PRIMARY KEY,
  typeNom VARCHAR(255),
  typelogoURL VARCHAR(255)
);

DROP TABLE IF EXISTS PokeTal;
CREATE TABLE PokeTal (
  PokeTalID PRIMARY KEY,
  FOREIGN KEY (pokemonID) REFERENCES Pokemon(pokemonID),
  FOREIGN KEY (talentID) REFERENCES Talent(talentID),
  poketalIsHide boolean
);

DROP TABLE IF EXISTS PokAttack;
CREATE TABLE PokAttack(
  PokAttackID PRIMARY KEY,
  FOREIGN KEY (pokemonID) REFERENCES Pokemon(pokemonID),
  FOREIGN KEY (attackID) REFERENCES Attack(attackID),

)

