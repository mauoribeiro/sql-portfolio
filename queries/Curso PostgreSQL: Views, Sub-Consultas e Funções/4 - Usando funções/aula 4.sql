--AULA 04--
SELECT * FROM aluno;

SELECT (primeiro_nome ||' '|| ultimo_nome) AS nome_completo FROM aluno;
SELECT CONCAT('Vinicius', ' ', NULL)

SELECT (primeiro_nome ||' '|| ultimo_nome) AS nome_completo, NOW()::DATE, data_nascimento FROM aluno;
SELECT (primeiro_nome ||' '|| ultimo_nome) AS nome_completo, NOW()::DATE - data_nascimento FROM aluno;
SELECT (primeiro_nome ||' '|| ultimo_nome) AS nome_completo, 
   	   (NOW()::DATE - data_nascimento) / 365 AS idade 
	FROM aluno;
SELECT (primeiro_nome ||' '|| ultimo_nome) AS nome_completo, 
   	   AGE(data_nascimento) AS idade 
	FROM aluno;
SELECT (primeiro_nome ||' '|| ultimo_nome) AS nome_completo, 
   	   EXTRACT(YEAR FROM AGE(data_nascimento)) AS idade 
	FROM aluno;

SELECT NOW();
SELECT NOW()::DATE;
SELECT TO_CHAR(NOW(), 'DD');
SELECT TO_CHAR(NOW(), 'DD/MM/YYYY');
SELECT TO_CHAR(NOW(), 'DD, MONTH,YYYY');
