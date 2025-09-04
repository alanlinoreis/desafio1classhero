CREATE TABLE produtos (
    produto_id NUMBER PRIMARY KEY,
    preco      NUMBER CHECK (preco >= 0),
    status     CHAR(1) CHECK (status IN ('A', 'I'))
);
