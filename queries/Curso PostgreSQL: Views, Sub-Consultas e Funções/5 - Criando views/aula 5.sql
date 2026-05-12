--AULA 05--
-- CREATE [ OR REPLACE ] [ TEMP | TEMPORARY ] VIEW name [ ( column_name [, ...] ) ]
--    [ WITH ( view_option_name [= view_option_value] [, ... ] ) ]
--    AS query

CREATE VIEW vw_cursos_por_categoria 
	AS SELECT categoria.nome AS categoria,
       COUNT(curso.id) as numero_cursos
    FROM categoria
    JOIN curso ON curso.categoria_id = categoria.id
GROUP BY categoria;

SELECT * FROM vw_cursos_por_categoria;

SELECT categoria
  FROM vw_cursos_por_categoria AS categoria_cursos
 WHERE numero_cursos > 3;

 CREATE VIEW vw_cursos_programacao AS
 	SELECT nome FROM curso
     WHERE categoria_id = 2;

SELECT * FROM vw_cursos_programacao;
SELECT * FROM vw_cursos_programacao WHERE nome ='PHP';

SELECT categoria.id AS categoria_id, vw_cursos_por_categoria.* 
FROM vw_cursos_por_categoria
JOIN categoria ON categoria.nome = vw_cursos_por_categoria.categoria;

	