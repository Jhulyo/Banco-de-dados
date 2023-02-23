
-- Instâncias das tabelas;
INSERT INTO aeroporto (codigo, nome, localizacao)
VALUES ("A51041", "Deputado Luís Eduardo Magalhães", "Salvador"),
       ( "B19802", "Eurico de Aguiar Salles", "Vitória"),
       ( "C79860", "Deputado Freitas Nobre", "São Paulo/Congonhas"),
       ( "D13869", "Presidente Juscelino Kubitschek", "Brasília"),
       ( "E34730", "Afonso Pena", "Curitiba");
       
INSERT INTO aviao (numAviao, fabricante)
VALUES (123, "Airbus"),
       (124, "Airbus"),
       (200, "Comac"),
       (201, "Comac"),
       (533, "Boeing");

INSERT INTO voo (numVoo, companhia, horario, destino, aeroporto_id, aviao_id)
VALUES (101, "Azul", "12:30:00", "Brasília", 1, 1),
       (202, "Gol", "06:00:00", "São Paulo", 2, 3),
       (303, "LATAM", "19:00:00", "Vitória", 4, 2),
       (404, "Surinam", "08:00:00", "Salvador", 5, 4),
       (505, "Azul", "17:00:00", "Curitiba", 3, 5);

INSERT INTO cliente (nome, cpf) 
VALUES("João", "75320273096"),
      ( "Gabriel", "06424303065"),
      ( "Marcia", "82614637025"),
      ( "Amanda", "74361294062"),
      ( "Ricardo", "16922357027");

INSERT INTO passagem (numPass, preco, cliente_id, voo_id)
VALUES ("001P", 150, 1, 7), 
       ("002P", 300, 2, 9), 
       ("003P", 500, 3, 6), 
       ("004P", 300, 4, 8), 
       ("005P", 150, 5, 10);



