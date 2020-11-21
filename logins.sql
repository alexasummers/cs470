DROP TABLE IF EXISTS login;

CREATE TABLE login (
    login varchar(255) NOT NULL,
    password varchar(255) NOT NULL
)ENGINE=INNODB;

INSERT INTO login (login, password) VALUES
(MD5('admin'), MD5('admin')),
(MD5('doctor'), MD5('doctor')),
(MD5('nurse'), MD5('nurse'));

SELECT*
FROM LOGIN