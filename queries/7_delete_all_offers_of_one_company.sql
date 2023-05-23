# Écris une requêtes SQL qui permet de supprimer toutes les offres d'une entreprise par son nom

DELETE FROM offre
WHERE offre.entreprise_id IN (
SELECT offre.entreprise_id FROM offre
JOIN entreprise e ON offre.entreprise_id = e.id
WHERE e.name = "WCS"
);