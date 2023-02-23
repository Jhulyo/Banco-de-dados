
-- PROCEDURES --

DELIMITER //
CREATE PROCEDURE inseri_cliente (v_nome VARCHAR(45), v_cpf VARCHAR(11))
BEGIN
	INSERT INTO cliente (nome, cpf)
    VALUES (v_nome, v_cpf);
END
//