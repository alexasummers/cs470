-- DROP TABLE IF EXISTS Client;

-- CREATE TABLE Client
--  (ClientID INT UNSIGNED AUTO_INCREMENT UNIQUE,
--  StaffID int (5) NOT NULL,
--  DrugID INT,
--  INDEX drugID(DrugID),
--  Length_of_stay int (255) NOT NULL, -- in hours
--  Vitals VARCHAR(255),
-- PRIMARY KEY (ClientID),
-- FOREIGN KEY (DrugID) REFERENCES medicine(drugID)
--     ON DELETE RESTRICT) ENGINE=INNODB;

-- INSERT INTO Client (StaffID, Length_of_stay, Vitals) VALUES 
-- ("1000", 168, "Normal"),
-- ("1001", "120", "Normal"),
-- ("1002", "312", "Abnormal"),
-- ("1003", "48", "Normal"),
-- ("1004", "7", "Normal"),
-- ("1005", "192", "Abnormal"),
-- ("1006", "192", "Abnormal"),
-- ("1007", "5", "Normal"),
-- ("1008", "72", "Abnormal"),
-- ("1009", "216", "Abnormal"),
-- ("1010", "15", "Normal"),
-- ("1011", "48", "Normal"),
-- ("1012", "504", "Abnormal"),
-- ("1013", "48", "Normal"),
-- ("1014", "7", "Normal"),
-- ("1015", "24", "Normal"),
-- ("1016", "312", "Abnormal"),
-- ("1017", "192", "Abnormal"),
-- ("1018", "360", "Abnormal"),
-- ("1019", "120", "Abnormal"),
-- ("1020", "192", "Abnormal"),
-- ("1021", "96", "Normal"),
-- ("1022", "48", "Normal"),
-- ("1023", "432", "Abnormal"),
-- ("1024", "216", "Abnormal");

-- SELECT *
-- FROM client

SELECT TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, CONSTRAINT_NAME
       FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
       WHERE REFERENCED_TABLE_SCHEMA IS NOT NULL;
