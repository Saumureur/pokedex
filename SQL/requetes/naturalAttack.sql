SELECT p.pokemonName, a.attackName
FROM Attack a
JOIN PokAttack pa ON a.attackID = pa.attackID
JOIN Pokemon p ON pa.pokemonID = p.pokemonID
WHERE pa.naturalLearn = 1
AND p.pokemonID = [votre_id_de_pokemon];