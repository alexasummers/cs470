DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `aggregate med`()
BEGIN
select count(clientID), drugID
from client
group by drugID;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `aggregate patient zip`()
BEGIN
select zip,count(patient_informationID) 
from patientinformation
group by Zip;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `doc patient relations`()
BEGIN
select s.LastName, s.FirstName, s.Staff_ID, p.Last_Name, p.First_Name, c.ClientID 
from client c
join patientinformation p 
on c.ClientID = p.patient_InformationID 
join staff s 
on c.StaffID = s.Staff_ID 
order by s.LastName;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_client_information`(
	IN cID int
)
BEGIN

SELECT ClientID, StaffID, DrugID, Length_of_stay, Vitals FROM client
	WHERE ClientID = cID;

END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_DrugID`()
BEGIN
select m.drugid, m.name, m.interactions, ms.staff_id
from medicine as m
join medicinestaffjunction as ms
on m.drugid = ms.drugid
Where ms.staff_id = '4';

END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_staff_information`()
BEGIN 

SELECT LastName, FirstName, Department_ID 
FROM STAFF
WHERE LastName LIKE 'A%'
ORDER BY LastName;

END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `patient meds`()
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

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_vitals`(
	IN newVitals VARCHAR(10),
    IN cID int
)
BEGIN

UPDATE test.client
	SET Vitals = newVitals
    WHERE ClientID = cID;
    
END$$
DELIMITER ;
