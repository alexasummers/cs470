DROP TABLE IF EXISTS clientstaffjunction;


CREATE TABLE ClientStaffJunction
(ClientID int NOT NULL,
StaffID int NOT NULL,
CONSTRAINT client_staff_pk PRIMARY KEY (ClientID, StaffID),
CONSTRAINT client_fk
	FOREIGN KEY (clientID) REFERENCES client(ClientID) ON DELETE RESTRICT,
    CONSTRAINT staff_fk
FOREIGN KEY(StaffID)
REFERENCES staff(Staff_ID)
ON DELETE RESTRICT) ENGINE=INNODB;

SELECT *
FROM ClientStaffJunction;