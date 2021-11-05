DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico (userId INT)
RETURNS INT READS SQL DATA 
BEGIN

DECLARE quantity INT;

SELECT COUNT(*) INTO quantity FROM `history`
WHERE user_id = userId;

RETURN quantity;
 
END $$

DELIMITER ;