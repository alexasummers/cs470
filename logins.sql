-- CREATE TABLE login (
--     login varchar(255) NOT NULL,
--     password varchar(255) NOT NULL
-- )ENGINE=INNODB;

INSERT INTO login (login, password) VALUES
('admin', MD5('admin')),
('doctor', MD5('doctor')),
('nurse', MD5('nurse'));

SELECT*
FROM LOGIN