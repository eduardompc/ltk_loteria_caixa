/**
  Tabela sql que armazena os resultados baixados do site da lotofacil do endereço
  http://www.caixa.gov.br/loterias/d_lotofacil.zip'

  Autor: Fábio Moura de Oliveira.

 */
DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_importacao;
CREATE TABLE lotofacil.lotofacil_resultado_importacao (
  concurso                 NUMERIC NOT NULL,
  data                     DATE,

  b_1                      NUMERIC DEFAULT NULL,
  b_2                      NUMERIC DEFAULT NULL,
  b_3                      NUMERIC DEFAULT NULL,
  b_4                      NUMERIC DEFAULT NULL,
  b_5                      NUMERIC DEFAULT NULL,
  b_6                      NUMERIC DEFAULT NULL,
  b_7                      NUMERIC DEFAULT NULL,
  b_8                      NUMERIC DEFAULT NULL,
  b_9                      NUMERIC DEFAULT NULL,
  b_10                     NUMERIC DEFAULT NULL,
  b_11                     NUMERIC DEFAULT NULL,
  b_12                     NUMERIC DEFAULT NULL,
  b_13                     NUMERIC DEFAULT NULL,
  b_14                     NUMERIC DEFAULT NULL,
  b_15                     NUMERIC DEFAULT NULL,

  qt_ganhadores_15_numeros NUMERIC DEFAULT 0,
  qt_ganhadores_14_numeros NUMERIC DEFAULT 0,
  qt_ganhadores_13_numeros NUMERIC DEFAULT 0,
  qt_ganhadores_12_numeros NUMERIC DEFAULT 0,
  qt_ganhadores_11_numeros NUMERIC DEFAULT 0,

  rateio_15_numeros        DECIMAL DEFAULT 0,
  rateio_14_numeros        DECIMAL DEFAULT 0,
  rateio_13_numeros        DECIMAL DEFAULT 0,
  rateio_12_numeros        DECIMAL DEFAULT 0,
  rateio_11_numeros        DECIMAL DEFAULT 0,

  acumulado_15_numeros     DECIMAL DEFAULT 0,
  acumulado_14_numeros     DECIMAL DEFAULT 0,

  valor_arrecadado         DECIMAL DEFAULT 0,
  valor_acumulado_especial DECIMAL DEFAULT 0,
  estimativa_premio        DECIMAL DEFAULT 0,

  concurso_especial        BOOLEAN,
  sorteio_acumulado        BOOLEAN,
  rateio_processamento     BOOLEAN,

  data_proximo_concurso    DATE,

  CONSTRAINT lotofacil_resultado_importacao_pk PRIMARY KEY (concurso),
  CONSTRAINT lotofacil_resultado_importacao_check CHECK (
    (b_1 < b_2) AND
    (b_2 < b_3) AND
    (b_3 < b_4) AND
    (b_4 < b_5) AND
    (b_5 < b_6) AND
    (b_6 < b_7) AND
    (b_7 < b_8) AND
    (b_8 < b_9) AND
    (b_9 < b_10) AND
    (b_10 < b_11) AND
    (b_11 < b_12) AND
    (b_12 < b_13) AND
    (b_13 < b_14) AND
    (b_14 < b_15))
);

/**
  Esta view indica quais registros estão inseridos no banco e quais precisam
  ser inseridos, com tais dados, fica fácil atualizar nosso tabela no futuro.
  E além disto, indica quais registros no banco estão com dados incorretos.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_importacao;
CREATE VIEW lotofacil.v_lotofacil_resultado_importacao AS
  SELECT
    CASE WHEN ltf_bolas.concurso IS NULL
      THEN
        'NOVO'
    ELSE
      'JA_INSERIDO'
    END AS STATUS,

    CASE WHEN (ltf_bolas_2.concurso IS NULL) AND (ltf_bolas.concurso IS NULL)
      THEN
        'AINDA_NAO_INSERIDO'
    WHEN (ltf_bolas_2.concurso IS NULL) AND NOT (ltf_bolas.concurso IS NULL)
      THEN
        'PRECISA_ATUALIZAR'
    ELSE
      'DADOS_CORRETOS'
    END AS STATUS_JA_INSERIDO,


    ltf_importado.*
  FROM
    (SELECT *
     FROM lotofacil.lotofacil_resultado_importacao) ltf_importado
    LEFT JOIN
    (SELECT concurso
     FROM lotofacil.lotofacil_resultado_bolas) ltf_bolas
      ON ltf_importado.concurso = ltf_bolas.concurso
    LEFT JOIN
    (SELECT *
     FROM lotofacil.lotofacil_resultado_bolas) ltf_bolas_2
      ON ltf_importado.concurso = ltf_bolas_2.concurso
         AND ltf_importado.b_1 = ltf_bolas_2.b_1
         AND ltf_importado.b_2 = ltf_bolas_2.b_2
         AND ltf_importado.b_3 = ltf_bolas_2.b_3
         AND ltf_importado.b_4 = ltf_bolas_2.b_4
         AND ltf_importado.b_5 = ltf_bolas_2.b_5
         AND ltf_importado.b_6 = ltf_bolas_2.b_6
         AND ltf_importado.b_7 = ltf_bolas_2.b_7
         AND ltf_importado.b_8 = ltf_bolas_2.b_8
         AND ltf_importado.b_9 = ltf_bolas_2.b_9
         AND ltf_importado.b_10 = ltf_bolas_2.b_10
         AND ltf_importado.b_11 = ltf_bolas_2.b_11
         AND ltf_importado.b_12 = ltf_bolas_2.b_12
         AND ltf_importado.b_13 = ltf_bolas_2.b_13
         AND ltf_importado.b_14 = ltf_bolas_2.b_14
         AND ltf_importado.b_15 = ltf_bolas_2.b_15


  ORDER BY ltf_importado.concurso DESC;



