SELECT * FROM aeroporto;
SELECT * FROM aviao;
SELECT * FROM cliente;
SELECT * FROM passagem;

SELECT * FROM info_passageiro;

INSERT INTO cliente (nome, cpf) VALUES ("Lucas", "58396216096");

DROP TRIGGER  ai_log_cliente; 

ALTER TABLE log_alteracao_cliente
DROP COLUMN alter_nome_cliente;