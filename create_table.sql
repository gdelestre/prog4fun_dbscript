CREATE DATABASE IF NOT EXISTS prog4fun_project;
USE prog4fun_project;

CREATE TABLE IF NOT EXISTS utilisation(
id int AUTO_INCREMENT NOT NULL,
nom varchar(50) NOT NULL,
PRIMARY KEY (id));

CREATE TABLE If NOT EXISTS langage(
id int AUTO_INCREMENT NOT NULL,
nom varchar(15) UNIQUE NOT NULL,
id_utilisation int NOT NULL,
PRIMARY KEY (id),
CONSTRAINT FK_utilisation_de_langage FOREIGN KEY (id_utilisation)
REFERENCES utilisation(id));

CREATE TABLE IF NOT EXISTS outil(
id int AUTO_INCREMENT NOT NULL,
id_langage int NOT NULL,
nom varchar(30) NOT NULL,
img_url varchar(150),
PRIMARY KEY(id),
CONSTRAINT FK_outil_de_prog FOREIGN KEY (id_langage)
REFERENCES langage(id));


CREATE TABLE IF NOT EXISTS fonction(
id int AUTO_INCREMENT NOT NULL,
nom_fonction varchar(50) UNIQUE,
PRIMARY KEY(id));


CREATE TABLE IF NOT EXISTS commande(
id int AUTO_INCREMENT NOT NULL,
id_fonction int NOT NULL,
id_langage int NOT NULL,
detail varchar(255),
ligne_commande varchar(200),
PRIMARY KEY(id),
CONSTRAINT FK_commande_pour_fonction FOREIGN KEY (id_fonction)
REFERENCES fonction(id),
CONSTRAINT FK_commande_pour_langage FOREIGN KEY (id_langage)
REFERENCES langage(id));

CREATE TABLE IF NOT EXISTS action(
id int AUTO_INCREMENT NOT NULL,
id_fonction int NOT NULL,
id_outil int NOT NULL,
num_etape int,
nom_fichier varchar(30),
detail varchar(255) NOT NULL,
ligne_commande TEXT NOT NULL,
PRIMARY KEY(id),
CONSTRAINT FK_action_pour_fonction FOREIGN KEY (id_fonction)
REFERENCES fonction(id),
CONSTRAINT FK_action_pour_outil FOREIGN KEY (id_outil)
REFERENCES outil(id));
