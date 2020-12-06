CREATE DEFINER=`root`@`localhost` PROCEDURE `patient meds`()
BEGIN
SELECT t.ClientID, p.Last_Name, p.First_Name, t.Name, t.drugID
FROM Patientinformation p
LEFT JOIN (SELECT c.ClientID, c.drugID, m.Name
from Client c
inner JOIN medicine m
on c.DrugID = m.drugID) as t
on t.ClientID = p.client_informationID;
END