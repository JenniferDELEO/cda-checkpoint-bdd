# Écris une requêtes SQL qui retourne tous les candidats ayant répondu à l'offre
# intitulée "Dev"

SELECT * FROM candidat JOIN candidat_offre AS co ON candidat.id = co.candidat_id AND co.offre_id = 3;