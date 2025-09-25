-- Usar NUMBER para valores monetários
CREATE TABLE Pagamentos (
    id_pagamento NUMBER PRIMARY KEY,
    valor NUMBER(10,2), -- precisão para casas decimais
    data_pagamento DATE -- armazena corretamente datas
);
