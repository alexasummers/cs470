DROP TABLE IF EXISTS login;

CREATE TABLE login (
    login varchar(255) NOT NULL,
    password varchar(255) NOT NULL
)ENGINE=INNODB;

INSERT INTO login (login, password) VALUES
(('admin'), MD5('admin')),
(('doctor'), MD5('doctor')),
(('nurse'), MD5('nurse'));

-- INSERT INTO login (login, password) VALUES
-- ('admin', 'admin'),
-- ('doctor', 'doctor'),
-- ('nurse', 'nurse');

SELECT *
FROM LOGIN

-- ALTER TABLE Login CHANGE login id varchar (255);

-- ALTER TABLE Login CHANGE password Password varchar (255);
