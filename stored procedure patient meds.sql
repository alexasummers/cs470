USE `test`;
DROP procedure IF EXISTS `patient meds`;

DELIMITER $$
USE `test`$$
CREATE PROCEDURE `patient meds` ()
BEGIN
SELECT t.ClientID, p.Last_Name, p.First_Name, t.Name, t.drugID
FROM Patientinformation p
LEFT JOIN (SELECT c.ClientID, c.drugID, m.Name
from Client c
inner JOIN medicine m
on c.DrugID = m.drugID) as t
on t.ClientID = p.patient_informationID;
END$$

DELIMITER ;
