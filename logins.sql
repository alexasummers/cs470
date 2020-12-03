DROP TABLE IF EXISTS login;

CREATE TABLE login (
    login varchar(255) NOT NULL,
    password varchar(255) NOT NULL
)ENGINE=INNODB;

INSERT INTO login (login, password) VALUES
(('admin'), ('$2y$10$4IL1ixYfu/Ok7X3V843tAeKInfFI90HdALiWBnBxs.mhc8RK3N8X.')),
(('doctor'), ('$2y$10$DQwDPL8WJ8UqbueeO8.WBOGnr7p/oWPZDvvwp1KxzKJ8nI626WBdK')),
(('nurse'), ('$2y$10$PXugIto6/qEgtkx37Fnj4.BwOC6Tx.cOksHZP83BcYdLBpTe9yYYi'));
