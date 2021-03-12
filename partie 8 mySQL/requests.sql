-- exo 1 Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework l'afficher aussi.
SELECT frameworks.name as frameworks, languages.name as languages
FROM frameworks
RIGHT JOIN languages
ON frameworks.languagesId = languages.id;

-- exo 2 Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework ne pas l'afficher
SELECT frameworks.name as frameworks, languages.name as languages
FROM frameworks
INNER JOIN languages
ON frameworks.languagesId = languages.id;

-- exo 3 Afficher le nombre de framework qu'a un langage.
SELECT frameworks.name as languages, COUNT (frameworks.name) as totalframeworks
FROM languages
INNER JOIN frameworks
ON fraameworks.languagesId = languages.id
GROUP BY languages.name;

-- exo 4 Afficher les langages ayant plus de 3 frameworks.
SELECT frameworks.name as languages, COUNT (frameworks.name) as totalframeworks
FROM languages
INNER JOIN frameworks
ON frameworks.languagesId = languages.id
GROUP BY languages.name
HAVING COUNT (frameworks.name) > 3;