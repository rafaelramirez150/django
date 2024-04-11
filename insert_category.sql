DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_category`(id int, d varchar(100))
BEGIN
   insert into category values(id,d);
   
END //
DELIMITER ;

-- CALL insert_category('');