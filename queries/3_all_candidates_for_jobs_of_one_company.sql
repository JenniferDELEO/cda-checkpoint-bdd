# Écris une requêtes SQL qui retourne tous les candidats ayant répondu à 
# au moins une offre d'une entreprise identifiée par son nom
# candidats => offre => entreprise (nom)

SELECT c.firstname, c.lastname, c.email, o.job_title AS offre, e.name AS entreprise 
FROM (((candidat c 
INNER JOIN candidat_offre AS co ON c.id = co.candidat_id) 
INNER JOIN offre o ON co.offre_id = o.id)
INNER JOIN entreprise e ON e.id = o.entreprise_id)
WHERE e.name = "WCS";