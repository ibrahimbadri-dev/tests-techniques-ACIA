# Questionnaire

***Que contiennent les tables dans les schémas louis_v005 ? Expliquer la structure relationelle et la fonction de chaque table.***

Les tables dans les schémas `louis_v005` contiennent des métadonnées extraites à partir du site web publique de L'Agence canadienne d'inspection des aliments _inspection.canada.ca_. Ces informations telles que le lien URL, la langue de la page, la date de mise à jour ainsi que le contenu font partie du bassin de métadonnées.   

***Quelle distribution prennent les valeurs de longueur du contenu ?***

À vrai dire, il est difficile de donner la distribution exacte et précise des valeurs de la longueur du contenu HTML sans une examination approfondie. Les valeurs peuvent potentiellement être distribuées de façon normale, ou la majorité des pages HTML ont une longueur moyenne et bien sûr avec des valeurs abberantes.

***Expliquer le calcul en fonction de la distribution spécifique des valeurs de longueurs de html_content script***

En premier lieu, la clause `LENGTH(louis_v005.html_content.content)` calcule la longueur, en nombre de caractères, du contenu de la colonne `html_content`. Par la suite, la clause `ORDER BY` permet d'ordonner l'entièreté des lignes en fonction de la longueur du contenu HTML en ordre asendante. Dans un même ordre d'idée, la clause `NTILE(100)` divise les lignes ordonnées en 100 groupes (tiles) approximativement de même taille.
En somme, les lignes sont ordonnées par la longueur du contenu HTML avant d'être divisées. Finalement, `AS` permet de nommer la nouvelle colonne `score` correspondante à un nombre situé entre 0,01 et 1,00 symbolisant la position relative de la longueur du html_content de chaque ligne par rapport à la distribution globale des longueurs. En somme, les longueurs les plus basses de html_content se verront attribuer des scores avoisinant 0,01, tandis que les longueurs les plus élevées se verront décerner des scores approchant 1,00.

***Expliquer et discuter de la performance de votre fonction recherche***

La fonction `"recherche"` localise le mot-clé dans `html_content` via une requête `ILIKE`, ce qui peut être exigeant en matière de ressources sur de grandes tables ou des grandes bases de données. L’optimisation par un index et la limitation des résultats à dix, ordonnés par score, peuvent améliorer les performances.

