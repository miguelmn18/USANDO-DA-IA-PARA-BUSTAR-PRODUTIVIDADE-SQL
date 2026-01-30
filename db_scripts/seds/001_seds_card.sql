
INSERT INTO tbl_collections (collectionsSetName, releaseDate, totalCardsInCollections)
VALUES 
('Base Set', '1999-01-09', 102),
('Jungle', '1999-06-16', 64),
('Fossil', '1999-10-10', 62);


INSERT INTO tbl_types (typeName)
VALUES 
('Grass'),
('Fire'),
('Water'),
('Lightning'),
('Psychic'),
('Fighting'),
('Colorless');


INSERT INTO tbl_stages (stageName)
VALUES 
('Basic'),
('Stage 1'),
('Stage 2');


INSERT INTO tbl_cards 
(hp, name, type_id, stage_id, info, attack, damage, weak, ressis, retreat, cardNumberInCollections, collection_id)
VALUES
(40, 'Bulbasaur', 1, 1, 'Seed Pokémon', 'Vine Whip', '10', 'Fire', 'Water', '1', 44, 1),
(50, 'Charmander', 2, 1, 'Lizard Pokémon', 'Ember', '30', 'Water', NULL, '1', 46, 1),
(50, 'Squirtle', 3, 1, 'Tiny Turtle Pokémon', 'Bubble', '10', 'Lightning', NULL, '1', 7, 1),
(60, 'Pikachu', 4, 1, 'Mouse Pokémon', 'Thunder Jolt', '30', 'Fighting', 'Steel', '1', 58, 1),
(60, 'Jigglypuff', 7, 1, 'Balloon Pokémon', 'Lullaby', '0', 'Fighting', 'Psychic', '1', 54, 2),
(90, 'Hitmonlee', 6, 1, 'Kicking Pokémon', 'Stretch Kick', '30', 'Psychic', NULL, '2', 7, 3);
