--Aula 05 - Particularidades PostgreSQL--
CREATE TEMPORARY TABLE auto (
	id INTEGER PRIMARY KEY DEFAULT NEXTVAL ('eu_criei'),
	nome VARCHAR (30) NOT NULL
);

INSERT INTO auto (nome) VALUES ('Vinicius Dias');
INSERT INTO auto (id, nome) VALUES (9, 'Mauricio Ribeiro');
INSERT INTO auto (nome) VALUES ('Fulano Tal');

SELECT * FROM auto;

CREATE SEQUENCE eu_criei;
DROP TABLE auto;
SELECT NEXTVAL ('eu_criei');
SELECT CURRVAL('eu_criei');
--
CREATE TEMPORARY TABLE filme (
	id SERIAL PRIMARY KEY,
	nome VARCHAR (255) NOT NULL,
	classificacao CLASSIFICACAO
);
CREATE TYPE CLASSIFICACAO AS ENUM ('LIVRE', '12_ANOS', '14_ANOS', '16_ANOS', '18_ANOS');

INSERT INTO filme (nome, classificacao)
	VALUES ('Filme1', 'LIVRE');
SELECT * FROM FILME;

