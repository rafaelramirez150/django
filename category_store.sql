DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `category_store`(
categoria varchar(100)
)
BEGIN
insert into category(category) values (categoria);
END
//
DELIMITER ;

CALL category_store('electrónica');
CALL category_store('ropa');
CALL category_store('bolsas');
CALL category_store('papa');
CALL category_store('papi');



