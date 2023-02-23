
-- Função e triggres --
-- Esta função define a classe por meio do valor da passagem --
DELIMITER $$
CREATE FUNCTION Define_classe (valorPass DECIMAL(10,2))
RETURNS VARCHAR(45)
DETERMINISTIC
BEGIN
	
	IF valorPass <=> 500.00 
    THEN RETURN "Primeira Classe";
    
    ELSEIF 	valorPass <=> 300.00 
    THEN RETURN "Classe Executiva";
    
    ELSEIF valorPass <=> 150.00
    THEN RETURN "Classe Econômica";
    
    ELSE RETURN NULL;
	END IF;
END
$$

DELIMITER //

-- Gatilho para disparo de função na tabela passagem para definir a classe do cliente --
CREATE TRIGGER  bi_passagem_Define_classe 
BEFORE INSERT ON passagem FOR EACH ROW
BEGIN
	SET NEW.classe = Define_Classe(NEW.preco);
END;
//

-- Cria view de informações sobre o cliente e seu voo --
CREATE VIEW info_passageiro AS
SELECT nome AS Nome_Passageiro, numPass AS Número_Passagem, preco AS Preço, poltrona, classe, horario AS Horário_do_Voo, destino
FROM passagem
INNER JOIN cliente on passagem.cliente_id = cliente.idCliente
INNER JOIN voo on passagem.voo_id = voo.idvoo;

DELIMITER //
-- Trigger para tabela de log --
CREATE TRIGGER ai_log_cliente AFTER INSERT
ON cliente FOR EACH ROW
INSERT INTO log_altera_cliente (usuario, nome_registro)
VALUES (USER(), NEW.nome);
//






