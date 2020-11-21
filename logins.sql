DROP TABLE IF EXISTS login;

CREATE TABLE login (
    login varchar(255) NOT NULL,
    password varchar(255) NOT NULL
)ENGINE=INNODB;

INSERT INTO login (login, password) VALUES
(SHA1('admin'), MD5('admin')),
(SHA1('doctor'), MD5('doctor')),
(SHA1('nurse'), MD5('nurse'));

SELECT*
FROM LOGIN