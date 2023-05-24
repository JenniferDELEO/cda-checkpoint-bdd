# Écris une requêtes SQL qui retourne tous les candidats ayant répondu à l'offre
# intitulée "Dev"

SELECT c.firstname, c.lastname, c.email, o.job_title
FROM ((candidat c 
INNER JOIN candidat_offre AS co ON c.id = co.candidat_id) 
INNER JOIN offre o ON co.offre_id = o.id)
WHERE o.job_title = "Dev";