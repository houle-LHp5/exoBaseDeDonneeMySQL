-- Dans la table languages, afficher toutes les données de la table.
SELECT * FROM languages; 

-- Dans la table languages, afficher toutes les versions de PHP.
SELECT * FROM languages WHERE language = 'php';

-- Dans la table languages, afficher toutes les versions de PHP et de JavaScript
SELECT * FROM languages WHERE language IN  ('php', 'JavaScript');

-- Dans la table languages, afficher toutes les lignes ayant pour id 3,5,7.
SELECT * FROM webdevelopment.languages WHERE id IN (3,5,7) ;

-- Dans la table languages, afficher les deux première entrées de JavaScript.
SELECT * FROM languages LIMIT 2;

-- Dans la table languages, afficher toutes les lignes qui ne sont pas du PHP
SELECT * FROM webdevelopment.languages WHERE language != 'php';

-- Dans la table languages, afficher toutes les données par ordre alphabétique.
SELECT * FROM webdevelopment.languages ORDER BY language;