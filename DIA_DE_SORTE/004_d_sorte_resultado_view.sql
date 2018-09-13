DROP VIEW IF EXISTS d_sorte.v_dia_de_sorte_resultado_par_impar;
CREATE VIEW d_sorte.v_dia_de_sorte_resultado_par_impar
  AS
    SELECT
      tabela_a.par_impar_id,
      par,
      impar,
      case when tabela_b.qt_vz is null then 0 else tabela_b.qt_vz end d_sorte_qt,
      case when tabela_c.qt_vz is null then 0 else tabela_c.qt_vz end res_qt
    FROM d_sorte.d_sorte_id_par_impar tabela_a
      inner join d_sorte.d_sorte_id_par_impar_qt_vz tabela_b
      on tabela_a.par_impar_id = tabela_b.par_impar_id
      LEFT JOIN (SELECT
                   par_impar_id,
                   count(*) AS qt_vz
                 FROM d_sorte.d_sorte_resultado_id
                 GROUP BY par_impar_id) tabela_c
        ON tabela_b.par_impar_id = tabela_c.par_impar_id
    WHERE tabela_a.par_impar_qt = 7
    ORDER BY res_qt desc, par ASC, impar ASC;



DROP VIEW IF EXISTS d_sorte.v_dia_de_sorte_resultado_externo_interno;
CREATE VIEW d_sorte.v_dia_de_sorte_resultado_externo_interno
  AS
    SELECT
      tabela_a.ext_int_id,
      externo,
      interno,
      case when tabela_b.qt_vz is null then 0 else tabela_b.qt_vz end d_sorte_qt,
      case when tabela_c.qt_vz is null then 0 else tabela_c.qt_vz end res_qt
    FROM d_sorte.d_sorte_id_externo_interno tabela_a
      inner join d_sorte.d_sorte_id_externo_interno_qt_vz tabela_b
      on tabela_a.ext_int_id = tabela_b.ext_int_id
      LEFT JOIN (SELECT
                   ext_int_id,
                   count(*) AS qt_vz
                 FROM d_sorte.d_sorte_resultado_id
                 GROUP BY ext_int_id) tabela_c
        ON tabela_b.ext_int_id = tabela_c.ext_int_id
    WHERE tabela_a.ext_int_qt = 7
    order by res_qt DESC, d_sorte_qt DESC, externo ASC, interno ASC;


DROP VIEW IF EXISTS d_sorte.v_dia_de_sorte_resultado_primo_nao_primo;
CREATE VIEW d_sorte.v_dia_de_sorte_resultado_primo_nao_primo
  AS
    SELECT
      tabela_a.prm_id,
      primo,
      nao_primo,
      case when tabela_b.qt_vz is null then 0 else tabela_b.qt_vz end d_sorte_qt,
      case when tabela_c.qt_vz is null then 0 else tabela_c.qt_vz end res_qt
    FROM d_sorte.d_sorte_id_primo_nao_primo tabela_a
      inner join d_sorte.d_sorte_id_primo_nao_primo_qt_vz tabela_b
      on tabela_a.prm_id = tabela_b.prm_id
      LEFT JOIN (SELECT
                   prm_id,
                   count(*) AS qt_vz
                 FROM d_sorte.d_sorte_resultado_id
                 GROUP BY prm_id) tabela_c
        ON tabela_a.prm_id = tabela_c.prm_id
    WHERE tabela_a.prm_qt = 7
    order by res_qt DESC, d_sorte_qt DESC, primo ASC, nao_primo ASC;

DROP VIEW IF EXISTS d_sorte.v_dia_de_sorte_resultado_horizontal;
CREATE VIEW d_sorte.v_dia_de_sorte_resultado_horizontal
  AS
    SELECT
      tabela_a.hrz_id,
      hrz_1,
      hrz_2,
      hrz_3,
      hrz_4,
      hrz_5,
      case when tabela_b.qt_vz is null then 0 else tabela_b.qt_vz end d_sorte_qt,
      case when tabela_c.qt_vz is null then 0 else tabela_c.qt_vz end res_qt
    FROM d_sorte.d_sorte_id_horizontal tabela_a
      inner join d_sorte.d_sorte_id_horizontal_qt_vz tabela_b
      on tabela_a.hrz_id = tabela_b.hrz_id
      LEFT JOIN (SELECT
                   hrz_id,
                   count(*) AS qt_vz
                 FROM d_sorte.d_sorte_resultado_id
                 GROUP BY hrz_id) tabela_c
        ON tabela_b.hrz_id = tabela_c.hrz_id
    WHERE tabela_a.hrz_qt = 7
    order by res_qt DESC, d_sorte_qt DESC, hrz_1 ASC, hrz_2 ASC, hrz_3 ASC, hrz_4 ASC, hrz_5 ASC;

DROP VIEW IF EXISTS d_sorte.v_dia_de_sorte_resultado_vertical;
CREATE VIEW d_sorte.v_dia_de_sorte_resultado_vertical
  AS
    SELECT
      tabela_a.vrt_id,
      vrt_1,
      vrt_2,
      vrt_3,
      vrt_4,
      vrt_5,
      vrt_6,
      vrt_7,
      case when tabela_b.qt_vz is null then 0 else tabela_b.qt_vz end d_sorte_qt,
      case when tabela_c.qt_vz is null then 0 else tabela_c.qt_vz end res_qt
    FROM d_sorte.d_sorte_id_vertical tabela_a
      inner join d_sorte.d_sorte_id_vertical_qt_vz tabela_b
      on tabela_a.vrt_id = tabela_b.vrt_id
      LEFT JOIN (SELECT
                   vrt_id,
                   count(*) AS qt_vz
                 FROM d_sorte.d_sorte_resultado_id
                 GROUP BY vrt_id) tabela_c
        ON tabela_b.vrt_id = tabela_c.vrt_id
    WHERE tabela_a.vrt_qt = 7
    order by res_qt DESC, d_sorte_qt DESC, vrt_1 ASC, vrt_2 ASC, vrt_3 ASC, vrt_4 ASC, vrt_5 ASC, vrt_6 ASC, vrt_7 ASC;


DROP VIEW IF EXISTS d_sorte.v_dia_de_sorte_resultado_diagonal_esquerda;
CREATE VIEW d_sorte.v_dia_de_sorte_resultado_diagonal_esquerda
  AS
    SELECT
      tabela_a.dge_id,
      dge_1,
      dge_2,
      dge_3,
      dge_4,
      dge_5,
      dge_6,
      dge_7,
      case when tabela_b.qt_vz is null then 0 else tabela_b.qt_vz end d_sorte_qt,
      case when tabela_c.qt_vz is null then 0 else tabela_c.qt_vz end res_qt
    FROM d_sorte.d_sorte_id_diagonal_esquerda tabela_a
      inner join d_sorte.d_sorte_id_diagonal_esquerda_qt_vz tabela_b
      on tabela_a.dge_id = tabela_b.dge_id
      LEFT JOIN (SELECT
                   dge_id,
                   count(*) AS qt_vz
                 FROM d_sorte.d_sorte_resultado_id
                 GROUP BY dge_id) tabela_c
        ON tabela_a.dge_id = tabela_c.dge_id
    WHERE tabela_a.dge_qt = 7
    order by res_qt DESC, d_sorte_qt DESC, dge_1 ASC, dge_2 ASC, dge_3 ASC, dge_4 ASC, dge_5 ASC, dge_6 ASC, dge_7 ASC;


DROP VIEW IF EXISTS d_sorte.v_dia_de_sorte_resultado_diagonal_direita;
CREATE VIEW d_sorte.v_dia_de_sorte_resultado_diagonal_direita
  AS
    SELECT
      tabela_a.dgd_id,
      dgd_1,
      dgd_2,
      dgd_3,
      dgd_4,
      dgd_5,
      dgd_6,
      dgd_7,
      case when tabela_b.qt_vz is null then 0 else tabela_b.qt_vz end d_sorte_qt,
      case when tabela_c.qt_vz is null then 0 else tabela_c.qt_vz end res_qt
    FROM d_sorte.d_sorte_id_diagonal_direita tabela_a
      inner join d_sorte.d_sorte_id_diagonal_direita_qt_vz tabela_b
      on tabela_a.dgd_id = tabela_b.dgd_id
      LEFT JOIN (SELECT
                   dgd_id,
                   count(*) AS qt_vz
                 FROM d_sorte.d_sorte_resultado_id
                 GROUP BY dgd_id) tabela_c
        ON tabela_b.dgd_id = tabela_c.dgd_id
    WHERE tabela_a.dgd_qt = 7
    order by res_qt DESC, d_sorte_qt DESC, dgd_1 ASC, dgd_2 ASC, dgd_3 ASC, dgd_4 ASC, dgd_5 ASC, dgd_6 ASC, dgd_7 ASC;

DROP VIEW IF EXISTS d_sorte.v_dia_de_sorte_resultado_quadrante;
CREATE VIEW d_sorte.v_dia_de_sorte_resultado_quadrante
  AS
    SELECT
      tabela_a.qd_id,
      qd_1,
      qd_2,
      qd_3,
      qd_4,
      case when tabela_b.qt_vz is null then 0 else tabela_b.qt_vz end d_sorte_qt,
      case when tabela_c.qt_vz is null then 0 else tabela_c.qt_vz end res_qt
    FROM d_sorte.d_sorte_id_quadrante tabela_a
      inner join d_sorte.d_sorte_id_quadrante_qt_vz tabela_b
      on tabela_a.qd_id = tabela_b.qd_id
      LEFT JOIN (SELECT
                   qd_id,
                   count(*) AS qt_vz
                 FROM d_sorte.d_sorte_resultado_id
                 GROUP BY qd_id) tabela_c
        ON tabela_b.qd_id = tabela_c.qd_id
    WHERE tabela_a.qd_qt = 7
    order by res_qt DESC, d_sorte_qt DESC, qd_1 ASC, qd_2 ASC, qd_3 ASC, qd_4 ASC;

DROP VIEW IF EXISTS d_sorte.v_dia_de_sorte_resultado_esquerda_direita;
CREATE VIEW d_sorte.v_dia_de_sorte_resultado_esquerda_direita
  AS
    SELECT
      tabela_a.esq_dir_id,
      esq,
      dir,
      case when tabela_b.qt_vz is null then 0 else tabela_b.qt_vz end d_sorte_qt,
      case when tabela_c.qt_vz is null then 0 else tabela_c.qt_vz end res_qt
    FROM d_sorte.d_sorte_id_esquerda_direita tabela_a
      inner join d_sorte.d_sorte_id_esquerda_direita_qt_vz tabela_b
      on tabela_a.esq_dir_id = tabela_b.esq_dir_id
      LEFT JOIN (SELECT
                   esq_dir_id,
                   count(*) AS qt_vz
                 FROM d_sorte.d_sorte_resultado_id
                 GROUP BY esq_dir_id) tabela_c
        ON tabela_b.esq_dir_id = tabela_c.esq_dir_id
    WHERE tabela_a.esq_dir_qt = 7
    order by res_qt DESC, d_sorte_qt DESC, esq ASC, dir ASC;

DROP VIEW IF EXISTS d_sorte.v_dia_de_sorte_resultado_superior_inferior;
CREATE VIEW d_sorte.v_dia_de_sorte_resultado_superior_inferior
  AS
    SELECT
      tabela_a.sup_inf_id,
      sup,
      inf,
      case when tabela_b.qt_vz is null then 0 else tabela_b.qt_vz end d_sorte_qt,
      case when tabela_c.qt_vz is null then 0 else tabela_c.qt_vz end res_qt
    FROM d_sorte.d_sorte_id_superior_inferior tabela_a
      inner join d_sorte.d_sorte_id_superior_inferior_qt_vz tabela_b
      on tabela_a.sup_inf_id = tabela_b.sup_inf_id
      LEFT JOIN (SELECT
                   sup_inf_id,
                   count(*) AS qt_vz
                 FROM d_sorte.d_sorte_resultado_id
                 GROUP BY sup_inf_id) tabela_c
        ON tabela_b.sup_inf_id = tabela_c.sup_inf_id
    WHERE tabela_a.sup_inf_qt = 7
    order by res_qt DESC, d_sorte_qt DESC, sup ASC, inf ASC;

DROP VIEW IF EXISTS d_sorte.v_dia_de_sorte_resultado_dezena;
CREATE VIEW d_sorte.v_dia_de_sorte_resultado_dezena
  AS
    SELECT
      tabela_a.dz_id,
      dz_0,
      dz_1,
      dz_2,
      dz_3,
      case when tabela_b.qt_vz is null then 0 else tabela_b.qt_vz end d_sorte_qt,
      case when tabela_c.qt_vz is null then 0 else tabela_c.qt_vz end res_qt
    FROM d_sorte.d_sorte_id_dezena tabela_a
      inner join d_sorte.d_sorte_id_dezena_qt_vz tabela_b
      on tabela_a.dz_id = tabela_b.dz_id
      LEFT JOIN (SELECT
                   dz_id,
                   count(*) AS qt_vz
                 FROM d_sorte.d_sorte_resultado_id
                 GROUP BY dz_id) tabela_c
        ON tabela_a.dz_id = tabela_c.dz_id
    WHERE tabela_a.dz_qt = 7
    order by res_qt DESC, d_sorte_qt DESC, dz_0 asc, dz_1 ASC, dz_2 ASC, dz_3 ASC;

DROP VIEW IF EXISTS d_sorte.v_dia_de_sorte_resultado_unidade;
CREATE VIEW d_sorte.v_dia_de_sorte_resultado_unidade
  AS
    SELECT
      tabela_a.un_id,
      un_0,
      un_1,
      un_2,
      un_3,
      un_4,
      un_5,
      un_6,
      un_7,
      un_8,
      un_9,
      case when tabela_b.qt_vz is null then 0 else tabela_b.qt_vz end d_sorte_qt,
      case when tabela_c.qt_vz is null then 0 else tabela_c.qt_vz end res_qt
    FROM d_sorte.d_sorte_id_unidade tabela_a
      inner join d_sorte.d_sorte_id_unidade_qt_vz tabela_b
      on tabela_a.un_id = tabela_b.un_id
      LEFT JOIN (SELECT
                   un_id,
                   count(*) AS qt_vz
                 FROM d_sorte.d_sorte_resultado_id
                 GROUP BY un_id) tabela_c
        ON tabela_a.un_id = tabela_c.un_id
    WHERE tabela_a.un_qt = 7
    order by res_qt DESC, d_sorte_qt DESC, un_0 ASC, un_1 ASC, un_2 ASC, un_3 ASC, un_4 ASC, un_5 ASC, un_6 ASC, un_7 ASC, un_8 ASC, un_9 ASC;

DROP VIEW IF EXISTS d_sorte.v_dia_de_sorte_resultado_algarismo;
CREATE VIEW d_sorte.v_dia_de_sorte_resultado_algarismo
  AS
    SELECT
      tabela_a.alg_id,
      alg_0,
      alg_1,
      alg_2,
      alg_3,
      alg_4,
      alg_5,
      alg_6,
      alg_7,
      alg_8,
      alg_9,
      case when tabela_b.qt_vz is null then 0 else tabela_b.qt_vz end d_sorte_qt,
      case when tabela_c.qt_vz is null then 0 else tabela_c.qt_vz end res_qt
    FROM d_sorte.d_sorte_id_algarismo tabela_a
      INNER JOIN d_sorte.d_sorte_id_algarismo_qt_vz tabela_b
      on tabela_a.alg_id = tabela_b.alg_id
      LEFT JOIN (SELECT
                   alg_id,
                   count(*) AS qt_vz
                 FROM d_sorte.d_sorte_resultado_id
                 GROUP BY alg_id) tabela_c
        ON tabela_b.alg_id = tabela_c.alg_id
    order by res_qt DESC, d_sorte_qt DESC, alg_0 ASC, alg_1 ASC, alg_2 ASC, alg_3 ASC, alg_4 ASC, alg_5 ASC, alg_6 ASC, alg_7 ASC, alg_8 ASC, alg_9 ASC;

Drop view if exists d_sorte.v_dia_de_sorte_resultado_soma_bolas;
CREATE VIEW d_sorte.v_dia_de_sorte_resultado_soma_bolas
  AS
    SELECT
      tabela_a.sm_bolas_id,
      sm_bolas,
      case when tabela_b.qt_vz is null then 0 else tabela_b.qt_vz end d_sorte_qt,
      case when tabela_c.qt_vz is null then 0 else tabela_c.qt_vz end res_qt
    FROM d_sorte.d_sorte_id_soma_bolas tabela_a
      INNER JOIN d_sorte.d_sorte_id_soma_bolas_qt_vz tabela_b
      on tabela_a.sm_bolas_id = tabela_b.sm_bolas_id
      LEFT JOIN (SELECT
                   sm_bolas_id,
                   count(*) AS qt_vz
                 FROM d_sorte.d_sorte_resultado_id
                 GROUP BY sm_bolas_id) tabela_c
        ON tabela_b.sm_bolas_id = tabela_c.sm_bolas_id
    order by res_qt DESC, d_sorte_qt DESC, sm_bolas ASC;

Drop view if exists d_sorte.v_dia_de_sorte_resultado_soma_algarismo;
CREATE VIEW d_sorte.v_dia_de_sorte_resultado_soma_algarismo
  AS
    SELECT
      tabela_a.sm_alg_id,
      sm_alg,
      case when tabela_b.qt_vz is null then 0 else tabela_b.qt_vz end d_sorte_qt,
      case when tabela_c.qt_vz is null then 0 else tabela_c.qt_vz end res_qt
    FROM d_sorte.d_sorte_id_soma_algarismo tabela_a
      inner join d_sorte.d_sorte_id_soma_algarismo_qt_vz tabela_b
      on tabela_a.sm_alg_id = tabela_b.sm_alg_id
      LEFT JOIN (SELECT
                   sm_alg_id,
                   count(*) AS qt_vz
                 FROM d_sorte.d_sorte_resultado_id
                 GROUP BY sm_alg_id) tabela_c
        ON tabela_a.sm_alg_id = tabela_c.sm_alg_id
    order by res_qt DESC, d_sorte_qt DESC, sm_alg ASC;



