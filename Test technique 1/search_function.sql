-- Suppression de la fonction existante si elle existe
DROP FUNCTION recherche(mot_clé);

-- Création de la nouvelle fonction
CREATE OR REPLACE FUNCTION recherche(mot_clé TEXT) 
RETURNS TABLE (id INT, title TEXT, score FLOAT) AS $$ 
BEGIN
    -- Retourne une requête
    RETURN QUERY 
    SELECT 
        c.id,        -- Sélectionne l'identifiant depuis la table 'crawl'
        c.title,     -- Sélectionne le titre depuis la table 'crawl'
        s.score      -- Sélectionne le score depuis la table 'score'
    FROM 
        louis_v005.crawl AS c                           -- Depuis la table 'crawl' alias 'c'
    INNER JOIN 
        louis_v005.score AS s ON s.entity_id = c.id     -- Jointure interne avec la table 'score' où les identifiants correspondent
    WHERE 
        c.html_content ILIKE '%' || mot_clé || '%'      -- Filtre les enregistrements contenant 'mot_clé' dans 'html_content', sans tenir compte de la casse
    ORDER BY 
        s.score DESC                                    -- Trie les résultats par score décroissant
    LIMIT 10;                                           -- Limite les résultats aux 10 premiers
END;
$$ LANGUAGE plpgsql;

-- Exécution de la fonction nouvellement créée
SELECT * FROM recherche('Primary');
