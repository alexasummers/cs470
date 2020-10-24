CREATE TABLE PatientDrugJunction
(junctionID int AUTO_INCREMENT,
patientID int UNSIGNED UNIQUE,
drugID int,
PRIMARY KEY (junctionID),
FOREIGN KEY (patientID)
	REFERENCES client(ClientID)
    ON DELETE RESTRICT,
FOREIGN KEY (drugID)
	REFERENCES medicine(DrugID)
    ON DELETE RESTRICT) ENGINE=INNODB;
    
-- INSERT INTO PatientDrugJunction (patientID, drugID) VALUES
-- ((SELECT drugID FROM medicine WHERE DrugID=1),(SELECT patientID FROM Client WHERE ClientID=1));

    SELECT *
    FROM PatientDrugJunction
    
    