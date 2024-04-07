CREATE TABLE salario_classe2(
id INTEGER PRIMARY KEY AUTOINCREMENT,
nivel TEXT,
salario INTEGER);

INSERT INTO salario_classe2(id, nivel, salario)
VALUES
(1, 'estagiario', 3000),
(2, 'analista junior', 7600),
(3, 'engenheiro', 16000);

INSERT INTO salario_classe2(nivel, salario)
VALUES
('analista senior', 15000),
('gerente', 30000);
