DROP TABLE IF EXISTS menu;
CREATE TABLE menu (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	nazwa_pliku CHAR(20),
	tytul VARCHAR(40),
	pozycja INTEGER DEFAULT 0
);

INSERT INTO menu VALUES(NULL, 'glowna', 'Aplikacja wiadomości', 1);
INSERT INTO menu VALUES(NULL, 'wiadomosci', 'Lista wiadomości', 2);
INSERT INTO menu VALUES(NULL, 'dodaj', 'Dodawanie wiadomości', 3);

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	login CHAR(20),
	haslo VARCHAR,
	email CHAR(50)
	data DATE
);

DROP TABLE IF EXISTS posty;
CREATE TABLE posty (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	wiadomosci VARCHAR,
	id_user INTEGER,
	FOREIGN KEY (id_user) REFERENCES users(id)
);