-- exo 1 Dans la base de données webDevelopment, ajouter à la table languages une colonne versions (VARCHAR).
ALTER TABLE languages ADD versions VARCHAR(30);

-- exo 2 Dans la base de données webDevelopment, ajouter à la table frameworks une colonne version (INT).
ALTER TABLE frameworks ADD versions INT;

-- exo 3 Dans la base de données webDevelopment, dans la table languages renommer la colonne versions en version.
ALTER TABLE languages CHANGE versions version VARCHAR(30);

-- exo 4 Dans la base de données webDevelopment, dans la table frameworks, renommer la colonne name en framework.
ALTER TABLE frameworks CHANGE name framework VARCHAR(30);

-- exo 5 Dans la base de données webDevelopment, dans la table frameworks changer le type de la colonne version en VARCHAR de taille 10
ALTER TABLE frameworks MODIFY versions VARCHAR(10);

-- TP Dans la base codex, dans la table clients

-- supprimer la colonne secondPhoneNumber
ALTER TABLE clients DROP secondePhoneNumber
-- renommer la colonne firstPhoneNumber en phoneNumber
ALTER TABLE clients CHANGE firstPhoneNumber phoneNumber INT
--changer le type de la colonne phoneNumber en VARCHAR
ALTER TABLE clients MODIFY phoneNumber VARCHAR(30)
-- ajouter les colonnes zipCode(VARCHAR) et city(VARCHAR)
ALTER TABLE clients ADD zipCode VARCHAR(30);
ADD city VARCHAR(30);