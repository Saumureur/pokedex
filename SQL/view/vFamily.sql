CREATE VIEW vFamily as 
SELECT pokemonName FROM Pokemon
WHERE pokemonPreviousEvolution = (
  SELECT pokemonPreviousEvolution FROM Pokemon
  WHERE pokemonID = 'ID_du_Pokemon'
)
OR pokemonFollowingEvolution = (
  SELECT pokemonFollowingEvolution FROM Pokemon
  WHERE pokemonID = 'ID_du_Pokemon'
);
