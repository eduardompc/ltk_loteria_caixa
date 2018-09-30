COPY d_sorte.d_sorte_id_par_impar (par_impar_id, par_impar_qt, par, impar) FROM '/tmp/dia_de_sorte/dia_de_sorte_id_par_impar.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );
COPY d_sorte.d_sorte_id_primo_nao_primo (prm_id, prm_qt, primo, nao_primo) FROM '/tmp/dia_de_sorte/dia_de_sorte_id_primo_nao_primo.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );


COPY d_sorte.d_sorte_id_externo_interno (ext_int_id, ext_int_qt, externo, interno) FROM '/tmp/dia_de_sorte/dia_de_sorte_id_externo_interno.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );

COPY d_sorte.d_sorte_id_horizontal (hrz_id, hrz_qt, hrz_1, hrz_2, hrz_3, hrz_4, hrz_5) FROM '/tmp/dia_de_sorte/dia_de_sorte_id_horizontal.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );
COPY d_sorte.d_sorte_id_vertical (vrt_id, vrt_qt, vrt_1, vrt_2, vrt_3, vrt_4, vrt_5, vrt_6, vrt_7) FROM '/tmp/dia_de_sorte/dia_de_sorte_id_vertical.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );
COPY d_sorte.d_sorte_id_diagonal_esquerda (dge_id, dge_qt, dge_1, dge_2, dge_3, dge_4, dge_5, dge_6, dge_7) FROM '/tmp/dia_de_sorte/dia_de_sorte_id_diagonal_esquerda.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );
COPY d_sorte.d_sorte_id_diagonal_direita (dgd_id, dgd_qt, dgd_1, dgd_2, dgd_3, dgd_4, dgd_5, dgd_6, dgd_7) FROM '/tmp/dia_de_sorte/dia_de_sorte_id_diagonal_direita.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );

COPY d_sorte.d_sorte_id_quadrante (qd_id, qd_qt, qd_1, qd_2, qd_3, qd_4) FROM '/tmp/dia_de_sorte/dia_de_sorte_id_quadrante.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );

COPY d_sorte.d_sorte_id_esquerda_direita (esq_dir_id, esq_dir_qt, esq, dir) FROM '/tmp/dia_de_sorte/dia_de_sorte_id_esquerda_direita.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );
COPY d_sorte.d_sorte_id_superior_inferior (sup_inf_id, sup_inf_qt, sup, inf) FROM '/tmp/dia_de_sorte/dia_de_sorte_id_superior_inferior.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );

COPY d_sorte.d_sorte_id_dezena (dz_id, dz_qt, dz_0, dz_1, dz_2, dz_3) FROM '/tmp/dia_de_sorte/dia_de_sorte_id_dezena.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );
COPY d_sorte.d_sorte_id_unidade (un_id, un_qt, un_0, un_1, un_2, un_3, un_4, un_5, un_6, un_7, un_8, un_9) FROM '/tmp/dia_de_sorte/dia_de_sorte_id_unidade.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );
COPY d_sorte.d_sorte_id_algarismo (alg_id, alg_qt, alg_0, alg_1, alg_2, alg_3, alg_4, alg_5, alg_6, alg_7, alg_8, alg_9) FROM '/tmp/dia_de_sorte/dia_de_sorte_id_algarismo.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );

COPY d_sorte.d_sorte_num (d_sorte_id, d_sorte_qt, num_1, num_2, num_3, num_4, num_5, num_6, num_7, num_8, num_9, num_10, num_11, num_12, num_13, num_14, num_15, num_16, num_17, num_18, num_19, num_20, num_21, num_22, num_23, num_24, num_25, num_26, num_27, num_28, num_29, num_30, num_31) FROM '/tmp/dia_de_sorte/dia_de_sorte_num.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );
COPY d_sorte.d_sorte_bolas (d_sorte_id, d_sorte_qt, b_1, b_2, b_3, b_4, b_5, b_6, b_7, b_8, b_9, b_10, b_11, b_12, b_13, b_14, b_15)
FROM '/tmp/dia_de_sorte/dia_de_sorte_bolas.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );

COPY d_sorte.d_sorte_id (d_sorte_id, d_sorte_qt, par_impar_id, prm_id, ext_int_id, hrz_id, vrt_id, dge_id, dgd_id, qd_id, esq_dir_id, sup_inf_id, dz_id, un_id, alg_id, sm_bolas_id, sm_alg_id)
FROM '/tmp/dia_de_sorte/dia_de_sorte_id.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );

Delete from d_sorte.d_sorte_combinacoes_em_grupos;
COPY d_sorte.d_sorte_combinacoes_em_grupos (d_sorte_id, d_sorte_qt, id_grupo, id_seq_cmb_em_grupos)
FROM '/tmp/d_sorte_combinacoes_em_grupo.csv'
WITH(DELIMITER ';', FORMAT CSV, HEADER TRUE );


INSERT INTO d_sorte.d_sorte_resultado_num (concurso, data, num_1, num_2, num_3, num_4, num_5, num_6, num_7, num_8, num_9, num_10, num_11, num_12, num_13, num_14, num_15, num_16, num_17, num_18, num_19, num_20, num_21, num_22, num_23, num_24, num_25, num_26, num_27, num_28, num_29, num_30, num_31)
VALUES
  (1, '2018-5-19', 0, 0, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
  (2, '2018-5-22', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
  (3, '2018-5-24', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0),
  (4, '2018-5-26', 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
  (5, '2018-5-29', 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0),
  (6, '2018-6-2', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1),
  (7, '2018-6-5', 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0),
  (8, '2018-6-7', 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0),
  (9, '2018-6-9', 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0),
  (10, '2018-6-12', 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
  (11, '2018-6-14', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
  (12, '2018-6-16', 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
  (13, '2018-6-19', 1, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
  (14, '2018-6-21', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1),
  (15, '2018-6-23', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0),
  (16, '2018-6-26', 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0),
  (17, '2018-6-28', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
  (18, '2018-6-30', 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1),
  (19, '2018-7-3', 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
  (20, '2018-7-5', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1),
  (21, '2018-7-7', 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
  (22, '2018-7-10', 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0),
  (23, '2018-7-12', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0),
  (24, '2018-7-14', 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
  (25, '2018-7-17', 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0)


SELECT
  d_sorte.d_sorte_resultado_bolas.concurso,
  d_sorte.d_sorte_resultado_bolas.b_1,
  d_sorte.d_sorte_resultado_bolas.b_2,
  d_sorte.d_sorte_resultado_bolas.b_3,
  d_sorte.d_sorte_resultado_bolas.b_4,
  d_sorte.d_sorte_resultado_bolas.b_5,
  d_sorte.d_sorte_resultado_bolas.b_6,
  d_sorte.d_sorte_resultado_bolas.b_7,
  d_sorte.d_sorte_id_algarismo.*
FROM d_sorte.d_sorte_resultado_id, d_sorte.d_sorte_resultado_bolas, d_sorte.d_sorte_id_algarismo
WHERE d_sorte.d_sorte_resultado_id.concurso = d_sorte.d_sorte_resultado_bolas.concurso
      AND d_sorte_resultado_id.alg_id = d_sorte.d_sorte_id_algarismo.alg_id


SELECT
  d_sorte.d_sorte_bolas.b_1,
  d_sorte.d_sorte_bolas.b_2,
  d_sorte.d_sorte_bolas.b_3,
  d_sorte.d_sorte_bolas.b_4,
  d_sorte.d_sorte_bolas.b_5,
  d_sorte.d_sorte_bolas.b_6,
  d_sorte.d_sorte_bolas.b_7,
  id_seq_cmb_em_grupos,
  d_sorte_id.*
FROM d_sorte.d_sorte_bolas, d_sorte.d_sorte_id, d_sorte.d_sorte_combinacoes_em_grupos
WHERE d_sorte.d_sorte_id.d_sorte_id = d_sorte.d_sorte_bolas.d_sorte_id
      AND d_sorte.d_sorte_id.d_sorte_id = d_sorte.d_sorte_combinacoes_em_grupos.d_sorte_id
      AND d_sorte.d_sorte_bolas.d_sorte_id = d_sorte.d_sorte_combinacoes_em_grupos.d_sorte_id
      AND d_sorte.d_sorte_bolas.d_sorte_id = d_sorte.d_sorte_combinacoes_em_grupos.d_sorte_id
      AND par_impar_id IN (4, 6, 5, 3)
      AND (prm_id IN (3, 4, 2)) AND
      (prm_id NOT IN (5, 6, 1, 7, 8))
      AND (ext_int_id IN (6, 5))
      AND (qd_id IN (78, 57, 77, 52, 73, 56, 72, 93, 53, 95, 88, 97, 19, 68, 55, 58, 94, 109, 69))
      AND (qd_id NOT IN (
  51, 81, 92, 96, 46, 47, 74, 76, 80, 18, 24, 67, 82, 45, 60, 106, 79, 91, 98, 23, 87, 99,
                                                                                       48, 12, 25, 40, 50, 59, 71, 83, 89, 105, 108, 17, 28, 66, 84, 102, 11, 29, 39, 61, 103,
                                                                                                                                                                      107, 13, 20, 41, 54, 75, 22, 27, 86, 100, 101, 110, 44, 62, 114, 10, 32, 38, 63, 112,
                                                                                                                                                                                                                                                   115, 4, 30, 104, 5, 26, 90, 16, 31, 65, 85, 111, 116, 14, 42, 49, 3, 33, 113, 6, 21,
                                                                                                                                                                                                                                                                                                                            70, 9, 34, 37, 64, 117, 119, 2, 35, 118, 7, 15, 43, 1, 36, 120, 8))
      AND (esq_dir_id IN (3, 4, 5))
      AND (sup_inf_id IN (5, 4, 3))
      AND (dz_id IN (63, 33, 36, 52, 60, 29, 32, 44, 45, 53, 59, 35, 71, 69, 9, 31))
      AND (b_1 IN (1, 2, 3, 6, 7, 8, 9))
      AND (b_2 IN (4, 8, 10, 11, 5, 7, 12))
      AND (b_3 IN (13, 7, 12, 9, 8, 16, 17))
      AND (b_4 IN (14, 12, 19, 15, 17, 18, 21, 9))
      AND (b_5 IN (19, 20, 21, 26, 18, 25, 16))
      AND (b_6 IN (21, 27, 28, 24, 20, 18))
      AND (b_7 IN (31, 29, 30, 28, 27, 25, 22))
ORDER BY d_sorte.d_sorte_combinacoes_em_grupos.id_sequencial;


SELECT
  acertos,
  qt_vezes
FROM d_sorte.v_d_sorte_filtros_acertos_por_data_hora
WHERE to_char(data_brazil, 'dd-MM-YYYY HH24:MI:SS.US')
      = '28-07-2018 23:07:42.634454'
ORDER BY acertos ASC

SELECT
  acertos,
  qt_vezes
FROM d_sorte.v_d_sorte_filtros_acertos_por_data_hora
WHERE to_char(data, 'dd-MM-YYYY HH24:MI:SS.US')
      = '28-07-2018 23:07:42.634454'
ORDER BY acertos ASC;

Select b_1,  b_7, count(*) as qt_vz from d_sorte.d_sorte_resultado_bolas
group by b_1, b_7
order by qt_vz desc;