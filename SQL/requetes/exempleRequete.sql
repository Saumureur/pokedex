SELECT *
FROM Pokemon
LEFT JOIN Type AS t1 ON Pokemon.pokemonType1 = t1.TypeID
LEFT JOIN Type AS t2 ON Pokemon.pokemonType2 = t2.TypeID
LEFT JOIN PokeTal ON Pokemon.pokemonID = PokeTal.pokemonID
LEFT JOIN Talent ON PokeTal.talentID = Talent.talentID
LEFT JOIN PokAttack ON Pokemon.pokemonID = PokAttack.pokemonID
LEFT JOIN Attack ON PokAttack.attackID = Attack.attackID
WHERE Pokemon.pokemonID = 62;