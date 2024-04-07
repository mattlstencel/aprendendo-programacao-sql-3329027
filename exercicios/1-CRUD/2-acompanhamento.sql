--ALTER TABLE tabela
--DROP coluna
--ADD nova_coluna1 tipo_coluna1;

ALTER TABLE salario_classe
DROP salario
ADD salario varchar(50);

ALTER TABLE employees
ADD id_salario INTEGER;