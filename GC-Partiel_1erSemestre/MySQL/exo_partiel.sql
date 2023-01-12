-- Écrivez une requête SQL permettant de récupérer les 10 villes ayant les plus grandes populations
SELECT `ville_nom`,`ville_population_2012` FROM `villes_france_free`  
ORDER BY `villes_france_free`.`ville_population_2012`  DESC 
LIMIT 10;


-- Écrivez une requête SQL permettant d'afficher seulement les villes de plus de 150 000 habitants, triées par population décroissante
SELECT  `ville_nom`,`ville_population_2012` FROM `villes_france_free` 
WHERE `villes_france_free`.`ville_population_2012` > 150000
ORDER BY `villes_france_free`.`ville_population_2012` DESC

-- Écrivez une requête SQL permettant d'afficher pour chaque ville, le nom du département
SELECT `villes_france_free`.`ville_nom` AS "Nom Ville", `departement`.`departement_nom` AS "Nom Departement"
FROM `villes_france_free` 
INNER JOIN `departement`
ON `villes_france_free`.`ville_departement` = `departement_code`;


-- Écrivez une requête permettant de compter le nombre de restaurants par ville. 
-- Trier les résultats par ordre décroissant du nombre de restaurants
SELECT COUNT(`restaurant`.`restaurant_id`) AS "Nmb Restaurant(s)", `villes_france_free`.`ville_nom` AS "Nom Ville"
FROM `villes_france_free`
INNER JOIN `restaurant`
ON `restaurant`.`ville_id` = `villes_france_free`.`ville_id`
GROUP BY `villes_france_free`.`ville_nom`
ORDER BY COUNT(`restaurant`.`restaurant_id`) DESC


-- Écrivez une requête permettant de compter le nombre de restaurants par département (afficher le nom du département suivi du nombre de restaurant). 
-- Trier les résultats par ordre décroissant du nombre de restaurants
SELECT `departement`.`departement_nom` AS "Nom Departement", COUNT(`restaurant`.`restaurant_id`) AS "Nmb Restaurant(s)"
FROM `villes_france_free`
INNER JOIN `restaurant` ON `restaurant`.`ville_id` = `villes_france_free`.`ville_id`
INNER JOIN `departement` ON `villes_france_free`.`ville_departement` = `departement_code`
GROUP BY `departement`.`departement_nom`
ORDER BY COUNT(`restaurant`.`restaurant_id`) DESC


-- Ecrivez une requête permettant d'insérer le restaurant "Brasserie Georges" qui appartient à la ville de Lyon (id: 28153)
INSERT INTO `restaurant` (`restaurant_id`, `ville_id`, `nom`) VALUES (NULL, '28153', 'Brasserie Georges');


-- Ecrivez une requête permettant de corriger l'erreur présente sur tous les restaurants Ninkasi. En effet, il a été inséré sous le nom de Nikasi
UPDATE `restaurant` SET `nom` = 'Nikasi' WHERE `restaurant`.`nom` = "Ninkasi";

-- Ecrivez une requête permettant de supprimer le restaurant "Le 404", qui est une erreur d'insertion
DELETE FROM `restaurant` WHERE `restaurant`.`nom` = "Le 404";