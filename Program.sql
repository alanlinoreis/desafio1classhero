-- 1. Criação da tabela funcionarios
CREATE TABLE funcionarios (
    id       NUMBER PRIMARY KEY,
    nome     VARCHAR2(100),
    cargo    VARCHAR2(50),
    salario  NUMBER(10, 2)
);

-- 2. Alteração da tabela para adicionar a coluna data_nascimento
ALTER TABLE funcionarios
ADD data_nascimento DATE;

-- 3. Inserção de dados de exemplo
INSERT INTO funcionarios (id, nome, cargo, salario, data_nascimento)
VALUES (1, 'João Silva', 'Analista', 4500.00, TO_DATE('1990-05-15', 'YYYY-MM-DD'));

INSERT INTO funcionarios (id, nome, cargo, salario, data_nascimento)
VALUES (2, 'Maria Souza', 'Gerente', 7500.00, TO_DATE('1985-11-22', 'YYYY-MM-DD'));

-- 4. Confirmação das alterações
COMMIT;
