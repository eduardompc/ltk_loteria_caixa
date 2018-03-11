
/**
  Quando geramos aleatoriamente as combinações, devemos
  saber quais os valores dos campos 'ltf_id' e 'ltf_qt',
  pra isto, devemos criar uma tabela temporária com todas
  as bolas, e em seguida, devemos relacionar a tabela
  lotofacil_aleatorio com a tabela lotofacil_bolas,
  com isto, conseguirmos obter os campos 'ltf_id' e 'ltf_qt'
 */
drop table if exists lotofacil.lotofacil_aleatorio_temporario;
create table lotofacil.lotofacil_aleatorio_temporario(
  ltf_id numeric null,
  ltf_qt numeric not null,
  aleatorio_data TIMESTAMP not null,
  aleatorio_sequencial numeric not null,

  b_1                    NUMERIC DEFAULT 0 ,
  b_2                    NUMERIC DEFAULT 0 ,
  b_3                    NUMERIC DEFAULT 0 ,
  b_4                    NUMERIC DEFAULT 0 ,
  b_5                    NUMERIC DEFAULT 0 ,
  b_6                    NUMERIC DEFAULT 0 ,
  b_7                    NUMERIC DEFAULT 0 ,
  b_8                    NUMERIC DEFAULT 0 ,
  b_9                    NUMERIC DEFAULT 0 ,
  b_10                   NUMERIC DEFAULT 0 ,
  b_11                   NUMERIC DEFAULT 0 ,
  b_12                   NUMERIC DEFAULT 0 ,
  b_13                   NUMERIC DEFAULT 0 ,
  b_14                   NUMERIC DEFAULT 0 ,
  b_15                   NUMERIC DEFAULT 0 ,
  b_16                   NUMERIC DEFAULT null,
  b_17                   NUMERIC DEFAULT null,
  b_18                   NUMERIC DEFAULT null,

  CONSTRAINT lotofacil_aleatorio_temporario_chk CHECK (
    (b_1 < b_2) AND
    (b_2 < b_3) AND
    (b_3 < b_4) AND
    (b_4 < b_5) AND
    (b_5 < b_6) AND
    (b_6 < b_7) AND
    (b_7 < b_8) AND
    (b_8 < b_9) AND
    (b_9 < b_10) AND
    (b_10 < b_11) AND
    (b_11 < b_12) AND
    (b_12 < b_13) AND
    (b_13 < b_14) AND
    (b_14 < b_15)
  ),
  constraint lotofacil_aleatorio_temporario_unk unique (aleatorio_data, aleatorio_sequencial)
);

drop table IF EXISTS lotofacil.lotofacil_aleatorio;
create table lotofacil.lotofacil_aleatorio(
  ltf_id numeric not null,
  ltf_qt numeric not null,
  aleatorio_data TIMESTAMP not null,
  aleatorio_sequencial numeric not null,
  acertos numeric default 0,
  constraint lotofacil_aleatorio_unk unique (aleatorio_data, aleatorio_sequencial)
);


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
  ltf_id.ltf_id = ltf_comp.ltf_id

order by filtros_id;



Drop view if exists lotofacil.v_lotofacil_aleatorio_por_data;
Create View lotofacil.v_lotofacil_aleatorio_por_data AS
  Select  to_char(aleatorio_data, 'dd-MM-YYYY') as data_1,
          to_char(aleatorio_data, 'YYYY-MM-dd') as data_2
  from lotofacil.lotofacil_aleatorio
    group by to_char(aleatorio_data, 'dd-MM-YYYY'), to_char(aleatorio_data, 'YYYY-MM-dd')
order by data_2 desc;

Drop view if exists lotofacil.v_lotofacil_aleatorio_por_data_hora;
Create view lotofacil.v_lotofacil_aleatorio_por_data_hora as
  Select aleatorio_data,
    to_char(aleatorio_data, 'dd-MM-YYYY') data_1,
    to_char(aleatorio_data, 'HH24:MI:SS.US') hora_1
  from lotofacil.lotofacil_aleatorio
    group by aleatorio_data;

Drop view if exists lotofacil.v_lotofacil_aleatorio_acertos_por_data_hora;
Create View lotofacil.v_lotofacil_aleatorio_acertos_por_data_hora
  AS
  Select
    aleatorio_data,
    to_char(aleatorio_data, 'dd-MM-YYYY HH24:MI:SS.US') aleatorio_data_brazil,
    to_char(aleatorio_data, 'YYYY-MM-dd HH24:MI:SS.US') aleatorio_data_USA,
    acertos,
    count(*) as qt_vezes
  from lotofacil.lotofacil_aleatorio
    GROUP BY aleatorio_data, acertos
  order by aleatorio_data desc, acertos desc;




Update lotofacil.lotofacil_aleatorio_temporario ltf_temp
set ltf_id = ltf_bolas.ltf_id
from lotofacil.lotofacil_bolas ltf_bolas
where ltf_bolas.ltf_qt = 15
      and ltf_temp.b_1 = ltf_bolas.b_1
      and ltf_temp.b_2 = ltf_bolas.b_2
      and ltf_temp.b_3 = ltf_bolas.b_3
      and ltf_temp.b_4 = ltf_bolas.b_4
      and ltf_temp.b_5 = ltf_bolas.b_5
      and ltf_temp.b_6 = ltf_bolas.b_6
      and ltf_temp.b_7 = ltf_bolas.b_7
      and ltf_temp.b_8 = ltf_bolas.b_8
      and ltf_temp.b_9 = ltf_bolas.b_9
      and ltf_temp.b_10 = ltf_bolas.b_10
      and ltf_temp.b_11 = ltf_bolas.b_11
      and ltf_temp.b_12 = ltf_bolas.b_12
      and ltf_temp.b_13 = ltf_bolas.b_13
      and ltf_temp.b_14 = ltf_bolas.b_14
      and ltf_temp.b_15 = ltf_bolas.b_15

Select * from lotofacil.lotofacil_bolas
where ltf_id = 505687

Select ltf_id from lotofacil.lotofacil_complementar
    where id_complementar_sequencial = 0
    order by ltf_qt asc,  random() limit 1
