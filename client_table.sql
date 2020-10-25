-- DROP TABLE IF EXISTS Client;

CREATE TABLE Client
 (ClientID int AUTO_INCREMENT UNIQUE,
 StaffID int (5) NOT NULL,
 DrugID int(5),
 Length_of_stay int (255) NOT NULL, -- in hours
 Vitals VARCHAR(255),
 PRIMARY KEY (ClientID),
 FOREIGN KEY (DrugID) REFERENCES Medicine(drugID)
    ON DELETE RESTRICT) ENGINE=INNODB;

INSERT INTO Client (StaffID, DrugID, Length_of_stay, Vitals) VALUES 
('1000', 38, 168, 'Normal'),
('1001', 23, '120', 'Normal'),
('1002', 12, '312', 'Abnormal'),
('1003', 1, '48', 'Normal'),
('1004', 3, '7', 'Normal'),
('1005', 14, '192', 'Abnormal'),
('1006', 21, '192', 'Abnormal'),
('1007', 1, '5', 'Normal'),
('1008', 32, '72', 'Abnormal'),
('1009', 21, '216', 'Abnormal'),
('1010', 11, '15', 'Normal'),
('1011', 7, '48', 'Normal'),
('1012', 32, '504', 'Abnormal'),
('1013', 1, '48', 'Normal'),
('1014', 5, '7', 'Normal'),
('1015', 21, '24', 'Normal'),
('1016', 2, '312', 'Abnormal'),
('1017', 40, '192', 'Abnormal'),
('1018', 28, '360', 'Abnormal'),
('1019', 30, '120', 'Abnormal'),
('1020', 36, '192', 'Abnormal'),
('1021', 28, '96', 'Normal'),
('1022', 19, '48', 'Normal'),
('1023', 8, '432', 'Abnormal'),
('1024', 36, '216', 'Abnormal');

SELECT *
FROM client