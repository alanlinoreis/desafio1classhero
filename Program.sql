CREATE TABLE clientes (
    cpf VARCHAR(11) PRIMARY KEY, -- CPF agora é 11 dígitos puros
    nome VARCHAR(100)
);

-- 2. Insere dados de exemplo com CPF puro
INSERT INTO clientes (cpf, nome) VALUES
('12345678901', 'João da Silva'),
('98765432198', 'Maria Pereira dos Santos'),
('55544433322', 'Carlos Alberto'),
('11122233344', 'Ana Luiza');

-- 3. Consulta que exibe os dados formatados
SELECT
  -- Rótulo VIP: 10 primeiros caracteres do nome + ' - Cliente VIP'
  UPPER(SUBSTRING(nome, 1, 10) || ' - Cliente VIP') AS rotulo_vip,
  -- CPF Formatado: 999.999.999-99
  SUBSTRING(cpf, 1, 3) || '.' ||
  SUBSTRING(cpf, 4, 3) || '.' ||
  SUBSTRING(cpf, 7, 3) || '-' ||
  SUBSTRING(cpf, 10, 2) AS cpf_formatado
FROM
  clientes;
