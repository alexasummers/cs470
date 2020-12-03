CREATE TABLE ClientDrugJunction
(ClientID int NOT NULL,
DrugID int NOT NULL,
CONSTRAINT client_drug_pk PRIMARY KEY (ClientID, DrugID),
CONSTRAINT client2_fk
	FOREIGN KEY (ClientID) REFERENCES client(ClientID) ON DELETE RESTRICT,
    CONSTRAINT drug_fk
FOREIGN KEY(DrugID)
REFERENCES medicine(DrugID) ON DELETE RESTRICT) ENGINE=INNODB;

SELECT *
FROM ClientStaffJunction;