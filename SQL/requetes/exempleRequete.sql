SELECT p.pokemonName, p.pokemonDescription, p2.pokemonName AS previousEvolution, p3.pokemonName AS followingEvolution, t1.typeNom AS type1, t2.typeNom AS type2, Talent.talentName, Attack.attackName
FROM Pokemon AS p
LEFT JOIN Pokemon AS p2 ON p.pokemonPreviousEvolution = p2.pokemonID
LEFT JOIN Pokemon AS p3 ON p.pokemonFollowingEvolution = p3.pokemonID
LEFT JOIN Type AS t1 ON p.pokemonType1 = t1.TypeID
LEFT JOIN Type AS t2 ON p.pokemonType2 = t2.TypeID
LEFT JOIN PokeTal ON p.pokemonID = PokeTal.pokemonID
LEFT JOIN Talent ON PokeTal.talentID = Talent.talentID
LEFT JOIN PokAttack ON p.pokemonID = PokAttack.pokemonID
LEFT JOIN Attack ON PokAttack.attackID = Attack.attackID
WHERE p.pokemonID = 62;