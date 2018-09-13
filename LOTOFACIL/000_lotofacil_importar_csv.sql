/**
  Tempo pra importar: 35 minutos, com indíces ativados, pode ser mais rápido sem índices criados.
 */

DROP INDEX IF EXISTS lotofacil.lotofacil_num_idx_0;
DROP INDEX IF EXISTS lotofacil.lotofacil_num_idx_1;
DROP INDEX IF EXISTS lotofacil.lotofacil_num_idx_2;
DROP INDEX IF EXISTS lotofacil.lotofacil_num_idx_3;
DROP INDEX IF EXISTS lotofacil.lotofacil_num_idx_4;
DROP INDEX IF EXISTS lotofacil.lotofacil_num_idx_5;
DROP INDEX IF EXISTS lotofacil.lotofacil_num_idx_6;
DROP INDEX IF EXISTS lotofacil.lotofacil_num_idx_7;
DROP INDEX IF EXISTS lotofacil.lotofacil_num_idx_8;
DROP INDEX IF EXISTS lotofacil.lotofacil_num_idx_9;
DROP INDEX IF EXISTS lotofacil.lotofacil_num_idx_10;
DROP INDEX IF EXISTS lotofacil.lotofacil_num_idx_11;
DROP INDEX IF EXISTS lotofacil.lotofacil_num_idx_12;
DROP INDEX IF EXISTS lotofacil.lotofacil_num_idx_13;
DROP INDEX IF EXISTS lotofacil.lotofacil_num_idx_14;
DROP INDEX IF EXISTS lotofacil.lotofacil_num_idx_15;
DROP INDEX IF EXISTS lotofacil.lotofacil_num_idx_16;
DROP INDEX IF EXISTS lotofacil.lotofacil_num_idx_17;
DROP INDEX IF EXISTS lotofacil.lotofacil_num_idx_18;
DROP INDEX IF EXISTS lotofacil.lotofacil_num_idx_19;
DROP INDEX IF EXISTS lotofacil.lotofacil_num_idx_20;
DROP INDEX IF EXISTS lotofacil.lotofacil_num_idx_21;
DROP INDEX IF EXISTS lotofacil.lotofacil_num_idx_22;
DROP INDEX IF EXISTS lotofacil.lotofacil_num_idx_23;
DROP INDEX IF EXISTS lotofacil.lotofacil_num_idx_24;
DROP INDEX IF EXISTS lotofacil.lotofacil_num_idx_25;
DROP INDEX IF EXISTS lotofacil.lotofacil_num_idx_26;

COPY lotofacil.lotofacil_num (ltf_id, ltf_qt, num_1, num_2, num_3, num_4, num_5, num_6, num_7, num_8,
                              num_9, num_10, num_11, num_12, num_13, num_14, num_15, num_16, num_17,
                              num_18, num_19, num_20, num_21, num_22, num_23, num_24, num_25)
FROM './lotofacil_num.csv' WITH (
FORMAT CSV, DELIMITER ';', HEADER TRUE );

CREATE INDEX lotofacil_num_idx_0
  ON lotofacil.lotofacil_num (ltf_id);
CREATE INDEX lotofacil_num_idx_1
  ON lotofacil.lotofacil_num (num_1);
CREATE INDEX lotofacil_num_idx_2
  ON lotofacil.lotofacil_num (num_2);
CREATE INDEX lotofacil_num_idx_3
  ON lotofacil.lotofacil_num (num_3);
CREATE INDEX lotofacil_num_idx_4
  ON lotofacil.lotofacil_num (num_4);
CREATE INDEX lotofacil_num_idx_5
  ON lotofacil.lotofacil_num (num_5);
CREATE INDEX lotofacil_num_idx_6
  ON lotofacil.lotofacil_num (num_6);
CREATE INDEX lotofacil_num_idx_7
  ON lotofacil.lotofacil_num (num_7);
CREATE INDEX lotofacil_num_idx_8
  ON lotofacil.lotofacil_num (num_8);
CREATE INDEX lotofacil_num_idx_9
  ON lotofacil.lotofacil_num (num_9);
CREATE INDEX lotofacil_num_idx_10
  ON lotofacil.lotofacil_num (num_10);
CREATE INDEX lotofacil_num_idx_11
  ON lotofacil.lotofacil_num (num_11);
CREATE INDEX lotofacil_num_idx_12
  ON lotofacil.lotofacil_num (num_12);
CREATE INDEX lotofacil_num_idx_13
  ON lotofacil.lotofacil_num (num_13);
CREATE INDEX lotofacil_num_idx_14
  ON lotofacil.lotofacil_num (num_14);
CREATE INDEX lotofacil_num_idx_15
  ON lotofacil.lotofacil_num (num_15);
CREATE INDEX lotofacil_num_idx_16
  ON lotofacil.lotofacil_num (num_16);
CREATE INDEX lotofacil_num_idx_17
  ON lotofacil.lotofacil_num (num_17);
CREATE INDEX lotofacil_num_idx_18
  ON lotofacil.lotofacil_num (num_18);
CREATE INDEX lotofacil_num_idx_19
  ON lotofacil.lotofacil_num (num_19);
CREATE INDEX lotofacil_num_idx_20
  ON lotofacil.lotofacil_num (num_20);
CREATE INDEX lotofacil_num_idx_21
  ON lotofacil.lotofacil_num (num_21);
CREATE INDEX lotofacil_num_idx_22
  ON lotofacil.lotofacil_num (num_22);
CREATE INDEX lotofacil_num_idx_23
  ON lotofacil.lotofacil_num (num_23);
CREATE INDEX lotofacil_num_idx_24
  ON lotofacil.lotofacil_num (num_24);
CREATE INDEX lotofacil_num_idx_25
  ON lotofacil.lotofacil_num (num_25);
CREATE INDEX lotofacil_num_idx_26
  ON lotofacil.lotofacil_num (
    num_1, num_2, num_3, num_4, num_5, num_6, num_7, num_8, num_9, num_10,
    num_11, num_12, num_13, num_14, num_15, num_16, num_17, num_18, num_19, num_20,
    num_21, num_22, num_23, num_24, num_25);

/**
  LOTOFACIL_BOLAS
 */
DROP INDEX IF EXISTS lotofacil.lotofacil_bolas_idx_1
DROP INDEX IF EXISTS lotofacil.lotofacil_bolas_idx_2;
DROP INDEX IF EXISTS lotofacil.lotofacil_bolas_idx_3;
DROP INDEX IF EXISTS lotofacil.lotofacil_bolas_idx_4;
DROP INDEX IF EXISTS lotofacil.lotofacil_bolas_idx_5;
DROP INDEX IF EXISTS lotofacil.lotofacil_bolas_idx_6;
DROP INDEX IF EXISTS lotofacil.lotofacil_bolas_idx_7;
DROP INDEX IF EXISTS lotofacil.lotofacil_bolas_idx_8;
DROP INDEX IF EXISTS lotofacil.lotofacil_bolas_idx_9;
DROP INDEX IF EXISTS lotofacil.lotofacil_bolas_idx_10;
DROP INDEX IF EXISTS lotofacil.lotofacil_bolas_idx_11;
DROP INDEX IF EXISTS lotofacil.lotofacil_bolas_idx_12;
DROP INDEX IF EXISTS lotofacil.lotofacil_bolas_idx_13;
DROP INDEX IF EXISTS lotofacil.lotofacil_bolas_idx_14;
DROP INDEX IF EXISTS lotofacil.lotofacil_bolas_idx_15;
DROP INDEX IF EXISTS lotofacil.lotofacil_bolas_idx_16;
DROP INDEX IF EXISTS lotofacil.lotofacil_bolas_idx_17;
DROP INDEX IF EXISTS lotofacil.lotofacil_bolas_idx_18;
DROP INDEX IF EXISTS lotofacil.lotofacil_bolas_idx_19;

COPY lotofacil.lotofacil_bolas (ltf_id, ltf_qt, b_1, b_2, b_3, b_4, b_5, b_6, b_7,
                                b_8, b_9, b_10, b_11, b_12, b_13, b_14, b_15, b_16,
                                b_17, b_18) FROM
'./lotofacil_bolas.csv' WITH (
FORMAT CSV, DELIMITER ';', HEADER TRUE );

CREATE INDEX lotofacil_bolas_idx_1
  ON lotofacil.lotofacil_bolas (b_1);
CREATE INDEX lotofacil_bolas_idx_2
  ON lotofacil.lotofacil_bolas (b_2);
CREATE INDEX lotofacil_bolas_idx_3
  ON lotofacil.lotofacil_bolas (b_3);
CREATE INDEX lotofacil_bolas_idx_4
  ON lotofacil.lotofacil_bolas (b_4);
CREATE INDEX lotofacil_bolas_idx_5
  ON lotofacil.lotofacil_bolas (b_5);
CREATE INDEX lotofacil_bolas_idx_6
  ON lotofacil.lotofacil_bolas (b_6);
CREATE INDEX lotofacil_bolas_idx_7
  ON lotofacil.lotofacil_bolas (b_7);
CREATE INDEX lotofacil_bolas_idx_8
  ON lotofacil.lotofacil_bolas (b_8);
CREATE INDEX lotofacil_bolas_idx_9
  ON lotofacil.lotofacil_bolas (b_9);
CREATE INDEX lotofacil_bolas_idx_10
  ON lotofacil.lotofacil_bolas (b_10);
CREATE INDEX lotofacil_bolas_idx_11
  ON lotofacil.lotofacil_bolas (b_11);
CREATE INDEX lotofacil_bolas_idx_12
  ON lotofacil.lotofacil_bolas (b_12);
CREATE INDEX lotofacil_bolas_idx_13
  ON lotofacil.lotofacil_bolas (b_13);
CREATE INDEX lotofacil_bolas_idx_14
  ON lotofacil.lotofacil_bolas (b_14);
CREATE INDEX lotofacil_bolas_idx_15
  ON lotofacil.lotofacil_bolas (b_15);
CREATE INDEX lotofacil_bolas_idx_16
  ON lotofacil.lotofacil_bolas (b_16);
CREATE INDEX lotofacil_bolas_idx_17
  ON lotofacil.lotofacil_bolas (b_17);
CREATE INDEX lotofacil_bolas_idx_18
  ON lotofacil.lotofacil_bolas (b_18);
CREATE INDEX lotofacil_bolas_idx_19
  ON lotofacil.lotofacil_bolas (
    b_1, b_2, b_3, b_4, b_5, b_6, b_7, b_8, b_9, b_10,
    b_11, b_12, b_13, b_14, b_15, b_16, b_17, b_18);

