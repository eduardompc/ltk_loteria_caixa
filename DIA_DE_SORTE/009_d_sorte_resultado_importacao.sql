/**
  Tabela sql que armazena os resultados baixados do site da lotofacil do endereço
  http://www.caixa.gov.br/loterias/d_lotofacil.zip'

  Autor: Fábio Moura de Oliveira.

 */
DROP TABLE IF EXISTS d_sorte.d_sorte_resultado_importacao;
CREATE TABLE d_sorte.d_sorte_resultado_importacao (
  concurso                   NUMERIC NOT NULL,
  data                       DATE,
  b_1                        NUMERIC DEFAULT NULL,
  b_2                        NUMERIC DEFAULT NULL,
  b_3                        NUMERIC DEFAULT NULL,
  b_4                        NUMERIC DEFAULT NULL,
  b_5                        NUMERIC DEFAULT NULL,
  b_6                        NUMERIC DEFAULT NULL,
  b_7                        NUMERIC DEFAULT NULL,
  arrecadacao_total          DECIMAL DEFAULT 0,
  qt_ganhadores_7_numeros    NUMERIC DEFAULT 0,
  qt_ganhadores_6_numeros    NUMERIC DEFAULT 0,
  qt_ganhadores_5_numeros    NUMERIC DEFAULT 0,
  qt_ganhadores_4_numeros    NUMERIC DEFAULT 0,
  qt_ganhadores_mes_de_sorte NUMERIC DEFAULT 0,
  rateio_7_numeros           DECIMAL DEFAULT 0,
  rateio_6_numeros           DECIMAL DEFAULT 0,
  rateio_5_numeros           DECIMAL DEFAULT 0,
  rateio_4_numeros           DECIMAL DEFAULT 0,
  rateio_mes_de_sorte        DECIMAL DEFAULT 0,
  acumulado_7_numeros        DECIMAL DEFAULT 0,
  estimativa_premio          DECIMAL DEFAULT 0,

  CONSTRAINT d_sorte_resultado_importacao_pk PRIMARY KEY (concurso),
  CONSTRAINT d_sorte_resultado_importacao_check CHECK (
    (b_1 < b_2) AND
    (b_2 < b_3) AND
    (b_3 < b_4) AND
    (b_4 < b_5) AND
    (b_5 < b_6) AND
    (b_6 < b_7))
);

/**
  Esta view indica quais registros estão inseridos no banco e quais precisam
  ser inseridos, com tais dados, fica fácil atualizar nosso tabela no futuro.
  E além disto, indica quais registros no banco estão com dados incorretos.
 */
DROP VIEW IF EXISTS d_sorte.v_tabela_1_importacao;
CREATE VIEW d_sorte.v_tabela_1_importacao AS
  SELECT
    CASE WHEN tabela_1.concurso IS NULL
      THEN
        'NOVO'
    ELSE
      'JA_INSERIDO'
    END AS STATUS,

    CASE WHEN (tabela_2.concurso IS NULL) AND (tabela_1.concurso IS NULL)
      THEN
        'AINDA_NAO_INSERIDO'
    WHEN (tabela_2.concurso IS NULL) AND NOT (tabela_1.concurso IS NULL)
      THEN
        'PRECISA_ATUALIZAR'
    ELSE
      'DADOS_CORRETOS'
    END AS STATUS_JA_INSERIDO,


    d_sorte_importado.*
  FROM
    (SELECT *
     FROM d_sorte.d_sorte_resultado_importacao) d_sorte_importado
    LEFT JOIN
    (SELECT concurso
     FROM d_sorte.d_sorte_resultado_bolas) tabela_1
      ON d_sorte_importado.concurso = tabela_1.concurso
    LEFT JOIN
    (SELECT *
     FROM d_sorte.d_sorte_resultado_bolas) tabela_2
      ON d_sorte_importado.concurso = tabela_2.concurso
         AND d_sorte_importado.b_1 = tabela_2.b_1
         AND d_sorte_importado.b_2 = tabela_2.b_2
         AND d_sorte_importado.b_3 = tabela_2.b_3
         AND d_sorte_importado.b_4 = tabela_2.b_4
         AND d_sorte_importado.b_5 = tabela_2.b_5
         AND d_sorte_importado.b_6 = tabela_2.b_6
         AND d_sorte_importado.b_7 = tabela_2.b_7

  ORDER BY d_sorte_importado.concurso DESC;

INSERT INTO d_sorte.d_sorte_resultado_num (concurso, data, num_1, num_2, num_3, num_4, num_5, num_6,
                                           num_7, num_8, num_9, num_10, num_11, num_12, num_13, num_14, num_15,
                                           num_16, num_17, num_18, num_19, num_20, num_21, num_22, num_23, num_24,
                                           num_25, num_26, num_27, num_28, num_29, num_30, num_31)
VALUES (30, '2018-07-28', 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0),
  (31, '2018-07-31', 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0),
  (38, '2018-08-16', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0),
  (39, '2018-08-18', 0, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0),
  (40, '2018-08-21', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
  (41, '2018-08-23', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 1);


CREATE FUNCTION d_sorte.teste()
  RETURNS VOID
LANGUAGE plpgsql
AS $$
BEGIN

END;
$$;


