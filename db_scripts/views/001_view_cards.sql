CREATE OR REPLACE VIEW vw_cards_detalhado AS
SELECT 
    c.id,
    c.hp,
    c.name,
    t.typeName AS tipo,
    s.stageName AS estagio,
    c.info,
    c.attack,
    c.damage,
    c.weak,
    c.ressis,
    c.retreat,
    c.cardNumberInCollections,
    col.collectionsSetName AS colecao,
    col.releaseDate AS data_lancamento,
    col.totalCardsInCollections AS total_cartas_colecao
FROM tbl_cards c
JOIN tbl_types t ON c.type_id = t.id
JOIN tbl_stages s ON c.stage_id = s.id
JOIN tbl_collections col ON c.collection_id = col.id;
