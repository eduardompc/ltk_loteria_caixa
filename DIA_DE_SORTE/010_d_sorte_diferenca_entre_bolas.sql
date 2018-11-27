/**
  Descrição:    Tabela que armazena a diferença de uma bola em relação a bola antecessora.
  Autor   :     Fábio Moura de Oliveira
  Data    :     8/11/2018.

  Por que criei esta tabela???
    O objetivo é identificar combinações onde as bolas podem formar algum tipo de progressão
    aritmética, geométrica, ou que as bolas tem algum tipo de relação, por exemplo,
    nas combinações abaixo:
    1, 2,  3,  4,  5,  6, 7,
    4, 8, 12, 16, 20, 24, 28
    Existe, algo comum, cada combinação forma uma progressão aritmética, geralmente,
    estas combinações não sai facilmente, assim, em um programa analisador, podemos
    excluir tais combinações.
    Então, usando a tabela 'd_sorte_diferenca_entre_bolas', podemos identificar isto
    facilmente, veja, a diferença entre as bolas:
    1, 1, 1, 1, 1, 1
    4, 4, 4, 4, 4, 4

  Pra cada combinação possível no jogo dia de sorte, as bolas estão disposta
  em ordem crescente, por exemplo: 1, 2, 3, 4, 5, 6, 7.
  Então, na tabela 'd_sorte_diferenca_entre_bolas', iremos armazenar pra cada
  combinação, a diferença entre a bola atual e a antecessora, partindo da menor
  bola até a maior bola, como a primeira bola que é a menor não tem uma antecessora
  iremos começar da segunda bola, então, dada a combinação do exemplo acima:

    1, 2, 3, 4, 5, 6, 7,

  a diferença entre pra cada bola e a antecessora é:

     1, 1, 1, 1, 1, 1, ou seja:

    2 - 1 => 1
    3 - 2 => 1
    4 - 3 => 1
    5 - 4 => 1
    6 - 5 => 1
    7 - 6 => 1

    O propósito desta tabela é identificar combinações onde o conjunto forma
    uma sequência, por exemplo, no exemplo acima, a combinação: 1, 2, 3, 4, 5, 6, 7,
    cada bola é obtida, somando mais 1, geralmente, em jogos lotéricos, estes tipos
    de combinações são raras.
    1 + 1 = 2
    2 + 1 = 3
    3 + 1 = 4
    4 + 1 = 5
    5 + 1 = 6
    6 + 1 = 7

    Abaixo, irei descrever cada campo da tabela:

    d_sorte_id  =>  Identificador exclusivo de cada combinação do jogo dia_de_sorte.
                    Observe que várias tabelas tem este campo 'd_sorte_id', ou seja,
                    serve pra relacionar a tabela 'diferenca_entre_bolas' com todas
                    as outras tabelas do banco de dados.

    Abaixo, são os campos que armazena as diferenças entre bolas.
    Os campos com prefixo 'df_' e sufixo '_a', armazena as diferenças,
    há outros campos com prefixo 'df_' e sufixos: '_b', '_c', '_d', '_e', e '_f'
    que são a diferença da diferença
    No sufixo '_a', haverá 6 diferenças, pois, fazemos a diferença entre o segundo
    pra o primeiro, o terceiro pra o segundo, como há 7 bolas, restará somente
    6 diferenças.
    No sufixo '_b', teremos 5 diferenças.
    No sufixo '_c', teremos 4 diferenças.
    No sufixo '_d', teremos 3 diferenças.
    No sufixo '_e', teremos 2 diferenças.
    No sufixo '_f', teremos 1 diferença.

    df_1_a  => Diferença entre b_2 e b_1
    df_2_a  => Diferença entre b_3 e b_2
    df_3_a  => Diferença entre b_4 e b_3
    df_4_a  => Diferença entre b_5 e b_4
    df_5_a  => Diferença entre b_6 e b_5
    df_6_a  => Diferença entre b_7 e b_6

    df_1_b  => Diferença entre df_2_a e df_1_a
    df_2_b  => Diferença entre df_3_a e df_2_a
    df_3_b  => Diferença entre df_4_a e df_3_a
    df_4_b  => Diferença entre df_5_a e df_4_a
    df_5_b  => Diferença entre df_6_a e df_5_a




 */



Drop table if exists d_sorte.d_sorte_diferenca_entre_bolas;

Create table d_sorte.d_sorte_diferenca_entre_bolas(
  d_sorte_id numeric not null PRIMARY KEY,
  df_1_a smallint not null,
  df_2_a smallint not null,
  df_3_a smallint not null,
  df_4_a smallint not null,
  df_5_a smallint not null,
  df_6_a smallint not null,
  df_1_b smallint not null,
  df_2_b smallint not null,
  df_3_b smallint not null,
  df_4_b smallint not null,
  df_5_b smallint not null,
  df_1_c smallint not null,
  df_2_c smallint not null,
  df_3_c smallint not null,
  df_4_c smallint not null,
  df_1_d smallint not null,
  df_2_d smallint not null,
  df_3_d smallint not null,
  df_1_e smallint not null,
  df_2_e smallint not null,
  df_1_f smallint not null,
  sm_df_a smallint not null,
  sm_df_b smallint not null,
  sm_df_c smallint not null,
  sm_df_d smallint not null,
  sm_df_e smallint not null,
  sm_df_f smallint not null,
  sm_total smallint not null,

  df_menor smallint not null,
  df_maior smallint not null,
  df_menor_maior smallint not null,

  df_par	smallint not null,
  df_impar smallint not null,

  qt_df_1	smallint not null,
  qt_df_2	smallint not null,
  qt_df_3	smallint not null,
  qt_df_4	smallint not null,
  qt_df_5	smallint not null,
  qt_df_6	smallint not null,
  qt_df_7	smallint not null,
  qt_df_8	smallint not null,
  qt_df_9	smallint not null,
  qt_df_10	smallint not null,
  qt_df_11	smallint not null,
  qt_df_12	smallint not null,
  qt_df_13	smallint not null,
  qt_df_14	smallint not null,
  qt_df_15	smallint not null,
  qt_df_16	smallint not null,
  qt_df_17	smallint not null,
  qt_df_18	smallint not null,
  qt_df_19	smallint not null,
  qt_df_20	smallint not null,
  qt_df_21	smallint not null,
  qt_df_22	smallint not null,
  qt_df_23	smallint not null,
  qt_df_24	smallint not null,
  qt_df_25	smallint not null
);


COPY d_sorte.d_sorte_diferenca_entre_bolas (d_sorte_id, df_1_a, df_2_a, df_3_a, df_4_a, df_5_a, df_6_a, df_1_b, df_2_b, df_3_b, df_4_b, df_5_b, df_1_c, df_2_c, df_3_c, df_4_c, df_1_d, df_2_d, df_3_d, df_1_e, df_2_e, df_1_f, sm_df_a, sm_df_b, sm_df_c, sm_df_d, sm_df_e, sm_df_f, sm_total, df_menor, df_maior, df_menor_maior, df_par, df_impar, qt_df_1, qt_df_2, qt_df_3, qt_df_4, qt_df_5, qt_df_6, qt_df_7, qt_df_8, qt_df_9, qt_df_10, qt_df_11, qt_df_12, qt_df_13, qt_df_14, qt_df_15, qt_df_16, qt_df_17, qt_df_18, qt_df_19, qt_df_20, qt_df_21, qt_df_22, qt_df_23, qt_df_24, qt_df_25) FROM '/tmp/d_sorte_diferenca_entre_bolas.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );

create index d_sorte_diferenca_entre_bolas_idx_1 on d_sorte.d_sorte_diferenca_entre_bolas(df_1_a);
create index d_sorte_diferenca_entre_bolas_idx_2 on d_sorte.d_sorte_diferenca_entre_bolas(df_2_a);
create index d_sorte_diferenca_entre_bolas_idx_3 on d_sorte.d_sorte_diferenca_entre_bolas(df_3_a);
create index d_sorte_diferenca_entre_bolas_idx_4 on d_sorte.d_sorte_diferenca_entre_bolas(df_4_a);
create index d_sorte_diferenca_entre_bolas_idx_5 on d_sorte.d_sorte_diferenca_entre_bolas(df_5_a);
create index d_sorte_diferenca_entre_bolas_idx_6 on d_sorte.d_sorte_diferenca_entre_bolas(df_6_a);

create index d_sorte_diferenca_entre_bolas_idx_7 on d_sorte.d_sorte_diferenca_entre_bolas(df_1_b);
create index d_sorte_diferenca_entre_bolas_idx_8 on d_sorte.d_sorte_diferenca_entre_bolas(df_2_b);
create index d_sorte_diferenca_entre_bolas_idx_9 on d_sorte.d_sorte_diferenca_entre_bolas(df_3_b);
create index d_sorte_diferenca_entre_bolas_idx_10 on d_sorte.d_sorte_diferenca_entre_bolas(df_4_b);
create index d_sorte_diferenca_entre_bolas_idx_11 on d_sorte.d_sorte_diferenca_entre_bolas(df_5_b);

create index d_sorte_diferenca_entre_bolas_idx_12 on d_sorte.d_sorte_diferenca_entre_bolas(df_1_c);
create index d_sorte_diferenca_entre_bolas_idx_13 on d_sorte.d_sorte_diferenca_entre_bolas(df_2_c);
create index d_sorte_diferenca_entre_bolas_idx_14 on d_sorte.d_sorte_diferenca_entre_bolas(df_3_c);
create index d_sorte_diferenca_entre_bolas_idx_15 on d_sorte.d_sorte_diferenca_entre_bolas(df_4_c);

create index d_sorte_diferenca_entre_bolas_idx_16 on d_sorte.d_sorte_diferenca_entre_bolas(df_1_d);
create index d_sorte_diferenca_entre_bolas_idx_17 on d_sorte.d_sorte_diferenca_entre_bolas(df_2_d);
create index d_sorte_diferenca_entre_bolas_idx_18 on d_sorte.d_sorte_diferenca_entre_bolas(df_3_d);

create index d_sorte_diferenca_entre_bolas_idx_19 on d_sorte.d_sorte_diferenca_entre_bolas(df_1_e);
create index d_sorte_diferenca_entre_bolas_idx_20 on d_sorte.d_sorte_diferenca_entre_bolas(df_2_e);

create index d_sorte_diferenca_entre_bolas_idx_21 on d_sorte.d_sorte_diferenca_entre_bolas(df_1_f);

create index d_sorte_diferenca_entre_bolas_idx_22 on d_sorte.d_sorte_diferenca_entre_bolas(sm_df_a);
create index d_sorte_diferenca_entre_bolas_idx_23 on d_sorte.d_sorte_diferenca_entre_bolas(sm_df_b);
create index d_sorte_diferenca_entre_bolas_idx_24 on d_sorte.d_sorte_diferenca_entre_bolas(sm_df_c);
create index d_sorte_diferenca_entre_bolas_idx_25 on d_sorte.d_sorte_diferenca_entre_bolas(sm_df_d);
create index d_sorte_diferenca_entre_bolas_idx_26 on d_sorte.d_sorte_diferenca_entre_bolas(sm_df_e);
create index d_sorte_diferenca_entre_bolas_idx_27 on d_sorte.d_sorte_diferenca_entre_bolas(sm_df_f);

create index d_sorte_diferenca_entre_bolas_idx_28 on d_sorte.d_sorte_diferenca_entre_bolas(df_menor);
create index d_sorte_diferenca_entre_bolas_idx_29 on d_sorte.d_sorte_diferenca_entre_bolas(df_maior);
create index d_sorte_diferenca_entre_bolas_idx_30 on d_sorte.d_sorte_diferenca_entre_bolas(df_menor_maior);
create index d_sorte_diferenca_entre_bolas_idx_31 on d_sorte.d_sorte_diferenca_entre_bolas(df_par);
create index d_sorte_diferenca_entre_bolas_idx_32 on d_sorte.d_sorte_diferenca_entre_bolas(df_impar);

SELECT
  d_sorte_a.b_1,
  d_sorte_a.b_2,
  d_sorte_a.b_3,
  d_sorte_a.b_4,
  d_sorte_a.b_5,
  d_sorte_a.b_6,
  d_sorte_a.b_7,

  d_sorte_b.*

FROM d_sorte.d_sorte_bolas d_sorte_a, d_sorte.d_sorte_diferenca_entre_bolas d_sorte_b
WHERE d_sorte_a.d_sorte_id = d_sorte_b.d_sorte_id
  and d_sorte_a.d_sorte_id = 5000


order by d_sorte_a.d_sorte_id asc;



SELECT
  d_sorte_b.concurso,
  d_sorte_a.b_1,
  d_sorte_a.b_2,
  d_sorte_a.b_3,
  d_sorte_a.b_4,
  d_sorte_a.b_5,
  d_sorte_a.b_6,
  d_sorte_a.b_7,
  d_sorte_c.*

  from d_sorte.d_sorte_resultado_bolas d_sorte_a, d_sorte.d_sorte_resultado_id d_sorte_b,
    d_sorte.d_sorte_diferenca_entre_bolas d_sorte_c
where d_sorte_a.concurso = d_sorte_b.concurso
and d_sorte_b.d_sorte_id = d_sorte_c.d_sorte_id;

DROP VIEW IF EXISTS d_sorte.v_d_sorte_diferenca_entre_bolas_df_1_a;
CREATE VIEW d_sorte.v_d_sorte_diferenca_entre_bolas_df_1_a
  AS
    SELECT
      ltf_a.df_1_a,
      ltf_a.qt_vz cmb_qt_vz,
      case when ltf_b.qt_vz is null then 0 else ltf_b.qt_vz end res_qt
    FROM (SELECT
            df_1_a,
            count(*) AS qt_vz
          FROM
            d_sorte.d_sorte_diferenca_entre_bolas
          GROUP BY df_1_a
         ) ltf_a
      LEFT JOIN (
                  SELECT
                    df_1_a,
                    count(*) AS qt_vz
                  FROM
                    d_sorte.d_sorte_diferenca_entre_bolas ltf_c,
                    d_sorte.d_sorte_resultado_id ltf_d
                    where ltf_c.d_sorte_id = ltf_d.d_sorte_id
                  GROUP BY df_1_a
                ) ltf_b
        ON ltf_a.df_1_a = ltf_b.df_1_a
    ORDER BY res_qt DESC, cmb_qt_vz DESC;


DROP VIEW IF EXISTS d_sorte.v_d_sorte_diferenca_entre_bolas_df_2_a;
CREATE VIEW d_sorte.v_d_sorte_diferenca_entre_bolas_df_2_a
  AS
    SELECT
      ltf_a.df_2_a,
      ltf_a.qt_vz cmb_qt_vz,
      case when ltf_b.qt_vz is null then 0 else ltf_b.qt_vz end res_qt
    FROM (SELECT
            df_2_a,
            count(*) AS qt_vz
          FROM
            d_sorte.d_sorte_diferenca_entre_bolas
          GROUP BY df_2_a
         ) ltf_a
      LEFT JOIN (
                  SELECT
                    df_2_a,
                    count(*) AS qt_vz
                  FROM
                    d_sorte.d_sorte_diferenca_entre_bolas ltf_c,
                    d_sorte.d_sorte_resultado_id ltf_d
                    where ltf_c.d_sorte_id = ltf_d.d_sorte_id
                  GROUP BY df_2_a
                ) ltf_b
        ON ltf_a.df_2_a = ltf_b.df_2_a
    ORDER BY res_qt DESC, cmb_qt_vz DESC;


DROP VIEW IF EXISTS d_sorte.v_d_sorte_diferenca_entre_bolas_df_3_a;
CREATE VIEW d_sorte.v_d_sorte_diferenca_entre_bolas_df_3_a
  AS
    SELECT
      ltf_a.df_3_a,
      ltf_a.qt_vz cmb_qt_vz,
      case when ltf_b.qt_vz is null then 0 else ltf_b.qt_vz end res_qt
    FROM (SELECT
            df_3_a,
            count(*) AS qt_vz
          FROM
            d_sorte.d_sorte_diferenca_entre_bolas
          GROUP BY df_3_a
         ) ltf_a
      LEFT JOIN (
                  SELECT
                    df_3_a,
                    count(*) AS qt_vz
                  FROM
                    d_sorte.d_sorte_diferenca_entre_bolas ltf_c,
                    d_sorte.d_sorte_resultado_id ltf_d
                    where ltf_c.d_sorte_id = ltf_d.d_sorte_id
                  GROUP BY df_3_a
                ) ltf_b
        ON ltf_a.df_3_a = ltf_b.df_3_a
    ORDER BY res_qt DESC, cmb_qt_vz DESC;


DROP VIEW IF EXISTS d_sorte.v_d_sorte_diferenca_entre_bolas_df_4_a;
CREATE VIEW d_sorte.v_d_sorte_diferenca_entre_bolas_df_4_a
  AS
    SELECT
      ltf_a.df_4_a,
      ltf_a.qt_vz cmb_qt_vz,
      case when ltf_b.qt_vz is null then 0 else ltf_b.qt_vz end res_qt
    FROM (SELECT
            df_4_a,
            count(*) AS qt_vz
          FROM
            d_sorte.d_sorte_diferenca_entre_bolas
          GROUP BY df_4_a
         ) ltf_a
      LEFT JOIN (
                  SELECT
                    df_4_a,
                    count(*) AS qt_vz
                  FROM
                    d_sorte.d_sorte_diferenca_entre_bolas ltf_c,
                    d_sorte.d_sorte_resultado_id ltf_d
                    where ltf_c.d_sorte_id = ltf_d.d_sorte_id
                  GROUP BY df_4_a
                ) ltf_b
        ON ltf_a.df_4_a = ltf_b.df_4_a
    ORDER BY res_qt DESC, cmb_qt_vz DESC;


DROP VIEW IF EXISTS d_sorte.v_d_sorte_diferenca_entre_bolas_df_5_a;
CREATE VIEW d_sorte.v_d_sorte_diferenca_entre_bolas_df_5_a
  AS
    SELECT
      ltf_a.df_5_a,
      ltf_a.qt_vz cmb_qt_vz,
      case when ltf_b.qt_vz is null then 0 else ltf_b.qt_vz end res_qt
    FROM (SELECT
            df_5_a,
            count(*) AS qt_vz
          FROM
            d_sorte.d_sorte_diferenca_entre_bolas
          GROUP BY df_5_a
         ) ltf_a
      LEFT JOIN (
                  SELECT
                    df_5_a,
                    count(*) AS qt_vz
                  FROM
                    d_sorte.d_sorte_diferenca_entre_bolas ltf_c,
                    d_sorte.d_sorte_resultado_id ltf_d
                    where ltf_c.d_sorte_id = ltf_d.d_sorte_id
                  GROUP BY df_5_a
                ) ltf_b
        ON ltf_a.df_5_a = ltf_b.df_5_a
    ORDER BY res_qt DESC, cmb_qt_vz DESC;


DROP VIEW IF EXISTS d_sorte.v_d_sorte_diferenca_entre_bolas_df_6_a;
CREATE VIEW d_sorte.v_d_sorte_diferenca_entre_bolas_df_6_a
  AS
    SELECT
      ltf_a.df_6_a,
      ltf_a.qt_vz cmb_qt_vz,
      case when ltf_b.qt_vz is null then 0 else ltf_b.qt_vz end res_qt
    FROM (SELECT
            df_6_a,
            count(*) AS qt_vz
          FROM
            d_sorte.d_sorte_diferenca_entre_bolas
          GROUP BY df_6_a
         ) ltf_a
      LEFT JOIN (
                  SELECT
                    df_6_a,
                    count(*) AS qt_vz
                  FROM
                    d_sorte.d_sorte_diferenca_entre_bolas ltf_c,
                    d_sorte.d_sorte_resultado_id ltf_d
                    where ltf_c.d_sorte_id = ltf_d.d_sorte_id
                  GROUP BY df_6_a
                ) ltf_b
        ON ltf_a.df_6_a = ltf_b.df_6_a
    ORDER BY res_qt DESC, cmb_qt_vz DESC;


DROP VIEW IF EXISTS d_sorte.v_d_sorte_diferenca_entre_bolas_df_1_b;
CREATE VIEW d_sorte.v_d_sorte_diferenca_entre_bolas_df_1_b
  AS
    SELECT
      ltf_a.df_1_b,
      ltf_a.qt_vz cmb_qt_vz,
      case when ltf_b.qt_vz is null then 0 else ltf_b.qt_vz end res_qt
    FROM (SELECT
            df_1_b,
            count(*) AS qt_vz
          FROM
            d_sorte.d_sorte_diferenca_entre_bolas
          GROUP BY df_1_b
         ) ltf_a
      LEFT JOIN (
                  SELECT
                    df_1_b,
                    count(*) AS qt_vz
                  FROM
                    d_sorte.d_sorte_diferenca_entre_bolas ltf_c,
                    d_sorte.d_sorte_resultado_id ltf_d
                    where ltf_c.d_sorte_id = ltf_d.d_sorte_id
                  GROUP BY df_1_b
                ) ltf_b
        ON ltf_a.df_1_b = ltf_b.df_1_b
    ORDER BY res_qt DESC, cmb_qt_vz DESC;


DROP VIEW IF EXISTS d_sorte.v_d_sorte_diferenca_entre_bolas_df_2_b;
CREATE VIEW d_sorte.v_d_sorte_diferenca_entre_bolas_df_2_b
  AS
    SELECT
      ltf_a.df_2_b,
      ltf_a.qt_vz cmb_qt_vz,
      case when ltf_b.qt_vz is null then 0 else ltf_b.qt_vz end res_qt
    FROM (SELECT
            df_2_b,
            count(*) AS qt_vz
          FROM
            d_sorte.d_sorte_diferenca_entre_bolas
          GROUP BY df_2_b
         ) ltf_a
      LEFT JOIN (
                  SELECT
                    df_2_b,
                    count(*) AS qt_vz
                  FROM
                    d_sorte.d_sorte_diferenca_entre_bolas ltf_c,
                    d_sorte.d_sorte_resultado_id ltf_d
                    where ltf_c.d_sorte_id = ltf_d.d_sorte_id
                  GROUP BY df_2_b
                ) ltf_b
        ON ltf_a.df_2_b = ltf_b.df_2_b
    ORDER BY res_qt DESC, cmb_qt_vz DESC;


DROP VIEW IF EXISTS d_sorte.v_d_sorte_diferenca_entre_bolas_df_3_b;
CREATE VIEW d_sorte.v_d_sorte_diferenca_entre_bolas_df_3_b
  AS
    SELECT
      ltf_a.df_3_b,
      ltf_a.qt_vz cmb_qt_vz,
      case when ltf_b.qt_vz is null then 0 else ltf_b.qt_vz end res_qt
    FROM (SELECT
            df_3_b,
            count(*) AS qt_vz
          FROM
            d_sorte.d_sorte_diferenca_entre_bolas
          GROUP BY df_3_b
         ) ltf_a
      LEFT JOIN (
                  SELECT
                    df_3_b,
                    count(*) AS qt_vz
                  FROM
                    d_sorte.d_sorte_diferenca_entre_bolas ltf_c,
                    d_sorte.d_sorte_resultado_id ltf_d
                    where ltf_c.d_sorte_id = ltf_d.d_sorte_id
                  GROUP BY df_3_b
                ) ltf_b
        ON ltf_a.df_3_b = ltf_b.df_3_b
    ORDER BY res_qt DESC, cmb_qt_vz DESC;


DROP VIEW IF EXISTS d_sorte.v_d_sorte_diferenca_entre_bolas_df_4_b;
CREATE VIEW d_sorte.v_d_sorte_diferenca_entre_bolas_df_4_b
  AS
    SELECT
      ltf_a.df_4_b,
      ltf_a.qt_vz cmb_qt_vz,
      case when ltf_b.qt_vz is null then 0 else ltf_b.qt_vz end res_qt
    FROM (SELECT
            df_4_b,
            count(*) AS qt_vz
          FROM
            d_sorte.d_sorte_diferenca_entre_bolas
          GROUP BY df_4_b
         ) ltf_a
      LEFT JOIN (
                  SELECT
                    df_4_b,
                    count(*) AS qt_vz
                  FROM
                    d_sorte.d_sorte_diferenca_entre_bolas ltf_c,
                    d_sorte.d_sorte_resultado_id ltf_d
                    where ltf_c.d_sorte_id = ltf_d.d_sorte_id
                  GROUP BY df_4_b
                ) ltf_b
        ON ltf_a.df_4_b = ltf_b.df_4_b
    ORDER BY res_qt DESC, cmb_qt_vz DESC;


DROP VIEW IF EXISTS d_sorte.v_d_sorte_diferenca_entre_bolas_df_5_b;
CREATE VIEW d_sorte.v_d_sorte_diferenca_entre_bolas_df_5_b
  AS
    SELECT
      ltf_a.df_5_b,
      ltf_a.qt_vz cmb_qt_vz,
      case when ltf_b.qt_vz is null then 0 else ltf_b.qt_vz end res_qt
    FROM (SELECT
            df_5_b,
            count(*) AS qt_vz
          FROM
            d_sorte.d_sorte_diferenca_entre_bolas
          GROUP BY df_5_b
         ) ltf_a
      LEFT JOIN (
                  SELECT
                    df_5_b,
                    count(*) AS qt_vz
                  FROM
                    d_sorte.d_sorte_diferenca_entre_bolas ltf_c,
                    d_sorte.d_sorte_resultado_id ltf_d
                    where ltf_c.d_sorte_id = ltf_d.d_sorte_id
                  GROUP BY df_5_b
                ) ltf_b
        ON ltf_a.df_5_b = ltf_b.df_5_b
    ORDER BY res_qt DESC, cmb_qt_vz DESC;



DROP VIEW IF EXISTS d_sorte.v_d_sorte_diferenca_entre_bolas_df_1_c;
CREATE VIEW d_sorte.v_d_sorte_diferenca_entre_bolas_df_1_c
  AS
    SELECT
      ltf_a.df_1_c,
      ltf_a.qt_vz cmb_qt_vz,
      case when ltf_b.qt_vz is null then 0 else ltf_b.qt_vz end res_qt
    FROM (SELECT
            df_1_c,
            count(*) AS qt_vz
          FROM
            d_sorte.d_sorte_diferenca_entre_bolas
          GROUP BY df_1_c
         ) ltf_a
      LEFT JOIN (
                  SELECT
                    df_1_c,
                    count(*) AS qt_vz
                  FROM
                    d_sorte.d_sorte_diferenca_entre_bolas ltf_c,
                    d_sorte.d_sorte_resultado_id ltf_d
                    where ltf_c.d_sorte_id = ltf_d.d_sorte_id
                  GROUP BY df_1_c
                ) ltf_b
        ON ltf_a.df_1_c = ltf_b.df_1_c
    ORDER BY res_qt DESC, cmb_qt_vz DESC;


DROP VIEW IF EXISTS d_sorte.v_d_sorte_diferenca_entre_bolas_df_2_c;
CREATE VIEW d_sorte.v_d_sorte_diferenca_entre_bolas_df_2_c
  AS
    SELECT
      ltf_a.df_2_c,
      ltf_a.qt_vz cmb_qt_vz,
      case when ltf_b.qt_vz is null then 0 else ltf_b.qt_vz end res_qt
    FROM (SELECT
            df_2_c,
            count(*) AS qt_vz
          FROM
            d_sorte.d_sorte_diferenca_entre_bolas
          GROUP BY df_2_c
         ) ltf_a
      LEFT JOIN (
                  SELECT
                    df_2_c,
                    count(*) AS qt_vz
                  FROM
                    d_sorte.d_sorte_diferenca_entre_bolas ltf_c,
                    d_sorte.d_sorte_resultado_id ltf_d
                    where ltf_c.d_sorte_id = ltf_d.d_sorte_id
                  GROUP BY df_2_c
                ) ltf_b
        ON ltf_a.df_2_c = ltf_b.df_2_c
    ORDER BY res_qt DESC, cmb_qt_vz DESC;


DROP VIEW IF EXISTS d_sorte.v_d_sorte_diferenca_entre_bolas_df_3_c;
CREATE VIEW d_sorte.v_d_sorte_diferenca_entre_bolas_df_3_c
  AS
    SELECT
      ltf_a.df_3_c,
      ltf_a.qt_vz cmb_qt_vz,
      case when ltf_b.qt_vz is null then 0 else ltf_b.qt_vz end res_qt
    FROM (SELECT
            df_3_c,
            count(*) AS qt_vz
          FROM
            d_sorte.d_sorte_diferenca_entre_bolas
          GROUP BY df_3_c
         ) ltf_a
      LEFT JOIN (
                  SELECT
                    df_3_c,
                    count(*) AS qt_vz
                  FROM
                    d_sorte.d_sorte_diferenca_entre_bolas ltf_c,
                    d_sorte.d_sorte_resultado_id ltf_d
                    where ltf_c.d_sorte_id = ltf_d.d_sorte_id
                  GROUP BY df_3_c
                ) ltf_b
        ON ltf_a.df_3_c = ltf_b.df_3_c
    ORDER BY res_qt DESC, cmb_qt_vz DESC;


DROP VIEW IF EXISTS d_sorte.v_d_sorte_diferenca_entre_bolas_df_4_c;
CREATE VIEW d_sorte.v_d_sorte_diferenca_entre_bolas_df_4_c
  AS
    SELECT
      ltf_a.df_4_c,
      ltf_a.qt_vz cmb_qt_vz,
      case when ltf_b.qt_vz is null then 0 else ltf_b.qt_vz end res_qt
    FROM (SELECT
            df_4_c,
            count(*) AS qt_vz
          FROM
            d_sorte.d_sorte_diferenca_entre_bolas
          GROUP BY df_4_c
         ) ltf_a
      LEFT JOIN (
                  SELECT
                    df_4_c,
                    count(*) AS qt_vz
                  FROM
                    d_sorte.d_sorte_diferenca_entre_bolas ltf_c,
                    d_sorte.d_sorte_resultado_id ltf_d
                    where ltf_c.d_sorte_id = ltf_d.d_sorte_id
                  GROUP BY df_4_c
                ) ltf_b
        ON ltf_a.df_4_c = ltf_b.df_4_c
    ORDER BY res_qt DESC, cmb_qt_vz DESC;


DROP VIEW IF EXISTS d_sorte.v_d_sorte_diferenca_entre_bolas_df_1_d;
CREATE VIEW d_sorte.v_d_sorte_diferenca_entre_bolas_df_1_d
  AS
    SELECT
      ltf_a.df_1_d,
      ltf_a.qt_vz cmb_qt_vz,
      case when ltf_b.qt_vz is null then 0 else ltf_b.qt_vz end res_qt
    FROM (SELECT
            df_1_d,
            count(*) AS qt_vz
          FROM
            d_sorte.d_sorte_diferenca_entre_bolas
          GROUP BY df_1_d
         ) ltf_a
      LEFT JOIN (
                  SELECT
                    df_1_d,
                    count(*) AS qt_vz
                  FROM
                    d_sorte.d_sorte_diferenca_entre_bolas ltf_c,
                    d_sorte.d_sorte_resultado_id ltf_d
                    where ltf_c.d_sorte_id = ltf_d.d_sorte_id
                  GROUP BY df_1_d
                ) ltf_b
        ON ltf_a.df_1_d = ltf_b.df_1_d
    ORDER BY res_qt DESC, cmb_qt_vz DESC;


DROP VIEW IF EXISTS d_sorte.v_d_sorte_diferenca_entre_bolas_df_2_d;
CREATE VIEW d_sorte.v_d_sorte_diferenca_entre_bolas_df_2_d
  AS
    SELECT
      ltf_a.df_2_d,
      ltf_a.qt_vz cmb_qt_vz,
      case when ltf_b.qt_vz is null then 0 else ltf_b.qt_vz end res_qt
    FROM (SELECT
            df_2_d,
            count(*) AS qt_vz
          FROM
            d_sorte.d_sorte_diferenca_entre_bolas
          GROUP BY df_2_d
         ) ltf_a
      LEFT JOIN (
                  SELECT
                    df_2_d,
                    count(*) AS qt_vz
                  FROM
                    d_sorte.d_sorte_diferenca_entre_bolas ltf_c,
                    d_sorte.d_sorte_resultado_id ltf_d
                    where ltf_c.d_sorte_id = ltf_d.d_sorte_id
                  GROUP BY df_2_d
                ) ltf_b
        ON ltf_a.df_2_d = ltf_b.df_2_d
    ORDER BY res_qt DESC, cmb_qt_vz DESC;


DROP VIEW IF EXISTS d_sorte.v_d_sorte_diferenca_entre_bolas_df_3_d;
CREATE VIEW d_sorte.v_d_sorte_diferenca_entre_bolas_df_3_d
  AS
    SELECT
      ltf_a.df_3_d,
      ltf_a.qt_vz cmb_qt_vz,
      case when ltf_b.qt_vz is null then 0 else ltf_b.qt_vz end res_qt
    FROM (SELECT
            df_3_d,
            count(*) AS qt_vz
          FROM
            d_sorte.d_sorte_diferenca_entre_bolas
          GROUP BY df_3_d
         ) ltf_a
      LEFT JOIN (
                  SELECT
                    df_3_d,
                    count(*) AS qt_vz
                  FROM
                    d_sorte.d_sorte_diferenca_entre_bolas ltf_c,
                    d_sorte.d_sorte_resultado_id ltf_d
                    where ltf_c.d_sorte_id = ltf_d.d_sorte_id
                  GROUP BY df_3_d
                ) ltf_b
        ON ltf_a.df_3_d = ltf_b.df_3_d
    ORDER BY res_qt DESC, cmb_qt_vz DESC;


DROP VIEW IF EXISTS d_sorte.v_d_sorte_diferenca_entre_bolas_df_1_e;
CREATE VIEW d_sorte.v_d_sorte_diferenca_entre_bolas_df_1_e
  AS
    SELECT
      ltf_a.df_1_e,
      ltf_a.qt_vz cmb_qt_vz,
      case when ltf_b.qt_vz is null then 0 else ltf_b.qt_vz end res_qt
    FROM (SELECT
            df_1_e,
            count(*) AS qt_vz
          FROM
            d_sorte.d_sorte_diferenca_entre_bolas
          GROUP BY df_1_e
         ) ltf_a
      LEFT JOIN (
                  SELECT
                    df_1_e,
                    count(*) AS qt_vz
                  FROM
                    d_sorte.d_sorte_diferenca_entre_bolas ltf_c,
                    d_sorte.d_sorte_resultado_id ltf_d
                    where ltf_c.d_sorte_id = ltf_d.d_sorte_id
                  GROUP BY df_1_e
                ) ltf_b
        ON ltf_a.df_1_e = ltf_b.df_1_e
    ORDER BY res_qt DESC, cmb_qt_vz DESC;


DROP VIEW IF EXISTS d_sorte.v_d_sorte_diferenca_entre_bolas_df_2_e;
CREATE VIEW d_sorte.v_d_sorte_diferenca_entre_bolas_df_2_e
  AS
    SELECT
      ltf_a.df_2_e,
      ltf_a.qt_vz cmb_qt_vz,
      case when ltf_b.qt_vz is null then 0 else ltf_b.qt_vz end res_qt
    FROM (SELECT
            df_2_e,
            count(*) AS qt_vz
          FROM
            d_sorte.d_sorte_diferenca_entre_bolas
          GROUP BY df_2_e
         ) ltf_a
      LEFT JOIN (
                  SELECT
                    df_2_e,
                    count(*) AS qt_vz
                  FROM
                    d_sorte.d_sorte_diferenca_entre_bolas ltf_c,
                    d_sorte.d_sorte_resultado_id ltf_d
                    where ltf_c.d_sorte_id = ltf_d.d_sorte_id
                  GROUP BY df_2_e
                ) ltf_b
        ON ltf_a.df_2_e = ltf_b.df_2_e
    ORDER BY res_qt DESC, cmb_qt_vz DESC;


DROP VIEW IF EXISTS d_sorte.v_d_sorte_diferenca_entre_bolas_df_1_f;
CREATE VIEW d_sorte.v_d_sorte_diferenca_entre_bolas_df_1_f
  AS
    SELECT
      ltf_a.df_1_f,
      ltf_a.qt_vz cmb_qt_vz,
      case when ltf_b.qt_vz is null then 0 else ltf_b.qt_vz end res_qt
    FROM (SELECT
            df_1_f,
            count(*) AS qt_vz
          FROM
            d_sorte.d_sorte_diferenca_entre_bolas
          GROUP BY df_1_f
         ) ltf_a
      LEFT JOIN (
                  SELECT
                    df_1_f,
                    count(*) AS qt_vz
                  FROM
                    d_sorte.d_sorte_diferenca_entre_bolas ltf_c,
                    d_sorte.d_sorte_resultado_id ltf_d
                    where ltf_c.d_sorte_id = ltf_d.d_sorte_id
                  GROUP BY df_1_f
                ) ltf_b
        ON ltf_a.df_1_f = ltf_b.df_1_f
    ORDER BY res_qt DESC, cmb_qt_vz DESC;


DROP VIEW IF EXISTS d_sorte.v_d_sorte_diferenca_entre_bolas_sm_df_a;
CREATE VIEW d_sorte.v_d_sorte_diferenca_entre_bolas_sm_df_a
  AS
    SELECT
      ltf_a.sm_df_a,
      ltf_a.qt_vz cmb_qt_vz,
      case when ltf_b.qt_vz is null then 0 else ltf_b.qt_vz end res_qt
    FROM (SELECT
            sm_df_a,
            count(*) AS qt_vz
          FROM
            d_sorte.d_sorte_diferenca_entre_bolas
          GROUP BY sm_df_a
         ) ltf_a
      LEFT JOIN (
                  SELECT
                    sm_df_a,
                    count(*) AS qt_vz
                  FROM
                    d_sorte.d_sorte_diferenca_entre_bolas ltf_c,
                    d_sorte.d_sorte_resultado_id ltf_d
                    where ltf_c.d_sorte_id = ltf_d.d_sorte_id
                  GROUP BY sm_df_a
                ) ltf_b
        ON ltf_a.sm_df_a = ltf_b.sm_df_a
    ORDER BY res_qt DESC, cmb_qt_vz DESC;


DROP VIEW IF EXISTS d_sorte.v_d_sorte_diferenca_entre_bolas_sm_total;
CREATE VIEW d_sorte.v_d_sorte_diferenca_entre_bolas_sm_total
  AS
    SELECT
      ltf_a.sm_total,
      ltf_a.qt_vz cmb_qt_vz,
      case when ltf_b.qt_vz is null then 0 else ltf_b.qt_vz end res_qt
    FROM (SELECT
            sm_total,
            count(*) AS qt_vz
          FROM
            d_sorte.d_sorte_diferenca_entre_bolas
          GROUP BY sm_total
         ) ltf_a
      LEFT JOIN (
                  SELECT
                    sm_total,
                    count(*) AS qt_vz
                  FROM
                    d_sorte.d_sorte_diferenca_entre_bolas ltf_c,
                    d_sorte.d_sorte_resultado_id ltf_d
                    where ltf_c.d_sorte_id = ltf_d.d_sorte_id
                  GROUP BY sm_total
                ) ltf_b
        ON ltf_a.sm_total = ltf_b.sm_total
    ORDER BY res_qt DESC, cmb_qt_vz DESC;


DROP VIEW IF EXISTS d_sorte.v_d_sorte_diferenca_entre_bolas_df_menor;
CREATE VIEW d_sorte.v_d_sorte_diferenca_entre_bolas_df_menor
  AS
    SELECT
      ltf_a.df_menor,
      ltf_a.qt_vz cmb_qt_vz,
      case when ltf_b.qt_vz is null then 0 else ltf_b.qt_vz end res_qt
    FROM (SELECT
            df_menor,
            count(*) AS qt_vz
          FROM
            d_sorte.d_sorte_diferenca_entre_bolas
          GROUP BY df_menor
         ) ltf_a
      LEFT JOIN (
                  SELECT
                    df_menor,
                    count(*) AS qt_vz
                  FROM
                    d_sorte.d_sorte_diferenca_entre_bolas ltf_c,
                    d_sorte.d_sorte_resultado_id ltf_d
                    where ltf_c.d_sorte_id = ltf_d.d_sorte_id
                  GROUP BY df_menor
                ) ltf_b
        ON ltf_a.df_menor = ltf_b.df_menor
    ORDER BY res_qt DESC, cmb_qt_vz DESC;


DROP VIEW IF EXISTS d_sorte.v_d_sorte_diferenca_entre_bolas_df_maior;
CREATE VIEW d_sorte.v_d_sorte_diferenca_entre_bolas_df_maior
  AS
    SELECT
      ltf_a.df_maior,
      ltf_a.qt_vz cmb_qt_vz,
      case when ltf_b.qt_vz is null then 0 else ltf_b.qt_vz end res_qt
    FROM (SELECT
            df_maior,
            count(*) AS qt_vz
          FROM
            d_sorte.d_sorte_diferenca_entre_bolas
          GROUP BY df_maior
         ) ltf_a
      LEFT JOIN (
                  SELECT
                    df_maior,
                    count(*) AS qt_vz
                  FROM
                    d_sorte.d_sorte_diferenca_entre_bolas ltf_c,
                    d_sorte.d_sorte_resultado_id ltf_d
                    where ltf_c.d_sorte_id = ltf_d.d_sorte_id
                  GROUP BY df_maior
                ) ltf_b
        ON ltf_a.df_maior = ltf_b.df_maior
    ORDER BY res_qt DESC, cmb_qt_vz DESC;


DROP VIEW IF EXISTS d_sorte.v_d_sorte_diferenca_entre_bolas_df_menor_maior;
CREATE VIEW d_sorte.v_d_sorte_diferenca_entre_bolas_df_menor_maior
  AS
    SELECT
      ltf_a.df_menor,
      ltf_a.df_maior,
      ltf_a.qt_vz cmb_qt_vz,
      case when ltf_b.qt_vz is null then 0 else ltf_b.qt_vz end res_qt
    FROM (SELECT
            df_menor,
            df_maior,
            count(*) AS qt_vz
          FROM
            d_sorte.d_sorte_diferenca_entre_bolas
          GROUP BY df_menor, df_maior
         ) ltf_a
      LEFT JOIN (
                  SELECT
                    df_menor,
                    df_maior,
                    count(*) AS qt_vz
                  FROM
                    d_sorte.d_sorte_diferenca_entre_bolas ltf_c,
                    d_sorte.d_sorte_resultado_id ltf_d
                    where ltf_c.d_sorte_id = ltf_d.d_sorte_id
                  GROUP BY df_menor, df_maior
                ) ltf_b
        ON ltf_a.df_menor = ltf_b.df_menor AND
        ltf_a.df_maior = ltf_b.df_maior
    ORDER BY res_qt DESC, cmb_qt_vz DESC;

DROP VIEW IF EXISTS d_sorte.v_d_sorte_diferenca_entre_bolas_df_par_impar;
CREATE VIEW d_sorte.v_d_sorte_diferenca_entre_bolas_df_par_impar
  AS
    SELECT
      ltf_a.df_par,
      ltf_a.df_impar,
      ltf_a.qt_vz cmb_qt_vz,
      case when ltf_b.qt_vz is null then 0 else ltf_b.qt_vz end res_qt
    FROM (SELECT
            df_par,
            df_impar,
            count(*) AS qt_vz
          FROM
            d_sorte.d_sorte_diferenca_entre_bolas
          GROUP BY df_par, df_impar
         ) ltf_a
      LEFT JOIN (
                  SELECT
                    df_par,
                    df_impar,
                    count(*) AS qt_vz
                  FROM
                    d_sorte.d_sorte_diferenca_entre_bolas ltf_c,
                    d_sorte.d_sorte_resultado_id ltf_d
                    where ltf_c.d_sorte_id = ltf_d.d_sorte_id
                  GROUP BY df_par, df_impar
                ) ltf_b
        ON ltf_a.df_par = ltf_b.df_par AND
        ltf_a.df_impar = ltf_b.df_impar
    ORDER BY res_qt DESC, cmb_qt_vz DESC;



