# Suit les instruction du checkpoint, en utilisant https://www.dbdesigner.net/, créer un script
# d'initialisation de BDD SQLite et copie colle son contenu ici
# (tu dois notmalement avoir +/- 4 instructions CREATE TABLE, chaque instructions doit bien se terminer par un ";")

CREATE TABLE recruteur (
	id integer PRIMARY KEY AUTOINCREMENT,
	login varchar,
	password varchar,
	entreprise_id integer
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
	entreprise_id integer
);

CREATE TABLE candidat_offre (
	id integer PRIMARY KEY AUTOINCREMENT,
	offre_id integer,
	candidat_id integer
);