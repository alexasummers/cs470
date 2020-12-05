USE `test`;
DROP procedure IF EXISTS `Get_DrugID`;

DELIMITER $$
USE `test`$$
CREATE PROCEDURE `Get_DrugID` ()
BEGIN
select m.drugid, m.name, m.interactions, ms.staff_id
from medicine as m
join medicinestaffjunction as ms
on m.drugid = ms.drugid
Where ms.staff_id = '4';

END$$

DELIMITER ;
