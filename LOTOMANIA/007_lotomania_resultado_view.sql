Drop view if exists lotomania.v_lotomania_resultado_b1_qt_vz;
Create View lotomania.v_lotomania_resultado_b1_qt_vz
  as
  Select b_1, count(*) as qt_vz from lotomania.lotomania_resultado_bolas
  group by b_1
  order by qt_vz desc;


Drop view if exists lotomania.v_lotomania_resultado_b2_qt_vz;
Create View lotomania.v_lotomania_resultado_b2_qt_vz
  as
  Select b_2, count(*) as qt_vz from lotomania.lotomania_resultado_bolas
  group by b_2
  order by qt_vz desc;

Drop view if exists lotomania.v_lotomania_resultado_b3_qt_vz;
Create View lotomania.v_lotomania_resultado_b3_qt_vz
  as
  Select b_3, count(*) as qt_vz from lotomania.lotomania_resultado_bolas
  group by b_3
  order by qt_vz desc;

Drop view if exists lotomania.v_lotomania_resultado_b4_qt_vz;
Create View lotomania.v_lotomania_resultado_b4_qt_vz
  as
  Select b_4, count(*) as qt_vz from lotomania.lotomania_resultado_bolas
  group by b_4
  order by qt_vz desc;

Drop view if exists lotomania.v_lotomania_resultado_b5_qt_vz;
Create View lotomania.v_lotomania_resultado_b5_qt_vz
  as
  Select b_5, count(*) as qt_vz from lotomania.lotomania_resultado_bolas
  group by b_5
  order by qt_vz desc;

Drop view if exists lotomania.v_lotomania_resultado_b6_qt_vz;
Create View lotomania.v_lotomania_resultado_b6_qt_vz
  as
  Select b_6, count(*) as qt_vz from lotomania.lotomania_resultado_bolas
  group by b_6
  order by qt_vz desc;

Drop view if exists lotomania.v_lotomania_resultado_b7_qt_vz;
Create View lotomania.v_lotomania_resultado_b7_qt_vz
  as
  Select b_7, count(*) as qt_vz from lotomania.lotomania_resultado_bolas
  group by b_7
  order by qt_vz desc;

Drop view if exists lotomania.v_lotomania_resultado_b8_qt_vz;
Create View lotomania.v_lotomania_resultado_b8_qt_vz
  as
  Select b_8, count(*) as qt_vz from lotomania.lotomania_resultado_bolas
  group by b_8
  order by qt_vz desc;

Drop view if exists lotomania.v_lotomania_resultado_b9_qt_vz;
Create View lotomania.v_lotomania_resultado_b9_qt_vz
  as
  Select b_9, count(*) as qt_vz from lotomania.lotomania_resultado_bolas
  group by b_9
  order by qt_vz desc;

Drop view if exists lotomania.v_lotomania_resultado_b10_qt_vz;
Create View lotomania.v_lotomania_resultado_b10_qt_vz
  as
  Select b_10, count(*) as qt_vz from lotomania.lotomania_resultado_bolas
  group by b_10
  order by qt_vz desc;

Drop view if exists lotomania.v_lotomania_resultado_b11_qt_vz;
Create View lotomania.v_lotomania_resultado_b11_qt_vz
  as
  Select b_11, count(*) as qt_vz from lotomania.lotomania_resultado_bolas
  group by b_11
  order by qt_vz desc;

Drop view if exists lotomania.v_lotomania_resultado_b12_qt_vz;
Create View lotomania.v_lotomania_resultado_b12_qt_vz
  as
  Select b_12, count(*) as qt_vz from lotomania.lotomania_resultado_bolas
  group by b_12
  order by qt_vz desc;

Drop view if exists lotomania.v_lotomania_resultado_b13_qt_vz;
Create View lotomania.v_lotomania_resultado_b13_qt_vz
  as
  Select b_13, count(*) as qt_vz from lotomania.lotomania_resultado_bolas
  group by b_13
  order by qt_vz desc;

Drop view if exists lotomania.v_lotomania_resultado_b14_qt_vz;
Create View lotomania.v_lotomania_resultado_b14_qt_vz
  as
  Select b_14, count(*) as qt_vz from lotomania.lotomania_resultado_bolas
  group by b_14
  order by qt_vz desc;

Drop view if exists lotomania.v_lotomania_resultado_b15_qt_vz;
Create View lotomania.v_lotomania_resultado_b15_qt_vz
  as
  Select b_15, count(*) as qt_vz from lotomania.lotomania_resultado_bolas
  group by b_15
  order by qt_vz desc;

Drop view if exists lotomania.v_lotomania_resultado_b16_qt_vz;
Create View lotomania.v_lotomania_resultado_b16_qt_vz
  as
  Select b_16, count(*) as qt_vz from lotomania.lotomania_resultado_bolas
  group by b_16
  order by qt_vz desc;

Drop view if exists lotomania.v_lotomania_resultado_b17_qt_vz;
Create View lotomania.v_lotomania_resultado_b17_qt_vz
  as
  Select b_17, count(*) as qt_vz from lotomania.lotomania_resultado_bolas
  group by b_17
  order by qt_vz desc;

Drop view if exists lotomania.v_lotomania_resultado_b18_qt_vz;
Create View lotomania.v_lotomania_resultado_b18_qt_vz
  as
  Select b_18, count(*) as qt_vz from lotomania.lotomania_resultado_bolas
  group by b_18
  order by qt_vz desc;

Drop view if exists lotomania.v_lotomania_resultado_b19_qt_vz;
Create View lotomania.v_lotomania_resultado_b19_qt_vz
  as
  Select b_19, count(*) as qt_vz from lotomania.lotomania_resultado_bolas
  group by b_19
  order by qt_vz desc;

Drop view if exists lotomania.v_lotomania_resultado_b20_qt_vz;
Create View lotomania.v_lotomania_resultado_b20_qt_vz
  as
  Select b_20, count(*) as qt_vz from lotomania.lotomania_resultado_bolas
  group by b_20
  order by qt_vz desc;

Select * from lotomania.v_lotomania_resultado_b2_qt_vz;
