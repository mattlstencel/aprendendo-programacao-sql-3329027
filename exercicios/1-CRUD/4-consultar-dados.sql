--SELECT
--coluna1,
--coluna2,
--coluna3
--FROM
--tabela
--WHERE
--condicao;

-- Crie uma consulta que retorne apenas as colunas "Name", "Composer" e "AlbumId" da tabela "tracks"
SELECT
Name,
Composer,
AlbumId
FROM
tracks
WHERE
AlbumId = 1;

SELECT
Name,
Composer,
AlbumId
FROM
tracks
WHERE
Composer LIKE 'l%';


-- Repita a consulta anterior e dessa vez filtre os registros para que retornem apenas as tracks com o atributo "AlbumId" igual a 1
