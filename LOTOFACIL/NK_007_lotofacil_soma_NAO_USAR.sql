/**
  TODO: NÃO USAREMOS ESTE ARQUIVO, POIS A SOMA FOI ENVIADA PRA A
  TABELA LOTOFACIL_ID.
 */


/**
  Descrição:    Script sql pra gerar tabela com a soma de todas as bolas de cada concurso.
  Autor:        Fábio Moura de Oliveira
 */
--TODO: Cria esta tabela posteriormente.
DROP TABLE IF EXISTS lotofacil.lotofacil_id_soma_de_bolas;
CREATE TABLE lotofacil.lotofacil_id_soma_de_bolas (
  soma_de_bolas_id NUMERIC NOT NULL,
  soma_de_bolas    NUMERIC NOT NULL,

  CONSTRAINT lotofacil_id_soma_de_bolas_pk PRIMARY KEY (soma_de_bolas_id)
);

/**
  Popula a tabela com todos os valores possíveis de soma
  no jogo lotofacil.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_id_soma_de_bolas();
CREATE FUNCTION lotofacil.fn_lotofacil_id_soma_de_bolas()
  RETURNS VOID
LANGUAGE plpgsql AS
$$
DECLARE
  DECLARE menor_soma NUMERIC;
  DECLARE maior_soma NUMERIC;
          uA         NUMERIC;
          qt_itens   NUMERIC;
BEGIN

  -- A soma das 15 bolas iniciais.
  menor_soma := 0;
  FOR uA IN 1 .. 15 LOOP
    menor_soma := menor_soma + uA;
  END LOOP;

  -- A soma das 18 últimas bolas.
  maior_soma := 0;
  FOR uA IN 8 .. 25 LOOP
    maior_soma := maior_soma + uA;
  END LOOP;

  FOR uA IN menor_soma .. maior_soma LOOP
    INSERT INTO lotofacil.lotofacil_id_soma_de_bolas (soma_de_bolas_id, soma_de_bolas) VALUES (uA, uA);
  END LOOP;


END;
$$;

SELECT
FROM lotofacil.fn_lotofacil_id_soma_de_bolas();

UPDATE lotofacil.lotofacil_id
SET soma_de_bolas_id =
b_1 + b_2 + b_3 + b_4 + b_5 + b_6 + b_7 + b_8 + b_9 + b_10 + b_11 +
b_12 + b_13 + b_14 + b_15
FROM lotofacil.lotofacil_bolas
WHERE lotofacil.lotofacil_bolas.ltf_id = lotofacil.lotofacil_id.ltf_id
and lotofacil.lotofacil_bolas.ltf_qt = 15;

UPDATE lotofacil.lotofacil_id
SET soma_de_bolas_id =
b_1 + b_2 + b_3 + b_4 + b_5 + b_6 + b_7 + b_8 + b_9 + b_10 + b_11 +
b_12 + b_13 + b_14 + b_15 + b_16
FROM lotofacil.lotofacil_bolas
WHERE lotofacil.lotofacil_bolas.ltf_id = lotofacil.lotofacil_id.ltf_id
and lotofacil.lotofacil_bolas.ltf_qt = 16;


UPDATE lotofacil.lotofacil_id
SET soma_de_bolas_id =
b_1 + b_2 + b_3 + b_4 + b_5 + b_6 + b_7 + b_8 + b_9 + b_10 + b_11 +
b_12 + b_13 + b_14 + b_15 + b_16 + b_17
FROM lotofacil.lotofacil_bolas
WHERE lotofacil.lotofacil_bolas.ltf_id = lotofacil.lotofacil_id.ltf_id
and lotofacil.lotofacil_bolas.ltf_qt = 17;

UPDATE lotofacil.lotofacil_id
SET soma_de_bolas_id =
b_1 + b_2 + b_3 + b_4 + b_5 + b_6 + b_7 + b_8 + b_9 + b_10 + b_11 +
b_12 + b_13 + b_14 + b_15 + b_16 + b_17 + b_18
FROM lotofacil.lotofacil_bolas
WHERE lotofacil.lotofacil_bolas.ltf_id = lotofacil.lotofacil_id.ltf_id
and lotofacil.lotofacil_bolas.ltf_qt = 18;









DROP TABLE IF EXISTS lotofacil.lotofacil_soma;
CREATE TABLE lotofacil.lotofacil_soma (
  ltf_id    NUMERIC NOT NULL,
  ltf_qt    NUMERIC NOT NULL,
  bola_soma NUMERIC NOT NULL,
  CONSTRAINT lotofacil_soma_FK FOREIGN KEY (ltf_id) REFERENCES lotofacil.lotofacil_num (ltf_id) ON DELETE CASCADE
);
COMMENT ON CONSTRAINT lotofacil_soma_fk
ON lotofacil.lotofacil_soma IS ''
'Não terá uma restrição on update cascade pois não sabemos qual é o novo valor.';

ALTER TABLE lotofacil.lotofacil_soma
  DROP CONSTRAINT lotofacil_soma_FK;

/**
  Aqui, deve-se importar o arquivo csv: lotofacil_soma.csv.
 */



ALTER TABLE lotofacil.lotofacil_soma
  ADD CONSTRAINT lotofacil_soma_FK FOREIGN KEY (ltf_id) REFERENCES lotofacil.lotofacil_num (ltf_id) ON DELETE CASCADE;
CREATE INDEX lotofacil_soma_idx_1
  ON lotofacil.lotofacil_soma (bola_soma);

DROP VIEW IF EXISTS lotofacil.v_lotofacil_soma_por_bola;
CREATE VIEW lotofacil.v_lotofacil_soma_por_bola AS
  SELECT
    ltf_qt,
    bola_soma,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_soma
  GROUP BY ltf_qt, bola_soma
  ORDER BY ltf_qt ASC, qt_vezes DESC;

/**
  Cria a tabela lotofacil.lotofacil_soma_agrupado_por_bola
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_soma_agrupado_por_bola;
CREATE TABLE lotofacil.lotofacil_soma_agrupado_por_bola (
  ltf_qt    NUMERIC NOT NULL,
  bola_soma NUMERIC NOT NULL,
  qt_vezes  NUMERIC NOT NULL
);

INSERT INTO lotofacil.lotofacil_soma_agrupado_por_bola (ltf_qt, bola_soma, qt_vezes)
  SELECT
    ltf_qt,
    bola_soma,
    qt_vezes
  FROM lotofacil.v_lotofacil_soma_por_bola
  ORDER BY ltf_qt, qt_vezes DESC;


DROP VIEW IF EXISTS lotofacil.v_lotofacil_soma;
CREATE VIEW lotofacil.v_lotofacil_soma AS
  SELECT
    bola_soma,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_soma
  GROUP BY bola_soma
  ORDER BY qt_vezes DESC;

DROP TABLE IF EXISTS lotofacil.lotofacil_soma_agrupado;
CREATE TABLE lotofacil.lotofacil_soma_agrupado (
  bola_soma NUMERIC NOT NULL,
  qt_vezes  NUMERIC NOT NULL
);

INSERT INTO lotofacil.lotofacil_soma_agrupado (bola_soma, qt_vezes)
  SELECT
    bola_soma,
    qt_vezes
  FROM lotofacil.v_lotofacil_soma;


/**
  Cria uma view comparando com os resultados da lotofacil.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_soma;
CREATE VIEW lotofacil.v_lotofacil_resultado_soma AS
  SELECT
    ltf_soma.bola_soma,
    ltf_soma.ltf_qt   ltf_qt,
    ltf_soma.qt_vezes ltf_qt_vezes,
    CASE
    WHEN res_soma.qt_vezes IS NULL
      THEN
        0
    ELSE res_soma.qt_vezes
    END               res_qt_vezes
  FROM
    (SELECT
       ltf_qt,
       bola_soma,
       qt_vezes AS qt_vezes
     FROM lotofacil.lotofacil_soma_agrupado_por_bola) ltf_soma
    LEFT JOIN
    (
      SELECT
        15       AS ltf_qt,
        bola_soma,
        count(*) AS qt_vezes
      FROM lotofacil.lotofacil_resultado_soma
      GROUP BY bola_soma
    ) res_soma
      ON ltf_soma.bola_soma = res_soma.bola_soma

  ORDER BY ltf_soma.ltf_qt ASC, res_qt_vezes DESC, ltf_soma.qt_vezes DESC;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_soma_comum;
CREATE VIEW lotofacil.v_lotofacil_resultado_soma_comum AS
  SELECT
    ltf_soma.bola_soma,
    ltf_soma.qt_vezes ltf_qt_vezes,
    CASE
    WHEN res_soma.qt_vezes IS NULL
      THEN
        0
    ELSE res_soma.qt_vezes
    END               res_qt_vezes
  FROM
    (SELECT
       ltf_qt,
       bola_soma,
       qt_vezes AS qt_vezes
     FROM lotofacil.lotofacil_soma_agrupado_por_bola) ltf_soma
    LEFT JOIN
    (
      SELECT
        15       AS ltf_qt,
        bola_soma,
        count(*) AS qt_vezes
      FROM lotofacil.lotofacil_resultado_soma
      GROUP BY bola_soma
    ) res_soma
      ON ltf_soma.bola_soma = res_soma.bola_soma

  ORDER BY ltf_soma.ltf_qt ASC, res_qt_vezes DESC, ltf_soma.qt_vezes DESC;




