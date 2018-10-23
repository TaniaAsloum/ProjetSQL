USE mon_projet;

DROP TABLE IF EXISTS message;

CREATE TABLE message (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    id_user INT UNSIGNED NOT NULL ,
    id_recipient INT UNSIGNED NOT NULL,
    content VARCHAR(30)NOT NULL,
    the_date_and_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)

    )
CHARACTER SET 'utf8'
ENGINE = INNODB;

INSERT INTO message(id_user, id_recipient, content, the_date_and_time)
VALUES
    (5, 7, "Hello les potes", "2018-10-22"),
    (7, 5, "Hello aussi", "2018-10-22"),
    (12, 20, "Hello24", "2018-10-22"),
    (20, 12, "Hello23 aussi", "2018-10-22"),
    (2, 14, "Hello22", "2018-10-22"),
    (14, 2, "Hello21 aussi", "2018-10-22"),

    (15, 17, "Hello20", "2018-10-22"),
    (8, 1, "Hello 19", "2018-10-22"),
    (13, 21, "Hello18", "2018-10-22"),
    (22, 12, "Hello17", "2018-10-22"),
    (23, 14, "Hello16", "2018-10-22"),
    (18, 2, "Hello15", "2018-10-22"),

    (10, 12, "Hello14", "2018-10-22"),
    (4, 9, "Hello13", "2018-10-22"),
    (2, 20, "Hello12", "2018-10-22"),
    (20, 12, "Hello11", "2018-10-22"),
    (2, 4, "Hello10", "2018-10-22"),
    (1, 2, "Hello9", "2018-10-22"),

     (5, 18, "Hello8", "2018-10-22"),
    (25, 5, "Hello7", "2018-10-22"),
    (12, 20, "Hello ça va ", "2018-10-22"),
    (20, 12, "bonsoir ", "2018-10-22"),
    (2, 14, "Bonjour", "2018-10-22"),
    (14, 2, "Yo aussi", "2018-10-22"),

    (5, 7, "Hello6", "2018-10-22"),
    (7, 5, "Hello5", "2018-10-22"),
    (19, 20, "Hello4", "2018-10-22"),
    (20, 19, "Hello3", "2018-10-22"),
    (2, 14, "Hello1", "2018-10-22"),
    (14, 2, "Hello2", "2018-10-22");


/* Story 7*/


INSERT INTO message(id_user, id_recipient, content, the_date_and_time)
VALUES
    (20, 26, "Hello27", "2018-06-15"),
    (26, 20, "Hello26", "2018-05-12");




/*Story 8*/

SELECT *
FROM message
WHERE (id_user = 26) OR (id_recipient =26)
ORDER BY the_date_and_time DESC;


/*Story 9*/

SELECT *
FROM message
WHERE (id_user = 26 AND id_recipient = 20) OR (id_recipient =26 AND id_user = 20)
ORDER BY the_date_and_time ASC;



