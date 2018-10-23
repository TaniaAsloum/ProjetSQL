USE mon_projet;

DROP TABLE IF EXISTS utilisateur;

CREATE TABLE utilisateur(

    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    email VARCHAR(40) NOT NULL UNIQUE,
    mdp VARCHAR (10) NOT NULL,
    pseudo VARCHAR (40) NOT NULL UNIQUE,
    Adresse VARCHAR (40) NULL, 
    code_postal VARCHAR (5) NULL,
    ville VARCHAR (60) NULL,
    pays VARCHAR (40) NULL,
    tel_portable VARCHAR (20) NULL, 
    tel_fixe VARCHAR (20) NULL,
    date_inscription DATE NOT NULL,
    PRIMARY KEY (id)
)
CHARACTER SET 'utf8'
ENGINE = INNODB;

INSERT INTO utilisateur
VALUES (1,'user1@gmail.com', 'password1','user1', 'adresse1', '75010', 'paris', 'france','0623142412','01234563454','2009-12-11'),
    (2,'user2@gmail.com', 'password2','user2', 'adresse2', '75010', 'paris', 'france','0623142412','01234563454','2010-12-11'),
    (3,'user3@gmail.com', 'password3','user3', 'adresse3', '75010', 'paris', 'france','0623142412','01234563454','2010-12-12'),
    (4,'user4@gmail.com', 'password4','user4', 'adresse4', '75010', 'paris', 'france','0623142412','01234563454','2010-12-13'),
    (5,'user5@gmail.com', 'password5','user5', 'adresse5', '75010', 'paris', 'france','0623142412','01234563454','2010-12-14'),
    (6,'user6@gmail.com', 'password6','user6', 'adresse6', '75010', 'paris', 'france','0623142412','01234563454','2010-12-15'),
    (7,'user7@gmail.com', 'password7','user7', 'adresse7', '75010', 'paris', 'france','0623142412','01234563454','2010-12-16'),
    (8,'user8@gmail.com', 'password8','user8', 'adresse8', '75010', 'paris', 'france','0623142412','01234563454','2010-12-17'),
    (9,'user9@gmail.com', 'password9','user9', 'adresse9', '75010', 'paris', 'france','0623142412','01234563454','2010-12-18'),
    (10,'user10@gmail.com', 'password10','user10', 'adresse10', '75010', 'paris', 'france','0623142412','01234563454','2010-12-19'),
    (11,'user11@gmail.com', 'password11','user11', 'adresse11', '75010', 'paris', 'france','0623142412','01234563454','2010-12-20'),
    (12,'user12@gmail.com', 'password12','user12', 'adresse12', '75010', 'paris', 'france','0623142412','01234563454','2010-12-21'),
    (13,'user13@gmail.com', 'password13','user13', 'adresse13', '75010', 'paris', 'france','0623142412','01234563454','2010-12-22'),
    (14,'user14@gmail.com', 'password14','user14', 'adresse14', '75010', 'paris', 'france','0623142412','01234563454','2010-12-23'),
    (15,'user15@gmail.com', 'password15','user15', 'adresse15', '75010', 'paris', 'france','0623142412','01234563454','2010-12-24'),
    (16,'user16@gmail.com', 'password16','user16', 'adresse16', '75010', 'paris', 'france','0623142412','01234563454','2010-12-25'),
    (17,'user17@gmail.com', 'password17','user17', 'adresse17', '75010', 'paris', 'france','0623142412','01234563454','2010-12-26'),
    (18,'user18@gmail.com', 'password18','user18', 'adresse18', '75010', 'paris', 'france','0623142412','01234563454','2010-12-27'),
    (19,'user19@gmail.com', 'password19','user19', 'adresse19', '75010', 'paris', 'france','0623142412','01234563454','2010-12-28'),
    (20,'user20@gmail.com', 'password20','user20', 'adresse20', '75010', 'paris', 'france','0623142412','01234563454','2010-12-29'),
    (21,'user21@gmail.com', 'password21','user21', 'adresse21', '75010', 'paris', 'france','0623142412','01234563454','2010-12-30'),
    (22,'user22@gmail.com', 'password22','user22', 'adresse22', '75010', 'paris', 'france','0623142412','01234563454','2010-12-11'),
    (23,'user23@gmail.com', 'password23','user23', 'adresse23', '75010', 'paris', 'france','0623142412','01234563454','2011-12-11'),
    (24,'user24@gmail.com', 'password24','user24', 'adresse24', '75010', 'paris', 'france','0623142412','01234563454','2012-12-11'),
    (25,'user25@gmail.com', 'password25','user25', 'adresse25', '75010', 'paris', 'france','0623142412','01234563454','2013-12-11');

/*Story 3*/


INSERT INTO utilisateur(id, email, mdp, pseudo, date_inscription)
VALUES
(26, 'inscrit26@gmail.com', 'password26', 'pseudo26', '2013-12-11' ),
(27, 'inscrit27@gmail.com', 'password26', 'pseudo27', '2013-12-11'  ),
(28, 'inscrit28@gmail.com', 'password26', 'pseudo28', '2013-12-11'  ),
(29, 'inscrit29@gmail.com', 'password26', 'pseudo29', '2013-12-11'  ),
(30, 'inscrit30@gmail.com', 'password26', 'pseudo30', '2013-12-11'  ),
(31, 'inscrit31@gmail.com', 'password26', 'pseudo31', '2013-12-11'  ),
(32, 'inscrit32@gmail.com', 'password26', 'pseudo32', '2013-12-11'  ),
(33, 'inscrit33@gmail.com', 'password26', 'pseudo33', '2013-12-11'  ),
(34, 'inscrit34@gmail.com', 'password26', 'pseudo34', '2013-12-11'  ),
(35, 'inscrit35@gmail.com', 'password26', 'pseudo35', '2013-12-11'  ),
(36, 'inscrit36@gmail.com', 'password26', 'pseudo36', '2013-12-11'  );

/*Story 4*/

UPDATE utilisateur
SET Adresse = "new_adress", code_postal = "91350", ville = "Super_ville", pays = "pays1", tel_portable = "0612131415", tel_fixe = "0123242526"
WHERE id = 26;





    