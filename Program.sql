-- 1. Criação da sequence para gerar IDs automaticamente
CREATE SEQUENCE seq_log_id
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;

-- 2. Criação da tabela logs
CREATE TABLE logs (
    log_id     NUMBER PRIMARY KEY,
    mensagem   VARCHAR2(255),
    data_log   TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 3. Criação da trigger para preencher log_id automaticamente
CREATE OR REPLACE TRIGGER trg_logs_bi
BEFORE INSERT ON logs
FOR EACH ROW
BEGIN
    IF :NEW.log_id IS NULL THEN
        :NEW.log_id := seq_log_id.NEXTVAL;
    END IF;
END;
/
