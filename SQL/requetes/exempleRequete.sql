SELECT Pokemon.ID, Pokemon.Name, Pokemon.Description, Pokemon.weight, Pokemon.height,
  Type1.Name AS Type1, Type2.Name AS Type2,
  Talent.Name AS Talent, Talent.Description AS TalentDescription,
  Pokemon.frontSpriteURL, Pokemon.backSpriteURL,
  PreviousEvolution.Name AS PreviousEvolution, FollowingEvolution.Name AS FollowingEvolution
FROM Pokemon
LEFT JOIN Type AS Type1 ON Pokemon.Type1ID = Type1.ID
LEFT JOIN Type AS Type2 ON (Pokemon.Type2ID IS NOT NULL AND Pokemon.Type2ID = Type2.ID)
LEFT JOIN Poketal ON Poketal.PokemonID = Pokemon.ID
LEFT JOIN Talent ON Poketal.TalentID = Talent.ID
LEFT JOIN Pokemon AS PreviousEvolution ON Pokemon.previousEvolution = PreviousEvolution.ID
LEFT JOIN Pokemon AS FollowingEvolution ON Pokemon.followingEvolution = FollowingEvolution.ID
WHERE Pokemon.ID = 123;
