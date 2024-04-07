--INSERT INTO nome_tabela(coluna_1, coluna_2, coluna_3)
--VALUES
--(valor_coluna_1, valor_coluna_2, valor_coluna_3),
--(valor_coluna_1, valor_coluna_2, valor_coluna_3),
--(valor_coluna_1, valor_coluna_2, valor_coluna_3);

-- Insira 3 classes salariais na tabela salario_classe
INSERT INTO salario_classe(salario, nivel)
VALUES
(8500,'gerência'),
(10700,'coordenação de área');

ALTER TABLE salario_classe
RENAME COLUMN id TO id_salario;

-- Insira 1 nova classe salarial, sem declarar o atributo id_salario
