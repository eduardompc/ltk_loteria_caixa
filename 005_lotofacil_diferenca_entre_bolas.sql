/**
  Pra cada combinação iremos realizar a diferença de todas as bolas,
  começando da esquerda pra direita nesta ordem,
  diferença da 2a. bola pra 1a. bola,
  diferenca da 3a. bola pra 2a. bola.
  Então, qt_1, significa quantas vezes, a diferença de valor 1
  apareceu no resultado, então, quanto maior a quantidade de vezes
  que a diferença de valor 1, saiu, maior será a quantidade de bolas
  em sequência.

 */
Drop table if EXISTS lotofacil.lotofacil_diferenca_qt_dif_1;
Create table lotofacil.lotofacil_diferenca_qt_dif_1(
  qt_dif_1 numeric not null,
  qt_dif_vezes numeric not null,
  CONSTRAINT lotofacil_diferenca_qt_dif_1_unk UNIQUE (qt_dif_1)
);
Insert into lotofacil.lotofacil_diferenca_qt_dif_1(qt_dif_1, qt_dif_vezes)
    Select qt_dif_1, count(*) as qt_dif_vezes from lotofacil.lotofacil_diferenca_entre_bolas
group by qt_dif_1
order by qt_dif_vezes desc;

Drop table if EXISTS lotofacil.lotofacil_diferenca_qt_dif_1_por_bola;
Create table lotofacil.lotofacil_diferenca_qt_dif_1_por_bola(
  qt_dif_1 numeric not null,
  ltf_qt numeric not null,
  qt_dif_vezes numeric not null,
  CONSTRAINT lotofacil_diferenca_qt_dif_1_por_bola_unk UNIQUE (qt_dif_1, ltf_qt)
);
Insert into lotofacil.lotofacil_diferenca_qt_dif_1_por_bola(qt_dif_1, ltf_qt, qt_dif_vezes)
    Select qt_dif_1, ltf_qt, count(*) as qt_dif_vezes from lotofacil.lotofacil_diferenca_entre_bolas
group by qt_dif_1, ltf_qt
order by qt_dif_vezes desc;


/**
  Quantidade de diferença valor 1 e valor 2
 */
Drop table if EXISTS lotofacil.lotofacil_diferenca_qt_dif_1_a_qt_dif_2;
Create table lotofacil.lotofacil_diferenca_qt_dif_1_a_qt_dif_2(
  qt_dif_1 numeric not null,
  qt_dif_2 numeric not null,
  qt_dif_cmb CHARACTER VARYING,
  qt_dif_vezes numeric not null,
  CONSTRAINT lotofacil_diferenca_qt_dif_1_a_qt_dif_2_unk UNIQUE (qt_dif_1, qt_dif_2)
);
Insert into lotofacil.lotofacil_diferenca_qt_dif_1_a_qt_dif_2(qt_dif_1, qt_dif_2, qt_dif_cmb, qt_dif_vezes)
    Select qt_dif_1, qt_dif_2, qt_dif_1 || '_' || qt_dif_2, count(*) as qt_dif_vezes from lotofacil.lotofacil_diferenca_entre_bolas
group by qt_dif_1, qt_dif_2
order by qt_dif_vezes desc;

Drop table if EXISTS lotofacil.lotofacil_diferenca_qt_dif_1_a_qt_dif_2_por_bola;
Create table lotofacil.lotofacil_diferenca_qt_dif_1_a_qt_dif_2_por_bola(
  qt_dif_1 numeric not null,
  qt_dif_2 numeric not null,
  qt_dif_cmb character VARYING,
  ltf_qt numeric not null,
  qt_dif_vezes numeric not null,
  CONSTRAINT lotofacil_diferenca_qt_dif_1_a_qt_dif_2_por_bola_unk UNIQUE (qt_dif_1, qt_dif_2, ltf_qt)
);
Insert into lotofacil.lotofacil_diferenca_qt_dif_1_a_qt_dif_2_por_bola(qt_dif_1, qt_dif_2, qt_dif_cmb, ltf_qt, qt_dif_vezes)
    Select qt_dif_1, qt_dif_2, qt_dif_1 || '_' || qt_dif_2, ltf_qt, count(*) as qt_dif_vezes from lotofacil.lotofacil_diferenca_entre_bolas
group by qt_dif_1, qt_dif_2, ltf_qt
order by qt_dif_vezes desc;

/**
  Diferença: valor 1, 2 e 3.
 */
Drop table if EXISTS lotofacil.lotofacil_diferenca_qt_dif_1_a_qt_dif_3;
Create table lotofacil.lotofacil_diferenca_qt_dif_1_a_qt_dif_3(
  qt_dif_1 numeric not null,
  qt_dif_2 numeric not null,
  qt_dif_3 numeric not null,
  qt_dif_cmb CHARACTER VARYING,
  qt_dif_vezes numeric not null,
  CONSTRAINT lotofacil_diferenca_qt_dif_1_a_qt_dif_3_unk UNIQUE (qt_dif_1, qt_dif_2, qt_dif_3)
);
Insert into lotofacil.lotofacil_diferenca_qt_dif_1_a_qt_dif_3(qt_dif_1, qt_dif_2, qt_dif_3, qt_dif_cmb, qt_dif_vezes)
    Select qt_dif_1, qt_dif_2, qt_dif_3, qt_dif_1 || '_' || qt_dif_2 || '_' || qt_dif_3, count(*) as qt_dif_vezes from lotofacil.lotofacil_diferenca_entre_bolas
group by qt_dif_1, qt_dif_2, qt_dif_3
order by qt_dif_vezes desc;

Drop table if EXISTS lotofacil.lotofacil_diferenca_qt_dif_1_a_qt_dif_3_por_bola;
Create table lotofacil.lotofacil_diferenca_qt_dif_1_a_qt_dif_3_por_bola(
  qt_dif_1 numeric not null,
  qt_dif_2 numeric not null,
  qt_dif_3 numeric not null,
  qt_dif_cmb character VARYING,
  ltf_qt numeric not null,
  qt_dif_vezes numeric not null,
  CONSTRAINT lotofacil_diferenca_qt_dif_1_a_qt_dif_3_por_bola_unk UNIQUE (qt_dif_1, qt_dif_2, qt_dif_3, ltf_qt)
);
Insert into lotofacil.lotofacil_diferenca_qt_dif_1_a_qt_dif_3_por_bola(qt_dif_1, qt_dif_2, qt_dif_3, qt_dif_cmb, ltf_qt, qt_dif_vezes)
    Select qt_dif_1, qt_dif_2, qt_dif_3, qt_dif_1 || '_' || qt_dif_2 || '_' || qt_dif_3, ltf_qt, count(*) as qt_dif_vezes from lotofacil.lotofacil_diferenca_entre_bolas
group by qt_dif_1, qt_dif_2, qt_dif_3,  ltf_qt
order by qt_dif_vezes desc;

/**
  Diferença 1, 2, 3 e 4.
 */
Drop table if EXISTS lotofacil.lotofacil_diferenca_qt_dif_1_a_qt_dif_4;
Create table lotofacil.lotofacil_diferenca_qt_dif_1_a_qt_dif_4(
  qt_dif_1 numeric not null,
  qt_dif_2 numeric not null,
  qt_dif_3 numeric not null,
  qt_dif_4 numeric not null,
  qt_dif_cmb CHARACTER VARYING,
  qt_dif_vezes numeric not null,
  CONSTRAINT lotofacil_diferenca_qt_dif_1_a_qt_dif_4_unk UNIQUE (qt_dif_1, qt_dif_2, qt_dif_3, qt_dif_4)
);
Insert into lotofacil.lotofacil_diferenca_qt_dif_1_a_qt_dif_4(qt_dif_1, qt_dif_2, qt_dif_3, qt_dif_4, qt_dif_cmb, qt_dif_vezes)
    Select qt_dif_1, qt_dif_2, qt_dif_3, qt_dif_4, qt_dif_1 || '_' || qt_dif_2 || '_' || qt_dif_3 || '_' || qt_dif_4, count(*) as qt_dif_vezes from lotofacil.lotofacil_diferenca_entre_bolas
group by qt_dif_1, qt_dif_2, qt_dif_3, qt_dif_4
order by qt_dif_vezes desc;

Drop table if EXISTS lotofacil.lotofacil_diferenca_qt_dif_1_a_qt_dif_4_por_bola;
Create table lotofacil.lotofacil_diferenca_qt_dif_1_a_qt_dif_4_por_bola(
  qt_dif_1 numeric not null,
  qt_dif_2 numeric not null,
  qt_dif_3 numeric not null,
  qt_dif_4 numeric not null,
  qt_dif_cmb character VARYING,
  ltf_qt numeric not null,
  qt_dif_vezes numeric not null,
  CONSTRAINT lotofacil_diferenca_qt_dif_1_a_qt_dif_4_por_bola_unk UNIQUE (qt_dif_1, qt_dif_2, qt_dif_3, qt_dif_4, ltf_qt)
);
Insert into lotofacil.lotofacil_diferenca_qt_dif_1_a_qt_dif_4_por_bola(qt_dif_1, qt_dif_2, qt_dif_3, qt_dif_4, qt_dif_cmb, ltf_qt, qt_dif_vezes)
    Select qt_dif_1, qt_dif_2, qt_dif_3, qt_dif_4, qt_dif_1 || '_' || qt_dif_2 || '_' || qt_dif_3 || '_' || qt_dif_4, ltf_qt, count(*) as qt_dif_vezes from lotofacil.lotofacil_diferenca_entre_bolas
group by qt_dif_1, qt_dif_2, qt_dif_3, qt_dif_4,  ltf_qt
order by qt_dif_vezes desc;

/**
  Diferença: valor 1 até valor 5
 */
Drop table if EXISTS lotofacil.lotofacil_diferenca_qt_dif_1_a_qt_dif_5;
Create table lotofacil.lotofacil_diferenca_qt_dif_1_a_qt_dif_5(
  qt_dif_1 numeric not null,
  qt_dif_2 numeric not null,
  qt_dif_3 numeric not null,
  qt_dif_4 numeric not null,
  qt_dif_5 numeric not null,
  qt_dif_cmb CHARACTER VARYING,
  qt_dif_vezes numeric not null,
  CONSTRAINT lotofacil_diferenca_qt_dif_1_a_qt_dif_5_unk UNIQUE (qt_dif_1, qt_dif_2, qt_dif_3, qt_dif_4, qt_dif_5)
);
Insert into lotofacil.lotofacil_diferenca_qt_dif_1_a_qt_dif_5(qt_dif_1, qt_dif_2, qt_dif_3, qt_dif_4, qt_dif_5, qt_dif_cmb, qt_dif_vezes)
    Select
      qt_dif_1,
      qt_dif_2,
      qt_dif_3,
      qt_dif_4,
      qt_dif_5,
      qt_dif_1 || '_' || qt_dif_2 || '_' || qt_dif_3 || '_' || qt_dif_4 || '_' || qt_dif_5,
      count(*) as qt_dif_vezes from lotofacil.lotofacil_diferenca_entre_bolas
group by qt_dif_1, qt_dif_2, qt_dif_3, qt_dif_4, qt_dif_5
order by qt_dif_vezes desc;

Drop table if EXISTS lotofacil.lotofacil_diferenca_qt_dif_1_a_qt_dif_5_por_bola;
Create table lotofacil.lotofacil_diferenca_qt_dif_1_a_qt_dif_5_por_bola(
  qt_dif_1 numeric not null,
  qt_dif_2 numeric not null,
  qt_dif_3 numeric not null,
  qt_dif_4 numeric not null,
  qt_dif_5 numeric not null,
  qt_dif_cmb character VARYING,
  ltf_qt numeric not null,
  qt_dif_vezes numeric not null,
  CONSTRAINT lotofacil_diferenca_qt_dif_1_a_qt_dif_5_por_bola_unk UNIQUE (qt_dif_1, qt_dif_2, qt_dif_3, qt_dif_4, qt_dif_5, ltf_qt)
);
Insert into lotofacil.lotofacil_diferenca_qt_dif_1_a_qt_dif_5_por_bola(qt_dif_1, qt_dif_2, qt_dif_3, qt_dif_4, qt_dif_5, qt_dif_cmb, ltf_qt, qt_dif_vezes)
    Select
      qt_dif_1,
      qt_dif_2,
      qt_dif_3,
      qt_dif_4,
      qt_dif_5,
      qt_dif_1 || '_' || qt_dif_2 || '_' || qt_dif_3 || '_' || qt_dif_4 || '_' || qt_dif_5,
      ltf_qt, count(*) as qt_dif_vezes from lotofacil.lotofacil_diferenca_entre_bolas
group by qt_dif_1, qt_dif_2, qt_dif_3, qt_dif_4, qt_dif_5,  ltf_qt
order by qt_dif_vezes desc;


/**
  Cria as views.
 */
Drop View if EXISTS lotofacil.v_lotofacil_resultado_diferenca_qt_dif_1;
Create View lotofacil.v_lotofacil_resultado_diferenca_qt_dif_1 AS
Select
  ltf_dif.qt_dif_1,
  ltf_dif.qt_dif_vezes as ltf_qt_vezes,
  case when res_qt.qt_vezes is null then 0 else res_qt.qt_vezes end as res_qt
  from
  (Select qt_dif_1, qt_dif_vezes from lotofacil.lotofacil_diferenca_qt_dif_1) ltf_dif
  left JOIN
  (Select qt_dif_1, count(*) as qt_vezes from lotofacil.lotofacil_resultado_diferenca_entre_bolas
    group by qt_dif_1
   order by qt_vezes desc) res_qt
  on ltf_dif.qt_dif_1 = res_qt.qt_dif_1
order by res_qt desc, ltf_qt_vezes desc;

Drop View if EXISTS lotofacil.v_lotofacil_resultado_diferenca_qt_dif_1_a_qt_dif_2;
Create View lotofacil.v_lotofacil_resultado_diferenca_qt_dif_1_a_qt_dif_2 AS
Select
  ltf_dif.qt_dif_1,
  ltf_dif.qt_dif_2,
  ltf_dif.qt_dif_cmb,
  ltf_dif.qt_dif_vezes as ltf_qt_vezes,
  case when res_qt.qt_vezes is null then 0 else res_qt.qt_vezes end as res_qt
  from
  (Select qt_dif_1, qt_dif_2, qt_dif_cmb, qt_dif_vezes from lotofacil.lotofacil_diferenca_qt_dif_1_a_qt_dif_2) ltf_dif
  left JOIN
  (Select qt_dif_1, qt_dif_2, count(*) as qt_vezes from lotofacil.lotofacil_resultado_diferenca_entre_bolas
group by qt_dif_1, qt_dif_2
   order by qt_vezes desc) res_qt
  on ltf_dif.qt_dif_1 = res_qt.qt_dif_1
  and ltf_dif.qt_dif_2 = res_qt.qt_dif_2
order by res_qt desc, ltf_qt_vezes desc;

/**
  Alternadores, é a contagem de vezes, onde a diferença alterou de valor
  dentro da combinação, então, qual maior a alteração e menor a diferença,
  menor será as bolas em sequencia.
 */

Drop table if exists lotofacil.lotofacil_diferenca_qt_alt;
create table lotofacil.lotofacil_diferenca_qt_alt(
  qt_alt numeric not null,
  qt_vezes numeric not null,
  constraint lotofacil_diferenca_qt_alt_qt_dif_1_unk UNIQUE (qt_alt)
);
Insert into lotofacil.lotofacil_diferenca_qt_alt(qt_alt, qt_vezes)
    Select qt_alt, count(*) as qt_vezes from lotofacil.lotofacil_diferenca_entre_bolas
group by qt_alt
order by qt_vezes desc;


Drop View if EXISTS lotofacil.v_lotofacil_resultado_diferenca_qt_alt;
Create View lotofacil.v_lotofacil_resultado_diferenca_qt_alt as
Select
  ltf_dif.qt_alt,
  ltf_dif.qt_vezes as ltf_qt,
  case when res_qt.qt_vezes is null then 0 else res_qt.qt_vezes end as res_qt from
(Select qt_alt, qt_vezes as qt_vezes from lotofacil.lotofacil_diferenca_qt_alt
) ltf_dif
  left join
(Select qt_alt, count(*) as qt_vezes from lotofacil.lotofacil_resultado_diferenca_entre_bolas
group by qt_alt
order by qt_vezes desc) res_qt
  on ltf_dif.qt_alt = res_qt.qt_alt
order by res_qt desc;

/**

 */
Drop table if exists lotofacil.lotofacil_diferenca_qt_alt_1;
create table lotofacil.lotofacil_diferenca_qt_alt_1(
  qt_alt numeric not null,
  qt_dif_1 numeric not null,
  qt_cmb character varying not null,
  qt_vezes numeric not null,
  constraint lotofacil_diferenca_qt_alt_1_unk UNIQUE (qt_alt, qt_dif_1)
);
Insert into lotofacil.lotofacil_diferenca_qt_alt_1(qt_alt, qt_dif_1, qt_cmb, qt_vezes)
    Select qt_alt, qt_dif_1, qt_alt || '_' || qt_dif_1, count(*) as qt_vezes from lotofacil.lotofacil_diferenca_entre_bolas
group by qt_alt, qt_dif_1
order by qt_vezes desc;

Drop View if EXISTS lotofacil.v_lotofacil_resultado_diferenca_qt_alt_1;
Create View lotofacil.v_lotofacil_resultado_diferenca_qt_alt_1 as
Select
  ltf_dif.qt_alt,
  ltf_dif.qt_dif_1,
  ltf_dif.qt_cmb,
  ltf_dif.qt_vezes as ltf_qt,
  case when res_qt.qt_vezes is null then 0 else res_qt.qt_vezes end as res_qt from
(Select qt_alt, qt_dif_1, qt_cmb, qt_vezes as qt_vezes from lotofacil.lotofacil_diferenca_qt_alt_1
) ltf_dif
  left join
(Select qt_alt, qt_dif_1, count(*) as qt_vezes from lotofacil.lotofacil_resultado_diferenca_entre_bolas
group by qt_alt, qt_dif_1
order by qt_vezes desc) res_qt
  on ltf_dif.qt_alt = res_qt.qt_alt and
  ltf_dif.qt_dif_1 = res_qt.qt_dif_1
order by res_qt desc;

/**
  Alternadores com diferença de valor 1 e 2.
 */

Drop table if exists lotofacil.lotofacil_diferenca_qt_alt_2;
create table lotofacil.lotofacil_diferenca_qt_alt_2(
  qt_alt numeric not null,
  qt_dif_1 numeric not null,
  qt_dif_2 numeric not null,
  qt_cmb character VARYING,
  qt_vezes numeric not null,
  constraint lotofacil_diferenca_qt_alt_2_unk UNIQUE (qt_alt, qt_dif_1, qt_dif_2)
);
Insert into lotofacil.lotofacil_diferenca_qt_alt_2(qt_alt, qt_dif_1, qt_dif_2, qt_cmb, qt_vezes)
    Select
      qt_alt,
      qt_dif_1,
      qt_dif_2,
      qt_alt || '_' || qt_dif_1 || '_' || qt_dif_2,  count(*) as qt_vezes from lotofacil.lotofacil_diferenca_entre_bolas
group by qt_alt, qt_dif_1, qt_dif_2
order by qt_vezes desc;

Drop View if EXISTS lotofacil.v_lotofacil_resultado_diferenca_qt_alt_2;
Create View lotofacil.v_lotofacil_resultado_diferenca_qt_alt_2 as
Select
  ltf_dif.qt_alt,
  ltf_dif.qt_dif_1,
  ltf_dif.qt_dif_2,
  ltf_dif.qt_cmb,
  ltf_dif.qt_vezes as ltf_qt,
  case when res_qt.qt_vezes is null then 0 else res_qt.qt_vezes end as res_qt from
(Select qt_alt, qt_dif_1, qt_dif_2, qt_cmb, qt_vezes as qt_vezes from lotofacil.lotofacil_diferenca_qt_alt_2
) ltf_dif
  left join
(Select qt_alt, qt_dif_1, qt_dif_2, count(*) as qt_vezes from lotofacil.lotofacil_resultado_diferenca_entre_bolas
group by qt_alt, qt_dif_1, qt_dif_2
order by qt_vezes desc) res_qt
  on ltf_dif.qt_alt = res_qt.qt_alt and
  ltf_dif.qt_dif_1 = res_qt.qt_dif_1 and
  ltf_dif.qt_dif_2 = res_qt.qt_dif_2
order by res_qt desc;










