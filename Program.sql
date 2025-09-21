-- 1. Cria a tabela de clientes
CREATE TABLE clientes (
    cpf VARCHAR(14) PRIMARY KEY,
    nome VARCHAR(100)
);

-- 2. Insere alguns dados de exemplo na tabela
INSERT INTO clientes (cpf, nome) VALUES
('111.222.333-44', 'João da Silva'),
('555.666.777-88', 'Maria Pereira dos Santos'),
('999.888.777-66', 'Carlos Alberto'),
('333.444.555-66', 'Ana Luiza');

-- 3. Consulta para gerar os rótulos de "Cliente VIP"
--    com os 10 primeiros caracteres do nome em maiúsculas
SELECT
  UPPER(SUBSTRING(nome, 1, 10) || ' - Cliente VIP') AS rotulo_vip
FROM
  clientes;
