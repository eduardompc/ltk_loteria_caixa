SELECT
  bin_esq_id,
  count(*) AS qt_vz
FROM lotofacil.lotofacil_resultado_id
GROUP BY bin_esq_id
ORDER BY qt_vz DESC;

SELECT
  bin_dz_2_id,
  count(*) AS qt_vz
FROM lotofacil.lotofacil_resultado_id
GROUP BY bin_dz_2_id
ORDER BY qt_vz DESC;

SELECT
  bin_impar_id,
  count(*) AS qt_vz
FROM lotofacil.lotofacil_resultado_id * 2 ^ 8

INSERT INTO lotofacil.lotofacil_filtros
(data, ltf_id, ltf_qt, concurso, acertos,
 concurso_bola_qt_vezes, data_aleatorio,
 concurso_soma_frequencia_bolas, id_seq_cmb_em_grupos)


  SELECT
    now(),
    ltf_a.ltf_id,
    ltf_a.ltf_qt,
    0,
    0,
    0,
    now(),
    0,
    0
  FROM lotofacil.lotofacil_bolas ltf_a, lotofacil.lotofacil_num ltf_b, lotofacil.lotofacil_id ltf_c
    , lotofacil.lotofacil_novos_repetidos ltf_d
  WHERE ltf_a.ltf_id = ltf_b.ltf_id
        AND ltf_a.ltf_id = ltf_c.ltf_id
        AND ltf_a.ltf_id = ltf_d.ltf_id
        AND ltf_b.ltf_id = ltf_c.ltf_id
        AND ltf_b.ltf_id = ltf_d.ltf_id
        AND ltf_c.ltf_id = ltf_d.ltf_id
        AND ltf_a.ltf_qt = 15
        AND ltf_d.novos_repetidos_id IN (5, 6, 7)
        AND bin_hrz_1_id IN (29, 30, 31, 15, 23, 27, 7, 11, 26, 14, 22, 21, 13, 25, 28)
        AND bin_hrz_2_id IN (27, 15, 7, 23, 31, 19, 29, 26, 30, 11, 28, 25, 13, 21, 18)
        AND bin_hrz_3_id IN (23, 29, 31, 15, 27, 30, 21, 22, 26, 13, 11, 14, 19, 28, 25)
        AND bin_hrz_4_id IN (31, 30, 15, 13, 23, 29, 27, 7, 19, 11, 14, 22, 25, 21, 28)
        AND bin_hrz_5_id IN (27, 31, 23, 15, 26, 7, 28, 30, 29, 13, 11, 21, 25, 19, 14)
        AND bin_vrt_1_id IN (23, 29, 27, 28, 15, 21, 31, 7, 30, 22, 11, 14, 19, 25, 13)
        AND bin_vrt_2_id IN (31, 30, 29, 23, 26, 15, 27, 7, 19, 21, 22, 13, 25, 11, 14)
        AND bin_vrt_3_id IN (23, 31, 30, 29, 15, 27, 21, 22, 14, 7, 13, 19, 25, 26, 17)
        AND bin_vrt_4_id IN (29, 31, 30, 27, 15, 23, 19, 7, 26, 13, 22, 25, 11, 28, 21)
        AND bin_vrt_5_id IN (31, 27, 23, 29, 11, 30, 15, 14, 25, 22, 19, 13, 21, 26, 28)
        AND bin_dge_1_id IN (29, 27, 23, 30, 31, 15, 21, 28, 7, 26, 22, 19, 13, 11, 14)
        AND bin_dge_2_id IN (31, 23, 15, 28, 27, 22, 30, 14, 29, 26, 7, 21, 11, 19, 13)
        AND bin_dge_3_id IN (29, 23, 30, 21, 31, 27, 15, 7, 11, 13, 25, 28, 19, 26, 14)
        AND bin_dge_4_id IN (31, 29, 30, 23, 15, 27, 14, 13, 7, 22, 25, 19, 21, 11, 28)
        AND bin_dge_5_id IN (31, 15, 23, 27, 29, 13, 30, 19, 22, 25, 28, 26, 11, 21, 7)
        AND bin_dgd_1_id IN (29, 31, 30, 27, 15, 23, 28, 14, 21, 19, 11, 7, 13, 26, 22)

  ORDER BY ltf_id ASC
  LIMIT 100;


Select
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


  ltf_b.qt_vz from lotofacil.lotofacil_id_binario_12_bolas ltf_a,
(
SELECT
  bin_par_id,
  --bin_impar_id,
  count(*) AS qt_vz
FROM lotofacil.lotofacil_id
  where ltf_qt = 15
GROUP BY bin_par_id
  --bin_impar_id
ORDER BY qt_vz DESC) ltf_b
where ltf_a.bin_id = ltf_b.bin_par_id;


Select ltf_a.* from lotofacil.lotofacil_bolas ltf_a, lotofacil.lotofacil_num ltf_b
  where ltf_a.ltf_id = ltf_b.ltf_id
and num_8 + num_10 + num_16 = 3
and ltf_a.ltf_qt = 15;


Select ltf_a.concurso, ltf_b.novos, ltf_b.repetidos from lotofacil.lotofacil_resultado_novos_repetidos ltf_a, lotofacil.lotofacil_id_novos_repetidos ltf_b
  where ltf_a.novos_repetidos_id = ltf_b.novos_repetidos_id
and concurso in (1721, 1720, 1719, 716, 717, 718, 653, 654, 655, 216, 217, 218)
order by concurso asc, ltf_a.novos_repetidos_id asc;


Select min(ltf_id) as min_ltf_id,
  max(ltf_id) max_ltf_id,
  min(par_impar_id) as min_par_impar_id,
  max(par_impar_id) as max_par_impar_id,
  min(prm_id) as min_prm_id,
  max(prm_id) as max_prm_id
from lotofacil.lotofacil_id;





