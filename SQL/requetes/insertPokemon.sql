INSERT INTO Pokemon (`pokemonID`, `pokemonName`,`pokemonDescription`,`pokemonType1`, `pokemonType2`) VALUES
(60, "Ptitard", "Ptitard (anglais : Poliwag ; japonais :  Nyoromo) est un Pokémon de type Eau de la première génération. ",11,NULL),
(61, "Têtarte", "Têtarte (anglais : Poliwhirl ; japonais : Nyorozo) est un Pokémon de type Eau de la première génération. ",11,NULL),
(62, "Tartard", "Tartard (anglais : Poliwrath ; japonais : Nyorobon) est un Pokémon de type Eau et Combat de la première génération.  ",11,2),
(58, "Caninos", "Caninos (anglais : Growlithe ; japonais : Gardie) est un Pokémon chien de type Feu de la première génération. ",10,NULL),
(59, "Arcanin", "Arcanin (anglais : Arcanine ; japonais : Windie) est un Pokémon de type Feu de la première génération. Il est parfois à tort considéré comme légendaire, du fait du nom de sa famille pouvant prêter à confusion. ",10,NULL),
(63, "Abra", "Abra (anglais : Abra ; japonais : Casey) est un Pokémon de type Psy de la première génération. ", 14, NULL),
(64, "Kadabra", "Kadabra (anglais : Kadabra ; japonais : Yungerer) est un Pokémon de type Psy de la première génération. ", 14, NULL),
(65, "Alakazam", "Alakazam (anglais : Alakazam ; japonais : Foodin) est un Pokémon de type Psy de la première génération. ", 14, NULL),
(66, "Machoc", "Machoc (anglais : Machop ; japonais : Wanrikii) est un Pokémon de type Combat de la première génération. ", 2  , NULL),
(67, "Machopeur", "Machopeur (anglais : Machoke ; japonais : Goriky) est un Pokémon de type Combat de la première génération. ", 2, NULL),
(68, "Mackogneur", "Mackogneur (anglais : Machamp ; japonais : Kairiky) est un Pokémon de type Combat de la première génération. ", 2, NULL),
(69, "Chétiflor", "Chétiflor (anglais : Bellsprout ; japonais : Madatsubomi) est un Pokémon de type Plante et Poison de la première génération. ", 12, NULL),
(70, "Empiflor", "Empiflor (anglais : Weepinbell ; japonais : Utsudon) est un Pokémon de type Plante et Poison de la première génération. ", 12, NULL);


UPDATE Pokemon
SET pokemonPreviousEvolution = CASE pokemonID
    WHEN 60 THEN NULL
    WHEN 61 THEN 60
    WHEN 62 THEN 62
    WHEN 58 THEN NULL
    WHEN 59 THEN 58
    WHEN 63 THEN NULL
    WHEN 64 THEN 63
    WHEN 65 THEN 64
    WHEN 66 THEN NULL
    WHEN 67 THEN 66
    WHEN 68 THEN 67
    WHEN 69 THEN NULL
    WHEN 70 THEN 69
    ELSE NULL
END;

UPDATE Pokemon
SET pokemonFollowingEvolution = CASE pokemonID
    WHEN 60 THEN 61
    WHEN 61 THEN 62
    WHEN 62 THEN NULL
    WHEN 58 THEN 59
    WHEN 59 THEN NULL
    WHEN 63 THEN 64
    WHEN 64 THEN 65
    WHEN 65 THEN NULL
    WHEN 66 THEN 67
    WHEN 67 THEN 68
    WHEN 68 THEN NULL
    WHEN 69 THEN 70
    WHEN 70 THEN NULL
    ELSE NULL
END;