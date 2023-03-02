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