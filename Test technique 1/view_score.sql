-- Sélectionne toutes les colonnes de la table résultante
SELECT *,
    -- Applique la fonction NTILE(100) pour diviser les données en 100 groupes
    -- Les données sont ordonnées par la longueur du contenu HTML
    -- La valeur de chaque groupe est normalisée entre 0 et 1 en divisant par 100
    NTILE(100) OVER (ORDER BY LENGTH(louis_v005.html_content.content)) / 100.0 AS score
FROM louis_v005.crawl
-- Effectue une jointure interne entre les tables louis_v005.crawl et louis_v005.html_content
INNER JOIN louis_v005.html_content
ON louis_v005.html_content.md5hash = louis_v005.crawl.md5hash;
