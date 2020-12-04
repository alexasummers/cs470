USE `test`;
DROP procedure IF EXISTS `aggregate med`;

DELIMITER $$
USE `test`$$
CREATE PROCEDURE `aggregate med` ()
BEGIN
select count(clientID), drugID
from client
group by drugID;
END$$

DELIMITER ;
