USE `test`;
DROP procedure IF EXISTS `aggregate patient zip`;

DELIMITER $$
USE `test`$$
CREATE PROCEDURE `aggregate patient zip` ()
BEGIN
select zip,count(patient_informationID) 
from patientinformation
group by Zip;
END$$

DELIMITER ;

