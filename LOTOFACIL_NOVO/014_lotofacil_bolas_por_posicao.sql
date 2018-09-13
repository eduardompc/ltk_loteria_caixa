/**
  Descrição:  Tabela com estatísticas de bolas por posicao.
  Autor:      Fábio Moura de Oliveira
  Data:       31/03/2018
 */
/**
  Cria as tabelas que serão as bases das views.
 */
drop table if exists lotofacil.lotofacil_bolas_por_posicao_b1_agrupado_por_ltf_qt;
create table lotofacil.lotofacil_bolas_por_posicao_b1_agrupado_por_ltf_qt(
 b_1 numeric not null check(b_1 between 1 and 11),
  ltf_qt numeric not null check (ltf_qt in (15, 16, 17, 18)),
  qt_vezes numeric not null
);

drop table if exists lotofacil.lotofacil_bolas_por_posicao_b2_agrupado_por_ltf_qt;
create table lotofacil.lotofacil_bolas_por_posicao_b2_agrupado_por_ltf_qt(
 b_2 numeric not null check(b_2 between 2 and 12),
  ltf_qt numeric not null check (ltf_qt in (15, 16, 17, 18)),
  qt_vezes numeric not null
);

drop table if exists lotofacil.lotofacil_bolas_por_posicao_b3_agrupado_por_ltf_qt;
create table lotofacil.lotofacil_bolas_por_posicao_b3_agrupado_por_ltf_qt(
 b_3 numeric not null check(b_3 between 3 and 13),
  ltf_qt numeric not null check (ltf_qt in (15, 16, 17, 18)),
  qt_vezes numeric not null
);


drop table if exists lotofacil.lotofacil_bolas_por_posicao_b4_agrupado_por_ltf_qt;
create table lotofacil.lotofacil_bolas_por_posicao_b4_agrupado_por_ltf_qt(
 b_4 numeric not null check(b_4 between 4 and 14),
  ltf_qt numeric not null check (ltf_qt in (15, 16, 17, 18)),
  qt_vezes numeric not null
);


drop table if exists lotofacil.lotofacil_bolas_por_posicao_b5_agrupado_por_ltf_qt;
create table lotofacil.lotofacil_bolas_por_posicao_b5_agrupado_por_ltf_qt(
 b_5 numeric not null check(b_5 between 5 and 15),
  ltf_qt numeric not null check (ltf_qt in (15, 16, 17, 18)),
  qt_vezes numeric not null
);


drop table if exists lotofacil.lotofacil_bolas_por_posicao_b6_agrupado_por_ltf_qt;
create table lotofacil.lotofacil_bolas_por_posicao_b6_agrupado_por_ltf_qt(
 b_6 numeric not null check(b_6 between 6 and 16),
  ltf_qt numeric not null check (ltf_qt in (15, 16, 17, 18)),
  qt_vezes numeric not null
);


drop table if exists lotofacil.lotofacil_bolas_por_posicao_b7_agrupado_por_ltf_qt;
create table lotofacil.lotofacil_bolas_por_posicao_b7_agrupado_por_ltf_qt(
 b_7 numeric not null check(b_7 between 7 and 17),
  ltf_qt numeric not null check (ltf_qt in (15, 16, 17, 18)),
  qt_vezes numeric not null
);


drop table if exists lotofacil.lotofacil_bolas_por_posicao_b8_agrupado_por_ltf_qt;
create table lotofacil.lotofacil_bolas_por_posicao_b8_agrupado_por_ltf_qt(
 b_8 numeric not null check(b_8 between 8 and 18),
  ltf_qt numeric not null check (ltf_qt in (15, 16, 17, 18)),
  qt_vezes numeric not null
);


drop table if exists lotofacil.lotofacil_bolas_por_posicao_b9_agrupado_por_ltf_qt;
create table lotofacil.lotofacil_bolas_por_posicao_b9_agrupado_por_ltf_qt(
 b_9 numeric not null check(b_9 between 9 and 19),
  ltf_qt numeric not null check (ltf_qt in (15, 16, 17, 18)),
  qt_vezes numeric not null
);


drop table if exists lotofacil.lotofacil_bolas_por_posicao_b10_agrupado_por_ltf_qt;
create table lotofacil.lotofacil_bolas_por_posicao_b10_agrupado_por_ltf_qt(
 b_10 numeric not null check(b_10 between 10 and 20),
  ltf_qt numeric not null check (ltf_qt in (15, 16, 17, 18)),
  qt_vezes numeric not null
);


drop table if exists lotofacil.lotofacil_bolas_por_posicao_b11_agrupado_por_ltf_qt;
create table lotofacil.lotofacil_bolas_por_posicao_b11_agrupado_por_ltf_qt(
 b_11 numeric not null check(b_11 between 11 and 21),
  ltf_qt numeric not null check (ltf_qt in (15, 16, 17, 18)),
  qt_vezes numeric not null
);


drop table if exists lotofacil.lotofacil_bolas_por_posicao_b12_agrupado_por_ltf_qt;
create table lotofacil.lotofacil_bolas_por_posicao_b12_agrupado_por_ltf_qt(
 b_12 numeric not null check(b_12 between 12 and 22),
  ltf_qt numeric not null check (ltf_qt in (15, 16, 17, 18)),
  qt_vezes numeric not null
);


drop table if exists lotofacil.lotofacil_bolas_por_posicao_b13_agrupado_por_ltf_qt;
create table lotofacil.lotofacil_bolas_por_posicao_b13_agrupado_por_ltf_qt(
 b_13 numeric not null check(b_13 between 13 and 23),
  ltf_qt numeric not null check (ltf_qt in (15, 16, 17, 18)),
  qt_vezes numeric not null
);


drop table if exists lotofacil.lotofacil_bolas_por_posicao_b14_agrupado_por_ltf_qt;
create table lotofacil.lotofacil_bolas_por_posicao_b14_agrupado_por_ltf_qt(
 b_14 numeric not null check(b_14 between 14 and 24),
  ltf_qt numeric not null check (ltf_qt in (15, 16, 17, 18)),
  qt_vezes numeric not null
);


drop table if exists lotofacil.lotofacil_bolas_por_posicao_b15_agrupado_por_ltf_qt;
create table lotofacil.lotofacil_bolas_por_posicao_b15_agrupado_por_ltf_qt(
 b_15 numeric not null check(b_15 between 15 and 25),
  ltf_qt numeric not null check (ltf_qt in (15, 16, 17, 18)),
  qt_vezes numeric not null
);

/**
  Popula as tabelas.
 */
delete from lotofacil.lotofacil_bolas_por_posicao_b1_agrupado_por_ltf_qt;
insert into lotofacil.lotofacil_bolas_por_posicao_b1_agrupado_por_ltf_qt(b_1, ltf_qt, qt_vezes) 
    Select b_1, ltf_qt, count(*) as qt_vezes FROM lotofacil.lotofacil_bolas
group by b_1, ltf_qt
order by ltf_qt asc, qt_vezes desc;

delete from lotofacil.lotofacil_bolas_por_posicao_b2_agrupado_por_ltf_qt;
insert into lotofacil.lotofacil_bolas_por_posicao_b2_agrupado_por_ltf_qt(b_2, ltf_qt, qt_vezes) 
    Select b_2, ltf_qt, count(*) as qt_vezes FROM lotofacil.lotofacil_bolas
group by b_2, ltf_qt
order by ltf_qt asc, qt_vezes desc;

delete from lotofacil.lotofacil_bolas_por_posicao_b3_agrupado_por_ltf_qt;
insert into lotofacil.lotofacil_bolas_por_posicao_b3_agrupado_por_ltf_qt(b_3, ltf_qt, qt_vezes) 
    Select b_3, ltf_qt, count(*) as qt_vezes FROM lotofacil.lotofacil_bolas
group by b_3, ltf_qt
order by ltf_qt asc, qt_vezes desc;

delete from lotofacil.lotofacil_bolas_por_posicao_b4_agrupado_por_ltf_qt;
insert into lotofacil.lotofacil_bolas_por_posicao_b4_agrupado_por_ltf_qt(b_4, ltf_qt, qt_vezes) 
    Select b_4, ltf_qt, count(*) as qt_vezes FROM lotofacil.lotofacil_bolas
group by b_4, ltf_qt
order by ltf_qt asc, qt_vezes desc;

delete from lotofacil.lotofacil_bolas_por_posicao_b5_agrupado_por_ltf_qt;
insert into lotofacil.lotofacil_bolas_por_posicao_b5_agrupado_por_ltf_qt(b_5, ltf_qt, qt_vezes) 
    Select b_5, ltf_qt, count(*) as qt_vezes FROM lotofacil.lotofacil_bolas
group by b_5, ltf_qt
order by ltf_qt asc, qt_vezes desc;

delete from lotofacil.lotofacil_bolas_por_posicao_b6_agrupado_por_ltf_qt;
insert into lotofacil.lotofacil_bolas_por_posicao_b6_agrupado_por_ltf_qt(b_6, ltf_qt, qt_vezes) 
    Select b_6, ltf_qt, count(*) as qt_vezes FROM lotofacil.lotofacil_bolas
group by b_6, ltf_qt
order by ltf_qt asc, qt_vezes desc;

delete from lotofacil.lotofacil_bolas_por_posicao_b7_agrupado_por_ltf_qt;
insert into lotofacil.lotofacil_bolas_por_posicao_b7_agrupado_por_ltf_qt(b_7, ltf_qt, qt_vezes) 
    Select b_7, ltf_qt, count(*) as qt_vezes FROM lotofacil.lotofacil_bolas
group by b_7, ltf_qt
order by ltf_qt asc, qt_vezes desc;

delete from lotofacil.lotofacil_bolas_por_posicao_b8_agrupado_por_ltf_qt;
insert into lotofacil.lotofacil_bolas_por_posicao_b8_agrupado_por_ltf_qt(b_8, ltf_qt, qt_vezes) 
    Select b_8, ltf_qt, count(*) as qt_vezes FROM lotofacil.lotofacil_bolas
group by b_8, ltf_qt
order by ltf_qt asc, qt_vezes desc;

delete from lotofacil.lotofacil_bolas_por_posicao_b9_agrupado_por_ltf_qt;
insert into lotofacil.lotofacil_bolas_por_posicao_b9_agrupado_por_ltf_qt(b_9, ltf_qt, qt_vezes) 
    Select b_9, ltf_qt, count(*) as qt_vezes FROM lotofacil.lotofacil_bolas
group by b_9, ltf_qt
order by ltf_qt asc, qt_vezes desc;

delete from lotofacil.lotofacil_bolas_por_posicao_b10_agrupado_por_ltf_qt;
insert into lotofacil.lotofacil_bolas_por_posicao_b10_agrupado_por_ltf_qt(b_10, ltf_qt, qt_vezes) 
    Select b_10, ltf_qt, count(*) as qt_vezes FROM lotofacil.lotofacil_bolas
group by b_10, ltf_qt
order by ltf_qt asc, qt_vezes desc;

delete from lotofacil.lotofacil_bolas_por_posicao_b11_agrupado_por_ltf_qt;
insert into lotofacil.lotofacil_bolas_por_posicao_b11_agrupado_por_ltf_qt(b_11, ltf_qt, qt_vezes) 
    Select b_11, ltf_qt, count(*) as qt_vezes FROM lotofacil.lotofacil_bolas
group by b_11, ltf_qt
order by ltf_qt asc, qt_vezes desc;

delete from lotofacil.lotofacil_bolas_por_posicao_b12_agrupado_por_ltf_qt;
insert into lotofacil.lotofacil_bolas_por_posicao_b12_agrupado_por_ltf_qt(b_12, ltf_qt, qt_vezes) 
    Select b_12, ltf_qt, count(*) as qt_vezes FROM lotofacil.lotofacil_bolas
group by b_12, ltf_qt
order by ltf_qt asc, qt_vezes desc;

delete from lotofacil.lotofacil_bolas_por_posicao_b13_agrupado_por_ltf_qt;
insert into lotofacil.lotofacil_bolas_por_posicao_b13_agrupado_por_ltf_qt(b_13, ltf_qt, qt_vezes) 
    Select b_13, ltf_qt, count(*) as qt_vezes FROM lotofacil.lotofacil_bolas
group by b_13, ltf_qt
order by ltf_qt asc, qt_vezes desc;

delete from lotofacil.lotofacil_bolas_por_posicao_b14_agrupado_por_ltf_qt;
insert into lotofacil.lotofacil_bolas_por_posicao_b14_agrupado_por_ltf_qt(b_14, ltf_qt, qt_vezes) 
    Select b_14, ltf_qt, count(*) as qt_vezes FROM lotofacil.lotofacil_bolas
group by b_14, ltf_qt
order by ltf_qt asc, qt_vezes desc;

delete from lotofacil.lotofacil_bolas_por_posicao_b15_agrupado_por_ltf_qt;
insert into lotofacil.lotofacil_bolas_por_posicao_b15_agrupado_por_ltf_qt(b_15, ltf_qt, qt_vezes) 
    Select b_15, ltf_qt, count(*) as qt_vezes FROM lotofacil.lotofacil_bolas
group by b_15, ltf_qt
order by ltf_qt asc, qt_vezes desc;

/**
  Cria as views.
 */
drop view if exists lotofacil.v_lotofacil_bolas_por_posicao_b1;
create view lotofacil.v_lotofacil_bolas_por_posicao_b1 (b_1, ltf_qt, res_qt) as
  Select ltf_A.b_1, qt_vezes, case when res_qt is null then 0 else res_qt end res_qt FROM
    lotofacil.lotofacil_bolas_por_posicao_b1_agrupado_por_ltf_qt ltf_A
  left join (Select b_1, count(*) as res_qt from lotofacil.lotofacil_resultado_bolas group by b_1) ltf_B
    on LTF_A.b_1 = ltf_B.b_1
  where ltf_A.ltf_qt = 15;

drop view if exists lotofacil.v_lotofacil_bolas_por_posicao_b2;
create view lotofacil.v_lotofacil_bolas_por_posicao_b2 (b_2, ltf_qt, res_qt) as
  Select ltf_A.b_2, qt_vezes, case when res_qt is null then 0 else res_qt end res_qt FROM
    lotofacil.lotofacil_bolas_por_posicao_b2_agrupado_por_ltf_qt ltf_A
  left join (Select b_2, count(*) as res_qt from lotofacil.lotofacil_resultado_bolas group by b_2) ltf_B
    on LTF_A.b_2 = ltf_B.b_2
  where ltf_A.ltf_qt = 15;

drop view if exists lotofacil.v_lotofacil_bolas_por_posicao_b3;
create view lotofacil.v_lotofacil_bolas_por_posicao_b3 (b_3, ltf_qt, res_qt) as
  Select ltf_A.b_3, qt_vezes, case when res_qt is null then 0 else res_qt end res_qt FROM
    lotofacil.lotofacil_bolas_por_posicao_b3_agrupado_por_ltf_qt ltf_A
  left join (Select b_3, count(*) as res_qt from lotofacil.lotofacil_resultado_bolas group by b_3) ltf_B
    on LTF_A.b_3 = ltf_B.b_3
  where ltf_A.ltf_qt = 15;

drop view if exists lotofacil.v_lotofacil_bolas_por_posicao_b4;
create view lotofacil.v_lotofacil_bolas_por_posicao_b4 (b_4, ltf_qt, res_qt) as
  Select ltf_A.b_4, qt_vezes, case when res_qt is null then 0 else res_qt end res_qt FROM
    lotofacil.lotofacil_bolas_por_posicao_b4_agrupado_por_ltf_qt ltf_A
  left join (Select b_4, count(*) as res_qt from lotofacil.lotofacil_resultado_bolas group by b_4) ltf_B
    on LTF_A.b_4 = ltf_B.b_4
  where ltf_A.ltf_qt = 15;


drop view if exists lotofacil.v_lotofacil_bolas_por_posicao_b5;
create view lotofacil.v_lotofacil_bolas_por_posicao_b5 (b_5, ltf_qt, res_qt) as
  Select ltf_A.b_5, qt_vezes, case when res_qt is null then 0 else res_qt end res_qt FROM
    lotofacil.lotofacil_bolas_por_posicao_b5_agrupado_por_ltf_qt ltf_A
  left join (Select b_5, count(*) as res_qt from lotofacil.lotofacil_resultado_bolas group by b_5) ltf_B
    on LTF_A.b_5 = ltf_B.b_5
  where ltf_A.ltf_qt = 15;


drop view if exists lotofacil.v_lotofacil_bolas_por_posicao_b6;
create view lotofacil.v_lotofacil_bolas_por_posicao_b6 (b_6, ltf_qt, res_qt) as
  Select ltf_A.b_6, qt_vezes, case when res_qt is null then 0 else res_qt end res_qt FROM
    lotofacil.lotofacil_bolas_por_posicao_b6_agrupado_por_ltf_qt ltf_A
  left join (Select b_6, count(*) as res_qt from lotofacil.lotofacil_resultado_bolas group by b_6) ltf_B
    on LTF_A.b_6 = ltf_B.b_6
  where ltf_A.ltf_qt = 15;


drop view if exists lotofacil.v_lotofacil_bolas_por_posicao_b7;
create view lotofacil.v_lotofacil_bolas_por_posicao_b7 (b_7, ltf_qt, res_qt) as
  Select ltf_A.b_7, qt_vezes, case when res_qt is null then 0 else res_qt end res_qt FROM
    lotofacil.lotofacil_bolas_por_posicao_b7_agrupado_por_ltf_qt ltf_A
  left join (Select b_7, count(*) as res_qt from lotofacil.lotofacil_resultado_bolas group by b_7) ltf_B
    on LTF_A.b_7 = ltf_B.b_7
  where ltf_A.ltf_qt = 15;


drop view if exists lotofacil.v_lotofacil_bolas_por_posicao_b8;
create view lotofacil.v_lotofacil_bolas_por_posicao_b8 (b_8, ltf_qt, res_qt) as
  Select ltf_A.b_8, qt_vezes, case when res_qt is null then 0 else res_qt end res_qt FROM
    lotofacil.lotofacil_bolas_por_posicao_b8_agrupado_por_ltf_qt ltf_A
  left join (Select b_8, count(*) as res_qt from lotofacil.lotofacil_resultado_bolas group by b_8) ltf_B
    on LTF_A.b_8 = ltf_B.b_8
  where ltf_A.ltf_qt = 15;


drop view if exists lotofacil.v_lotofacil_bolas_por_posicao_b9;
create view lotofacil.v_lotofacil_bolas_por_posicao_b9 (b_9, ltf_qt, res_qt) as
  Select ltf_A.b_9, qt_vezes, case when res_qt is null then 0 else res_qt end res_qt FROM
    lotofacil.lotofacil_bolas_por_posicao_b9_agrupado_por_ltf_qt ltf_A
  left join (Select b_9, count(*) as res_qt from lotofacil.lotofacil_resultado_bolas group by b_9) ltf_B
    on LTF_A.b_9 = ltf_B.b_9
  where ltf_A.ltf_qt = 15;


drop view if exists lotofacil.v_lotofacil_bolas_por_posicao_b10;
create view lotofacil.v_lotofacil_bolas_por_posicao_b10 (b_10, ltf_qt, res_qt) as
  Select ltf_A.b_10, qt_vezes, case when res_qt is null then 0 else res_qt end res_qt FROM
    lotofacil.lotofacil_bolas_por_posicao_b10_agrupado_por_ltf_qt ltf_A
  left join (Select b_10, count(*) as res_qt from lotofacil.lotofacil_resultado_bolas group by b_10) ltf_B
    on LTF_A.b_10 = ltf_B.b_10
  where ltf_A.ltf_qt = 15;


drop view if exists lotofacil.v_lotofacil_bolas_por_posicao_b11;
create view lotofacil.v_lotofacil_bolas_por_posicao_b11 (b_11, ltf_qt, res_qt) as
  Select ltf_A.b_11, qt_vezes, case when res_qt is null then 0 else res_qt end res_qt FROM
    lotofacil.lotofacil_bolas_por_posicao_b11_agrupado_por_ltf_qt ltf_A
  left join (Select b_11, count(*) as res_qt from lotofacil.lotofacil_resultado_bolas group by b_11) ltf_B
    on LTF_A.b_11 = ltf_B.b_11
  where ltf_A.ltf_qt = 15;


drop view if exists lotofacil.v_lotofacil_bolas_por_posicao_b12;
create view lotofacil.v_lotofacil_bolas_por_posicao_b12 (b_12, ltf_qt, res_qt) as
  Select ltf_A.b_12, qt_vezes, case when res_qt is null then 0 else res_qt end res_qt FROM
    lotofacil.lotofacil_bolas_por_posicao_b12_agrupado_por_ltf_qt ltf_A
  left join (Select b_12, count(*) as res_qt from lotofacil.lotofacil_resultado_bolas group by b_12) ltf_B
    on LTF_A.b_12 = ltf_B.b_12
  where ltf_A.ltf_qt = 15;


drop view if exists lotofacil.v_lotofacil_bolas_por_posicao_b13;
create view lotofacil.v_lotofacil_bolas_por_posicao_b13 (b_13, ltf_qt, res_qt) as
  Select ltf_A.b_13, qt_vezes, case when res_qt is null then 0 else res_qt end res_qt FROM
    lotofacil.lotofacil_bolas_por_posicao_b13_agrupado_por_ltf_qt ltf_A
  left join (Select b_13, count(*) as res_qt from lotofacil.lotofacil_resultado_bolas group by b_13) ltf_B
    on LTF_A.b_13 = ltf_B.b_13
  where ltf_A.ltf_qt = 15;


drop view if exists lotofacil.v_lotofacil_bolas_por_posicao_b14;
create view lotofacil.v_lotofacil_bolas_por_posicao_b14 (b_14, ltf_qt, res_qt) as
  Select ltf_A.b_14, qt_vezes, case when res_qt is null then 0 else res_qt end res_qt FROM
    lotofacil.lotofacil_bolas_por_posicao_b14_agrupado_por_ltf_qt ltf_A
  left join (Select b_14, count(*) as res_qt from lotofacil.lotofacil_resultado_bolas group by b_14) ltf_B
    on LTF_A.b_14 = ltf_B.b_14
  where ltf_A.ltf_qt = 15;


drop view if exists lotofacil.v_lotofacil_bolas_por_posicao_b15;
create view lotofacil.v_lotofacil_bolas_por_posicao_b15 (b_15, ltf_qt, res_qt) as
  Select ltf_A.b_15, qt_vezes, case when res_qt is null then 0 else res_qt end res_qt FROM
    lotofacil.lotofacil_bolas_por_posicao_b15_agrupado_por_ltf_qt ltf_A
  left join (Select b_15, count(*) as res_qt from lotofacil.lotofacil_resultado_bolas group by b_15) ltf_B
    on LTF_A.b_15 = ltf_B.b_15
  where ltf_A.ltf_qt = 15;


