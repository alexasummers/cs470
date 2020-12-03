CREATE TABLE MedicineStaffJunction
(DrugID int NOT NULL,
Staff_ID int NOT NULL,
CONSTRAINT medicine_staff_pk PRIMARY KEY (DrugID, Staff_ID),
CONSTRAINT drug2_fk
	FOREIGN KEY (DrugID) REFERENCES medicine(DrugID) ON DELETE RESTRICT,
    CONSTRAINT staff2_fk
FOREIGN KEY(Staff_ID)
REFERENCES staff(Staff_ID) ON DELETE RESTRICT) ENGINE=INNODB;

SELECT *
FROM ClientStaffJunction;