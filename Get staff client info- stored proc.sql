USE `test`;
DROP procedure IF EXISTS `get_staff_client_info`;

DELIMITER $$
USE `test`$$
CREATE PROCEDURE `get_staff_client_info` ()
BEGIN

Select ClientID, Staff_ID, JunctionID
From Client_Staff_Junction
ORDER BY Staff_ID;

END$$

DELIMITER ;