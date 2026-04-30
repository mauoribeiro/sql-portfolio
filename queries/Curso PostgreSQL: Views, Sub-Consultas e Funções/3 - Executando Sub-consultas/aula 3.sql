--AULA 03--
SELECT

SELECT categoria.nome AS categoria,
        COUNT(curso.id) as numero_cursos
    FROM categoria
    JOIN curso ON curso.categoria_id = categoria.id
GROUP BY categoria;

SELECT categoria,
       numero_cursos
    FROM algum_lugar
  WHERE numero_cursos > 3;
--
  SELECT categoria,
       numero_cursos
    FROM (
            SELECT categoria.nome AS categoria,
                COUNT(curso.id) as numero_cursos
            FROM categoria
            JOIN curso ON curso.categoria_id = categoria.id
        GROUP BY categoria
    ) AS categoria_cursos
  WHERE numero_cursos > 3;

--IGUAIS--

  SELECT categoria.nome AS categoria, 
    COUNT(curso.id) as numero_cursos 
FROM categoria 
JOIN curso ON curso.categoria_id = categoria.id 
GROUP BY categoria 
HAVING COUNT(curso.id) > 3;

--TRANSFORMAR EM SUBQUERY SEM HAVING--
  SELECT curso.nome,
         COUNT(aluno_curso.aluno_id) numero_alunos
    FROM curso
    JOIN aluno_curso ON aluno_curso.curso_id = curso.id
GROUP BY 1
     HAVING COUNT(aluno_curso.aluno_id) > 2
ORDER BY numero_alunos DESC;

SELECT * FROM curso
SELECT * FROM aluno_curso
SELECT * FROM aluno
--RESULTADO--
--SUB--
--curso com numero de aluno maior que 2--
--sub com os dados dos cursos e numero de alunos--
SELECT 	nome,
		COUNT (aluno_curso.aluno_id) AS numero_alunos
	FROM curso
	JOIN aluno_curso ON aluno_curso.curso_id = curso.id
	GROUP BY nome;
--QUERY--
SELECT 	nome, 
		numero_alunos
		FROM (
			SELECT 	curso.nome,
			COUNT (aluno_curso.aluno_id) AS numero_alunos
			FROM curso
			JOIN aluno_curso ON aluno_curso.curso_id = curso.id
			GROUP BY nome
		) quantidade
	WHERE numero_alunos > 2
	ORDER BY numero_alunos DESC;
		
