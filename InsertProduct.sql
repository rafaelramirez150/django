DELIMITER //
CREATE PROCEDURE InsertProduct(IN productName VARCHAR(100), IN categoryId INT)
BEGIN
    INSERT INTO product (product, id_c_d) VALUES (productName, categoryId);
END //
DELIMITER ;

CALL InsertProduct('teléfono', 4);
CALL InsertProduct('TV HD', 5);
CALL InsertProduct('Camisa', 2);
CALL InsertProduct('falda de oficina', 2);
CALL InsertProduct('Cartera', 3);
CALL InsertProduct('bolsa de mano', 3);
CALL InsertProduct('bolsa de viaje', 3);
