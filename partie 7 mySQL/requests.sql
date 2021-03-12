-- exo 1 Dans la table languages, supprimer toutes les lignes parlant de HTML.
DELETE FROM languages WHERE language = 'HTML';

-- exo 2 Dans la table frameworks, modifier toutes les lignes ayant le framework Symfony par Symfony2.
UPDATE frameworks SET name = 'symfony2' WHERE name = 'symfony'; 
UPDATE frameworks SET name = 'symfony3' WHERE id = 2; 

-- exo 3 Dans la table languages, modifier la ligne du langage JavaScript version 5 par la version 5.1
UPDATE frameworks SET version = 'version 77' WHERE version = 'version 3' AND name = 'Jquery';