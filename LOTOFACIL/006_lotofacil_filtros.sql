/**
  Tabelas, view, functions, procedure e triggers referente a filtros.
 */

/**
  Toda vez que realizarmos os filtros das informações que queremos
  retornar, iremos inserir as informações filtradas nesta tabela.
 */
drop table if exists lotofacil.lotofacil_filtros;
create table lotofacil.lotofacil_filtros(
  filtros_id BIGSERIAL,
  data TIMESTAMP,
  ltf_id numeric not null,
  ltf_qt numeric not null,
  concurso numeric not null,
  acertos numeric null,
  concurso_bola_qt_vezes numeric null,

  id_seq_aleatorio numeric null,
  id_seq_complementar numeric null,
  id_seq_novos_repetidos numeric null,

  novos_repetidos_id_alternado numeric default 0,
  novos_repetidos_id numeric default 0,
  qt_alt_seq numeric default 0,

  data_aleatorio TIMESTAMP default 0,
  aleatorio_sequencial numeric default 0,

  concurso_soma_frequencia_bolas numeric null,

  CONSTRAINT lotofacil_filtros_fk FOREIGN KEY (ltf_id) REFERENCES lotofacil.lotofacil_num(ltf_id)
);
comment on column lotofacil.lotofacil_filtros.id_seq_novos_repetidos is
'';



alter table lotofacil.lotofacil_filtros drop CONSTRAINT lotofacil_filtros_fk;
alter table lotofacil.lotofacil_filtros add CONSTRAINT lotofacil_filtros_fk FOREIGN KEY (ltf_id) REFERENCES lotofacil.lotofacil_num(ltf_id) on update cascade on delete cascade;






Select data, to_char(data, 'dd-MM-YYYY HH24:MI:SS.US') from lotofacil.lotofacil_filtros;




Select data, to_char(data, 'dd-MM-YYYY') from lotofacil.lotofacil_filtros

Select data, to_char(lotofacil.lotofacil_filtros.data, 'HH24:MI:SS.US') from lotofacil.lotofacil_filtros
group by data;


Drop view if exists lotofacil.v_lotofacil_filtros_por_data;
Create View lotofacil.v_lotofacil_filtros_por_data AS
  Select  to_char(data, 'dd-MM-YYYY') as data_1,
          to_char(data, 'YYYY-MM-dd') as data_2
  from lotofacil.lotofacil_filtros
    group by to_char(data, 'dd-MM-YYYY'), to_char(data, 'YYYY-MM-dd')
order by data_2 desc;

Drop view if exists lotofacil.v_lotofacil_filtros_por_data_hora;
Create view lotofacil.v_lotofacil_filtros_por_data_hora as
  Select data,
    to_char(data, 'dd-MM-YYYY') data_1,
    to_char(data, 'HH24:MI:SS.US') hora_1
  from lotofacil.lotofacil_filtros
    group by data;

Drop view if exists lotofacil.v_lotofacil_filtros_acertos_por_data_hora;
Create View lotofacil.v_lotofacil_filtros_acertos_por_data_hora
  AS
  Select
    data,
    to_char(data, 'dd-MM-YYYY HH24:MI:SS.US') data_brazil,
    to_char(data, 'YYYY-MM-dd HH24:MI:SS.US') data_USA,
    acertos,
    count(*) as qt_vezes
  from lotofacil.lotofacil_filtros
    GROUP BY data, acertos
  order by data desc, acertos desc;





Drop View if exists lotofacil.v_lotofacil_filtros;
Create view lotofacil.v_lotofacil_filtros as
Select 
  ltf_filtros.filtros_id, 
  ltf_filtros.data,
  ltf_filtros.novos_repetidos_id_alternado,
  ltf_filtros.acertos,
  ltf_bolas.ltf_id, 
  ltf_bolas.ltf_qt,  
  ltf_bolas.b_1,
  ltf_bolas.b_2,
  ltf_bolas.b_3,
  ltf_bolas.b_4,
  ltf_bolas.b_5,
  ltf_bolas.b_6,
  ltf_bolas.b_7,
  ltf_bolas.b_8,
  ltf_bolas.b_9,
  ltf_bolas.b_10,
  ltf_bolas.b_11,
  ltf_bolas.b_12,
  ltf_bolas.b_13,
  ltf_bolas.b_14,
  ltf_bolas.b_15,
  ltf_bolas.b_16,
  ltf_bolas.b_17,
  ltf_bolas.b_18,

  ltf_comp.id_complementar_sequencial,

  ltf_par_impar.par,
  ltf_par_impar.impar,

  ltf_externo_interno.externo,
  ltf_externo_interno.interno,

  ltf_primo.primo,
  ltf_primo.nao_primo,

  ltf_novos_repetidos.novos,
  ltf_novos_repetidos.repetidos,

  ltf_hrz.hrz_1,
  ltf_hrz.hrz_2,
  ltf_hrz.hrz_3,
  ltf_hrz.hrz_4,
  ltf_hrz.hrz_5,

  ltf_vrt.vrt_1,
  ltf_vrt.vrt_2,
  ltf_vrt.vrt_3,
  ltf_vrt.vrt_4,
  ltf_vrt.vrt_5,
  
  ltf_dg.dg_1,
  ltf_dg.dg_2,
  ltf_dg.dg_3,
  ltf_dg.dg_4,
  ltf_dg.dg_5,

  concurso_soma_frequencia_bolas,

  ltf_filtros.qt_alt_seq,

  ltf_dif.qt_alt,
  ltf_dif.qt_dif_1,
  ltf_dif.qt_dif_2,
  ltf_dif.qt_dif_3,
  ltf_dif.qt_dif_4,
  ltf_dif.qt_dif_5,
  ltf_dif.qt_dif_6,
  ltf_dif.qt_dif_7,
  ltf_dif.qt_dif_8,
  ltf_dif.qt_dif_9,
  ltf_dif.qt_dif_10,
  ltf_dif.qt_dif_11

from lotofacil.lotofacil_filtros ltf_filtros,
  lotofacil.lotofacil_bolas ltf_bolas,
  lotofacil.lotofacil_diferenca_entre_bolas ltf_dif,
  lotofacil.lotofacil_complementar ltf_comp,
  
  lotofacil.lotofacil_id ltf_id,
  lotofacil.lotofacil_id_par_impar ltf_par_impar,
  lotofacil.lotofacil_id_externo_interno ltf_externo_interno,
  lotofacil.lotofacil_id_primo ltf_primo,
  lotofacil.lotofacil_id_horizontal ltf_hrz,
  lotofacil.lotofacil_id_vertical ltf_vrt,
  lotofacil.lotofacil_id_diagonal ltf_dg,
  lotofacil.lotofacil_id_novos_repetidos ltf_novos_repetidos
  
  
where ltf_filtros.ltf_id = ltf_bolas.ltf_id AND 
  ltf_filtros.ltf_id = ltf_id.ltf_id AND
  ltf_filtros.ltf_id = ltf_dif.ltf_id and
  ltf_filtros.ltf_id = ltf_comp.ltf_id and
  
  ltf_id.par_impar_id = ltf_par_impar.par_impar_id AND
  ltf_id.ext_int_id = ltf_externo_interno.ext_int_id AND
  ltf_id.prm_id = ltf_primo.prm_id AND 
  ltf_id.hrz_id = ltf_hrz.hrz_id AND 
  ltf_id.vrt_id = ltf_vrt.vrt_id AND 
  ltf_id.dg_id = ltf_dg.dg_id and

  ltf_filtros.novos_repetidos_id = ltf_novos_repetidos.novos_repetidos_id and
  
  ltf_bolas.ltf_id = ltf_id.ltf_id and
  ltf_bolas.ltf_id = ltf_dif.ltf_id and
  ltf_bolas.ltf_id = ltf_comp.ltf_id and

  ltf_id.ltf_id = ltf_dif.ltf_id AND
  ltf_id.ltf_id = ltf_comp.ltf_id and

  ltf_dif.ltf_id = ltf_comp.ltf_id

order by filtros_id;



Update lotofacil.lotofacil_filtros
set acertos =
num_1 + num_2 + num_3 + num_4 + num_5 + num_6 + num_9 + num_12 + num_14 + num_15 + num_16 + num_19 + num_20 + num_22 + num_25
from lotofacil.lotofacil_num
where lotofacil.lotofacil_filtros.ltf_id =
lotofacil.lotofacil_num.ltf_id
And to_char(data,
'dd-MM-YYYY HH24:MI:SS.US')
= '01-12-2017 15:40:11.430697'


Select acertos, qt_vezes
from lotofacil.v_lotofacil_filtros_acertos_por_data_hora
where to_char(data,
'dd-MM-YYYY HH24:MI:SS.US')
= '01-12-2017 15:40:11.430697'
order by acertos asc




  
  
  
  

  
  