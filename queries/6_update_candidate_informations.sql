# Écris une requêtes SQL qui permet de modifier le numéro de téléphone et le texte de présentation d'un candidat,

UPDATE candidat
SET phone_number = 0234567891,
presentation_text = "Harry est considéré comme « le survivant » depuis que ses parents Lily Evans et James Potter ont été assassinés. Le puissant mage noir Lord Voldemort les a tués dix ans plus tôt alors que Harry, qui n'était alors qu'un bébé, est parvenu à échapper de manière très inattendue au sortilège de la mort. La tentative de meurtre était motivée par une prophétie annonçant à première vue que Harry anéantirait un jour les pouvoirs de Voldemort. Cependant, le sortilège lancé par Voldemort sur l'enfant se retourne inexplicablement contre son lanceur et le désintègre, laissant le garçon intact avec pour seule trace de cet événement une cicatrice en forme d’éclair sur le front. Le garçon devient par conséquent très célèbre parmi les sorciers, tandis qu'il demeure ordinaire chez les moldus."
WHERE firstname = "Harry";