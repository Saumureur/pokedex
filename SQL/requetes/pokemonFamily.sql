CREATE VIEW EvolutionView AS
SELECT p1.pokemonID as id, p1.pokemonName as nom, p2.pokemonName as evolution_suivante, p3.pokemonName as sous_evolution
FROM Pokemon p1
LEFT JOIN Pokemon p2 ON p1.pokemonID = p2.pokemonPreviousEvolution
LEFT JOIN Pokemon p3 ON p1.pokemonID = p3.pokemonFollowingEvolution
WHERE p1.pokemonID =61;