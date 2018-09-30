/**
 */
SELECT
  ltf_qt,
  min(ltf_id) AS Inicio,
  max(ltf_id) AS Fim,
  count(*)    AS qt_itens
FROM lotofacil.lotofacil_bolas
GROUP BY ltf_qt
ORDER BY ltf_qt ASC;


SELECT
  ltf_bolas.*,
  ltf_dif.qt_alt
FROM lotofacil.lotofacil_bolas ltf_bolas,
  lotofacil.lotofacil_diferenca_entre_bolas ltf_dif
WHERE ltf_bolas.ltf_id = ltf_dif.ltf_id
      AND qt_alt = 12;


SELECT
  b_1,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_resultado_bolas
GROUP BY b_1
ORDER BY qt_vezes DESC;

SELECT
  b_1,
  b_2,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_resultado_bolas
GROUP BY b_1, b_2
ORDER BY qt_vezes DESC;

SELECT
  b_1,
  b_2,
  b_3,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_resultado_bolas
GROUP BY b_1, b_2, b_3
ORDER BY qt_vezes DESC;

SELECT
  b_1,
  b_2,
  b_3,
  b_4,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_resultado_bolas
GROUP BY b_1, b_2, b_3, b_4
ORDER BY qt_vezes DESC;

SELECT
  b_1,
  b_2,
  b_3,
  b_4,
  b_5,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_resultado_bolas
GROUP BY b_1, b_2, b_3, b_4, b_5
ORDER BY qt_vezes DESC;


SELECT
  b_1,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_bolas
WHERE ltf_qt = 15
GROUP BY b_1
ORDER BY qt_vezes DESC;

SELECT
  b_1,
  b_2,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_bolas
WHERE ltf_qt = 15
GROUP BY b_1, b_2
ORDER BY qt_vezes DESC;

SELECT
  b_1,
  b_2,
  b_3,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_bolas
WHERE ltf_qt = 15
GROUP BY b_1, b_2, b_3
ORDER BY qt_vezes DESC;

SELECT
  b_1,
  b_2,
  b_3,
  b_4,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_bolas
WHERE ltf_qt = 15
GROUP BY b_1, b_2, b_3, b_4
ORDER BY qt_vezes DESC;

SELECT
  b_1,
  b_2,
  b_3,
  b_4,
  b_5,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_bolas
WHERE ltf_qt = 15
GROUP BY b_1, b_2, b_3, b_4, b_5
ORDER BY qt_vezes DESC;

SELECT
  b1_b15_id,
  b_1,
  b_15,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_bolas ltf_bolas, lotofacil.lotofacil_id_b1_b15 ltf_b
WHERE ltf_b.b1 = ltf_bolas.b_1
      AND ltf_b.b15 = ltf_bolas.b_15
GROUP BY b1_b15_id, b_1, b_15;

SELECT
  b_1,
  b_15,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_resultado_bolas
GROUP BY b_1, b_15
ORDER BY qt_vezes DESC;


SELECT
  b_1,
  b_2,
  b_14,
  b_15,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_resultado_bolas
GROUP BY b_1, b_2, b_14, b_15
ORDER BY qt_vezes DESC;


SELECT
  b_1,
  b_2,
  b_3,
  b_13,
  b_14,
  b_15,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_resultado_bolas
GROUP BY b_1, b_2, b_3, b_13, b_14, b_15
ORDER BY qt_vezes DESC;

SELECT
  b_1,
  b_2,
  b_3,
  b_4,
  b_12,
  b_13,
  b_14,
  b_15,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_resultado_bolas
GROUP BY b_1, b_2, b_3, b_4, b_12, b_13, b_14, b_15
ORDER BY qt_vezes DESC;

SELECT
  b_1,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_resultado_bolas
GROUP BY b_1
ORDER BY qt_vezes DESC;

SELECT
  b_2,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_resultado_bolas
GROUP BY b_2
ORDER BY qt_vezes DESC;

SELECT
  b_3,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_resultado_bolas
GROUP BY b_3
ORDER BY qt_vezes DESC;

SELECT
  b_4,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_resultado_bolas
GROUP BY b_4
ORDER BY qt_vezes DESC;

SELECT
  b_5,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_resultado_bolas
GROUP BY b_5
ORDER BY qt_vezes DESC;

SELECT
  b_6,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_resultado_bolas
GROUP BY b_6
ORDER BY qt_vezes DESC;


SELECT
  b_7,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_resultado_bolas
GROUP BY b_7
ORDER BY qt_vezes DESC;

SELECT
  b_8,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_resultado_bolas
GROUP BY b_8
ORDER BY qt_vezes DESC;

SELECT
  b_9,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_resultado_bolas
GROUP BY b_9
ORDER BY qt_vezes DESC;


SELECT
  b_10,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_resultado_bolas
GROUP BY b_10
ORDER BY qt_vezes DESC;

SELECT
  b_11,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_resultado_bolas
GROUP BY b_11
ORDER BY qt_vezes DESC;

SELECT
  b_12,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_resultado_bolas
GROUP BY b_12
ORDER BY qt_vezes DESC;

SELECT
  b_13,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_resultado_bolas
GROUP BY b_13
ORDER BY qt_vezes DESC;

SELECT
  b_14,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_resultado_bolas
GROUP BY b_14
ORDER BY qt_vezes DESC;

SELECT
  b_15,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_resultado_bolas
GROUP BY b_15
ORDER BY qt_vezes DESC;


SELECT
  b_1,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_bolas
WHERE ltf_qt = 15
GROUP BY b_1
ORDER BY qt_vezes DESC;

SELECT
  b_2,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_bolas
WHERE ltf_qt = 15
GROUP BY b_2
ORDER BY qt_vezes DESC;

SELECT
  b_3,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_bolas
WHERE ltf_qt = 15
GROUP BY b_3
ORDER BY qt_vezes DESC;

SELECT
  b_4,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_bolas
WHERE ltf_qt = 15
GROUP BY b_4
ORDER BY qt_vezes DESC;

SELECT
  b_5,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_bolas
WHERE ltf_qt = 15
GROUP BY b_5
ORDER BY qt_vezes DESC;

SELECT
  b_6,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_bolas
WHERE ltf_qt = 15
GROUP BY b_6
ORDER BY qt_vezes DESC;

SELECT
  b_7,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_bolas
WHERE ltf_qt = 15
GROUP BY b_7
ORDER BY qt_vezes DESC;

SELECT
  b_8,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_bolas
WHERE ltf_qt = 15
GROUP BY b_8
ORDER BY qt_vezes DESC;

SELECT
  b_9,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_bolas
WHERE ltf_qt = 15
GROUP BY b_9
ORDER BY qt_vezes DESC;


SELECT
  b_10,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_bolas
WHERE ltf_qt = 15
GROUP BY b_10
ORDER BY qt_vezes DESC;

SELECT
  b_11,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_bolas
WHERE ltf_qt = 15
GROUP BY b_11
ORDER BY qt_vezes DESC;

SELECT
  b_12,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_bolas
WHERE ltf_qt = 15
GROUP BY b_12
ORDER BY qt_vezes DESC;

SELECT
  b_13,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_bolas
WHERE ltf_qt = 15
GROUP BY b_13
ORDER BY qt_vezes DESC;

SELECT
  b_14,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_bolas
WHERE ltf_qt = 15
GROUP BY b_14
ORDER BY qt_vezes DESC;

SELECT
  b_15,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_bolas
WHERE ltf_qt = 15
GROUP BY b_15
ORDER BY qt_vezes DESC;

SELECT ltf_bolas.*
FROM lotofacil.lotofacil_diferenca_entre_bolas ltf_dif, lotofacil.lotofacil_bolas ltf_bolas,
  lotofacil.lotofacil_id
WHERE ltf_bolas.ltf_id = ltf_dif.ltf_id
      AND ltf_bolas.ltf_id = lotofacil.lotofacil_id.ltf_id
      AND ltf_dif.ltf_id = lotofacil.lotofacil_id.ltf_id
      AND qt_alt = 7
      AND qt_dif_1 = 10


SELECT
  ltf_bolas.*,
  concurso_soma_frequencia_bolas
FROM lotofacil.lotofacil_bolas ltf_bolas, lotofacil.lotofacil_num_bolas_frequencia_concurso
WHERE ltf_bolas.ltf_id = lotofacil_num_bolas_frequencia_concurso.ltf_id
      AND ltf_bolas.ltf_qt = 15
ORDER BY concurso_soma_frequencia_bolas DESC;


DELETE FROM lotofacil.lotofacil_num_bolas_concurso;
INSERT INTO lotofacil.lotofacil_num_bolas_concurso (ltf_id,
                                                    ltf_qt,
                                                    concurso,
                                                    concurso_soma_frequencia_bolas)
  SELECT
    ltf_id,
    ltf_qt,
    concurso_final,
    concurso_soma_frequencia_bolas
  FROM lotofacil.lotofacil_num_bolas_frequencia_concurso
  ORDER BY ltf_id, ltf_qt;


SELECT
  b_6,
  b_7,
  b_8,
  b_9,
  b_10,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_resultado_bolas
GROUP BY b_6, b_7, b_8, b_9, b_10
ORDER BY qt_vezes DESC;

SELECT
  b_6,
  b_7,
  b_8,
  b_9,
  b_10,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_resultado_bolas
GROUP BY b_6, b_7, b_8, b_9, b_10
ORDER BY qt_vezes DESC;

SELECT
  b_6,
  b_7,
  b_8,
  b_9,
  b_10,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_resultado_bolas
GROUP BY b_6, b_7, b_8, b_9, b_10
ORDER BY qt_vezes DESC;

SELECT
  b_6,
  b_7,
  b_8,
  b_9,
  b_10,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_resultado_bolas
GROUP BY b_6, b_7, b_8, b_9, b_10
ORDER BY qt_vezes DESC;


SELECT
  b_6,
  b_7,
  b_8,
  b_9,
  b_10,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_resultado_bolas
GROUP BY b_6, b_7, b_8, b_9, b_10
ORDER BY qt_vezes DESC;

SELECT
  b_6,
  b_7,
  b_8,
  b_9,
  b_10,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_bolas
WHERE ltf_qt = 15
GROUP BY b_6, b_7, b_8, b_9, b_10
ORDER BY qt_vezes DESC;


SELECT
  b_11,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_resultado_bolas
GROUP BY b_11
ORDER BY qt_vezes DESC;

SELECT
  b_11,
  b_12,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_resultado_bolas
GROUP BY b_11, b_12
ORDER BY qt_vezes DESC;


SELECT
  b_11,
  b_12,
  b_13,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_resultado_bolas
GROUP BY b_11, b_12, b_13
ORDER BY qt_vezes DESC;


SELECT
  b_11,
  b_12,
  b_13,
  b_14,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_resultado_bolas
GROUP BY b_11, b_12, b_13, b_14
ORDER BY qt_vezes DESC;


SELECT
  b_11,
  b_12,
  b_13,
  b_14,
  b_15,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_resultado_bolas
GROUP BY b_11, b_12, b_13, b_14, b_15
ORDER BY qt_vezes DESC;


SELECT
  b_14,
  b_15,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_resultado_bolas
GROUP BY b_14, b_15
ORDER BY qt_vezes DESC;

SELECT
  b_13,
  b_14,
  b_15,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_resultado_bolas
GROUP BY b_13, b_14, b_15
ORDER BY qt_vezes DESC;


SELECT
  b_12,
  b_13,
  b_14,
  b_15,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_resultado_bolas
GROUP BY b_12, b_13, b_14, b_15
ORDER BY qt_vezes DESC;


SELECT
  b1_a_b5_id,
  count(*) AS qt_vezes
FROM lotofacil.lotofacil_coluna_b
WHERE ltf_qt = 15
GROUP BY b1_a_b5_id
ORDER BY qt_vezes DESC;

Select ltf_a.novos_repetidos_id, count(*) as qt_vz
from lotofacil.lotofacil_id_novos_repetidos ltf_a
left join lotofacil.lotofacil_novos_repetidos ltf_b
  on ltf_a.novos_repetidos_id = ltf_b.ltf_id
where ltf_b.ltf_qt = 15
group by ltf_a.novos_repetidos_id;