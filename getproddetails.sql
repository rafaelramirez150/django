DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `getProductDetails`(in ctg varchar(100))
BEGIN
  select product from product where id_c_d = (select id_c from category where category = ctg  );
END//
DELIMITER ;