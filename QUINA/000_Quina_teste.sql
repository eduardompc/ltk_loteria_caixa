copy ltk_quina.quina_num (quina_id, quina_qt, num_1, num_2, num_3, num_4, num_5, num_6, num_7, num_8, num_9, num_10, num_11, num_12, num_13, num_14, num_15, num_16, num_17, num_18, num_19, num_20, num_21, num_22, num_23, num_24, num_25, num_26, num_27, num_28, num_29, num_30, num_31, num_32, num_33, num_34, num_35, num_36, num_37, num_38, num_39, num_40, num_41, num_42, num_43, num_44, num_45, num_46, num_47, num_48, num_49, num_50, num_51, num_52, num_53, num_54, num_55, num_56, num_57, num_58, num_59, num_60, num_61, num_62, num_63, num_64, num_65, num_66, num_67, num_68, num_69, num_70, num_71, num_72, num_73, num_74, num_75, num_76, num_77, num_78, num_79, num_80) FROM
  '/tmp/quina_num.csv' with (DELIMITER ';', HEADER true, FORMAT CSV );

copy ltk_quina.quina_bolas(quina_id, quina_qt, b1, b2, b3, b4, b5) FROM
  '/tmp/quina_bolas.csv' with (DELIMITER ';', HEADER true, FORMAT CSV );

drop view if exists ltk_quina.v_b1;
create view ltk_quina.v_b1 AS
  select b1, count(*) as qt_vezes from ltk_quina.quina_bolas
  group by b1
  order by qt_vezes;

Select quina_bolas.* from ltk_quina.quina_bolas, ltk_quina.quina_num
where ltk_quina.quina_bolas.quina_id = ltk_quina.quina_num.quina_id
and num_1 + num_2 + num_3 + num_4 + num_5 = 0
order by b1, b2, b3, b4, b5;

Select max(quina_id) from ltk_quina.quina_bolas;


Select quina_bolas.quina_id, b1, b2, b3, b4, b5,
  quina_estatistica.m_b1,
  quina_estatistica.m_b2,
  quina_estatistica.m_b3,
  quina_estatistica.m_b4
from  ltk_quina.quina_bolas quina_bolas,
      ltk_quina.quina_estatistica quina_estatistica,
    ltk_quina.quina_num quina_num, ltk_quina.quina_id q_id
where quina_bolas.quina_id = quina_estatistica.quina_id
  and quina_bolas.quina_id = q_id.quina_id
  and quina_bolas.quina_id = quina_num.quina_id
  and quina_estatistica.quina_id = quina_num.quina_id
  and quina_estatistica.quina_id = q_id.quina_id
and quina_estatistica.dif_padrao = 'ABCD'

  and par_impar_id in (15, 20)
  and prm_id in (5, 10, 15)
  and (b1_id < 20)
  and num_1 + num_3 + num_4 + num_10 + num_43 = 0
  and num_5 + num_6 + num_8 + num_13 + num_34 = 0
  and num_9 + num_11 + num_12 + num_15 + num_62 = 0
  and num_14 + num_17 + num_30 + num_31 + num_66 = 0
  and num_18 + num_37 + num_55 + num_56 + num_60 = 0
  and num_16 + num_38 + num_39 + num_44 + num_77 = 0
  and num_19 + num_20 + num_22 + num_27 + num_53 = 0
  and num_7 + num_23 + num_24 + num_32 + num_57 = 0
  and num_2 + num_21 + num_25 + num_26 + num_33 = 0

;

Drop View if exists ltk_quina.v_quina_dif_padrao;
Create View ltk_quina.v_quina_dif_padrao as
Select dif_padrao, count(*) qt_vezes from ltk_quina.quina_estatistica
group by dif_padrao order by qt_vezes;


Select dif_padrao, count(*) as qt_vezes from ltk_quina.quina_resultado_quina_id quina_res, ltk_quina.quina_estatistica quina_est
where quina_res.quina_id = quina_est.quina_id
group by dif_padrao

Select b1, b2, b3, b4, b5 from ltk_quina.quina_resultado_quina_id, ltk_quina.quina_resultado_bolas, ltk_quina.quina_resultado_num
where ltk_quina.quina_resultado_quina_id.concurso = ltk_quina.quina_resultado_bolas.concurso
  and ltk_quina.quina_resultado_quina_id.concurso = ltk_quina.quina_resultado_num.concurso

and num_11 = 1;