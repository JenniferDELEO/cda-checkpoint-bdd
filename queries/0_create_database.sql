# Suit les instruction du checkpoint, en utilisant https://www.dbdesigner.net/, créer un script
# d'initialisation de BDD SQLite et copie colle son contenu ici
# (tu dois notmalement avoir +/- 4 instructions CREATE TABLE, chaque instructions doit bien se terminer par un ";")

PRAGMA foreign_keys = ON;

CREATE TABLE recruteur (
	id integer PRIMARY KEY AUTOINCREMENT,
	login varchar,
	password varchar,
	entreprise_id integer,
	FOREIGN KEY (entreprise_id) REFERENCES entreprise(id)
);

CREATE TABLE candidat (
	id integer PRIMARY KEY AUTOINCREMENT,
	login varchar,
	password varchar,
	lastname varchar,
	firstname varchar,
	email varchar,
	phone_number integer,
	presentation_text text
);

CREATE TABLE entreprise (
	id integer PRIMARY KEY AUTOINCREMENT,
	name varchar,
	description text
);

CREATE TABLE offre (
	id integer PRIMARY KEY AUTOINCREMENT,
	job_title varchar,
	job_description text,
	job_city varchar,
	entreprise_id integer,
	FOREIGN KEY (entreprise_id) REFERENCES entreprise(id)
);

CREATE TABLE candidat_offre (
	id integer PRIMARY KEY AUTOINCREMENT,
	offre_id integer,
	candidat_id integer,
	FOREIGN KEY (offre_id) REFERENCES offre(id) ON DELETE CASCADE,
  	FOREIGN KEY (candidat_id) REFERENCES candidat(id) ON DELETE CASCADE
);