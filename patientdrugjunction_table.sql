-- CREATE TABLE PatientDrugJunction
-- (junctionID int AUTO_INCREMENT,
-- patientID int UNIQUE,
-- drugID int,
-- PRIMARY KEY (junctionID),
-- FOREIGN KEY (patientID)
-- 	REFERENCES client(ClientID)
--     ON DELETE RESTRICT,
-- FOREIGN KEY (drugID)
-- 	REFERENCES medicine(DrugID)
--     ON DELETE RESTRICT) ENGINE=INNODB;

    SELECT patientID, drugID
    FROM patientdrugjunction
    
    