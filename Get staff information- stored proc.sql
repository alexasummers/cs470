USE `test`;
DROP procedure IF EXISTS `get_staff_information`;

DELIMITER $$
USE `test`$$
CREATE PROCEDURE `get_staff_information`()

BEGIN 

SELECT LastName, FirstName, Department_ID 
FROM STAFF
WHERE LastName LIKE 'A%'
ORDER BY LastName;

END$$

DELIMITER ;
