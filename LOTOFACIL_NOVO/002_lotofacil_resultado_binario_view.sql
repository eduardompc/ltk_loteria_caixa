/**
  Autor:      Fábio Moura de Oliveira
  Descrição:  Neste arquivo está view que armazena a quantidade de vezes que combinações
  de 0 a x bolas saíram no concurso, assim fica fácil identificar quais as combinações
  que mais sai conforme a estatística que estamos analisando.
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_par;
Create View lotofacil.v_lotofacil_resultado_binario_par
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_11 = 1 then 2 else null end bin_11,
  case when bin_10 = 1 then 4 else null end bin_10,
  case when bin_9 = 1 then 6 else null end bin_9,
  case when bin_8 = 1 then 8 else null end bin_8,
  case when bin_7 = 1 then 10 else null end bin_7,
  case when bin_6 = 1 then 12 else null end bin_6,
  case when bin_5 = 1 then 14 else null end bin_5,
  case when bin_4 = 1 then 16 else null end bin_4,
  case when bin_3 = 1 then 18 else null end bin_3,
  case when bin_2 = 1 then 20 else null end bin_2,
  case when bin_1 = 1 then 22 else null end bin_1,
  case when bin_0 = 1 then 24 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_12_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_par_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_par;

/**
  ========================== IMPAR ==============================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_impar;
Create View lotofacil.v_lotofacil_resultado_binario_impar
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_12 = 1 then 1 else null end bin_12,
  case when bin_11 = 1 then 3 else null end bin_11,
  case when bin_10 = 1 then 5 else null end bin_10,
  case when bin_9 = 1 then 7 else null end bin_9,
  case when bin_8 = 1 then 9 else null end bin_8,
  case when bin_7 = 1 then 11 else null end bin_7,
  case when bin_6 = 1 then 13 else null end bin_6,
  case when bin_5 = 1 then 15 else null end bin_5,
  case when bin_4 = 1 then 17 else null end bin_4,
  case when bin_3 = 1 then 19 else null end bin_3,
  case when bin_2 = 1 then 21 else null end bin_2,
  case when bin_1 = 1 then 23 else null end bin_1,
  case when bin_0 = 1 then 25 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_13_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_impar_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_impar;

/**
  ================= PRIMO ======================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_primo;
Create View lotofacil.v_lotofacil_resultado_binario_primo
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_8 = 1 then 2 else null end bin_8,
  case when bin_7 = 1 then 3 else null end bin_7,
  case when bin_6 = 1 then 5 else null end bin_6,
  case when bin_5 = 1 then 7 else null end bin_5,
  case when bin_4 = 1 then 11 else null end bin_4,
  case when bin_3 = 1 then 13 else null end bin_3,
  case when bin_2 = 1 then 17 else null end bin_2,
  case when bin_1 = 1 then 19 else null end bin_1,
  case when bin_0 = 1 then 23 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_9_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_primo_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_primo;

/**
  ================= NÃO-PRIMO ======================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_nao_primo;
Create View lotofacil.v_lotofacil_resultado_binario_nao_primo
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_15 = 1 then 1 else null end bin_15,
  case when bin_14 = 1 then 4 else null end bin_14,
  case when bin_13 = 1 then 6 else null end bin_13,
  case when bin_12 = 1 then 8 else null end bin_12,
  case when bin_11 = 1 then 9 else null end bin_11,
  case when bin_10 = 1 then 10 else null end bin_10,
  case when bin_9 = 1 then 12 else null end bin_9,
  case when bin_8 = 1 then 14 else null end bin_8,
  case when bin_7 = 1 then 15 else null end bin_7,
  case when bin_6 = 1 then 16 else null end bin_6,
  case when bin_5 = 1 then 18 else null end bin_5,
  case when bin_4 = 1 then 20 else null end bin_4,
  case when bin_3 = 1 then 21 else null end bin_3,
  case when bin_2 = 1 then 22 else null end bin_2,
  case when bin_1 = 1 then 24 else null end bin_1,
  case when bin_0 = 1 then 25 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_16_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_nao_primo_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_nao_primo;


/**
  ================= Externo ======================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_externo;
Create View lotofacil.v_lotofacil_resultado_binario_externo
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_15 = 1 then 1 else null end bin_15,
  case when bin_14 = 1 then 2 else null end bin_14,
  case when bin_13 = 1 then 3 else null end bin_13,
  case when bin_12 = 1 then 4 else null end bin_12,
  case when bin_11 = 1 then 5 else null end bin_11,
  case when bin_10 = 1 then 6 else null end bin_10,
  case when bin_9 = 1 then 10 else null end bin_9,
  case when bin_8 = 1 then 11 else null end bin_8,
  case when bin_7 = 1 then 15 else null end bin_7,
  case when bin_6 = 1 then 16 else null end bin_6,
  case when bin_5 = 1 then 20 else null end bin_5,
  case when bin_4 = 1 then 21 else null end bin_4,
  case when bin_3 = 1 then 22 else null end bin_3,
  case when bin_2 = 1 then 23 else null end bin_2,
  case when bin_1 = 1 then 24 else null end bin_1,
  case when bin_0 = 1 then 25 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_16_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_ext_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_externo;

/**
  ================= interno ======================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_interno;
Create View lotofacil.v_lotofacil_resultado_binario_interno
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_8 = 1 then 7 else null end bin_8,
  case when bin_7 = 1 then 8 else null end bin_7,
  case when bin_6 = 1 then 9 else null end bin_6,
  case when bin_5 = 1 then 12 else null end bin_5,
  case when bin_4 = 1 then 13 else null end bin_4,
  case when bin_3 = 1 then 14 else null end bin_3,
  case when bin_2 = 1 then 17 else null end bin_2,
  case when bin_1 = 1 then 18 else null end bin_1,
  case when bin_0 = 1 then 19 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_9_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_int_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_interno;


/**
  ========================== HORIZONTAL_1 ==============================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_hrz_1;
Create View lotofacil.v_lotofacil_resultado_binario_hrz_1
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_4 = 1 then 1 else null end bin_4,
  case when bin_3 = 1 then 2 else null end bin_3,
  case when bin_2 = 1 then 3 else null end bin_2,
  case when bin_1 = 1 then 4 else null end bin_1,
  case when bin_0 = 1 then 5 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_5_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_hrz_1_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_hrz_1;


/**
  ========================== HORIZONTAL_2 ==============================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_hrz_2;
Create View lotofacil.v_lotofacil_resultado_binario_hrz_2
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_4 = 1 then 6 else null end bin_4,
  case when bin_3 = 1 then 7 else null end bin_3,
  case when bin_2 = 1 then 8 else null end bin_2,
  case when bin_1 = 1 then 9 else null end bin_1,
  case when bin_0 = 1 then 10 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_5_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_hrz_2_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_hrz_2;



/**
  ========================== HORIZONTAL_3 ==============================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_hrz_3;
Create View lotofacil.v_lotofacil_resultado_binario_hrz_3
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_4 = 1 then 11 else null end bin_4,
  case when bin_3 = 1 then 12 else null end bin_3,
  case when bin_2 = 1 then 13 else null end bin_2,
  case when bin_1 = 1 then 14 else null end bin_1,
  case when bin_0 = 1 then 15 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_5_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_hrz_3_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_hrz_3;



/**
  ========================== HORIZONTAL_4 ==============================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_hrz_4;
Create View lotofacil.v_lotofacil_resultado_binario_hrz_4
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_4 = 1 then 16 else null end bin_4,
  case when bin_3 = 1 then 17 else null end bin_3,
  case when bin_2 = 1 then 18 else null end bin_2,
  case when bin_1 = 1 then 19 else null end bin_1,
  case when bin_0 = 1 then 20 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_5_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_hrz_4_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_hrz_4;

/**
  ========================== HORIZONTAL_5 ==============================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_hrz_5;
Create View lotofacil.v_lotofacil_resultado_binario_hrz_5
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_4 = 1 then 21 else null end bin_4,
  case when bin_3 = 1 then 22 else null end bin_3,
  case when bin_2 = 1 then 23 else null end bin_2,
  case when bin_1 = 1 then 24 else null end bin_1,
  case when bin_0 = 1 then 25 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_5_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_hrz_5_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_hrz_5;


/**
  ========================== vertical_1 ==============================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_vrt_1;
Create View lotofacil.v_lotofacil_resultado_binario_vrt_1
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_4 = 1 then 1 else null end bin_4,
  case when bin_3 = 1 then 6 else null end bin_3,
  case when bin_2 = 1 then 11 else null end bin_2,
  case when bin_1 = 1 then 16 else null end bin_1,
  case when bin_0 = 1 then 21 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_5_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_vrt_1_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_vrt_1;


/**
  ========================== vertical_2 ==============================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_vrt_2;
Create View lotofacil.v_lotofacil_resultado_binario_vrt_2
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_4 = 1 then 2 else null end bin_4,
  case when bin_3 = 1 then 7 else null end bin_3,
  case when bin_2 = 1 then 12 else null end bin_2,
  case when bin_1 = 1 then 17 else null end bin_1,
  case when bin_0 = 1 then 22 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_5_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_vrt_2_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_vrt_2;



/**
  ========================== vertical_3 ==============================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_vrt_3;
Create View lotofacil.v_lotofacil_resultado_binario_vrt_3
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_4 = 1 then 3 else null end bin_4,
  case when bin_3 = 1 then 8 else null end bin_3,
  case when bin_2 = 1 then 13 else null end bin_2,
  case when bin_1 = 1 then 18 else null end bin_1,
  case when bin_0 = 1 then 23 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_5_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_vrt_3_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_vrt_3;



/**
  ========================== vertical_4 ==============================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_vrt_4;
Create View lotofacil.v_lotofacil_resultado_binario_vrt_4
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_4 = 1 then 4 else null end bin_4,
  case when bin_3 = 1 then 9 else null end bin_3,
  case when bin_2 = 1 then 14 else null end bin_2,
  case when bin_1 = 1 then 19 else null end bin_1,
  case when bin_0 = 1 then 24 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_5_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_vrt_4_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_vrt_4;

/**
  ========================== vertical_5 ==============================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_vrt_5;
Create View lotofacil.v_lotofacil_resultado_binario_vrt_5
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_4 = 1 then 5 else null end bin_4,
  case when bin_3 = 1 then 10 else null end bin_3,
  case when bin_2 = 1 then 15 else null end bin_2,
  case when bin_1 = 1 then 20 else null end bin_1,
  case when bin_0 = 1 then 25 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_5_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_vrt_5_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_vrt_5;








/**
  Diagonal
 */

/**
  ========================== diagonal_esquerda_1 ==============================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_dge_1;
Create View lotofacil.v_lotofacil_resultado_binario_dge_1
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_4 = 1 then 1 else null end bin_4,
  case when bin_3 = 1 then 7 else null end bin_3,
  case when bin_2 = 1 then 13 else null end bin_2,
  case when bin_1 = 1 then 19 else null end bin_1,
  case when bin_0 = 1 then 25 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_5_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_dge_1_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_dge_1;


/**
  ========================== diagonal_esquerda_2 ==============================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_dge_2;
Create View lotofacil.v_lotofacil_resultado_binario_dge_2
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_4 = 1 then 2 else null end bin_4,
  case when bin_3 = 1 then 8 else null end bin_3,
  case when bin_2 = 1 then 14 else null end bin_2,
  case when bin_1 = 1 then 20 else null end bin_1,
  case when bin_0 = 1 then 21 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_5_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_dge_2_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_dge_2;



/**
  ========================== diagonal_esquerda_3 ==============================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_dge_3;
Create View lotofacil.v_lotofacil_resultado_binario_dge_3
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_4 = 1 then 3 else null end bin_4,
  case when bin_3 = 1 then 9 else null end bin_3,
  case when bin_2 = 1 then 15 else null end bin_2,
  case when bin_1 = 1 then 16 else null end bin_1,
  case when bin_0 = 1 then 22 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_5_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_dge_3_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_dge_3;



/**
  ========================== diagonal_esquerda_4 ==============================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_dge_4;
Create View lotofacil.v_lotofacil_resultado_binario_dge_4
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_4 = 1 then 4 else null end bin_4,
  case when bin_3 = 1 then 10 else null end bin_3,
  case when bin_2 = 1 then 11 else null end bin_2,
  case when bin_1 = 1 then 17 else null end bin_1,
  case when bin_0 = 1 then 23 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_5_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_dge_4_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_dge_4;

/**
  ========================== diagonal_esquerda_5 ==============================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_dge_5;
Create View lotofacil.v_lotofacil_resultado_binario_dge_5
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_4 = 1 then 5 else null end bin_4,
  case when bin_3 = 1 then 6 else null end bin_3,
  case when bin_2 = 1 then 12 else null end bin_2,
  case when bin_1 = 1 then 18 else null end bin_1,
  case when bin_0 = 1 then 24 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_5_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_dge_5_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_dge_5;


/**
  Diagonal direita
 */

/**
  Diagonal
 */

/**
  ========================== diagonal_direita_1 ==============================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_dgd_1;
Create View lotofacil.v_lotofacil_resultado_binario_dgd_1
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_4 = 1 then 1 else null end bin_4,
  case when bin_3 = 1 then 10 else null end bin_3,
  case when bin_2 = 1 then 14 else null end bin_2,
  case when bin_1 = 1 then 18 else null end bin_1,
  case when bin_0 = 1 then 22 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_5_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_dgd_1_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_dgd_1;


/**
  ========================== diagonal_direita_2 ==============================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_dgd_2;
Create View lotofacil.v_lotofacil_resultado_binario_dgd_2
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_4 = 1 then 2 else null end bin_4,
  case when bin_3 = 1 then 6 else null end bin_3,
  case when bin_2 = 1 then 15 else null end bin_2,
  case when bin_1 = 1 then 19 else null end bin_1,
  case when bin_0 = 1 then 23 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_5_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_dgd_2_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_dgd_2;



/**
  ========================== diagonal_direita_3 ==============================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_dgd_3;
Create View lotofacil.v_lotofacil_resultado_binario_dgd_3
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_4 = 1 then 3 else null end bin_4,
  case when bin_3 = 1 then 7 else null end bin_3,
  case when bin_2 = 1 then 11 else null end bin_2,
  case when bin_1 = 1 then 20 else null end bin_1,
  case when bin_0 = 1 then 24 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_5_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_dgd_3_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_dgd_3;



/**
  ========================== diagonal_direita_4 ==============================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_dgd_4;
Create View lotofacil.v_lotofacil_resultado_binario_dgd_4
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_4 = 1 then 4 else null end bin_4,
  case when bin_3 = 1 then 8 else null end bin_3,
  case when bin_2 = 1 then 12 else null end bin_2,
  case when bin_1 = 1 then 16 else null end bin_1,
  case when bin_0 = 1 then 25 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_5_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_dgd_4_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_dgd_4;

/**
  ========================== diagonal_direita_5 ==============================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_dgd_5;
Create View lotofacil.v_lotofacil_resultado_binario_dgd_5
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_4 = 1 then 5 else null end bin_4,
  case when bin_3 = 1 then 9 else null end bin_3,
  case when bin_2 = 1 then 13 else null end bin_2,
  case when bin_1 = 1 then 17 else null end bin_1,
  case when bin_0 = 1 then 21 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_5_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_dgd_5_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_dgd_5;


/**
  ============================ Esquerda ====================================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_esquerda;
Create View lotofacil.v_lotofacil_resultado_binario_esquerda
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_11 = 1 then 1 else null end bin_11,
  case when bin_10 = 1 then 2 else null end bin_10,
  case when bin_9 = 1 then 3 else null end bin_9,
  case when bin_8 = 1 then 6 else null end bin_8,
  case when bin_7 = 1 then 7 else null end bin_7,
  case when bin_6 = 1 then 8 else null end bin_6,
  case when bin_5 = 1 then 11 else null end bin_5,
  case when bin_4 = 1 then 12 else null end bin_4,
  case when bin_3 = 1 then 16 else null end bin_3,
  case when bin_2 = 1 then 17 else null end bin_2,
  case when bin_1 = 1 then 21 else null end bin_1,
  case when bin_0 = 1 then 22 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_12_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_esq_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_esquerda;


/**
  ============================ Direita ====================================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_direita;
Create View lotofacil.v_lotofacil_resultado_binario_direita
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_12 = 1 then 4 else null end bin_12,
  case when bin_11 = 1 then 5 else null end bin_11,
  case when bin_10 = 1 then 9 else null end bin_10,
  case when bin_9 = 1 then 10 else null end bin_9,
  case when bin_8 = 1 then 13 else null end bin_8,
  case when bin_7 = 1 then 14 else null end bin_7,
  case when bin_6 = 1 then 15 else null end bin_6,
  case when bin_5 = 1 then 18 else null end bin_5,
  case when bin_4 = 1 then 19 else null end bin_4,
  case when bin_3 = 1 then 20 else null end bin_3,
  case when bin_2 = 1 then 23 else null end bin_2,
  case when bin_1 = 1 then 24 else null end bin_1,
  case when bin_0 = 1 then 25 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_13_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_dir_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_direita;




/**
  ============================ Superior ====================================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_superior;
Create View lotofacil.v_lotofacil_resultado_binario_superior
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_11 = 1 then 1 else null end bin_11,
  case when bin_10 = 1 then 2 else null end bin_10,
  case when bin_9 = 1 then 3 else null end bin_9,
  case when bin_8 = 1 then 4 else null end bin_8,
  case when bin_7 = 1 then 5 else null end bin_7,
  case when bin_6 = 1 then 6 else null end bin_6,
  case when bin_5 = 1 then 7 else null end bin_5,
  case when bin_4 = 1 then 8 else null end bin_4,
  case when bin_3 = 1 then 9 else null end bin_3,
  case when bin_2 = 1 then 10 else null end bin_2,
  case when bin_1 = 1 then 11 else null end bin_1,
  case when bin_0 = 1 then 12 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_12_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_sup_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_superior;


/**
  ============================ Inferior ====================================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_inferior;
Create View lotofacil.v_lotofacil_resultado_binario_inferior
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_12 = 1 then 4 else null end bin_12,
  case when bin_11 = 1 then 5 else null end bin_11,
  case when bin_10 = 1 then 9 else null end bin_10,
  case when bin_9 = 1 then 10 else null end bin_9,
  case when bin_8 = 1 then 13 else null end bin_8,
  case when bin_7 = 1 then 14 else null end bin_7,
  case when bin_6 = 1 then 15 else null end bin_6,
  case when bin_5 = 1 then 18 else null end bin_5,
  case when bin_4 = 1 then 19 else null end bin_4,
  case when bin_3 = 1 then 20 else null end bin_3,
  case when bin_2 = 1 then 23 else null end bin_2,
  case when bin_1 = 1 then 24 else null end bin_1,
  case when bin_0 = 1 then 25 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_13_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_inf_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_inferior;




/**
  ============================ Superior Esquerda ====================================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_superior_esquerda;
Create View lotofacil.v_lotofacil_resultado_binario_superior_esquerda
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_11 = 1 then 1 else null end bin_11,
  case when bin_10 = 1 then 2 else null end bin_10,
  case when bin_9 = 1 then 3 else null end bin_9,
  case when bin_8 = 1 then 4 else null end bin_8,
  case when bin_7 = 1 then 5 else null end bin_7,
  case when bin_6 = 1 then 6 else null end bin_6,
  case when bin_5 = 1 then 7 else null end bin_5,
  case when bin_4 = 1 then 8 else null end bin_4,
  case when bin_3 = 1 then 9 else null end bin_3,
  case when bin_2 = 1 then 11 else null end bin_2,
  case when bin_1 = 1 then 12 else null end bin_1,
  case when bin_0 = 1 then 16 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_12_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_sup_esq_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_superior_esquerda;


/**
  ============================ Inferior_Direita ====================================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_inferior_direita;
Create View lotofacil.v_lotofacil_resultado_binario_inferior_direita
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_12 = 1 then 10 else null end bin_12,
  case when bin_11 = 1 then 13 else null end bin_11,
  case when bin_10 = 1 then 14 else null end bin_10,
  case when bin_9 = 1 then 15 else null end bin_9,
  case when bin_8 = 1 then 17 else null end bin_8,
  case when bin_7 = 1 then 18 else null end bin_7,
  case when bin_6 = 1 then 19 else null end bin_6,
  case when bin_5 = 1 then 20 else null end bin_5,
  case when bin_4 = 1 then 21 else null end bin_4,
  case when bin_3 = 1 then 22 else null end bin_3,
  case when bin_2 = 1 then 23 else null end bin_2,
  case when bin_1 = 1 then 24 else null end bin_1,
  case when bin_0 = 1 then 25 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_13_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_inf_dir_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_inferior_direita;



/**
  ============================ Superior_Direita ====================================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_superior_direita;
Create View lotofacil.v_lotofacil_resultado_binario_superior_direita
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_11 = 1 then 1 else null end bin_11,
  case when bin_10 = 1 then 2 else null end bin_10,
  case when bin_9 = 1 then 3 else null end bin_9,
  case when bin_8 = 1 then 4 else null end bin_8,
  case when bin_7 = 1 then 5 else null end bin_7,
  case when bin_6 = 1 then 7 else null end bin_6,
  case when bin_5 = 1 then 8 else null end bin_5,
  case when bin_4 = 1 then 9 else null end bin_4,
  case when bin_3 = 1 then 10 else null end bin_3,
  case when bin_2 = 1 then 14 else null end bin_2,
  case when bin_1 = 1 then 15 else null end bin_1,
  case when bin_0 = 1 then 20 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_12_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_sup_dir_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_superior_direita;


/**
  ============================ Inferior_Esquerda ====================================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_inferior_esquerda;
Create View lotofacil.v_lotofacil_resultado_binario_inferior_esquerda
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_12 = 1 then 6 else null end bin_12,
  case when bin_11 = 1 then 11 else null end bin_11,
  case when bin_10 = 1 then 12 else null end bin_10,
  case when bin_9 = 1 then 13 else null end bin_9,
  case when bin_8 = 1 then 16 else null end bin_8,
  case when bin_7 = 1 then 17 else null end bin_7,
  case when bin_6 = 1 then 18 else null end bin_6,
  case when bin_5 = 1 then 19 else null end bin_5,
  case when bin_4 = 1 then 21 else null end bin_4,
  case when bin_3 = 1 then 22 else null end bin_3,
  case when bin_2 = 1 then 23 else null end bin_2,
  case when bin_1 = 1 then 24 else null end bin_1,
  case when bin_0 = 1 then 25 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_13_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_inf_esq_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_inferior_esquerda;




/**
  ============================ Cruzeta ====================================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_crz_1;
Create View lotofacil.v_lotofacil_resultado_binario_crz_1
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_3 = 1 then 1 else null end bin_3,
  case when bin_2 = 1 then 2 else null end bin_2,
  case when bin_1 = 1 then 6 else null end bin_1,
  case when bin_0 = 1 then 7 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_4_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_crz_1_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_crz_1;


Drop view if exists lotofacil.v_lotofacil_resultado_binario_crz_2;
Create View lotofacil.v_lotofacil_resultado_binario_crz_2
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_3 = 1 then 4 else null end bin_3,
  case when bin_2 = 1 then 5 else null end bin_2,
  case when bin_1 = 1 then 9 else null end bin_1,
  case when bin_0 = 1 then 10 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_4_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_crz_2_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_crz_2;



Drop view if exists lotofacil.v_lotofacil_resultado_binario_crz_3;
Create View lotofacil.v_lotofacil_resultado_binario_crz_3
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_8 = 1 then 3 else null end bin_8,
  case when bin_7 = 1 then 8 else null end bin_7,
  case when bin_6 = 1 then 11 else null end bin_6,
  case when bin_5 = 1 then 12 else null end bin_5,
  case when bin_4 = 1 then 13 else null end bin_4,
  case when bin_3 = 1 then 14 else null end bin_3,
  case when bin_2 = 1 then 15 else null end bin_2,
  case when bin_1 = 1 then 18 else null end bin_1,
  case when bin_0 = 1 then 23 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_9_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_crz_3_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_crz_3;


Drop view if exists lotofacil.v_lotofacil_resultado_binario_crz_4;
Create View lotofacil.v_lotofacil_resultado_binario_crz_4
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_3 = 1 then 19 else null end bin_3,
  case when bin_2 = 1 then 20 else null end bin_2,
  case when bin_1 = 1 then 24 else null end bin_1,
  case when bin_0 = 1 then 25 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_4_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_crz_4_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_crz_4;

/**
  ======================= LOSANGO ==================================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_lsng_1;
Create View lotofacil.v_lotofacil_resultado_binario_lsng_1
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_2 = 1 then 1 else null end bin_2,
  case when bin_1 = 1 then 2 else null end bin_1,
  case when bin_0 = 1 then 6 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_3_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_lsng_1_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_lsng_1;

Drop view if exists lotofacil.v_lotofacil_resultado_binario_lsng_2;
Create View lotofacil.v_lotofacil_resultado_binario_lsng_2
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_2 = 1 then 4 else null end bin_2,
  case when bin_1 = 1 then 5 else null end bin_1,
  case when bin_0 = 1 then 10 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_3_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_lsng_2_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_lsng_2;

Drop view if exists lotofacil.v_lotofacil_resultado_binario_lsng_3;
Create View lotofacil.v_lotofacil_resultado_binario_lsng_3
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_12 = 1 then 3 else null end bin_12,
  case when bin_11 = 1 then 7 else null end bin_11,
  case when bin_10 = 1 then 8 else null end bin_10,
  case when bin_9 = 1 then 9 else null end bin_9,
  case when bin_8 = 1 then 11 else null end bin_8,
  case when bin_7 = 1 then 12 else null end bin_7,
  case when bin_6 = 1 then 13 else null end bin_6,
  case when bin_5 = 1 then 14 else null end bin_5,
  case when bin_4 = 1 then 15 else null end bin_4,
  case when bin_3 = 1 then 17 else null end bin_3,
  case when bin_2 = 1 then 18 else null end bin_2,
  case when bin_1 = 1 then 19 else null end bin_1,
  case when bin_0 = 1 then 23 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_13_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_lsng_3_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_lsng_3;



Drop view if exists lotofacil.v_lotofacil_resultado_binario_lsng_4;
Create View lotofacil.v_lotofacil_resultado_binario_lsng_4
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_2 = 1 then 20 else null end bin_2,
  case when bin_1 = 1 then 24 else null end bin_1,
  case when bin_0 = 1 then 25 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_3_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_lsng_4_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_lsng_4;

Drop view if exists lotofacil.v_lotofacil_resultado_binario_lsng_5;
Create View lotofacil.v_lotofacil_resultado_binario_lsng_5
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_2 = 1 then 16 else null end bin_2,
  case when bin_1 = 1 then 21 else null end bin_1,
  case when bin_0 = 1 then 22 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_3_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_lsng_5_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_lsng_5;




/**
  ========================== quinteto_1 ==============================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_qnt_1;
Create View lotofacil.v_lotofacil_resultado_binario_qnt_1
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_4 = 1 then 1 else null end bin_4,
  case when bin_3 = 1 then 2 else null end bin_3,
  case when bin_2 = 1 then 3 else null end bin_2,
  case when bin_1 = 1 then 6 else null end bin_1,
  case when bin_0 = 1 then 7 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_5_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_qnt_1_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_qnt_1;


/**
  ========================== quinteto_2 ==============================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_qnt_2;
Create View lotofacil.v_lotofacil_resultado_binario_qnt_2
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_4 = 1 then 4 else null end bin_4,
  case when bin_3 = 1 then 5 else null end bin_3,
  case when bin_2 = 1 then 8 else null end bin_2,
  case when bin_1 = 1 then 9 else null end bin_1,
  case when bin_0 = 1 then 10 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_5_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_qnt_2_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_qnt_2;



/**
  ========================== quinteto_3 ==============================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_qnt_3;
Create View lotofacil.v_lotofacil_resultado_binario_qnt_3
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_4 = 1 then 11 else null end bin_4,
  case when bin_3 = 1 then 12 else null end bin_3,
  case when bin_2 = 1 then 13 else null end bin_2,
  case when bin_1 = 1 then 14 else null end bin_1,
  case when bin_0 = 1 then 15 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_5_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_qnt_3_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_qnt_3;



/**
  ========================== quinteto_4 ==============================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_qnt_4;
Create View lotofacil.v_lotofacil_resultado_binario_qnt_4
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_4 = 1 then 18 else null end bin_4,
  case when bin_3 = 1 then 19 else null end bin_3,
  case when bin_2 = 1 then 20 else null end bin_2,
  case when bin_1 = 1 then 24 else null end bin_1,
  case when bin_0 = 1 then 25 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_5_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_qnt_4_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_qnt_4;

/**
  ========================== quinteto_5 ==============================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_qnt_5;
Create View lotofacil.v_lotofacil_resultado_binario_qnt_5
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_4 = 1 then 16 else null end bin_4,
  case when bin_3 = 1 then 17 else null end bin_3,
  case when bin_2 = 1 then 21 else null end bin_2,
  case when bin_1 = 1 then 22 else null end bin_1,
  case when bin_0 = 1 then 23 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_5_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_qnt_5_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_qnt_5;

/**
  ==================== TRIANGULO 1 =========================
 */
Drop view if exists lotofacil.v_lotofacil_resultado_binario_trng_1;
Create View lotofacil.v_lotofacil_resultado_binario_trng_1
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_7 = 1 then 1 else null end bin_7,
  case when bin_6 = 1 then 2 else null end bin_6,
  case when bin_5 = 1 then 3 else null end bin_5,
  case when bin_4 = 1 then 4 else null end bin_4,
  case when bin_3 = 1 then 5 else null end bin_3,
  case when bin_2 = 1 then 7 else null end bin_2,
  case when bin_1 = 1 then 8 else null end bin_1,
  case when bin_0 = 1 then 9 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_8_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_trng_1_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_trng_1;

/**
  ==================== TRIANGULO 2 =========================
 */
Drop view if exists lotofacil.v_lotofacil_resultado_binario_trng_2;
Create View lotofacil.v_lotofacil_resultado_binario_trng_2
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_3 = 1 then 10 else null end bin_3,
  case when bin_2 = 1 then 14 else null end bin_2,
  case when bin_1 = 1 then 15 else null end bin_1,
  case when bin_0 = 1 then 20 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_4_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_trng_2_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_lsng_3;

/**
  ==================== TRIANGULO 3 =========================
 */
Drop view if exists lotofacil.v_lotofacil_resultado_binario_trng_3;
Create View lotofacil.v_lotofacil_resultado_binario_trng_3
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_8 = 1 then 13 else null end bin_8,
  case when bin_7 = 1 then 17 else null end bin_7,
  case when bin_6 = 1 then 18 else null end bin_6,
  case when bin_5 = 1 then 19 else null end bin_5,
  case when bin_4 = 1 then 21 else null end bin_4,
  case when bin_3 = 1 then 22 else null end bin_3,
  case when bin_2 = 1 then 23 else null end bin_2,
  case when bin_1 = 1 then 24 else null end bin_1,
  case when bin_0 = 1 then 25 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_9_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_trng_3_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_trng_3;


/**
  ==================== TRIANGULO 4 =========================
 */
Drop view if exists lotofacil.v_lotofacil_resultado_binario_trng_4;
Create View lotofacil.v_lotofacil_resultado_binario_trng_4
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_3 = 1 then 6 else null end bin_3,
  case when bin_2 = 1 then 11 else null end bin_2,
  case when bin_1 = 1 then 12 else null end bin_1,
  case when bin_0 = 1 then 16 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_4_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_trng_4_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_trng_4;




/**
  ========================== TRIO 1 ===========================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_trio_1;
Create View lotofacil.v_lotofacil_resultado_binario_trio_1
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_2 = 1 then 1 else null end bin_2,
  case when bin_1 = 1 then 2 else null end bin_1,
  case when bin_0 = 1 then 6 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_3_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_trio_1_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_trio_1;


/**
  ========================== TRIO 2 ===========================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_trio_2;
Create View lotofacil.v_lotofacil_resultado_binario_trio_2
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_2 = 1 then 1 else null end bin_2,
  case when bin_1 = 1 then 2 else null end bin_1,
  case when bin_0 = 1 then 6 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_3_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_trio_2_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_trio_2;

/**
  ========================== trio_3 ===========================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_trio_3;
Create View lotofacil.v_lotofacil_resultado_binario_trio_3
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_2 = 1 then 3 else null end bin_2,
  case when bin_1 = 1 then 7 else null end bin_1,
  case when bin_0 = 1 then 8 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_3_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_trio_3_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_trio_3;

/**
  ========================== trio_4 ===========================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_trio_4;
Create View lotofacil.v_lotofacil_resultado_binario_trio_4
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_2 = 1 then 9 else null end bin_2,
  case when bin_1 = 1 then 14 else null end bin_1,
  case when bin_0 = 1 then 15 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_3_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_trio_4_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_trio_4;

/**
  ========================== trio_5 ===========================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_trio_5;
Create View lotofacil.v_lotofacil_resultado_binario_trio_5
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_2 = 1 then 20 else null end bin_2,
  case when bin_1 = 1 then 24 else null end bin_1,
  case when bin_0 = 1 then 25 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_3_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_trio_5_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_trio_5;

/**
  ========================== trio_6 ===========================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_trio_6;
Create View lotofacil.v_lotofacil_resultado_binario_trio_6
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_2 = 1 then 18 else null end bin_2,
  case when bin_1 = 1 then 19 else null end bin_1,
  case when bin_0 = 1 then 23 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_3_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_trio_6_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_trio_6;

/**
  ========================== trio_7 ===========================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_trio_7;
Create View lotofacil.v_lotofacil_resultado_binario_trio_7
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_2 = 1 then 9 else null end bin_2,
  case when bin_1 = 1 then 14 else null end bin_1,
  case when bin_0 = 1 then 15 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_3_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_trio_7_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_trio_7;


/**
  ========================== trio_8 ===========================
 */
Drop view if exists lotofacil.v_lotofacil_resultado_binario_trio_8;
Create View lotofacil.v_lotofacil_resultado_binario_trio_8
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_3 = 1 then 11 else null end bin_3,
  case when bin_2 = 1 then 12 else null end bin_2,
  case when bin_1 = 1 then 13 else null end bin_1,
  case when bin_0 = 1 then 17 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_4_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_trio_8_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_trio_8;

/**
  ============================ x1 ====================================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_x1;
Create View lotofacil.v_lotofacil_resultado_binario_x1
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_8 = 1 then 1 else null end bin_8,
  case when bin_7 = 1 then 5 else null end bin_7,
  case when bin_6 = 1 then 7 else null end bin_6,
  case when bin_5 = 1 then 9 else null end bin_5,
  case when bin_4 = 1 then 13 else null end bin_4,
  case when bin_3 = 1 then 17 else null end bin_3,
  case when bin_2 = 1 then 19 else null end bin_2,
  case when bin_1 = 1 then 21 else null end bin_1,
  case when bin_0 = 1 then 25 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_9_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_x1_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_x1;

/**
  ============================ x2 ====================================
 */

Drop view if exists lotofacil.v_lotofacil_resultado_binario_x2;
Create View lotofacil.v_lotofacil_resultado_binario_x2
  AS
SELECT
  bin_id,
  bin_qt,
  case when bin_15 = 1 then 2 else null end bin_15,
  case when bin_14 = 1 then 3 else null end bin_14,
  case when bin_13 = 1 then 4 else null end bin_13,
  case when bin_12 = 1 then 6 else null end bin_12,
  case when bin_11 = 1 then 8 else null end bin_11,
  case when bin_10 = 1 then 10 else null end bin_10,
  case when bin_9 = 1 then 11 else null end bin_9,
  case when bin_8 = 1 then 12 else null end bin_8,
  case when bin_7 = 1 then 14 else null end bin_7,
  case when bin_6 = 1 then 15 else null end bin_6,
  case when bin_5 = 1 then 16 else null end bin_5,
  case when bin_4 = 1 then 18 else null end bin_4,
  case when bin_3 = 1 then 20 else null end bin_3,
  case when bin_2 = 1 then 22 else null end bin_2,
  case when bin_1 = 1 then 23 else null end bin_1,
  case when bin_0 = 1 then 24 else null end bin_0,

COUNT(*) AS qt_vz FROM lotofacil.lotofacil_id_binario_16_bolas ltf_a
LEFT JOIN lotofacil.lotofacil_resultado_id ltf_b
ON ltf_a.bin_id = ltf_b.bin_x2_id
GROUP BY bin_id, bin_qt
order by qt_vz desc, bin_qt desc;

Select * from lotofacil.v_lotofacil_resultado_binario_x2;

