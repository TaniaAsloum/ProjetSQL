USE mon_projet;

DROP TABLE IF EXISTS service_utilisateur;

CREATE TABLE service_utilisateur(

	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	id_service INT UNSIGNED NOT NULL,
	id_user INT UNSIGNED NOT NULL ,
	date_heure_inscription DATETIME NOT NULL,
	PRIMARY KEY (id)

)
CHARACTER SET 'utf8'
ENGINE = INNODB;

INSERT INTO service_utilisateur (id_service, id_user, date_heure_inscription)
VALUES
 		(19, 15, '2018-10-25 16:32:45'),
  	(16, 10, '2018-10-25 16:32:45'),
  	(3, 15, '2018-10-25 16:32:45'),
   	(15, 11, '2018-10-23 16:32:45'),
    (19, 15, '2018-10-25 16:32:45'),
    (5, 2, '2019-10-25 16:32:45'),
    (7, 15, '2018-10-25 15:32:45'),
    (9, 4, '2018-10-25 16:32:45'),
    (1, 13, '2018-10-25 16:32:45'),
    (4, 16, '2018-11-25 16:32:45');

    /*Story 6 */

    INSERT INTO service_utilisateur (id_service, id_user, date_heure_inscription)
VALUES (15, 26, '2018-10-23 13:32:45');



