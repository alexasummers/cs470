DROP TABLE IF EXISTS login;

CREATE TABLE login (
	loginID INT(5) AUTO_INCREMENT,
    login varchar(255) NOT NULL,
    password varchar(255) NOT NULL,
    PRIMARY KEY (loginID)
)ENGINE=INNODB;

INSERT INTO login (login, password) VALUES
(('admin'), ('$2y$10$4IL1ixYfu/Ok7X3V843tAeKInfFI90HdALiWBnBxs.mhc8RK3N8X.')),
(('doctor'), ('$2y$10$DQwDPL8WJ8UqbueeO8.WBOGnr7p/oWPZDvvwp1KxzKJ8nI626WBdK')),
(('nurse'), ('$2y$10$PXugIto6/qEgtkx37Fnj4.BwOC6Tx.cOksHZP83BcYdLBpTe9yYYi')),
(('practitioner'), ('$2y$10$E3LsWPOJ5MmbvqXfYeapuO9U0ZMZJhMmAeCE/cMS7cKNnA/ziqg3u')),
(('examiner'), ('$2y$10$pyK07srlBtx07vjG8hh.C.euOjPEf07Pn2fjObkqvDHXVtip/FJ5q')),
(('surgeon'), ('$2y$10$LjQ.RpV4hv9D094KC86YZOFYgT6DF2JgQcd/uOA1Q/1OdXEWx229S')),
(('assistant'), ('$2y$10$xMsaQDNsjWLROPqyjbijPOKlFwRHHdevbhfePdBHHV/A9UJUHFIyu'));


SELECT *
FROM login;