CREATE DATABASE db_sitema_aeroportuario;

-- Criando tabelas 
CREATE TABLE Aeroporto
(	idAeroporto INT AUTO_INCREMENT PRIMARY KEY,
	codigo VARCHAR(6) NOT NULL UNIQUE,
        nome VARCHAR(45) NOT NULL,
        localizacao VARCHAR(45) NOT NULL
);

CREATE TABLE Aviao 
(	idAviao INT AUTO_INCREMENT PRIMARY KEY,
	numAviao INT(3) NOT NULL UNIQUE,
        fabricante VARCHAR(45),
        tipo VARCHAR(45) DEFAULT 'Longo curso',
        capacidade INT(3) DEFAULT 260
);

CREATE TABLE Voo
(	idvoo INT AUTO_INCREMENT PRIMARY KEY,
	numVoo INT(3) NOT NULL UNIQUE,
        companhia VARCHAR(45) NOT NULL,
        horario TIME NOT NULL,
        destino VARCHAR(45) NOT NULL,
        aeroporto_id INT NOT NULL,
        aviao_id INT NOT NULL,
        CONSTRAINT fk_aeroporto FOREIGN KEY (aeroporto_id) REFERENCES aeroporto (idAeroporto),
        CONSTRAINT fk_aviao FOREIGN KEY (aviao_id) REFERENCES aviao (idAviao)
);

CREATE TABLE Cliente
(	idCliente INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(45) NOT NULL,
	cpf VARCHAR(11) NOT NULL UNIQUE,
        telefone VARCHAR(20) DEFAULT '(99) 9999-9999',
        endereco VARCHAR(150) DEFAULT 'Cidade, Bairro, Rua, Número'
);

CREATE TABLE Passagem
(	idPassagem INT AUTO_INCREMENT PRIMARY KEY,
	numPass VARCHAR(4) NOT NULL,
	dataPass TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        classe VARCHAR(45) NOT NULL,
        preco DECIMAL(10,2) NOT NULL,
        poltrona INT(3) NOT NULL DEFAULT (FLOOR(RAND() * 201) + 60),
        cliente_id INT NOT NULL,
        voo_id INT NOT NULL,
        CONSTRAINT fk_cliente FOREIGN KEY (cliente_id) REFERENCES cliente (idCliente),
        CONSTRAINT fk_voo FOREIGN KEY (voo_id) REFERENCES voo (idvoo)
);

CREATE TABLE log_altera_cliente
(	idLog INT AUTO_INCREMENT PRIMARY KEY,
	usuario VARCHAR(45) NOT NULL,
        logData DATETIME DEFAULT CURRENT_TIMESTAMP,
        nome_registro VARCHAR(45) NOT NULL
);
