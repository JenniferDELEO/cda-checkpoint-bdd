# Écris dans ce fichier quelques instructions SQL pour insérer des données dans ta BDD
# N'oublie pas, les requêtes SQL doivent se terminer avec un ";"
# Pense à céer au moins une entreprise nommée "WCS", à créer des offre d'emploi à "Paris" dont une qui s'intitule "Dev"

INSERT INTO recruteur (login, password, entreprise_id)
VALUES ("albus_dumbledore", "password1234!", 1);

INSERT INTO candidat (login, password, lastname, firstname, email, phone_number, presentation_text)
VALUES ("harry_potter", "password1234!", "Potter", "Harry", "harry.potter@gmail.com", 0123456789, "Harry est considéré comme « le survivant7 » depuis que ses parents Lily Evans et James Potter ont été assassinés. Le puissant mage noir Lord Voldemort les a tués dix ans plus tôt alors que Harry, qui n'était alors qu'un bébé, est parvenu à échapper de manière très inattendue au sortilège de la mort7. La tentative de meurtre était motivée par une prophétie annonçant à première vue que Harry anéantirait un jour les pouvoirs de Voldemort6. Cependant, le sortilège lancé par Voldemort sur l'enfant se retourne inexplicablement contre son lanceur et le désintègre, laissant le garçon intact avec pour seule trace de cet événement une cicatrice en forme d’éclair sur le front. Le garçon devient par conséquent très célèbre parmi les sorciers, tandis qu'il demeure ordinaire chez les moldus."),
("hermione_granger", "password1234!", "Granger", "Hermione", "hermione.granger@gmail.com", 0123456789, "Amie proche de Harry Potter et de Ron Weasley, Hermione fait figure de droiture et d'esprit tout au long de l'histoire. Née de parents moldus, elle est particulièrement douée pour la magie et intéressée par le monde magique et les connaissances qui l'entourent. Elle se montre d'un grand secours auprès de ses camarades de Poudlard et fonde l'Armée de Dumbledore avec Harry et Ron en cinquième année afin de contrer leur nouveau professeur de défense contre les forces du mal, Dolores Ombrage, et s'entraîner à se défendre. Hermione et Ron aident ensuite Harry à trouver et à détruire tous les horcruxes de Voldemort, pour permettre à Harry de le vaincre. Dans son épilogue, dix-neuf ans plus tard, elle est mariée avec Ron Weasley et le couple a deux enfants : Rose et Hugo qui vont eux aussi a Poudlard.");

INSERT INTO entreprise (name, description)
VALUES ("Poudlard", "Le bâtiment, situé sur les collines d'Écosse, est invisible et inaccessible aux Moldus (personnes dépourvues de pouvoirs magiques) grâce à divers sortilèges2. Il possède sept étages et plusieurs hautes tours, ainsi qu'un grand parc comprenant un lac, une forêt et plusieurs serres à des fins botaniques. Outre ses nombreuses salles de classes, dans lesquelles des cours de sortilèges, de potions, de métamorphose, d'histoire de la magie ou encore de défense contre les forces du Mal sont dispensés par des sorciers qualifiés, le château de Poudlard regorge de pièces étranges, comme la Grande salle et son plafond magique, les salles communes, la grande bibliothèque, la mystérieuse Salle sur demande ou encore la légendaire Chambre des secrets. Un grand nombre de passages dissimulés, d'escaliers et de portraits de peinture mouvants rendent l'établissement assez mystérieux, voire quelquefois potentiellement dangereux pour des élèves ne respectant pas le règlement."),
("WCS", "La Wild Code School est une école innovante et un réseau européen de campus qui forment aux métiers tech des spécialistes adaptables. C'est une marque de la société Innov'Educ. Après s'être historiquement développée sur le métier de développeur web (PHP, Javascript, Java/Android), l'école propose aujourd'hui des formations autour de six grands domaines: le développement informatique, la data, la cybersécurité, le product management, l'UX/UI Design et le business développement 2.0. Elle forme essentiellement des adultes en reconversion professionnelle sur des formats courts de trois à cinq mois.");

INSERT INTO offre (job_title, job_description, job_city, entreprise_id)
VALUES ("Professeur développeur web", "Un poste tout nouveau pour que les sorciers puissent EUX AUSSI créer et visiter des sites internet", "collines d'Ecosse", 1),
("Développeur web frontend", "Venez développer des applications innovantes sur la partie frontend. Stack technique: Nextjs", "Paris", 2),
("Dev", "Venez développer de super applications aussi bien frontend, backend et base de donnée. Stack technique: Nextjs (front), Nodejs avec express (back), SQLite (bdd)", "Paris", 2);

INSERT INTO candidat_offre (offre_id, candidat_id)
VALUES (1, 1),
(1, 2),
(2, 2),
(3, 1),
(3, 2);