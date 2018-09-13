/**
  Cria as tabelas que irão armazenados os seguintes dados:
  Novos
  Repetidos
  Ainda Nao saiu
  Deixou de Sair
 */

/**
  Tabela: lotofacil_resultado_novos_num:
  Nesta tabela, cada bola é representado por um campo, onde o nome do campo começa com o prefixo
  num_ e em seguida, vem o número da bola correspondente.
  Se a bola saiu naquele concurso, o valor do campo terá o valor 1.
  Há na lotofacil, no máximo 10 números novos, haverá validadores pra fazer com que esta condição
  seja satisfeita.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_novos_num;
CREATE TABLE lotofacil.lotofacil_resultado_novos_num (
  concurso NUMERIC NOT NULL,
  qt_novos NUMERIC NOT NULL,
  num_1    NUMERIC DEFAULT 0 CHECK (num_1 IN (0, 1)),
  num_2    NUMERIC DEFAULT 0 CHECK (num_2 IN (0, 1)),
  num_3    NUMERIC DEFAULT 0 CHECK (num_3 IN (0, 1)),
  num_4    NUMERIC DEFAULT 0 CHECK (num_4 IN (0, 1)),
  num_5    NUMERIC DEFAULT 0 CHECK (num_5 IN (0, 1)),
  num_6    NUMERIC DEFAULT 0 CHECK (num_6 IN (0, 1)),
  num_7    NUMERIC DEFAULT 0 CHECK (num_7 IN (0, 1)),
  num_8    NUMERIC DEFAULT 0 CHECK (num_8 IN (0, 1)),
  num_9    NUMERIC DEFAULT 0 CHECK (num_9 IN (0, 1)),
  num_10   NUMERIC DEFAULT 0 CHECK (num_10 IN (0, 1)),
  num_11   NUMERIC DEFAULT 0 CHECK (num_11 IN (0, 1)),
  num_12   NUMERIC DEFAULT 0 CHECK (num_12 IN (0, 1)),
  num_13   NUMERIC DEFAULT 0 CHECK (num_13 IN (0, 1)),
  num_14   NUMERIC DEFAULT 0 CHECK (num_14 IN (0, 1)),
  num_15   NUMERIC DEFAULT 0 CHECK (num_15 IN (0, 1)),
  num_16   NUMERIC DEFAULT 0 CHECK (num_16 IN (0, 1)),
  num_17   NUMERIC DEFAULT 0 CHECK (num_17 IN (0, 1)),
  num_18   NUMERIC DEFAULT 0 CHECK (num_18 IN (0, 1)),
  num_19   NUMERIC DEFAULT 0 CHECK (num_19 IN (0, 1)),
  num_20   NUMERIC DEFAULT 0 CHECK (num_20 IN (0, 1)),
  num_21   NUMERIC DEFAULT 0 CHECK (num_21 IN (0, 1)),
  num_22   NUMERIC DEFAULT 0 CHECK (num_22 IN (0, 1)),
  num_23   NUMERIC DEFAULT 0 CHECK (num_23 IN (0, 1)),
  num_24   NUMERIC DEFAULT 0 CHECK (num_24 IN (0, 1)),
  num_25   NUMERIC DEFAULT 0 CHECK (num_25 IN (0, 1)),

  -- Na lotofacil pode haver no máximo 10 números novos.
  CONSTRAINT lotofacil_resultado_novos_num_CHK CHECK ((
    num_1 + num_2 + num_3 + num_4 + num_5 + num_6 + num_7 + num_8 + num_9 +
    num_10 + num_11 + num_12 + num_13 + num_14 + num_15 + num_16 + num_17 +
    num_18 + num_19 + num_20 + num_21 + num_22 + num_23 + num_24 +
    num_25) BETWEEN 0 AND 10),

  CONSTRAINT lotofacil_resultado_novos_num_FK FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num (concurso) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT lotofacil_resultado_novos_num_pk PRIMARY KEY (concurso)
);

/**
  Nesta tabela, armazena as bolas, em ordem crescente, que são novas em relação ao último concurso.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_novos_bolas;
CREATE TABLE lotofacil.lotofacil_resultado_novos_bolas (
  concurso NUMERIC NOT NULL,
  qt_novos NUMERIC NOT NULL,

  b_1      NUMERIC DEFAULT NULL,
  b_2      NUMERIC DEFAULT NULL,
  b_3      NUMERIC DEFAULT NULL,
  b_4      NUMERIC DEFAULT NULL,
  b_5      NUMERIC DEFAULT NULL,
  b_6      NUMERIC DEFAULT NULL,
  b_7      NUMERIC DEFAULT NULL,
  b_8      NUMERIC DEFAULT NULL,
  b_9      NUMERIC DEFAULT NULL,
  b_10     NUMERIC DEFAULT NULL,
  b_11     NUMERIC DEFAULT NULL,
  b_12     NUMERIC DEFAULT NULL,
  b_13     NUMERIC DEFAULT NULL,
  b_14     NUMERIC DEFAULT NULL,
  b_15     NUMERIC DEFAULT NULL,

  CONSTRAINT lotofacil_resultado_novos_bolas_fk FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num (concurso) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT lotofacil_resultado_novos_bolas_pk PRIMARY KEY (concurso),

  CONSTRAINT lotofacil_resultado_novos_bolas_chk CHECK ((b_1 < b_2) AND (b_2 < b_3) AND (b_3 < b_4) AND (b_4 < b_5) AND
                                                        (b_5 < b_6) AND (b_6 < b_7) AND (b_7 < b_8) AND (b_8 < b_9) AND
                                                        (b_9 < b_10)),
  CONSTRAINT lotofacil_resultado_novos_bolas_chk2 CHECK (
    (qt_novos >= 0 AND qt_novos <= 15 AND concurso = 1) OR (
      qt_novos >= 0 AND qt_novos <= 10 AND concurso <> 1
    ))
);

/**
  Um bola é considerada repetida, se a mesma bola saiu no concurso anterior e saiu no concurso atual.
  As bolas são representadas nos campos com prefixo num_, onde após o prefixo 'num_' há um número que
  corresponde a cada bola, por exemplo, num_1, corresponde a bola de número 1, num_2, corresponde a
  bola de número 2 e assim por diante.
  Tais campos terão 2 valores, 0 ou 1, será 0, se a bola não saiu no concurso ou 1 se tal bola saiu no concurso.
  Nesta tabela, há várias restrições que foram definidas pra evitar que inserções de dados inválidos ocorra.
  O campo 'qt_repetidos' corresponde a quantidade de bolas que foram repetidas, sempre haverá no mínimo 5
  bolas repetidas do último concurso.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_repetidos_num;
CREATE TABLE lotofacil.lotofacil_resultado_repetidos_num (
  concurso     NUMERIC NOT NULL,

  qt_repetidos NUMERIC NOT NULL CHECK (qt_repetidos >= 5 AND qt_repetidos <= 15),

  num_1        NUMERIC DEFAULT 0 CHECK (num_1 IN (0, 1)),
  num_2        NUMERIC DEFAULT 0 CHECK (num_2 IN (0, 1)),
  num_3        NUMERIC DEFAULT 0 CHECK (num_3 IN (0, 1)),
  num_4        NUMERIC DEFAULT 0 CHECK (num_4 IN (0, 1)),
  num_5        NUMERIC DEFAULT 0 CHECK (num_5 IN (0, 1)),
  num_6        NUMERIC DEFAULT 0 CHECK (num_6 IN (0, 1)),
  num_7        NUMERIC DEFAULT 0 CHECK (num_7 IN (0, 1)),
  num_8        NUMERIC DEFAULT 0 CHECK (num_8 IN (0, 1)),
  num_9        NUMERIC DEFAULT 0 CHECK (num_9 IN (0, 1)),
  num_10       NUMERIC DEFAULT 0 CHECK (num_10 IN (0, 1)),
  num_11       NUMERIC DEFAULT 0 CHECK (num_11 IN (0, 1)),
  num_12       NUMERIC DEFAULT 0 CHECK (num_12 IN (0, 1)),
  num_13       NUMERIC DEFAULT 0 CHECK (num_13 IN (0, 1)),
  num_14       NUMERIC DEFAULT 0 CHECK (num_14 IN (0, 1)),
  num_15       NUMERIC DEFAULT 0 CHECK (num_15 IN (0, 1)),
  num_16       NUMERIC DEFAULT 0 CHECK (num_16 IN (0, 1)),
  num_17       NUMERIC DEFAULT 0 CHECK (num_17 IN (0, 1)),
  num_18       NUMERIC DEFAULT 0 CHECK (num_18 IN (0, 1)),
  num_19       NUMERIC DEFAULT 0 CHECK (num_19 IN (0, 1)),
  num_20       NUMERIC DEFAULT 0 CHECK (num_20 IN (0, 1)),
  num_21       NUMERIC DEFAULT 0 CHECK (num_21 IN (0, 1)),
  num_22       NUMERIC DEFAULT 0 CHECK (num_22 IN (0, 1)),
  num_23       NUMERIC DEFAULT 0 CHECK (num_23 IN (0, 1)),
  num_24       NUMERIC DEFAULT 0 CHECK (num_24 IN (0, 1)),
  num_25       NUMERIC DEFAULT 0 CHECK (num_25 IN (0, 1)),

  -- Na lotofacil pode haver no máximo 15 números repetidos.
  CONSTRAINT lotofacil_resultado_repetidos_num_CHK CHECK ((
    num_1 + num_2 + num_3 + num_4 + num_5 + num_6 + num_7 + num_8 + num_9 +
    num_10 + num_11 + num_12 + num_13 + num_14 + num_15 + num_16 + num_17 +
    num_18 + num_19 + num_20 + num_21 + num_22 + num_23 + num_24 +
    num_25) BETWEEN 5 AND 15),

  CONSTRAINT lotofacil_resultado_repetidos_num_FK FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num (concurso) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT lotofacil_resultado_repetidos_num_PK PRIMARY KEY (concurso)
);

DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_repetidos_bolas;
CREATE TABLE lotofacil.lotofacil_resultado_repetidos_bolas (
  concurso     NUMERIC NOT NULL,
  qt_repetidos NUMERIC NOT NULL,

  b_1          NUMERIC DEFAULT NULL,
  b_2          NUMERIC DEFAULT NULL,
  b_3          NUMERIC DEFAULT NULL,
  b_4          NUMERIC DEFAULT NULL,
  b_5          NUMERIC DEFAULT NULL,
  b_6          NUMERIC DEFAULT NULL,
  b_7          NUMERIC DEFAULT NULL,
  b_8          NUMERIC DEFAULT NULL,
  b_9          NUMERIC DEFAULT NULL,
  b_10         NUMERIC DEFAULT NULL,
  b_11         NUMERIC DEFAULT NULL,
  b_12         NUMERIC DEFAULT NULL,
  b_13         NUMERIC DEFAULT NULL,
  b_14         NUMERIC DEFAULT NULL,
  b_15         NUMERIC DEFAULT NULL,


  CONSTRAINT lotofacil_resultado_repetidos_fk FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num (concurso)
  ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT lotofacil_resultado_repetidos_pk PRIMARY KEY (concurso),

  CONSTRAINT lotofacil_resultado_repetidos_chk CHECK ((b_1 < b_2) AND (b_2 < b_3) AND (b_3 < b_4) AND (b_4 < b_5) AND
                                                      (b_5 < b_6) AND (b_6 < b_7) AND (b_7 < b_8) AND (b_8 < b_9) AND
                                                      (b_9 < b_10) AND (b_10 < b_11) AND (b_11 < b_12) AND (b_12 < b_13)
                                                      AND
                                                      (b_13 < b_14) AND (b_14 < b_15)),

  CONSTRAINT lotofacil_resultado_repetidos_chk_2 CHECK (qt_repetidos >= 0 AND qt_repetidos <= 15)
);

DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_ainda_nao_saiu_num;
CREATE TABLE lotofacil.lotofacil_resultado_ainda_nao_saiu_num (
  concurso          NUMERIC NOT NULL,

  qt_ainda_nao_saiu NUMERIC NOT NULL,

  num_1             NUMERIC DEFAULT 0 CHECK (num_1 IN (0, 1)),
  num_2             NUMERIC DEFAULT 0 CHECK (num_2 IN (0, 1)),
  num_3             NUMERIC DEFAULT 0 CHECK (num_3 IN (0, 1)),
  num_4             NUMERIC DEFAULT 0 CHECK (num_4 IN (0, 1)),
  num_5             NUMERIC DEFAULT 0 CHECK (num_5 IN (0, 1)),
  num_6             NUMERIC DEFAULT 0 CHECK (num_6 IN (0, 1)),
  num_7             NUMERIC DEFAULT 0 CHECK (num_7 IN (0, 1)),
  num_8             NUMERIC DEFAULT 0 CHECK (num_8 IN (0, 1)),
  num_9             NUMERIC DEFAULT 0 CHECK (num_9 IN (0, 1)),
  num_10            NUMERIC DEFAULT 0 CHECK (num_10 IN (0, 1)),
  num_11            NUMERIC DEFAULT 0 CHECK (num_11 IN (0, 1)),
  num_12            NUMERIC DEFAULT 0 CHECK (num_12 IN (0, 1)),
  num_13            NUMERIC DEFAULT 0 CHECK (num_13 IN (0, 1)),
  num_14            NUMERIC DEFAULT 0 CHECK (num_14 IN (0, 1)),
  num_15            NUMERIC DEFAULT 0 CHECK (num_15 IN (0, 1)),
  num_16            NUMERIC DEFAULT 0 CHECK (num_16 IN (0, 1)),
  num_17            NUMERIC DEFAULT 0 CHECK (num_17 IN (0, 1)),
  num_18            NUMERIC DEFAULT 0 CHECK (num_18 IN (0, 1)),
  num_19            NUMERIC DEFAULT 0 CHECK (num_19 IN (0, 1)),
  num_20            NUMERIC DEFAULT 0 CHECK (num_20 IN (0, 1)),
  num_21            NUMERIC DEFAULT 0 CHECK (num_21 IN (0, 1)),
  num_22            NUMERIC DEFAULT 0 CHECK (num_22 IN (0, 1)),
  num_23            NUMERIC DEFAULT 0 CHECK (num_23 IN (0, 1)),
  num_24            NUMERIC DEFAULT 0 CHECK (num_24 IN (0, 1)),
  num_25            NUMERIC DEFAULT 0 CHECK (num_25 IN (0, 1)),

  -- Na lotofacil pode haver no máximo 10 números ainda_nao_saiu.
  CONSTRAINT soma_1_a_25_chk CHECK ((num_1 + num_2 + num_3 + num_4 + num_5 + num_6 + num_7 + num_8 + num_9 +
                                     num_10 + num_11 + num_12 + num_13 + num_14 + num_15 + num_16 + num_17 +
                                     num_18 + num_19 + num_20 + num_21 + num_22 + num_23 + num_24 +
                                     num_25) BETWEEN 0 AND 10),

  CONSTRAINT lotofacil_resultado_ainda_nao_saiu_num_fk FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num (concurso) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT lotofacil_resultado_ainda_nao_saiu_num_pk PRIMARY KEY (concurso)
);

DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_ainda_nao_saiu_bolas;
CREATE TABLE lotofacil.lotofacil_resultado_ainda_nao_saiu_bolas (

  concurso          NUMERIC NOT NULL,

  qt_ainda_nao_saiu NUMERIC NOT NULL,

  b_1               NUMERIC DEFAULT NULL,
  b_2               NUMERIC DEFAULT NULL,
  b_3               NUMERIC DEFAULT NULL,
  b_4               NUMERIC DEFAULT NULL,
  b_5               NUMERIC DEFAULT NULL,
  b_6               NUMERIC DEFAULT NULL,
  b_7               NUMERIC DEFAULT NULL,
  b_8               NUMERIC DEFAULT NULL,
  b_9               NUMERIC DEFAULT NULL,
  b_10              NUMERIC DEFAULT NULL,

  CONSTRAINT lotofacil_resultado_ainda_nao_saiu_bolas_fk FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num (concurso) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT lotofacil_resultado_ainda_nao_saiu_bolas_pk PRIMARY KEY (concurso),

  CONSTRAINT lotofacil_resultado_ainda_nao_saiu_bolas_chk CHECK (
    (b_1 < b_2) AND (b_2 < b_3) AND (b_3 < b_4) AND (b_4 < b_5) AND
    (b_5 < b_6) AND (b_6 < b_7) AND (b_7 < b_8) AND (b_8 < b_9) AND
    (b_9 < b_10)),

  CONSTRAINT lotofacil_resultado_ainda_nao_saiu_intervalo_bolas_chk CHECK (qt_ainda_nao_saiu >= 0 AND
                                                                           qt_ainda_nao_saiu <= 10)
);

DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_deixou_de_sair_num;
CREATE TABLE lotofacil.lotofacil_resultado_deixou_de_sair_num (
  concurso          NUMERIC NOT NULL,

  qt_deixou_de_sair NUMERIC NOT NULL,

  num_1             NUMERIC DEFAULT 0 CHECK (num_1 IN (0, 1)),
  num_2             NUMERIC DEFAULT 0 CHECK (num_2 IN (0, 1)),
  num_3             NUMERIC DEFAULT 0 CHECK (num_3 IN (0, 1)),
  num_4             NUMERIC DEFAULT 0 CHECK (num_4 IN (0, 1)),
  num_5             NUMERIC DEFAULT 0 CHECK (num_5 IN (0, 1)),
  num_6             NUMERIC DEFAULT 0 CHECK (num_6 IN (0, 1)),
  num_7             NUMERIC DEFAULT 0 CHECK (num_7 IN (0, 1)),
  num_8             NUMERIC DEFAULT 0 CHECK (num_8 IN (0, 1)),
  num_9             NUMERIC DEFAULT 0 CHECK (num_9 IN (0, 1)),
  num_10            NUMERIC DEFAULT 0 CHECK (num_10 IN (0, 1)),
  num_11            NUMERIC DEFAULT 0 CHECK (num_11 IN (0, 1)),
  num_12            NUMERIC DEFAULT 0 CHECK (num_12 IN (0, 1)),
  num_13            NUMERIC DEFAULT 0 CHECK (num_13 IN (0, 1)),
  num_14            NUMERIC DEFAULT 0 CHECK (num_14 IN (0, 1)),
  num_15            NUMERIC DEFAULT 0 CHECK (num_15 IN (0, 1)),
  num_16            NUMERIC DEFAULT 0 CHECK (num_16 IN (0, 1)),
  num_17            NUMERIC DEFAULT 0 CHECK (num_17 IN (0, 1)),
  num_18            NUMERIC DEFAULT 0 CHECK (num_18 IN (0, 1)),
  num_19            NUMERIC DEFAULT 0 CHECK (num_19 IN (0, 1)),
  num_20            NUMERIC DEFAULT 0 CHECK (num_20 IN (0, 1)),
  num_21            NUMERIC DEFAULT 0 CHECK (num_21 IN (0, 1)),
  num_22            NUMERIC DEFAULT 0 CHECK (num_22 IN (0, 1)),
  num_23            NUMERIC DEFAULT 0 CHECK (num_23 IN (0, 1)),
  num_24            NUMERIC DEFAULT 0 CHECK (num_24 IN (0, 1)),
  num_25            NUMERIC DEFAULT 0 CHECK (num_25 IN (0, 1)),

  -- Na lotofacil pode haver no máximo 15 números repetidos.
  CONSTRAINT soma_1_a_25_chk CHECK ((num_1 + num_2 + num_3 + num_4 + num_5 + num_6 + num_7 + num_8 + num_9 +
                                     num_10 + num_11 + num_12 + num_13 + num_14 + num_15 + num_16 + num_17 +
                                     num_18 + num_19 + num_20 + num_21 + num_22 + num_23 + num_24 +
                                     num_25) BETWEEN 1 AND 15),

  CONSTRAINT lotofacil_resultado_deixou_de_sair_num_fk FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num (concurso) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT lotofacil_resultado_deixou_de_sair_num_pk PRIMARY KEY (concurso)
);


DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_deixou_de_sair_bolas;
CREATE TABLE lotofacil.lotofacil_resultado_deixou_de_sair_bolas (

  concurso          NUMERIC NOT NULL,

  qt_deixou_de_sair NUMERIC NOT NULL,

  b_1               NUMERIC DEFAULT NULL,
  b_2               NUMERIC DEFAULT NULL,
  b_3               NUMERIC DEFAULT NULL,
  b_4               NUMERIC DEFAULT NULL,
  b_5               NUMERIC DEFAULT NULL,
  b_6               NUMERIC DEFAULT NULL,
  b_7               NUMERIC DEFAULT NULL,
  b_8               NUMERIC DEFAULT NULL,
  b_9               NUMERIC DEFAULT NULL,
  b_10              NUMERIC DEFAULT NULL,
  b_11              NUMERIC DEFAULT NULL,
  b_12              NUMERIC DEFAULT NULL,
  b_13              NUMERIC DEFAULT NULL,
  b_14              NUMERIC DEFAULT NULL,
  b_15              NUMERIC DEFAULT NULL,


  CONSTRAINT lotofacil_resultado_deixou_de_sair_bolas_fk FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num (concurso)
  ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT lotofacil_resultado_deixou_de_sair_bolas_pk PRIMARY KEY (concurso),

  CONSTRAINT lotofacil_resultado_deixou_de_sair_bolas_chk CHECK (
    (b_1 < b_2) AND (b_2 < b_3) AND (b_3 < b_4) AND (b_4 < b_5) AND
    (b_5 < b_6) AND (b_6 < b_7) AND (b_7 < b_8) AND (b_8 < b_9) AND
    (b_9 < b_10) AND (b_10 < b_11) AND (b_11 < b_12) AND (b_12 < b_13)
    AND
    (b_13 < b_14) AND (b_14 < b_15)),

  CONSTRAINT lotofacil_resultado_deixou_de_sair_chk_2 CHECK (qt_deixou_de_sair >= 0 AND qt_deixou_de_sair <= 15)
);



/**
  Indica quantas vezes,
 */

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_novos_qt_por_concurso;
CREATE VIEW lotofacil.v_lotofacil_resultado_novos_qt_por_concurso AS
  SELECT
    qt_novos,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_resultado_novos_bolas
  GROUP BY qt_novos
  ORDER BY qt_vezes DESC, qt_novos ASC;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_repetidos_qt_por_concurso;
CREATE VIEW lotofacil.v_lotofacil_resultado_repetidos_qt_por_concurso AS
  SELECT
    qt_repetidos,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_resultado_repetidos_bolas
  GROUP BY qt_repetidos
  ORDER BY qt_vezes DESC, qt_repetidos ASC;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_ainda_nao_saiu_qt_por_concurso;
CREATE VIEW lotofacil.v_lotofacil_resultado_ainda_nao_saiu_qt_por_concurso AS
  SELECT
    qt_ainda_nao_saiu,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_resultado_ainda_nao_saiu_bolas
  GROUP BY qt_ainda_nao_saiu
  ORDER BY qt_vezes DESC, qt_ainda_nao_saiu ASC;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_deixou_de_sair_qt_por_concurso;
CREATE VIEW lotofacil.v_lotofacil_resultado_deixou_de_sair_qt_por_concurso AS
  SELECT
    qt_deixou_de_sair,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_resultado_deixou_de_sair_bolas
  GROUP BY qt_deixou_de_sair
  ORDER BY qt_vezes DESC, qt_deixou_de_sair ASC;


DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_novos_repetidos_por_concurso;
CREATE VIEW lotofacil.v_lotofacil_resultado_novos_repetidos_por_concurso AS
  SELECT
    concurso,
    lotofacil.lotofacil_resultado_novos_repetidos.novos_repetidos_id,
    novos,
    repetidos
  FROM lotofacil.lotofacil_resultado_novos_repetidos,
    lotofacil.lotofacil_id_novos_repetidos
  WHERE lotofacil.lotofacil_resultado_novos_repetidos.novos_repetidos_id =
        lotofacil.lotofacil_id_novos_repetidos.novos_repetidos_id
  ORDER BY concurso DESC;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_novos_repetidos_consolidado( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_novos_repetidos_consolidado(concursoInicio NUMERIC,
                                                                             concursoFim    NUMERIC)
  RETURNS TABLE(id NUMERIC, novos2 NUMERIC, repetidos2 NUMERIC, qt_vezes BIGINT) AS $$
DECLARE
BEGIN
  RETURN QUERY SELECT
                 novos_repetidos_id,
                 novos,
                 repetidos,
                 count(*) AS qt_vezes
               FROM lotofacil.v_lotofacil_resultado_novos_repetidos_por_concurso ltf_novos
               WHERE concurso >= concursoInicio AND concurso <= concursoFim
               GROUP BY novos_repetidos_id, novos, repetidos
               ORDER BY qt_vezes DESC, novos, repetidos;
END; $$ LANGUAGE plpgsql;