
CREATE DATABASE mon_projet CHARACTER SET "utf8";

USE mon_projet;

CREATE TABLE utilisateur(

    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    email VARCHAR(40) NOT NULL UNIQUE,
    mdp VARCHAR (10) NOT NULL,
    pseudo VARCHAR (40) NOT NULL UNIQUE,
    Adresse VARCHAR (40) NOT NULL,
    code_postal VARCHAR (5) NOT NULL,
    ville VARCHAR (60) NOT NULL,
    pays VARCHAR (40) NOT NULL,
    tel_portable VARCHAR (20) NOT NULL,
    tel_fixe VARCHAR (20),
    date_inscription DATE NOT NULL,
    PRIMARY KEY (id)
)

CREATE TABLE service(

    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    id_utilisateur INT UNSIGNED NOT NULL,
    nom VARCHAR (20) NOT NULL,
    description TEXT NOT NULL,
    adresse VARCHAR(60) NOT NULL,
    code_postal VARCHAR(5) NOT NULL,
    ville VARCHAR(50) NOT NULL,
    pays VARCHAR(50) NOT NULL,
    dateheure DATETIME NOT NULL,
    complement TEXT,
    PRIMARY KEY (id)

    )



CREATE TABLE service_utilisateur(

	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	id_service INT UNSIGNED NOT NULL,
	id_user INT UNSIGNED NOT NULL ,
	date_heure_inscription DATETIME NOT NULL,
	PRIMARY KEY (id)

)

CREATE TABLE message (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    id_user INT UNSIGNED NOT NULL ,
    id_recipient INT UNSIGNED NOT NULL,
    content VARCHAR(30)NOT NULL,
    the_date_and_time DATE NOT NULL,
    PRIMARY KEY (id)
    )





