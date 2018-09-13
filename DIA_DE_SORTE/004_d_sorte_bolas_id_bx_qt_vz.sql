/**
  Neste arquivo, iremos armazena as tabelas agregadas das colunas b1, b2, b3, b4, b5, b6 e b7.

 */

drop table if EXISTS d_sorte.d_sorte_id_b1_qt_vz;
create table d_sorte.d_sorte_id_b1_qt_vz (
  b_1 smallint not null,
  d_sorte_qt smallint not null,
  qt_vz numeric not null,

  CONSTRAINT d_sorte_id_b1_qt_vz_pk PRIMARY KEY (b_1)
);

Delete from d_sorte.d_sorte_id_b1_qt_vz;
Insert into d_sorte.d_sorte_id_b1_qt_vz(b_1, d_sorte_qt, qt_vz)
Select b_1, d_sorte_qt, count(*) as qt_vz
from d_sorte.d_sorte_bolas
group by b_1, d_sorte_qt
order by b_1;


drop table if EXISTS d_sorte.d_sorte_id_b2_qt_vz;
create table d_sorte.d_sorte_id_b2_qt_vz (
  b_2 smallint not null,
  d_sorte_qt smallint not null,
  qt_vz numeric not null,

  CONSTRAINT d_sorte_id_b2_qt_vz_pk PRIMARY KEY (b_2)
);

Delete from d_sorte.d_sorte_id_b2_qt_vz;
Insert into d_sorte.d_sorte_id_b2_qt_vz(b_2, d_sorte_qt, qt_vz)
Select b_2, d_sorte_qt, count(*) as qt_vz
from d_sorte.d_sorte_bolas
group by b_2, d_sorte_qt
order by b_2;


drop table if EXISTS d_sorte.d_sorte_id_b3_qt_vz;
create table d_sorte.d_sorte_id_b3_qt_vz (
  b_3 smallint not null,
  d_sorte_qt smallint not null,
  qt_vz numeric not null,

  CONSTRAINT d_sorte_id_b3_qt_vz_pk PRIMARY KEY (b_3)
);

Delete from d_sorte.d_sorte_id_b3_qt_vz;
Insert into d_sorte.d_sorte_id_b3_qt_vz(b_3, d_sorte_qt, qt_vz)
Select b_3, d_sorte_qt, count(*) as qt_vz
from d_sorte.d_sorte_bolas
group by b_3, d_sorte_qt
order by b_3;


drop table if EXISTS d_sorte.d_sorte_id_b4_qt_vz;
create table d_sorte.d_sorte_id_b4_qt_vz (
  b_4 smallint not null,
  d_sorte_qt smallint not null,
  qt_vz numeric not null,

  CONSTRAINT d_sorte_id_b4_qt_vz_pk PRIMARY KEY (b_4)
);

Delete from d_sorte.d_sorte_id_b4_qt_vz;
Insert into d_sorte.d_sorte_id_b4_qt_vz(b_4, d_sorte_qt, qt_vz)
Select b_4, d_sorte_qt, count(*) as qt_vz
from d_sorte.d_sorte_bolas
group by b_4, d_sorte_qt
order by b_4;


drop table if EXISTS d_sorte.d_sorte_id_b5_qt_vz;
create table d_sorte.d_sorte_id_b5_qt_vz (
  b_5 smallint not null,
  d_sorte_qt smallint not null,
  qt_vz numeric not null,

  CONSTRAINT d_sorte_id_b5_qt_vz_pk PRIMARY KEY (b_5)
);

Delete from d_sorte.d_sorte_id_b5_qt_vz;
Insert into d_sorte.d_sorte_id_b5_qt_vz(b_5, d_sorte_qt, qt_vz)
Select b_5, d_sorte_qt, count(*) as qt_vz
from d_sorte.d_sorte_bolas
group by b_5, d_sorte_qt
order by b_5;

drop table if EXISTS d_sorte.d_sorte_id_b6_qt_vz;
create table d_sorte.d_sorte_id_b6_qt_vz (
  b_6 smallint not null,
  d_sorte_qt smallint not null,
  qt_vz numeric not null,

  CONSTRAINT d_sorte_id_b6_qt_vz_pk PRIMARY KEY (b_6)
);

Delete from d_sorte.d_sorte_id_b6_qt_vz;
Insert into d_sorte.d_sorte_id_b6_qt_vz(b_6, d_sorte_qt, qt_vz)
Select b_6, d_sorte_qt, count(*) as qt_vz
from d_sorte.d_sorte_bolas
group by b_6, d_sorte_qt
order by b_6;

drop table if EXISTS d_sorte.d_sorte_id_b7_qt_vz;
create table d_sorte.d_sorte_id_b7_qt_vz (
  b_7 smallint not null,
  d_sorte_qt smallint not null,
  qt_vz numeric not null,

  CONSTRAINT d_sorte_id_b7_qt_vz_pk PRIMARY KEY (b_7)
);

Delete from d_sorte.d_sorte_id_b7_qt_vz;
Insert into d_sorte.d_sorte_id_b7_qt_vz(b_7, d_sorte_qt, qt_vz)
Select b_7, d_sorte_qt, count(*) as qt_vz
from d_sorte.d_sorte_bolas
group by b_7, d_sorte_qt
order by b_7;






