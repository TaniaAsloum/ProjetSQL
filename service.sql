
USE mon_projet;

DROP TABLE IF EXISTS service;
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
ENGINE=INNODB;

/*ALTER TABLE service
ADD FOREIGN KEY (id_utilisateur) REFERENCES utilisateur (id) ON DELETE CASCADE ON UPDATE CASCADE*/


INSERT INTO service (id_utilisateur, nom, description, adresse, code_postal, ville, pays, dateheure, complement)
VALUES 
    (2, 'service1', 'description1', 'adresse1', 'code1', 'ville1', 'pays1', '2018-10-25 00:00:00', NULL),
    (5, 'service2', 'description2', 'adresse2', 'code2', 'ville2', 'pays2', '2018-10-25 00:00:00', NULL),
    (4, 'service3', 'description3', 'adresse3', 'code3', 'ville3', 'pays3', '2018-12-25 00:00:00', NULL),
    (6, 'service4', 'description4', 'adresse4', 'code4', 'ville4', 'pays4', '2018-10-26 00:00:00', NULL),
    (7, 'service5', 'description5', 'adresse5', 'code5', 'ville5', 'pays5', '2014-10-25 00:00:00', NULL),
    (4, 'service6', 'description6', 'adresse6', 'code6', 'ville6', 'pays6', '2018-10-25 00:01:00', NULL),
    (1, 'service7', 'description7', 'adresse7', 'code7', 'ville7', 'pays7', '2018-09-27 00:00:00', NULL),
    (4, 'service8', 'description7', 'adresse8', 'code8', 'ville8', 'pays8', '2021-10-25 00:00:00', NULL),
    (6, 'service9', 'description8', 'adresse9', 'code9', 'ville9', 'pays9', '2018-05-25 00:00:00', NULL),
    (4, 'service10', 'description9', 'adresse10', 'cod10', 'ville10', 'pays10', '2018-10-25 00:00:00', NULL),
    (4, 'service11', 'description10', 'adresse11', 'cod11', 'ville11', 'pays11', '2018-10-25 00:00:00', NULL),
    (4, 'service12', 'description11', 'adresse12', 'cod12', 'ville12', 'pays12', '2018-04-26 00:04:00', NULL),
    (4, 'service13', 'description12', 'adresse13', 'cod13', 'ville13', 'pays13', '2020-10-25 00:00:00', NULL),
    (4, 'service14', 'description13', 'adresse14', 'cod14', 'ville14', 'pays14', '2018-10-26 00:00:00', NULL),
    (4, 'service15', 'description14', 'adresse15', 'cod15', 'ville15', 'pays15', '2018-10-25 00:00:00', NULL),
    (4, 'service16', 'description15', 'adresse16', 'cod16', 'ville16', 'pays16', '2019-08-25 00:00:00', NULL),
    (4, 'service17', 'description16', 'adresse17', 'cod17', 'ville17', 'pays17', '2018-10-01 00:00:00', NULL),
    (4, 'service18', 'description17', 'adresse18', 'cod18', 'ville18', 'pays18', '2018-03-25 00:00:00', NULL),
    (4, 'service19', 'description18', 'adresse19', 'cod19', 'ville19', 'pays19', '2018-10-13 00:00:00', NULL),
    (4, 'service20', 'description19', 'adresse20', 'cod20', 'ville20', 'pays20', '2018-12-25 00:00:00', NULL);

    /*Story 5 */


INSERT INTO service (id_utilisateur, nom, description, adresse, code_postal, ville, pays, dateheure, complement)
VALUES (26, 'service21', 'description21', 'adresse21', 'cod21', 'ville21', 'pays21', '2018-12-25 00:00:00', NULL);



/*Story 10*/


-- SELECT *
-- FROM service as S
-- INNER JOIN service_utilisateur as SU
-- ON S.id_utilisateur =! SU.id_user
-- WHERE S.dateheure > '2018-10-24 00:00:00';
-- ORDER BY S.dateheure ASC,
--         S.ville ASC;

SELECT S.*
FROM service as S
WHERE S.id NOT IN (SELECT id_utilisateur FROM service_utilisateur)
AND S.dateheure > '2018-10-23 00:00:00'
ORDER BY S.dateheure ASC,
    S.ville ASC;

    /*Story 11*/

-- SELECT S.* , U.pseudo , U.tel_portable
-- FROM service as S
-- INNER JOIN utilisateur as U
-- ON S.id_utilisateur = U.id


-- SELECT DISTINCT S.* , U.pseudo as pseudoCreateur, U.tel_portable, U2.pseudo as pseudoInscrit
-- FROM service as S
-- INNER JOIN utilisateur as U
-- ON S.id_utilisateur = U.id
-- LEFT JOIN service_utilisateur as SU
-- ON SU.id_service = S.id
-- LEFT JOIN utilisateur as U2
-- ON U2.id = SU.id_user
-- WHERE S.id = SU.id_user;

SELECT DISTINCT S.* , U.pseudo as pseudoCreateur, U.tel_portable, U2.pseudo as pseudoInscrit
FROM service as S
INNER JOIN utilisateur as U
ON S.id_utilisateur = U.id
LEFT JOIN service_utilisateur as SU
ON SU.id_service = S.id
LEFT JOIN utilisateur as U2
ON U2.id = SU.id_user
WHERE S.id = 19

-- story 12 --

DELETE FROM service
WHERE id=4


