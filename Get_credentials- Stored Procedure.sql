USE `test`;
DROP procedure IF EXISTS `Get_Credentials_for_staff`;

DELIMITER $$
USE `test`$$
CREATE PROCEDURE `Get_Credentials_for_staff` ()
BEGIN
select d.Name, s.firstname, s.lastname, s.credentials
from department as d
join staff as s
on d.departmentid = s.department_id
where d.name = 'Pharmacy' ;
END$$

DELIMITER ;
