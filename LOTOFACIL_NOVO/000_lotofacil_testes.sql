
Select ltf_a.novos_repetidos_id, count(*) as qt_vz
from lotofacil.lotofacil_id_novos_repetidos ltf_a
left join lotofacil.lotofacil_novos_repetidos ltf_b
  on ltf_a.novos_repetidos_id = ltf_b.novos_repetidos_id
where ltf_b.ltf_qt = 15
group by ltf_a.novos_repetidos_id
order by qt_vz desc



Insert into lotofacil.lotofacil_filtros(
data,ltf_id,ltf_qt,concurso,acertos,novos_repetidos_id_alternado,novos_repetidos_id
)
Select
Now(),lotofacil.lotofacil_num.ltf_id,lotofacil.lotofacil_num.ltf_qt,2,0,novos_repetidos_id_alternado,novos_repetidos_id
from
lotofacil.lotofacil_num,lotofacil.lotofacil_bolas,lotofacil.lotofacil_novos_repetidos,lotofacil.lotofacil_id,lotofacil.v_lotofacil_num_nao_sorteado
where
lotofacil.lotofacil_num.ltf_id = lotofacil.lotofacil_bolas.ltf_id
and
lotofacil.lotofacil_num.ltf_id = lotofacil.lotofacil_novos_repetidos.ltf_id
and
lotofacil.lotofacil_num.ltf_id = lotofacil.lotofacil_id.ltf_id
and
lotofacil.lotofacil_num.ltf_id = lotofacil.v_lotofacil_num_nao_sorteado.ltf_id
and
lotofacil.lotofacil_bolas.ltf_id = lotofacil.lotofacil_novos_repetidos.ltf_id
and
lotofacil.lotofacil_bolas.ltf_id = lotofacil.lotofacil_id.ltf_id
and
lotofacil.lotofacil_bolas.ltf_id = lotofacil.v_lotofacil_num_nao_sorteado.ltf_id
and
lotofacil.lotofacil_novos_repetidos.ltf_id = lotofacil.lotofacil_id.ltf_id
and
lotofacil.lotofacil_novos_repetidos.ltf_id = lotofacil.v_lotofacil_num_nao_sorteado.ltf_id
and
lotofacil.lotofacil_id.ltf_id = lotofacil.v_lotofacil_num_nao_sorteado.ltf_id

and
((lotofacil_novos_repetidos.novos_repetidos_id in (6,7,5))
 and (lotofacil_id.par_impar_id in (15,19,11))
 and (lotofacil_id.prm_id in (18,22))
 and (lotofacil_id.ext_int_id in (11,7))
 and (lotofacil.lotofacil_bolas.b_1 in (1))
 and (lotofacil.lotofacil_bolas.b_2 in (2,3,4))
 and (lotofacil.lotofacil_bolas.b_3 in (4,5,3))
 and (lotofacil.lotofacil_bolas.b_4 in (5,6,7))
 and (lotofacil.lotofacil_bolas.B_5 in (8,7,9))
 and (lotofacil.lotofacil_bolas.b_6 in (10,9,11))
 and (lotofacil.lotofacil_bolas.b_7 in (11,12,13))
 and (lotofacil.lotofacil_bolas.b_8 in (14,13,12))
 and (lotofacil.lotofacil_bolas.b_9 in (15,14,16))
 and (lotofacil.lotofacil_bolas.b_10 in (16,17,18))
 and (lotofacil.lotofacil_bolas.b_11 in (19,18,17))
 and (lotofacil.lotofacil_bolas.b_12 in (20,21,19))
 and (lotofacil.lotofacil_bolas.b_13 in (22,21,23))
 and (lotofacil.lotofacil_bolas.b_14 in (24,23,22))
 and (lotofacil.lotofacil_bolas.b_15 in (25,24))
)
and
(lotofacil.lotofacil_num.ltf_qt not in (16,17,18))
order by novos_repetidos_id asc
limit 100
