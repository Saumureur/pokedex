DROP DATABASE IF EXISTS pokedex;
CREATE DATABASE pokedex;
USE pokedex;

DROP TABLE IF EXISTS Type;
CREATE TABLE Type (
  TypeID INT PRIMARY KEY,
  typeNom VARCHAR(255) NOT NULL,
  typelogoURL VARCHAR(255) DEFAULT NULL
);

DROP TABLE IF EXISTS Pokemon;
CREATE TABLE Pokemon (
  pokemonID INT PRIMARY KEY,
  pokemonName VARCHAR(255) UNIQUE,
  pokemonDescription VARCHAR(255),
  pokemonPreviousEvolution INT,
  pokemonFollowingEvolution INT,
  pokemonType1 INT,
  pokemonType2 INT,
  FOREIGN KEY (pokemonPreviousEvolution) REFERENCES Pokemon(pokemonID) DEFAULT NULL,
  FOREIGN KEY (pokemonFollowingEvolution) REFERENCES Pokemon(pokemonID) DEFAULT NULL,
  FOREIGN KEY (pokemonType1) REFERENCES Type(TypeID) DEFAULT 0,
  FOREIGN KEY (pokemonType2) REFERENCES Type(TypeID) DEFAULT NULL
);

DROP TABLE IF EXISTS Talent;
CREATE TABLE Talent (
  talentID INT PRIMARY KEY,
  talenName VARCHAR(255) NOT NULL,
  talentDescription VARCHAR(255)
);

DROP TABLE IF EXISTS Attack;
CREATE TABLE Attack (
  attackID INT PRIMARY KEY,
  attackName VARCHAR(255) NOT NULL,
  attackDescription VARCHAR(255),
  attackType INT DEFAULT 0,
  isPhysical boolean DEFAULT 1,
  FOREIGN KEY (attackType) REFERENCES Type(TypeID)
);

DROP TABLE IF EXISTS PokeTal;
CREATE TABLE PokeTal (
  pokemonID INT NOT NULL,
  talentID INT NOT NULL,
  FOREIGN KEY (pokemonID) REFERENCES Pokemon(pokemonID),
  FOREIGN KEY (talentID) REFERENCES Talent(talentID),
  poketalIsHide boolean DEFAULT 0
);

DROP TABLE IF EXISTS PokAttack;
CREATE TABLE PokAttack(
  pokemonID INT NOT NULL,
  attackID INT NOT NULL,
  FOREIGN KEY (pokemonID) REFERENCES Pokemon(pokemonID),
  FOREIGN KEY (attackID) REFERENCES Attack(attackID),
  naturalLearn boolean DEFAULT 0
);

#Ajout des contraintes

ALTER TABLE PokeTal
ADD CONSTRAINT fk_pokemon
FOREIGN KEY (pokemonID)
REFERENCES Pokemon(pokemonID)
ON DELETE CASCADE
ON UPDATE CASCADE
CHECK (pokemonID IN (SELECT pokemonID FROM Pokemon)),
ADD CONSTRAINT fk_talent
FOREIGN KEY (talentID)
REFERENCES Talent(talentID)
ON DELETE CASCADE
ON UPDATE CASCADE
CHECK (talentID IN (SELECT talentID FROM Talent));


ALTER TABLE PokAttack
ADD CONSTRAINT fk_pokemon_attack
FOREIGN KEY (pokemonID)
REFERENCES Pokemon(pokemonID)
ON DELETE CASCADE
ON UPDATE CASCADE
CHECK (pokemonID IN (SELECT pokemonID FROM Pokemon)),
ADD CONSTRAINT fk_attack
FOREIGN KEY (attackID)
REFERENCES Attack(attackID)
ON DELETE CASCADE
ON UPDATE CASCADE
CHECK (attackID IN (SELECT attackID FROM Attack));