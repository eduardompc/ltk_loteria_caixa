DROP VIEW IF EXISTS d_sorte.v_d_sorte_resultado_b1_qt_vz;
CREATE VIEW d_sorte.v_d_sorte_resultado_b1_qt_vz AS
  SELECT
    tabela_1.b_1,
    tabela_1.qt_vz AS d_sorte_qt,
    case when res_qt is null then 0 else res_qt end res_qt
  FROM (SELECT
          b_1,
          qt_vz
        FROM d_sorte.d_sorte_id_b1_qt_vz
        WHERE d_sorte_qt = 7) tabela_1
    LEFT JOIN (SELECT
                 b_1,
                 count(*) AS res_qt
               FROM d_sorte.d_sorte_resultado_bolas
               GROUP BY b_1) tabela_2
      ON tabela_1.b_1 = tabela_2.b_1
  order by res_qt desc, d_sorte_qt desc, b_1 asc;


DROP VIEW IF EXISTS d_sorte.v_d_sorte_resultado_b2_qt_vz;
CREATE VIEW d_sorte.v_d_sorte_resultado_b2_qt_vz AS
  SELECT
    tabela_1.b_2,
    tabela_1.qt_vz AS d_sorte_qt,
    case when res_qt is null then 0 else res_qt end res_qt
  FROM (SELECT
          b_2,
          qt_vz
        FROM d_sorte.d_sorte_id_b2_qt_vz
        WHERE d_sorte_qt = 7) tabela_1
    LEFT JOIN (SELECT
                 b_2,
                 count(*) AS res_qt
               FROM d_sorte.d_sorte_resultado_bolas
               GROUP BY b_2) tabela_2
      ON tabela_1.b_2 = tabela_2.b_2
  order by res_qt desc, d_sorte_qt desc, b_2 asc;


DROP VIEW IF EXISTS d_sorte.v_d_sorte_resultado_b3_qt_vz;
CREATE VIEW d_sorte.v_d_sorte_resultado_b3_qt_vz AS
  SELECT
    tabela_1.b_3,
    tabela_1.qt_vz AS d_sorte_qt,
    case when res_qt is null then 0 else res_qt end res_qt
  FROM (SELECT
          b_3,
          qt_vz
        FROM d_sorte.d_sorte_id_b3_qt_vz
        WHERE d_sorte_qt = 7) tabela_1
    LEFT JOIN (SELECT
                 b_3,
                 count(*) AS res_qt
               FROM d_sorte.d_sorte_resultado_bolas
               GROUP BY b_3) tabela_2
      ON tabela_1.b_3 = tabela_2.b_3
  order by res_qt desc, d_sorte_qt desc, b_3 asc;


DROP VIEW IF EXISTS d_sorte.v_d_sorte_resultado_b4_qt_vz;
CREATE VIEW d_sorte.v_d_sorte_resultado_b4_qt_vz AS
  SELECT
    tabela_1.b_4,
    tabela_1.qt_vz AS d_sorte_qt,
    case when res_qt is null then 0 else res_qt end res_qt
  FROM (SELECT
          b_4,
          qt_vz
        FROM d_sorte.d_sorte_id_b4_qt_vz
        WHERE d_sorte_qt = 7) tabela_1
    LEFT JOIN (SELECT
                 b_4,
                 count(*) AS res_qt
               FROM d_sorte.d_sorte_resultado_bolas
               GROUP BY b_4) tabela_2
      ON tabela_1.b_4 = tabela_2.b_4
  order by res_qt desc, d_sorte_qt desc, b_4 asc;



DROP VIEW IF EXISTS d_sorte.v_d_sorte_resultado_b5_qt_vz;
CREATE VIEW d_sorte.v_d_sorte_resultado_b5_qt_vz AS
  SELECT
    tabela_1.b_5,
    tabela_1.qt_vz AS d_sorte_qt,
    case when res_qt is null then 0 else res_qt end res_qt
  FROM (SELECT
          b_5,
          qt_vz
        FROM d_sorte.d_sorte_id_b5_qt_vz
        WHERE d_sorte_qt = 7) tabela_1
    LEFT JOIN (SELECT
                 b_5,
                 count(*) AS res_qt
               FROM d_sorte.d_sorte_resultado_bolas
               GROUP BY b_5) tabela_2
      ON tabela_1.b_5 = tabela_2.b_5
  order by res_qt desc, d_sorte_qt desc, b_5 asc;


DROP VIEW IF EXISTS d_sorte.v_d_sorte_resultado_b6_qt_vz;
CREATE VIEW d_sorte.v_d_sorte_resultado_b6_qt_vz AS
  SELECT
    tabela_1.b_6,
    tabela_1.qt_vz AS d_sorte_qt,
    case when res_qt is null then 0 else res_qt end res_qt
  FROM (SELECT
          b_6,
          qt_vz
        FROM d_sorte.d_sorte_id_b6_qt_vz
        WHERE d_sorte_qt = 7) tabela_1
    LEFT JOIN (SELECT
                 b_6,
                 count(*) AS res_qt
               FROM d_sorte.d_sorte_resultado_bolas
               GROUP BY b_6) tabela_2
      ON tabela_1.b_6 = tabela_2.b_6
  order by res_qt desc, d_sorte_qt desc, b_6 asc;


DROP VIEW IF EXISTS d_sorte.v_d_sorte_resultado_b7_qt_vz;
CREATE VIEW d_sorte.v_d_sorte_resultado_b7_qt_vz AS
  SELECT
    tabela_1.b_7,
    tabela_1.qt_vz AS d_sorte_qt,
    case when res_qt is null then 0 else res_qt end res_qt
  FROM (SELECT
          b_7,
          qt_vz
        FROM d_sorte.d_sorte_id_b7_qt_vz
        WHERE d_sorte_qt = 7) tabela_1
    LEFT JOIN (SELECT
                 b_7,
                 count(*) AS res_qt
               FROM d_sorte.d_sorte_resultado_bolas
               GROUP BY b_7) tabela_2
      ON tabela_1.b_7 = tabela_2.b_7
  order by res_qt desc, d_sorte_qt desc, b_7 asc;

