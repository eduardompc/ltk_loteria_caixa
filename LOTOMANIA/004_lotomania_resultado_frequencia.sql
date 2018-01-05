drop table if exists lotomania.lotomania_resultado_num_frequencia;
CREATE TABLE lotomania.lotomania_resultado_num_frequencia (
  concurso         NUMERIC      NOT NULL,

  num_0                    NUMERIC default 0,
  num_1                    NUMERIC default 0,
  num_2                    NUMERIC default 0,
  num_3                    NUMERIC default 0,
  num_4                    NUMERIC default 0,
  num_5                    NUMERIC default 0,
  num_6                    NUMERIC default 0,
  num_7                    NUMERIC default 0,
  num_8                    NUMERIC default 0,
  num_9                    NUMERIC default 0,
  num_10                   NUMERIC default 0,
  num_11                   NUMERIC default 0,
  num_12                   NUMERIC default 0,
  num_13                   NUMERIC default 0,
  num_14                   NUMERIC default 0,
  num_15                   NUMERIC default 0,
  num_16                   NUMERIC default 0,
  num_17                   NUMERIC default 0,
  num_18                   NUMERIC default 0,
  num_19                   NUMERIC default 0,
  num_20                   NUMERIC default 0,
  num_21                   NUMERIC default 0,
  num_22                   NUMERIC default 0,
  num_23                   NUMERIC default 0,
  num_24                   NUMERIC default 0,
  num_25                   NUMERIC default 0,
  num_26                   NUMERIC default 0,
  num_27                   NUMERIC default 0,
  num_28                   NUMERIC default 0,
  num_29                   NUMERIC default 0,
  num_30                   NUMERIC default 0,
  num_31                   NUMERIC default 0,
  num_32                   NUMERIC default 0,
  num_33                   NUMERIC default 0,
  num_34                   NUMERIC default 0,
  num_35                   NUMERIC default 0,
  num_36                   NUMERIC default 0,
  num_37                   NUMERIC default 0,
  num_38                   NUMERIC default 0,
  num_39                   NUMERIC default 0,
  num_40                   NUMERIC default 0,
  num_41                   NUMERIC default 0,
  num_42                   NUMERIC default 0,
  num_43                   NUMERIC default 0,
  num_44                   NUMERIC default 0,
  num_45                   NUMERIC default 0,
  num_46                   NUMERIC default 0,
  num_47                   NUMERIC default 0,
  num_48                   NUMERIC default 0,
  num_49                   NUMERIC default 0,
  num_50                   NUMERIC default 0,
  num_51                   NUMERIC default 0,
  num_52                   NUMERIC default 0,
  num_53                   NUMERIC default 0,
  num_54                   NUMERIC default 0,
  num_55                   NUMERIC default 0,
  num_56                   NUMERIC default 0,
  num_57                   NUMERIC default 0,
  num_58                   NUMERIC default 0,
  num_59                   NUMERIC default 0,
  num_60                   NUMERIC default 0,
  num_61                   NUMERIC default 0,
  num_62                   NUMERIC default 0,
  num_63                   NUMERIC default 0,
  num_64                   NUMERIC default 0,
  num_65                   NUMERIC default 0,
  num_66                   NUMERIC default 0,
  num_67                   NUMERIC default 0,
  num_68                   NUMERIC default 0,
  num_69                   NUMERIC default 0,
  num_70                   NUMERIC default 0,
  num_71                   NUMERIC default 0,
  num_72                   NUMERIC default 0,
  num_73                   NUMERIC default 0,
  num_74                   NUMERIC default 0,
  num_75                   NUMERIC default 0,
  num_76                   NUMERIC default 0,
  num_77                   NUMERIC default 0,
  num_78                   NUMERIC default 0,
  num_79                   NUMERIC default 0,
  num_80                   NUMERIC default 0,
  num_81                   NUMERIC default 0,
  num_82                   NUMERIC default 0,
  num_83                   NUMERIC default 0,
  num_84                   NUMERIC default 0,
  num_85                   NUMERIC default 0,
  num_86                   NUMERIC default 0,
  num_87                   NUMERIC default 0,
  num_88                   NUMERIC default 0,
  num_89                   NUMERIC default 0,
  num_90                   NUMERIC default 0,
  num_91                   NUMERIC default 0,
  num_92                   NUMERIC default 0,
  num_93                   NUMERIC default 0,
  num_94                   NUMERIC default 0,
  num_95                   NUMERIC default 0,
  num_96                   NUMERIC default 0,
  num_97                   NUMERIC default 0,
  num_98                   NUMERIC default 0,
  num_99                   NUMERIC default 0,

  CONSTRAINT lotomania_resultado_num_frequencia_pk PRIMARY KEY (concurso)
);

drop table if exists lotomania.lotomania_resultado_num_frequencia_total;
CREATE TABLE lotomania.lotomania_resultado_num_frequencia_total (
  concurso         NUMERIC      NOT NULL,

  num_0                    NUMERIC default 0,
  num_1                    NUMERIC default 0,
  num_2                    NUMERIC default 0,
  num_3                    NUMERIC default 0,
  num_4                    NUMERIC default 0,
  num_5                    NUMERIC default 0,
  num_6                    NUMERIC default 0,
  num_7                    NUMERIC default 0,
  num_8                    NUMERIC default 0,
  num_9                    NUMERIC default 0,
  num_10                   NUMERIC default 0,
  num_11                   NUMERIC default 0,
  num_12                   NUMERIC default 0,
  num_13                   NUMERIC default 0,
  num_14                   NUMERIC default 0,
  num_15                   NUMERIC default 0,
  num_16                   NUMERIC default 0,
  num_17                   NUMERIC default 0,
  num_18                   NUMERIC default 0,
  num_19                   NUMERIC default 0,
  num_20                   NUMERIC default 0,
  num_21                   NUMERIC default 0,
  num_22                   NUMERIC default 0,
  num_23                   NUMERIC default 0,
  num_24                   NUMERIC default 0,
  num_25                   NUMERIC default 0,
  num_26                   NUMERIC default 0,
  num_27                   NUMERIC default 0,
  num_28                   NUMERIC default 0,
  num_29                   NUMERIC default 0,
  num_30                   NUMERIC default 0,
  num_31                   NUMERIC default 0,
  num_32                   NUMERIC default 0,
  num_33                   NUMERIC default 0,
  num_34                   NUMERIC default 0,
  num_35                   NUMERIC default 0,
  num_36                   NUMERIC default 0,
  num_37                   NUMERIC default 0,
  num_38                   NUMERIC default 0,
  num_39                   NUMERIC default 0,
  num_40                   NUMERIC default 0,
  num_41                   NUMERIC default 0,
  num_42                   NUMERIC default 0,
  num_43                   NUMERIC default 0,
  num_44                   NUMERIC default 0,
  num_45                   NUMERIC default 0,
  num_46                   NUMERIC default 0,
  num_47                   NUMERIC default 0,
  num_48                   NUMERIC default 0,
  num_49                   NUMERIC default 0,
  num_50                   NUMERIC default 0,
  num_51                   NUMERIC default 0,
  num_52                   NUMERIC default 0,
  num_53                   NUMERIC default 0,
  num_54                   NUMERIC default 0,
  num_55                   NUMERIC default 0,
  num_56                   NUMERIC default 0,
  num_57                   NUMERIC default 0,
  num_58                   NUMERIC default 0,
  num_59                   NUMERIC default 0,
  num_60                   NUMERIC default 0,
  num_61                   NUMERIC default 0,
  num_62                   NUMERIC default 0,
  num_63                   NUMERIC default 0,
  num_64                   NUMERIC default 0,
  num_65                   NUMERIC default 0,
  num_66                   NUMERIC default 0,
  num_67                   NUMERIC default 0,
  num_68                   NUMERIC default 0,
  num_69                   NUMERIC default 0,
  num_70                   NUMERIC default 0,
  num_71                   NUMERIC default 0,
  num_72                   NUMERIC default 0,
  num_73                   NUMERIC default 0,
  num_74                   NUMERIC default 0,
  num_75                   NUMERIC default 0,
  num_76                   NUMERIC default 0,
  num_77                   NUMERIC default 0,
  num_78                   NUMERIC default 0,
  num_79                   NUMERIC default 0,
  num_80                   NUMERIC default 0,
  num_81                   NUMERIC default 0,
  num_82                   NUMERIC default 0,
  num_83                   NUMERIC default 0,
  num_84                   NUMERIC default 0,
  num_85                   NUMERIC default 0,
  num_86                   NUMERIC default 0,
  num_87                   NUMERIC default 0,
  num_88                   NUMERIC default 0,
  num_89                   NUMERIC default 0,
  num_90                   NUMERIC default 0,
  num_91                   NUMERIC default 0,
  num_92                   NUMERIC default 0,
  num_93                   NUMERIC default 0,
  num_94                   NUMERIC default 0,
  num_95                   NUMERIC default 0,
  num_96                   NUMERIC default 0,
  num_97                   NUMERIC default 0,
  num_98                   NUMERIC default 0,
  num_99                   NUMERIC default 0,

  CONSTRAINT lotomania_resultado_num_frequencia_total_pk PRIMARY KEY (concurso)
);


drop table if exists lotomania.lotomania_resultado_num_qt_vezes;
CREATE TABLE lotomania.lotomania_resultado_num_qt_vezes (
  concurso         NUMERIC      NOT NULL,

  num_0                    NUMERIC not null default 0,
  num_1                    NUMERIC not null default 0,
  num_2                    NUMERIC not null default 0,
  num_3                    NUMERIC not null default 0,
  num_4                    NUMERIC not null default 0,
  num_5                    NUMERIC not null default 0,
  num_6                    NUMERIC not null default 0,
  num_7                    NUMERIC not null default 0,
  num_8                    NUMERIC not null default 0,
  num_9                    NUMERIC not null default 0,
  num_10                   NUMERIC not null default 0,
  num_11                   NUMERIC not null default 0,
  num_12                   NUMERIC not null default 0,
  num_13                   NUMERIC not null default 0,
  num_14                   NUMERIC not null default 0,
  num_15                   NUMERIC not null default 0,
  num_16                   NUMERIC not null default 0,
  num_17                   NUMERIC not null default 0,
  num_18                   NUMERIC not null default 0,
  num_19                   NUMERIC not null default 0,
  num_20                   NUMERIC not null default 0,
  num_21                   NUMERIC not null default 0,
  num_22                   NUMERIC not null default 0,
  num_23                   NUMERIC not null default 0,
  num_24                   NUMERIC not null default 0,
  num_25                   NUMERIC not null default 0,
  num_26                   NUMERIC not null default 0,
  num_27                   NUMERIC not null default 0,
  num_28                   NUMERIC not null default 0,
  num_29                   NUMERIC not null default 0,
  num_30                   NUMERIC not null default 0,
  num_31                   NUMERIC not null default 0,
  num_32                   NUMERIC not null default 0,
  num_33                   NUMERIC not null default 0,
  num_34                   NUMERIC not null default 0,
  num_35                   NUMERIC not null default 0,
  num_36                   NUMERIC not null default 0,
  num_37                   NUMERIC not null default 0,
  num_38                   NUMERIC not null default 0,
  num_39                   NUMERIC not null default 0,
  num_40                   NUMERIC not null default 0,
  num_41                   NUMERIC not null default 0,
  num_42                   NUMERIC not null default 0,
  num_43                   NUMERIC not null default 0,
  num_44                   NUMERIC not null default 0,
  num_45                   NUMERIC not null default 0,
  num_46                   NUMERIC not null default 0,
  num_47                   NUMERIC not null default 0,
  num_48                   NUMERIC not null default 0,
  num_49                   NUMERIC not null default 0,
  num_50                   NUMERIC not null default 0,
  num_51                   NUMERIC not null default 0,
  num_52                   NUMERIC not null default 0,
  num_53                   NUMERIC not null default 0,
  num_54                   NUMERIC not null default 0,
  num_55                   NUMERIC not null default 0,
  num_56                   NUMERIC not null default 0,
  num_57                   NUMERIC not null default 0,
  num_58                   NUMERIC not null default 0,
  num_59                   NUMERIC not null default 0,
  num_60                   NUMERIC not null default 0,
  num_61                   NUMERIC not null default 0,
  num_62                   NUMERIC not null default 0,
  num_63                   NUMERIC not null default 0,
  num_64                   NUMERIC not null default 0,
  num_65                   NUMERIC not null default 0,
  num_66                   NUMERIC not null default 0,
  num_67                   NUMERIC not null default 0,
  num_68                   NUMERIC not null default 0,
  num_69                   NUMERIC not null default 0,
  num_70                   NUMERIC not null default 0,
  num_71                   NUMERIC not null default 0,
  num_72                   NUMERIC not null default 0,
  num_73                   NUMERIC not null default 0,
  num_74                   NUMERIC not null default 0,
  num_75                   NUMERIC not null default 0,
  num_76                   NUMERIC not null default 0,
  num_77                   NUMERIC not null default 0,
  num_78                   NUMERIC not null default 0,
  num_79                   NUMERIC not null default 0,
  num_80                   NUMERIC not null default 0,
  num_81                   NUMERIC not null default 0,
  num_82                   NUMERIC not null default 0,
  num_83                   NUMERIC not null default 0,
  num_84                   NUMERIC not null default 0,
  num_85                   NUMERIC not null default 0,
  num_86                   NUMERIC not null default 0,
  num_87                   NUMERIC not null default 0,
  num_88                   NUMERIC not null default 0,
  num_89                   NUMERIC not null default 0,
  num_90                   NUMERIC not null default 0,
  num_91                   NUMERIC not null default 0,
  num_92                   NUMERIC not null default 0,
  num_93                   NUMERIC not null default 0,
  num_94                   NUMERIC not null default 0,
  num_95                   NUMERIC not null default 0,
  num_96                   NUMERIC not null default 0,
  num_97                   NUMERIC not null default 0,
  num_98                   NUMERIC not null default 0,
  num_99                   NUMERIC not null default 0,

  CONSTRAINT lotomania_resultado_num_qt_vezes_pk PRIMARY KEY (concurso)
);


drop table if exists lotomania.lotomania_resultado_num_sobe_desce;
CREATE TABLE lotomania.lotomania_resultado_num_sobe_desce (
  concurso         NUMERIC      NOT NULL,

  num_0                    NUMERIC not null default 0,
  num_1                    NUMERIC not null default 0,
  num_2                    NUMERIC not null default 0,
  num_3                    NUMERIC not null default 0,
  num_4                    NUMERIC not null default 0,
  num_5                    NUMERIC not null default 0,
  num_6                    NUMERIC not null default 0,
  num_7                    NUMERIC not null default 0,
  num_8                    NUMERIC not null default 0,
  num_9                    NUMERIC not null default 0,
  num_10                   NUMERIC not null default 0,
  num_11                   NUMERIC not null default 0,
  num_12                   NUMERIC not null default 0,
  num_13                   NUMERIC not null default 0,
  num_14                   NUMERIC not null default 0,
  num_15                   NUMERIC not null default 0,
  num_16                   NUMERIC not null default 0,
  num_17                   NUMERIC not null default 0,
  num_18                   NUMERIC not null default 0,
  num_19                   NUMERIC not null default 0,
  num_20                   NUMERIC not null default 0,
  num_21                   NUMERIC not null default 0,
  num_22                   NUMERIC not null default 0,
  num_23                   NUMERIC not null default 0,
  num_24                   NUMERIC not null default 0,
  num_25                   NUMERIC not null default 0,
  num_26                   NUMERIC not null default 0,
  num_27                   NUMERIC not null default 0,
  num_28                   NUMERIC not null default 0,
  num_29                   NUMERIC not null default 0,
  num_30                   NUMERIC not null default 0,
  num_31                   NUMERIC not null default 0,
  num_32                   NUMERIC not null default 0,
  num_33                   NUMERIC not null default 0,
  num_34                   NUMERIC not null default 0,
  num_35                   NUMERIC not null default 0,
  num_36                   NUMERIC not null default 0,
  num_37                   NUMERIC not null default 0,
  num_38                   NUMERIC not null default 0,
  num_39                   NUMERIC not null default 0,
  num_40                   NUMERIC not null default 0,
  num_41                   NUMERIC not null default 0,
  num_42                   NUMERIC not null default 0,
  num_43                   NUMERIC not null default 0,
  num_44                   NUMERIC not null default 0,
  num_45                   NUMERIC not null default 0,
  num_46                   NUMERIC not null default 0,
  num_47                   NUMERIC not null default 0,
  num_48                   NUMERIC not null default 0,
  num_49                   NUMERIC not null default 0,
  num_50                   NUMERIC not null default 0,
  num_51                   NUMERIC not null default 0,
  num_52                   NUMERIC not null default 0,
  num_53                   NUMERIC not null default 0,
  num_54                   NUMERIC not null default 0,
  num_55                   NUMERIC not null default 0,
  num_56                   NUMERIC not null default 0,
  num_57                   NUMERIC not null default 0,
  num_58                   NUMERIC not null default 0,
  num_59                   NUMERIC not null default 0,
  num_60                   NUMERIC not null default 0,
  num_61                   NUMERIC not null default 0,
  num_62                   NUMERIC not null default 0,
  num_63                   NUMERIC not null default 0,
  num_64                   NUMERIC not null default 0,
  num_65                   NUMERIC not null default 0,
  num_66                   NUMERIC not null default 0,
  num_67                   NUMERIC not null default 0,
  num_68                   NUMERIC not null default 0,
  num_69                   NUMERIC not null default 0,
  num_70                   NUMERIC not null default 0,
  num_71                   NUMERIC not null default 0,
  num_72                   NUMERIC not null default 0,
  num_73                   NUMERIC not null default 0,
  num_74                   NUMERIC not null default 0,
  num_75                   NUMERIC not null default 0,
  num_76                   NUMERIC not null default 0,
  num_77                   NUMERIC not null default 0,
  num_78                   NUMERIC not null default 0,
  num_79                   NUMERIC not null default 0,
  num_80                   NUMERIC not null default 0,
  num_81                   NUMERIC not null default 0,
  num_82                   NUMERIC not null default 0,
  num_83                   NUMERIC not null default 0,
  num_84                   NUMERIC not null default 0,
  num_85                   NUMERIC not null default 0,
  num_86                   NUMERIC not null default 0,
  num_87                   NUMERIC not null default 0,
  num_88                   NUMERIC not null default 0,
  num_89                   NUMERIC not null default 0,
  num_90                   NUMERIC not null default 0,
  num_91                   NUMERIC not null default 0,
  num_92                   NUMERIC not null default 0,
  num_93                   NUMERIC not null default 0,
  num_94                   NUMERIC not null default 0,
  num_95                   NUMERIC not null default 0,
  num_96                   NUMERIC not null default 0,
  num_97                   NUMERIC not null default 0,
  num_98                   NUMERIC not null default 0,
  num_99                   NUMERIC not null default 0,

  CONSTRAINT lotomania_resultado_num_sobe_desce_pk PRIMARY KEY (concurso)
);





/**
  Esta tabela é semelhante à tabela lotofacil_resultado_num_frequencia, entretanto
  haverá além do concurso, os campos bola e a frequência
 */
drop table if exists lotomania.lotomania_resultado_bolas_frequencia;
create table lotomania.lotomania_resultado_bolas_frequencia(
  concurso numeric not null,
  bola numeric not null,
  frequencia numeric not null,
  CONSTRAINT lotomania_resultado_bolas_frequencia_FK FOREIGN KEY (concurso) REFERENCES lotomania.lotomania_resultado_num(concurso) on update cascade on delete cascade
);

drop table if exists lotomania.lotomania_resultado_bolas_frequencia_total;
create table lotomania.lotomania_resultado_bolas_frequencia_total(
  concurso numeric not null,
  bola numeric not null,
  frequencia numeric not null,
  CONSTRAINT lotomania_resultado_bolas_frequencia_FK FOREIGN KEY (concurso) REFERENCES lotomania.lotomania_resultado_num(concurso) on update cascade on delete cascade
);

drop table if exists lotomania.lotomania_resultado_bolas_qt_vezes;
create table lotomania.lotomania_resultado_bolas_qt_vezes(
  concurso numeric not null,
  bola numeric not null,
  qt_vezes numeric not null,
  CONSTRAINT lotomania_resultado_bolas_qt_vezes_FK FOREIGN KEY (concurso) REFERENCES lotomania.lotomania_resultado_num(concurso) on update cascade on delete cascade
);

drop table if exists lotomania.lotomania_resultado_bolas_sobe_desce;
create table lotomania.lotomania_resultado_bolas_sobe_desce(
  concurso numeric not null,
  bola numeric not null,
  sobe_desce numeric not null,
  CONSTRAINT lotomania_resultado_bolas_sobe_desce_FK FOREIGN KEY (concurso) REFERENCES lotomania.lotomania_resultado_num(concurso) on update cascade on delete cascade
);

/**
  Indica a quantidade de vezes, que cada status apareceu no concurso.
 */
drop table if exists lotomania.lotomania_resultado_bolas_frequencia_status_total;
create table lotomania.lotomania_resultado_bolas_frequencia_status_total(
  concurso numeric not null,
  ainda_nao_saiu numeric not null,
  deixou_de_sair numeric not null,
  novos numeric not null,
  repetindo numeric not null
);

drop view if EXISTS lotomania.v_lotomania_resultado_bolas_frequencia;
create view lotomania.v_lotomania_resultado_bolas_frequencia as
  select concurso, bola,
    case when mod(bola, 2) = 0 then
      'PAR'
    ELSE
      'IMPAR'
    END as PAR_IMPAR,
    case
      when frequencia < -1 THEN
        'ainda_nao_saiu'
      when frequencia = -1 THEN
        'deixou_de_sair'
      when frequencia = 1 THEN
        'novo'
      when frequencia > 1 THEN
        'repetindo'
    end as frequencia_status,
    frequencia

    from lotomania.lotomania_resultado_bolas_frequencia
      order by concurso desc, frequencia asc, bola asc;

drop view if exists lotomania.v_lotomania_resultado_bolas_frequencia_total;
create view lotomania.v_lotomania_resultado_bolas_frequencia_total AS
  Select
    ltf_freq.concurso,
    ltf_freq.bola,
    ltf_freq.par_impar,
    frequencia_status as freq_status,
    ltf_freq.frequencia as freq,
    ltf_freq_total.frequencia freq_total,
    ltf_qt_vezes.qt_vezes,
    ltf_desce_sobe.sobe_desce

    from lotomania.v_lotomania_resultado_bolas_frequencia ltf_freq,
      lotomania.lotomania_resultado_bolas_frequencia_total ltf_freq_total,
      lotomania.lotomania_resultado_bolas_qt_vezes ltf_qt_vezes,
      lotomania.lotomania_resultado_bolas_sobe_desce ltf_desce_sobe
  where ltf_freq.concurso = ltf_freq_total.concurso
  and ltf_freq.concurso = ltf_qt_vezes.concurso
  and ltf_freq.concurso = ltf_desce_sobe.concurso
  and ltf_freq_total.concurso = ltf_qt_vezes.concurso
  and ltf_freq_total.concurso = ltf_desce_sobe.concurso
  and ltf_qt_vezes.concurso = ltf_desce_sobe.concurso

  and ltf_freq.bola = ltf_freq_total.bola
  and ltf_freq.bola = ltf_qt_vezes.bola
  and ltf_freq.bola = ltf_desce_sobe.bola

  and ltf_freq_total.bola = ltf_qt_vezes.bola
  and ltf_freq_total.bola = ltf_desce_sobe.bola

  and ltf_freq_total.bola = ltf_desce_sobe.bola
  order by concurso desc, freq asc, qt_vezes asc;

/**
  Há os status:
    Ainda_nao_saiu
    Novo
    Repetindo
    Deixou_de_sair

  Então, iremos verificar quantas vezes cada status saiu.
  Primeiro, iremos agrupar por concurso e frequencia_status
  Pois, queremos identificar quantas vezes, o mesmo status apareceu em um único concurso,
  em seguida, iremos agrupados estes dados agrupados, por frequencia_status e qt_vezes.
  Então, com isto, saberemos, quais são os padrões que mais saem.
 */
drop view if exists lotomania.v_lotomania_resultado_frequencia_status;
create view lotomania.v_lotomania_resultado_frequencia_status AS
  Select frequencia_status, qt_vezes as qt_status, count(*) qt_vezes from
    ( Select frequencia_status, count(*) as qt_vezes from lotomania.v_lotomania_resultado_bolas_frequencia
    group by concurso, frequencia_status) ltf_primeiro_agrupamento
  group by frequencia_status, qt_vezes
  order by frequencia_status asc, qt_vezes desc;


drop view if exists lotomania.v_lotomania_resultado_bolas_frequencia_status_total;
create view lotomania.v_lotomania_resultado_bolas_frequencia_status_total AS
select ainda_nao_saiu, deixou_de_sair, novos, repetindo, count(*) as qt_vezes
  from lotomania.lotomania_resultado_bolas_frequencia_status_total
    group by ainda_nao_saiu, deixou_de_sair, novos, repetindo
  order by qt_vezes desc;





/***
  Função para atualizar as tabelas de novos, repetidos, ainda_nao_saiu e deixou_de_sair.
 */
DROP FUNCTION IF EXISTS lotomania.fn_lotomania_resultado_frequencia_atualizar();
CREATE FUNCTION lotomania.fn_lotomania_resultado_frequencia_atualizar()
  RETURNS VOID
LANGUAGE plpgsql
AS $$
DECLARE
  -- Serve pra armazenar cada registro, após percorremos no loop.
  reg_lotomania_resultado_num          lotomania.lotomania_resultado_num%ROWTYPE;

  lotomania_resultado_num_atual NUMERIC [100];
  lotomania_resultado_num_frequencia      NUMERIC [100];
  
  lotomania_resultado_num_frequencia_total numeric[100];
  
  lotomania_resultado_num_qt_vezes numeric[100];
  
  lotomania_resultado_num_sobe_desce numeric[100];

  -- As 6 variáveis abaixo armazena a quantidade de novos, repetidos, deixou_de_sair e ainda_nao_saiu
  -- encontradas.
  qt_novos numeric;
  qt_repetidos numeric;
  qt_deixou_de_sair numeric;
  qt_ainda_nao_saiu numeric;
  
  qtAlternaram_para_Positivo      NUMERIC;
  qtAlternaram_para_Negativo      NUMERIC;
  
  -- Variáveis utilizadas pra popular as tabelas que terminam com o sufixo num:
  -- lotomania_resultado_novos_num,
  -- lotomania_resultado_repetidos_num;
  -- lotomania_resultado_deixou_de_sair_num;
  -- lotomania_resultado_ainda_nao_saiu_num;  
  sql_novos_num text;
  sql_repetidos_num text;
  sql_deixou_de_sair_num text;
  sql_ainda_nao_saiu_num text;
  
  -- Variáveis utilizadas pra popular as tabelas que terminam com o sufixo bolas:
  -- lotomania_resultado_novos_bolas,
  -- lotomania_resultado_repetidos_bolas;
  -- lotomania_resultado_deixou_de_sair_bolas;
  -- lotomania_resultado_ainda_nao_saiu_bolas;  
  
  sql_novos_bolas text;
  sql_repetidos_bolas text;
  sql_deixou_de_sair_bolas text;
  sql_ainda_nao_saiu_bolas text;

  sql_bolas_coluna text;
  sql_num_valor_1 text;
  
  b_primeiro_concurso BOOLEAN;
  

  strAlternaram_para_Positivo     CHARACTER VARYING;
  strAlternaram_para_negativo     CHARACTER VARYING;


  soma_frequencia numeric;
  qt_Pares numeric;
  qt_Impares numeric;

  uA numeric;
  uB numeric;




BEGIN
  -- Deleta todas as tabelas referente a novos, repetidos, ainda nao saiu, deixou de sair.
  /*
  DELETE FROM lotomania.lotomania_resultado_novos_num;
  DELETE from lotomania.lotomania_resultado_repetidos_num;
  DELETE from lotomania.lotomania_resultado_ainda_nao_saiu_num;
  DELETE from lotomania.lotomania_resultado_deixou_de_sair_num;
  
  DELETE FROM lotomania.lotomania_resultado_novos_bolas;
  DELETE from lotomania.lotomania_resultado_repetidos_bolas;
  DELETE from lotomania.lotomania_resultado_ainda_nao_saiu_bolas;
  DELETE from lotomania.lotomania_resultado_deixou_de_sair_bolas;
  */
  
  DELETE FROM lotomania.lotomania_resultado_num_frequencia;
  Delete from lotomania.lotomania_resultado_num_frequencia_total;

  Delete from lotomania.lotomania_resultado_bolas_frequencia;
  Delete from lotomania.lotomania_resultado_bolas_frequencia_total;

  Delete from lotomania.lotomania_resultado_num_qt_vezes;
  Delete from lotomania.lotomania_resultado_bolas_qt_vezes;
  
  Delete from lotomania.lotomania_resultado_num_sobe_desce;
  Delete from lotomania.lotomania_resultado_bolas_sobe_desce;

  Delete from lotomania.lotomania_resultado_bolas_frequencia_status_total;


  -- A cada iteração do loop abaixo, os valores de cada elemento deste arranjo 
  -- terá valores diferentes conforme percorremos cada concurso.
  lotomania_resultado_num_frequencia[0] := 0;
  lotomania_resultado_num_frequencia[1] := 0;
  lotomania_resultado_num_frequencia[2] := 0;
  lotomania_resultado_num_frequencia[3] := 0;
  lotomania_resultado_num_frequencia[4] := 0;
  lotomania_resultado_num_frequencia[5] := 0;
  lotomania_resultado_num_frequencia[6] := 0;
  lotomania_resultado_num_frequencia[7] := 0;
  lotomania_resultado_num_frequencia[8] := 0;
  lotomania_resultado_num_frequencia[9] := 0;
  lotomania_resultado_num_frequencia[10] := 0;
  lotomania_resultado_num_frequencia[11] := 0;
  lotomania_resultado_num_frequencia[12] := 0;
  lotomania_resultado_num_frequencia[13] := 0;
  lotomania_resultado_num_frequencia[14] := 0;
  lotomania_resultado_num_frequencia[15] := 0;
  lotomania_resultado_num_frequencia[16] := 0;
  lotomania_resultado_num_frequencia[17] := 0;
  lotomania_resultado_num_frequencia[18] := 0;
  lotomania_resultado_num_frequencia[19] := 0;
  lotomania_resultado_num_frequencia[20] := 0;
  lotomania_resultado_num_frequencia[21] := 0;
  lotomania_resultado_num_frequencia[22] := 0;
  lotomania_resultado_num_frequencia[23] := 0;
  lotomania_resultado_num_frequencia[24] := 0;
  lotomania_resultado_num_frequencia[25] := 0;
  lotomania_resultado_num_frequencia[26] := 0;
  lotomania_resultado_num_frequencia[27] := 0;
  lotomania_resultado_num_frequencia[28] := 0;
  lotomania_resultado_num_frequencia[29] := 0;
  lotomania_resultado_num_frequencia[30] := 0;
  lotomania_resultado_num_frequencia[31] := 0;
  lotomania_resultado_num_frequencia[32] := 0;
  lotomania_resultado_num_frequencia[33] := 0;
  lotomania_resultado_num_frequencia[34] := 0;
  lotomania_resultado_num_frequencia[35] := 0;
  lotomania_resultado_num_frequencia[36] := 0;
  lotomania_resultado_num_frequencia[37] := 0;
  lotomania_resultado_num_frequencia[38] := 0;
  lotomania_resultado_num_frequencia[39] := 0;
  lotomania_resultado_num_frequencia[40] := 0;
  lotomania_resultado_num_frequencia[41] := 0;
  lotomania_resultado_num_frequencia[42] := 0;
  lotomania_resultado_num_frequencia[43] := 0;
  lotomania_resultado_num_frequencia[44] := 0;
  lotomania_resultado_num_frequencia[45] := 0;
  lotomania_resultado_num_frequencia[46] := 0;
  lotomania_resultado_num_frequencia[47] := 0;
  lotomania_resultado_num_frequencia[48] := 0;
  lotomania_resultado_num_frequencia[49] := 0;
  lotomania_resultado_num_frequencia[50] := 0;
  lotomania_resultado_num_frequencia[51] := 0;
  lotomania_resultado_num_frequencia[52] := 0;
  lotomania_resultado_num_frequencia[53] := 0;
  lotomania_resultado_num_frequencia[54] := 0;
  lotomania_resultado_num_frequencia[55] := 0;
  lotomania_resultado_num_frequencia[56] := 0;
  lotomania_resultado_num_frequencia[57] := 0;
  lotomania_resultado_num_frequencia[58] := 0;
  lotomania_resultado_num_frequencia[59] := 0;
  lotomania_resultado_num_frequencia[60] := 0;
  lotomania_resultado_num_frequencia[61] := 0;
  lotomania_resultado_num_frequencia[62] := 0;
  lotomania_resultado_num_frequencia[63] := 0;
  lotomania_resultado_num_frequencia[64] := 0;
  lotomania_resultado_num_frequencia[65] := 0;
  lotomania_resultado_num_frequencia[66] := 0;
  lotomania_resultado_num_frequencia[67] := 0;
  lotomania_resultado_num_frequencia[68] := 0;
  lotomania_resultado_num_frequencia[69] := 0;
  lotomania_resultado_num_frequencia[70] := 0;
  lotomania_resultado_num_frequencia[71] := 0;
  lotomania_resultado_num_frequencia[72] := 0;
  lotomania_resultado_num_frequencia[73] := 0;
  lotomania_resultado_num_frequencia[74] := 0;
  lotomania_resultado_num_frequencia[75] := 0;
  lotomania_resultado_num_frequencia[76] := 0;
  lotomania_resultado_num_frequencia[77] := 0;
  lotomania_resultado_num_frequencia[78] := 0;
  lotomania_resultado_num_frequencia[79] := 0;
  lotomania_resultado_num_frequencia[80] := 0;
  lotomania_resultado_num_frequencia[81] := 0;
  lotomania_resultado_num_frequencia[82] := 0;
  lotomania_resultado_num_frequencia[83] := 0;
  lotomania_resultado_num_frequencia[84] := 0;
  lotomania_resultado_num_frequencia[85] := 0;
  lotomania_resultado_num_frequencia[86] := 0;
  lotomania_resultado_num_frequencia[87] := 0;
  lotomania_resultado_num_frequencia[88] := 0;
  lotomania_resultado_num_frequencia[89] := 0;
  lotomania_resultado_num_frequencia[90] := 0;
  lotomania_resultado_num_frequencia[91] := 0;
  lotomania_resultado_num_frequencia[92] := 0;
  lotomania_resultado_num_frequencia[93] := 0;
  lotomania_resultado_num_frequencia[94] := 0;
  lotomania_resultado_num_frequencia[95] := 0;
  lotomania_resultado_num_frequencia[96] := 0;
  lotomania_resultado_num_frequencia[97] := 0;
  lotomania_resultado_num_frequencia[98] := 0;
  lotomania_resultado_num_frequencia[99] := 0;
  
  lotomania_resultado_num_frequencia_total[0] := 0;
  lotomania_resultado_num_frequencia_total[1] := 0;
  lotomania_resultado_num_frequencia_total[2] := 0;
  lotomania_resultado_num_frequencia_total[3] := 0;
  lotomania_resultado_num_frequencia_total[4] := 0;
  lotomania_resultado_num_frequencia_total[5] := 0;
  lotomania_resultado_num_frequencia_total[6] := 0;
  lotomania_resultado_num_frequencia_total[7] := 0;
  lotomania_resultado_num_frequencia_total[8] := 0;
  lotomania_resultado_num_frequencia_total[9] := 0;
  lotomania_resultado_num_frequencia_total[10] := 0;
  lotomania_resultado_num_frequencia_total[11] := 0;
  lotomania_resultado_num_frequencia_total[12] := 0;
  lotomania_resultado_num_frequencia_total[13] := 0;
  lotomania_resultado_num_frequencia_total[14] := 0;
  lotomania_resultado_num_frequencia_total[15] := 0;
  lotomania_resultado_num_frequencia_total[16] := 0;
  lotomania_resultado_num_frequencia_total[17] := 0;
  lotomania_resultado_num_frequencia_total[18] := 0;
  lotomania_resultado_num_frequencia_total[19] := 0;
  lotomania_resultado_num_frequencia_total[20] := 0;
  lotomania_resultado_num_frequencia_total[21] := 0;
  lotomania_resultado_num_frequencia_total[22] := 0;
  lotomania_resultado_num_frequencia_total[23] := 0;
  lotomania_resultado_num_frequencia_total[24] := 0;
  lotomania_resultado_num_frequencia_total[25] := 0;
  lotomania_resultado_num_frequencia_total[26] := 0;
  lotomania_resultado_num_frequencia_total[27] := 0;
  lotomania_resultado_num_frequencia_total[28] := 0;
  lotomania_resultado_num_frequencia_total[29] := 0;
  lotomania_resultado_num_frequencia_total[30] := 0;
  lotomania_resultado_num_frequencia_total[31] := 0;
  lotomania_resultado_num_frequencia_total[32] := 0;
  lotomania_resultado_num_frequencia_total[33] := 0;
  lotomania_resultado_num_frequencia_total[34] := 0;
  lotomania_resultado_num_frequencia_total[35] := 0;
  lotomania_resultado_num_frequencia_total[36] := 0;
  lotomania_resultado_num_frequencia_total[37] := 0;
  lotomania_resultado_num_frequencia_total[38] := 0;
  lotomania_resultado_num_frequencia_total[39] := 0;
  lotomania_resultado_num_frequencia_total[40] := 0;
  lotomania_resultado_num_frequencia_total[41] := 0;
  lotomania_resultado_num_frequencia_total[42] := 0;
  lotomania_resultado_num_frequencia_total[43] := 0;
  lotomania_resultado_num_frequencia_total[44] := 0;
  lotomania_resultado_num_frequencia_total[45] := 0;
  lotomania_resultado_num_frequencia_total[46] := 0;
  lotomania_resultado_num_frequencia_total[47] := 0;
  lotomania_resultado_num_frequencia_total[48] := 0;
  lotomania_resultado_num_frequencia_total[49] := 0;
  lotomania_resultado_num_frequencia_total[50] := 0;
  lotomania_resultado_num_frequencia_total[51] := 0;
  lotomania_resultado_num_frequencia_total[52] := 0;
  lotomania_resultado_num_frequencia_total[53] := 0;
  lotomania_resultado_num_frequencia_total[54] := 0;
  lotomania_resultado_num_frequencia_total[55] := 0;
  lotomania_resultado_num_frequencia_total[56] := 0;
  lotomania_resultado_num_frequencia_total[57] := 0;
  lotomania_resultado_num_frequencia_total[58] := 0;
  lotomania_resultado_num_frequencia_total[59] := 0;
  lotomania_resultado_num_frequencia_total[60] := 0;
  lotomania_resultado_num_frequencia_total[61] := 0;
  lotomania_resultado_num_frequencia_total[62] := 0;
  lotomania_resultado_num_frequencia_total[63] := 0;
  lotomania_resultado_num_frequencia_total[64] := 0;
  lotomania_resultado_num_frequencia_total[65] := 0;
  lotomania_resultado_num_frequencia_total[66] := 0;
  lotomania_resultado_num_frequencia_total[67] := 0;
  lotomania_resultado_num_frequencia_total[68] := 0;
  lotomania_resultado_num_frequencia_total[69] := 0;
  lotomania_resultado_num_frequencia_total[70] := 0;
  lotomania_resultado_num_frequencia_total[71] := 0;
  lotomania_resultado_num_frequencia_total[72] := 0;
  lotomania_resultado_num_frequencia_total[73] := 0;
  lotomania_resultado_num_frequencia_total[74] := 0;
  lotomania_resultado_num_frequencia_total[75] := 0;
  lotomania_resultado_num_frequencia_total[76] := 0;
  lotomania_resultado_num_frequencia_total[77] := 0;
  lotomania_resultado_num_frequencia_total[78] := 0;
  lotomania_resultado_num_frequencia_total[79] := 0;
  lotomania_resultado_num_frequencia_total[80] := 0;
  lotomania_resultado_num_frequencia_total[81] := 0;
  lotomania_resultado_num_frequencia_total[82] := 0;
  lotomania_resultado_num_frequencia_total[83] := 0;
  lotomania_resultado_num_frequencia_total[84] := 0;
  lotomania_resultado_num_frequencia_total[85] := 0;
  lotomania_resultado_num_frequencia_total[86] := 0;
  lotomania_resultado_num_frequencia_total[87] := 0;
  lotomania_resultado_num_frequencia_total[88] := 0;
  lotomania_resultado_num_frequencia_total[89] := 0;
  lotomania_resultado_num_frequencia_total[90] := 0;
  lotomania_resultado_num_frequencia_total[91] := 0;
  lotomania_resultado_num_frequencia_total[92] := 0;
  lotomania_resultado_num_frequencia_total[93] := 0;
  lotomania_resultado_num_frequencia_total[94] := 0;
  lotomania_resultado_num_frequencia_total[95] := 0;
  lotomania_resultado_num_frequencia_total[96] := 0;
  lotomania_resultado_num_frequencia_total[97] := 0;
  lotomania_resultado_num_frequencia_total[98] := 0;
  lotomania_resultado_num_frequencia_total[99] := 0;
  
  lotomania_resultado_num_qt_vezes[0] := 0;
  lotomania_resultado_num_qt_vezes[1] := 0;
  lotomania_resultado_num_qt_vezes[2] := 0;
  lotomania_resultado_num_qt_vezes[3] := 0;
  lotomania_resultado_num_qt_vezes[4] := 0;
  lotomania_resultado_num_qt_vezes[5] := 0;
  lotomania_resultado_num_qt_vezes[6] := 0;
  lotomania_resultado_num_qt_vezes[7] := 0;
  lotomania_resultado_num_qt_vezes[8] := 0;
  lotomania_resultado_num_qt_vezes[9] := 0;
  lotomania_resultado_num_qt_vezes[10] := 0;
  lotomania_resultado_num_qt_vezes[11] := 0;
  lotomania_resultado_num_qt_vezes[12] := 0;
  lotomania_resultado_num_qt_vezes[13] := 0;
  lotomania_resultado_num_qt_vezes[14] := 0;
  lotomania_resultado_num_qt_vezes[15] := 0;
  lotomania_resultado_num_qt_vezes[16] := 0;
  lotomania_resultado_num_qt_vezes[17] := 0;
  lotomania_resultado_num_qt_vezes[18] := 0;
  lotomania_resultado_num_qt_vezes[19] := 0;
  lotomania_resultado_num_qt_vezes[20] := 0;
  lotomania_resultado_num_qt_vezes[21] := 0;
  lotomania_resultado_num_qt_vezes[22] := 0;
  lotomania_resultado_num_qt_vezes[23] := 0;
  lotomania_resultado_num_qt_vezes[24] := 0;
  lotomania_resultado_num_qt_vezes[25] := 0;
  lotomania_resultado_num_qt_vezes[26] := 0;
  lotomania_resultado_num_qt_vezes[27] := 0;
  lotomania_resultado_num_qt_vezes[28] := 0;
  lotomania_resultado_num_qt_vezes[29] := 0;
  lotomania_resultado_num_qt_vezes[30] := 0;
  lotomania_resultado_num_qt_vezes[31] := 0;
  lotomania_resultado_num_qt_vezes[32] := 0;
  lotomania_resultado_num_qt_vezes[33] := 0;
  lotomania_resultado_num_qt_vezes[34] := 0;
  lotomania_resultado_num_qt_vezes[35] := 0;
  lotomania_resultado_num_qt_vezes[36] := 0;
  lotomania_resultado_num_qt_vezes[37] := 0;
  lotomania_resultado_num_qt_vezes[38] := 0;
  lotomania_resultado_num_qt_vezes[39] := 0;
  lotomania_resultado_num_qt_vezes[40] := 0;
  lotomania_resultado_num_qt_vezes[41] := 0;
  lotomania_resultado_num_qt_vezes[42] := 0;
  lotomania_resultado_num_qt_vezes[43] := 0;
  lotomania_resultado_num_qt_vezes[44] := 0;
  lotomania_resultado_num_qt_vezes[45] := 0;
  lotomania_resultado_num_qt_vezes[46] := 0;
  lotomania_resultado_num_qt_vezes[47] := 0;
  lotomania_resultado_num_qt_vezes[48] := 0;
  lotomania_resultado_num_qt_vezes[49] := 0;
  lotomania_resultado_num_qt_vezes[50] := 0;
  lotomania_resultado_num_qt_vezes[51] := 0;
  lotomania_resultado_num_qt_vezes[52] := 0;
  lotomania_resultado_num_qt_vezes[53] := 0;
  lotomania_resultado_num_qt_vezes[54] := 0;
  lotomania_resultado_num_qt_vezes[55] := 0;
  lotomania_resultado_num_qt_vezes[56] := 0;
  lotomania_resultado_num_qt_vezes[57] := 0;
  lotomania_resultado_num_qt_vezes[58] := 0;
  lotomania_resultado_num_qt_vezes[59] := 0;
  lotomania_resultado_num_qt_vezes[60] := 0;
  lotomania_resultado_num_qt_vezes[61] := 0;
  lotomania_resultado_num_qt_vezes[62] := 0;
  lotomania_resultado_num_qt_vezes[63] := 0;
  lotomania_resultado_num_qt_vezes[64] := 0;
  lotomania_resultado_num_qt_vezes[65] := 0;
  lotomania_resultado_num_qt_vezes[66] := 0;
  lotomania_resultado_num_qt_vezes[67] := 0;
  lotomania_resultado_num_qt_vezes[68] := 0;
  lotomania_resultado_num_qt_vezes[69] := 0;
  lotomania_resultado_num_qt_vezes[70] := 0;
  lotomania_resultado_num_qt_vezes[71] := 0;
  lotomania_resultado_num_qt_vezes[72] := 0;
  lotomania_resultado_num_qt_vezes[73] := 0;
  lotomania_resultado_num_qt_vezes[74] := 0;
  lotomania_resultado_num_qt_vezes[75] := 0;
  lotomania_resultado_num_qt_vezes[76] := 0;
  lotomania_resultado_num_qt_vezes[77] := 0;
  lotomania_resultado_num_qt_vezes[78] := 0;
  lotomania_resultado_num_qt_vezes[79] := 0;
  lotomania_resultado_num_qt_vezes[80] := 0;
  lotomania_resultado_num_qt_vezes[81] := 0;
  lotomania_resultado_num_qt_vezes[82] := 0;
  lotomania_resultado_num_qt_vezes[83] := 0;
  lotomania_resultado_num_qt_vezes[84] := 0;
  lotomania_resultado_num_qt_vezes[85] := 0;
  lotomania_resultado_num_qt_vezes[86] := 0;
  lotomania_resultado_num_qt_vezes[87] := 0;
  lotomania_resultado_num_qt_vezes[88] := 0;
  lotomania_resultado_num_qt_vezes[89] := 0;
  lotomania_resultado_num_qt_vezes[90] := 0;
  lotomania_resultado_num_qt_vezes[91] := 0;
  lotomania_resultado_num_qt_vezes[92] := 0;
  lotomania_resultado_num_qt_vezes[93] := 0;
  lotomania_resultado_num_qt_vezes[94] := 0;
  lotomania_resultado_num_qt_vezes[95] := 0;
  lotomania_resultado_num_qt_vezes[96] := 0;
  lotomania_resultado_num_qt_vezes[97] := 0;
  lotomania_resultado_num_qt_vezes[98] := 0;
  lotomania_resultado_num_qt_vezes[99] := 0;
  
  lotomania_resultado_num_sobe_desce[0] := 0;
  lotomania_resultado_num_sobe_desce[1] := 0;
  lotomania_resultado_num_sobe_desce[2] := 0;
  lotomania_resultado_num_sobe_desce[3] := 0;
  lotomania_resultado_num_sobe_desce[4] := 0;
  lotomania_resultado_num_sobe_desce[5] := 0;
  lotomania_resultado_num_sobe_desce[6] := 0;
  lotomania_resultado_num_sobe_desce[7] := 0;
  lotomania_resultado_num_sobe_desce[8] := 0;
  lotomania_resultado_num_sobe_desce[9] := 0;
  lotomania_resultado_num_sobe_desce[10] := 0;
  lotomania_resultado_num_sobe_desce[11] := 0;
  lotomania_resultado_num_sobe_desce[12] := 0;
  lotomania_resultado_num_sobe_desce[13] := 0;
  lotomania_resultado_num_sobe_desce[14] := 0;
  lotomania_resultado_num_sobe_desce[15] := 0;
  lotomania_resultado_num_sobe_desce[16] := 0;
  lotomania_resultado_num_sobe_desce[17] := 0;
  lotomania_resultado_num_sobe_desce[18] := 0;
  lotomania_resultado_num_sobe_desce[19] := 0;
  lotomania_resultado_num_sobe_desce[20] := 0;
  lotomania_resultado_num_sobe_desce[21] := 0;
  lotomania_resultado_num_sobe_desce[22] := 0;
  lotomania_resultado_num_sobe_desce[23] := 0;
  lotomania_resultado_num_sobe_desce[24] := 0;
  lotomania_resultado_num_sobe_desce[25] := 0;
  lotomania_resultado_num_sobe_desce[26] := 0;
  lotomania_resultado_num_sobe_desce[27] := 0;
  lotomania_resultado_num_sobe_desce[28] := 0;
  lotomania_resultado_num_sobe_desce[29] := 0;
  lotomania_resultado_num_sobe_desce[30] := 0;
  lotomania_resultado_num_sobe_desce[31] := 0;
  lotomania_resultado_num_sobe_desce[32] := 0;
  lotomania_resultado_num_sobe_desce[33] := 0;
  lotomania_resultado_num_sobe_desce[34] := 0;
  lotomania_resultado_num_sobe_desce[35] := 0;
  lotomania_resultado_num_sobe_desce[36] := 0;
  lotomania_resultado_num_sobe_desce[37] := 0;
  lotomania_resultado_num_sobe_desce[38] := 0;
  lotomania_resultado_num_sobe_desce[39] := 0;
  lotomania_resultado_num_sobe_desce[40] := 0;
  lotomania_resultado_num_sobe_desce[41] := 0;
  lotomania_resultado_num_sobe_desce[42] := 0;
  lotomania_resultado_num_sobe_desce[43] := 0;
  lotomania_resultado_num_sobe_desce[44] := 0;
  lotomania_resultado_num_sobe_desce[45] := 0;
  lotomania_resultado_num_sobe_desce[46] := 0;
  lotomania_resultado_num_sobe_desce[47] := 0;
  lotomania_resultado_num_sobe_desce[48] := 0;
  lotomania_resultado_num_sobe_desce[49] := 0;
  lotomania_resultado_num_sobe_desce[50] := 0;
  lotomania_resultado_num_sobe_desce[51] := 0;
  lotomania_resultado_num_sobe_desce[52] := 0;
  lotomania_resultado_num_sobe_desce[53] := 0;
  lotomania_resultado_num_sobe_desce[54] := 0;
  lotomania_resultado_num_sobe_desce[55] := 0;
  lotomania_resultado_num_sobe_desce[56] := 0;
  lotomania_resultado_num_sobe_desce[57] := 0;
  lotomania_resultado_num_sobe_desce[58] := 0;
  lotomania_resultado_num_sobe_desce[59] := 0;
  lotomania_resultado_num_sobe_desce[60] := 0;
  lotomania_resultado_num_sobe_desce[61] := 0;
  lotomania_resultado_num_sobe_desce[62] := 0;
  lotomania_resultado_num_sobe_desce[63] := 0;
  lotomania_resultado_num_sobe_desce[64] := 0;
  lotomania_resultado_num_sobe_desce[65] := 0;
  lotomania_resultado_num_sobe_desce[66] := 0;
  lotomania_resultado_num_sobe_desce[67] := 0;
  lotomania_resultado_num_sobe_desce[68] := 0;
  lotomania_resultado_num_sobe_desce[69] := 0;
  lotomania_resultado_num_sobe_desce[70] := 0;
  lotomania_resultado_num_sobe_desce[71] := 0;
  lotomania_resultado_num_sobe_desce[72] := 0;
  lotomania_resultado_num_sobe_desce[73] := 0;
  lotomania_resultado_num_sobe_desce[74] := 0;
  lotomania_resultado_num_sobe_desce[75] := 0;
  lotomania_resultado_num_sobe_desce[76] := 0;
  lotomania_resultado_num_sobe_desce[77] := 0;
  lotomania_resultado_num_sobe_desce[78] := 0;
  lotomania_resultado_num_sobe_desce[79] := 0;
  lotomania_resultado_num_sobe_desce[80] := 0;
  lotomania_resultado_num_sobe_desce[81] := 0;
  lotomania_resultado_num_sobe_desce[82] := 0;
  lotomania_resultado_num_sobe_desce[83] := 0;
  lotomania_resultado_num_sobe_desce[84] := 0;
  lotomania_resultado_num_sobe_desce[85] := 0;
  lotomania_resultado_num_sobe_desce[86] := 0;
  lotomania_resultado_num_sobe_desce[87] := 0;
  lotomania_resultado_num_sobe_desce[88] := 0;
  lotomania_resultado_num_sobe_desce[89] := 0;
  lotomania_resultado_num_sobe_desce[90] := 0;
  lotomania_resultado_num_sobe_desce[91] := 0;
  lotomania_resultado_num_sobe_desce[92] := 0;
  lotomania_resultado_num_sobe_desce[93] := 0;
  lotomania_resultado_num_sobe_desce[94] := 0;
  lotomania_resultado_num_sobe_desce[95] := 0;
  lotomania_resultado_num_sobe_desce[96] := 0;
  lotomania_resultado_num_sobe_desce[97] := 0;
  lotomania_resultado_num_sobe_desce[98] := 0;
  lotomania_resultado_num_sobe_desce[99] := 0;
  
  
  b_primeiro_concurso = true;

  -- No loop abaixo, iremos comparar o concurso atual com o concurso anterior.
  FOR reg_lotomania_resultado_num IN
  SELECT *
  FROM lotomania.lotomania_resultado_num
  ORDER BY concurso ASC
  LOOP
    -- Se é o primeiro concurso, iremos analisar e realizar nova iteração
    -- Pois, nossa tabela de frequência é baseada na comparação do concurso
    -- anterior e concurso atual.
    if b_primeiro_concurso = true THEN 
      b_primeiro_concurso = false;
      
      lotomania_resultado_num_frequencia[0] := reg_lotomania_resultado_num.num_0;
      lotomania_resultado_num_frequencia[1] := reg_lotomania_resultado_num.num_1;
      lotomania_resultado_num_frequencia[2] := reg_lotomania_resultado_num.num_2;
      lotomania_resultado_num_frequencia[3] := reg_lotomania_resultado_num.num_3;
      lotomania_resultado_num_frequencia[4] := reg_lotomania_resultado_num.num_4;
      lotomania_resultado_num_frequencia[5] := reg_lotomania_resultado_num.num_5;
      lotomania_resultado_num_frequencia[6] := reg_lotomania_resultado_num.num_6;
      lotomania_resultado_num_frequencia[7] := reg_lotomania_resultado_num.num_7;
      lotomania_resultado_num_frequencia[8] := reg_lotomania_resultado_num.num_8;
      lotomania_resultado_num_frequencia[9] := reg_lotomania_resultado_num.num_9;
      lotomania_resultado_num_frequencia[10] := reg_lotomania_resultado_num.num_10;
      lotomania_resultado_num_frequencia[11] := reg_lotomania_resultado_num.num_11;
      lotomania_resultado_num_frequencia[12] := reg_lotomania_resultado_num.num_12;
      lotomania_resultado_num_frequencia[13] := reg_lotomania_resultado_num.num_13;
      lotomania_resultado_num_frequencia[14] := reg_lotomania_resultado_num.num_14;
      lotomania_resultado_num_frequencia[15] := reg_lotomania_resultado_num.num_15;
      lotomania_resultado_num_frequencia[16] := reg_lotomania_resultado_num.num_16;
      lotomania_resultado_num_frequencia[17] := reg_lotomania_resultado_num.num_17;
      lotomania_resultado_num_frequencia[18] := reg_lotomania_resultado_num.num_18;
      lotomania_resultado_num_frequencia[19] := reg_lotomania_resultado_num.num_19;
      lotomania_resultado_num_frequencia[20] := reg_lotomania_resultado_num.num_20;
      lotomania_resultado_num_frequencia[21] := reg_lotomania_resultado_num.num_21;
      lotomania_resultado_num_frequencia[22] := reg_lotomania_resultado_num.num_22;
      lotomania_resultado_num_frequencia[23] := reg_lotomania_resultado_num.num_23;
      lotomania_resultado_num_frequencia[24] := reg_lotomania_resultado_num.num_24;
      lotomania_resultado_num_frequencia[25] := reg_lotomania_resultado_num.num_25;
      lotomania_resultado_num_frequencia[26] := reg_lotomania_resultado_num.num_26;
      lotomania_resultado_num_frequencia[27] := reg_lotomania_resultado_num.num_27;
      lotomania_resultado_num_frequencia[28] := reg_lotomania_resultado_num.num_28;
      lotomania_resultado_num_frequencia[29] := reg_lotomania_resultado_num.num_29;
      lotomania_resultado_num_frequencia[30] := reg_lotomania_resultado_num.num_30;
      lotomania_resultado_num_frequencia[31] := reg_lotomania_resultado_num.num_31;
      lotomania_resultado_num_frequencia[32] := reg_lotomania_resultado_num.num_32;
      lotomania_resultado_num_frequencia[33] := reg_lotomania_resultado_num.num_33;
      lotomania_resultado_num_frequencia[34] := reg_lotomania_resultado_num.num_34;
      lotomania_resultado_num_frequencia[35] := reg_lotomania_resultado_num.num_35;
      lotomania_resultado_num_frequencia[36] := reg_lotomania_resultado_num.num_36;
      lotomania_resultado_num_frequencia[37] := reg_lotomania_resultado_num.num_37;
      lotomania_resultado_num_frequencia[38] := reg_lotomania_resultado_num.num_38;
      lotomania_resultado_num_frequencia[39] := reg_lotomania_resultado_num.num_39;
      lotomania_resultado_num_frequencia[40] := reg_lotomania_resultado_num.num_40;
      lotomania_resultado_num_frequencia[41] := reg_lotomania_resultado_num.num_41;
      lotomania_resultado_num_frequencia[42] := reg_lotomania_resultado_num.num_42;
      lotomania_resultado_num_frequencia[43] := reg_lotomania_resultado_num.num_43;
      lotomania_resultado_num_frequencia[44] := reg_lotomania_resultado_num.num_44;
      lotomania_resultado_num_frequencia[45] := reg_lotomania_resultado_num.num_45;
      lotomania_resultado_num_frequencia[46] := reg_lotomania_resultado_num.num_46;
      lotomania_resultado_num_frequencia[47] := reg_lotomania_resultado_num.num_47;
      lotomania_resultado_num_frequencia[48] := reg_lotomania_resultado_num.num_48;
      lotomania_resultado_num_frequencia[49] := reg_lotomania_resultado_num.num_49;
      lotomania_resultado_num_frequencia[50] := reg_lotomania_resultado_num.num_50;
      lotomania_resultado_num_frequencia[51] := reg_lotomania_resultado_num.num_51;
      lotomania_resultado_num_frequencia[52] := reg_lotomania_resultado_num.num_52;
      lotomania_resultado_num_frequencia[53] := reg_lotomania_resultado_num.num_53;
      lotomania_resultado_num_frequencia[54] := reg_lotomania_resultado_num.num_54;
      lotomania_resultado_num_frequencia[55] := reg_lotomania_resultado_num.num_55;
      lotomania_resultado_num_frequencia[56] := reg_lotomania_resultado_num.num_56;
      lotomania_resultado_num_frequencia[57] := reg_lotomania_resultado_num.num_57;
      lotomania_resultado_num_frequencia[58] := reg_lotomania_resultado_num.num_58;
      lotomania_resultado_num_frequencia[59] := reg_lotomania_resultado_num.num_59;
      lotomania_resultado_num_frequencia[60] := reg_lotomania_resultado_num.num_60;
      lotomania_resultado_num_frequencia[61] := reg_lotomania_resultado_num.num_61;
      lotomania_resultado_num_frequencia[62] := reg_lotomania_resultado_num.num_62;
      lotomania_resultado_num_frequencia[63] := reg_lotomania_resultado_num.num_63;
      lotomania_resultado_num_frequencia[64] := reg_lotomania_resultado_num.num_64;
      lotomania_resultado_num_frequencia[65] := reg_lotomania_resultado_num.num_65;
      lotomania_resultado_num_frequencia[66] := reg_lotomania_resultado_num.num_66;
      lotomania_resultado_num_frequencia[67] := reg_lotomania_resultado_num.num_67;
      lotomania_resultado_num_frequencia[68] := reg_lotomania_resultado_num.num_68;
      lotomania_resultado_num_frequencia[69] := reg_lotomania_resultado_num.num_69;
      lotomania_resultado_num_frequencia[70] := reg_lotomania_resultado_num.num_70;
      lotomania_resultado_num_frequencia[71] := reg_lotomania_resultado_num.num_71;
      lotomania_resultado_num_frequencia[72] := reg_lotomania_resultado_num.num_72;
      lotomania_resultado_num_frequencia[73] := reg_lotomania_resultado_num.num_73;
      lotomania_resultado_num_frequencia[74] := reg_lotomania_resultado_num.num_74;
      lotomania_resultado_num_frequencia[75] := reg_lotomania_resultado_num.num_75;
      lotomania_resultado_num_frequencia[76] := reg_lotomania_resultado_num.num_76;
      lotomania_resultado_num_frequencia[77] := reg_lotomania_resultado_num.num_77;
      lotomania_resultado_num_frequencia[78] := reg_lotomania_resultado_num.num_78;
      lotomania_resultado_num_frequencia[79] := reg_lotomania_resultado_num.num_79;
      lotomania_resultado_num_frequencia[80] := reg_lotomania_resultado_num.num_80;
      lotomania_resultado_num_frequencia[81] := reg_lotomania_resultado_num.num_81;
      lotomania_resultado_num_frequencia[82] := reg_lotomania_resultado_num.num_82;
      lotomania_resultado_num_frequencia[83] := reg_lotomania_resultado_num.num_83;
      lotomania_resultado_num_frequencia[84] := reg_lotomania_resultado_num.num_84;
      lotomania_resultado_num_frequencia[85] := reg_lotomania_resultado_num.num_85;
      lotomania_resultado_num_frequencia[86] := reg_lotomania_resultado_num.num_86;
      lotomania_resultado_num_frequencia[87] := reg_lotomania_resultado_num.num_87;
      lotomania_resultado_num_frequencia[88] := reg_lotomania_resultado_num.num_88;
      lotomania_resultado_num_frequencia[89] := reg_lotomania_resultado_num.num_89;
      lotomania_resultado_num_frequencia[90] := reg_lotomania_resultado_num.num_90;
      lotomania_resultado_num_frequencia[91] := reg_lotomania_resultado_num.num_91;
      lotomania_resultado_num_frequencia[92] := reg_lotomania_resultado_num.num_92;
      lotomania_resultado_num_frequencia[93] := reg_lotomania_resultado_num.num_93;
      lotomania_resultado_num_frequencia[94] := reg_lotomania_resultado_num.num_94;
      lotomania_resultado_num_frequencia[95] := reg_lotomania_resultado_num.num_95;
      lotomania_resultado_num_frequencia[96] := reg_lotomania_resultado_num.num_96;
      lotomania_resultado_num_frequencia[97] := reg_lotomania_resultado_num.num_97;
      lotomania_resultado_num_frequencia[98] := reg_lotomania_resultado_num.num_98;
      lotomania_resultado_num_frequencia[99] := reg_lotomania_resultado_num.num_99;

      lotomania_resultado_num_frequencia_total[0] := reg_lotomania_resultado_num.num_0;
      lotomania_resultado_num_frequencia_total[1] := reg_lotomania_resultado_num.num_1;
      lotomania_resultado_num_frequencia_total[2] := reg_lotomania_resultado_num.num_2;
      lotomania_resultado_num_frequencia_total[3] := reg_lotomania_resultado_num.num_3;
      lotomania_resultado_num_frequencia_total[4] := reg_lotomania_resultado_num.num_4;
      lotomania_resultado_num_frequencia_total[5] := reg_lotomania_resultado_num.num_5;
      lotomania_resultado_num_frequencia_total[6] := reg_lotomania_resultado_num.num_6;
      lotomania_resultado_num_frequencia_total[7] := reg_lotomania_resultado_num.num_7;
      lotomania_resultado_num_frequencia_total[8] := reg_lotomania_resultado_num.num_8;
      lotomania_resultado_num_frequencia_total[9] := reg_lotomania_resultado_num.num_9;
      lotomania_resultado_num_frequencia_total[10] := reg_lotomania_resultado_num.num_10;
      lotomania_resultado_num_frequencia_total[11] := reg_lotomania_resultado_num.num_11;
      lotomania_resultado_num_frequencia_total[12] := reg_lotomania_resultado_num.num_12;
      lotomania_resultado_num_frequencia_total[13] := reg_lotomania_resultado_num.num_13;
      lotomania_resultado_num_frequencia_total[14] := reg_lotomania_resultado_num.num_14;
      lotomania_resultado_num_frequencia_total[15] := reg_lotomania_resultado_num.num_15;
      lotomania_resultado_num_frequencia_total[16] := reg_lotomania_resultado_num.num_16;
      lotomania_resultado_num_frequencia_total[17] := reg_lotomania_resultado_num.num_17;
      lotomania_resultado_num_frequencia_total[18] := reg_lotomania_resultado_num.num_18;
      lotomania_resultado_num_frequencia_total[19] := reg_lotomania_resultado_num.num_19;
      lotomania_resultado_num_frequencia_total[20] := reg_lotomania_resultado_num.num_20;
      lotomania_resultado_num_frequencia_total[21] := reg_lotomania_resultado_num.num_21;
      lotomania_resultado_num_frequencia_total[22] := reg_lotomania_resultado_num.num_22;
      lotomania_resultado_num_frequencia_total[23] := reg_lotomania_resultado_num.num_23;
      lotomania_resultado_num_frequencia_total[24] := reg_lotomania_resultado_num.num_24;
      lotomania_resultado_num_frequencia_total[25] := reg_lotomania_resultado_num.num_25;
      lotomania_resultado_num_frequencia_total[26] := reg_lotomania_resultado_num.num_26;
      lotomania_resultado_num_frequencia_total[27] := reg_lotomania_resultado_num.num_27;
      lotomania_resultado_num_frequencia_total[28] := reg_lotomania_resultado_num.num_28;
      lotomania_resultado_num_frequencia_total[29] := reg_lotomania_resultado_num.num_29;
      lotomania_resultado_num_frequencia_total[30] := reg_lotomania_resultado_num.num_30;
      lotomania_resultado_num_frequencia_total[31] := reg_lotomania_resultado_num.num_31;
      lotomania_resultado_num_frequencia_total[32] := reg_lotomania_resultado_num.num_32;
      lotomania_resultado_num_frequencia_total[33] := reg_lotomania_resultado_num.num_33;
      lotomania_resultado_num_frequencia_total[34] := reg_lotomania_resultado_num.num_34;
      lotomania_resultado_num_frequencia_total[35] := reg_lotomania_resultado_num.num_35;
      lotomania_resultado_num_frequencia_total[36] := reg_lotomania_resultado_num.num_36;
      lotomania_resultado_num_frequencia_total[37] := reg_lotomania_resultado_num.num_37;
      lotomania_resultado_num_frequencia_total[38] := reg_lotomania_resultado_num.num_38;
      lotomania_resultado_num_frequencia_total[39] := reg_lotomania_resultado_num.num_39;
      lotomania_resultado_num_frequencia_total[40] := reg_lotomania_resultado_num.num_40;
      lotomania_resultado_num_frequencia_total[41] := reg_lotomania_resultado_num.num_41;
      lotomania_resultado_num_frequencia_total[42] := reg_lotomania_resultado_num.num_42;
      lotomania_resultado_num_frequencia_total[43] := reg_lotomania_resultado_num.num_43;
      lotomania_resultado_num_frequencia_total[44] := reg_lotomania_resultado_num.num_44;
      lotomania_resultado_num_frequencia_total[45] := reg_lotomania_resultado_num.num_45;
      lotomania_resultado_num_frequencia_total[46] := reg_lotomania_resultado_num.num_46;
      lotomania_resultado_num_frequencia_total[47] := reg_lotomania_resultado_num.num_47;
      lotomania_resultado_num_frequencia_total[48] := reg_lotomania_resultado_num.num_48;
      lotomania_resultado_num_frequencia_total[49] := reg_lotomania_resultado_num.num_49;
      lotomania_resultado_num_frequencia_total[50] := reg_lotomania_resultado_num.num_50;
      lotomania_resultado_num_frequencia_total[51] := reg_lotomania_resultado_num.num_51;
      lotomania_resultado_num_frequencia_total[52] := reg_lotomania_resultado_num.num_52;
      lotomania_resultado_num_frequencia_total[53] := reg_lotomania_resultado_num.num_53;
      lotomania_resultado_num_frequencia_total[54] := reg_lotomania_resultado_num.num_54;
      lotomania_resultado_num_frequencia_total[55] := reg_lotomania_resultado_num.num_55;
      lotomania_resultado_num_frequencia_total[56] := reg_lotomania_resultado_num.num_56;
      lotomania_resultado_num_frequencia_total[57] := reg_lotomania_resultado_num.num_57;
      lotomania_resultado_num_frequencia_total[58] := reg_lotomania_resultado_num.num_58;
      lotomania_resultado_num_frequencia_total[59] := reg_lotomania_resultado_num.num_59;
      lotomania_resultado_num_frequencia_total[60] := reg_lotomania_resultado_num.num_60;
      lotomania_resultado_num_frequencia_total[61] := reg_lotomania_resultado_num.num_61;
      lotomania_resultado_num_frequencia_total[62] := reg_lotomania_resultado_num.num_62;
      lotomania_resultado_num_frequencia_total[63] := reg_lotomania_resultado_num.num_63;
      lotomania_resultado_num_frequencia_total[64] := reg_lotomania_resultado_num.num_64;
      lotomania_resultado_num_frequencia_total[65] := reg_lotomania_resultado_num.num_65;
      lotomania_resultado_num_frequencia_total[66] := reg_lotomania_resultado_num.num_66;
      lotomania_resultado_num_frequencia_total[67] := reg_lotomania_resultado_num.num_67;
      lotomania_resultado_num_frequencia_total[68] := reg_lotomania_resultado_num.num_68;
      lotomania_resultado_num_frequencia_total[69] := reg_lotomania_resultado_num.num_69;
      lotomania_resultado_num_frequencia_total[70] := reg_lotomania_resultado_num.num_70;
      lotomania_resultado_num_frequencia_total[71] := reg_lotomania_resultado_num.num_71;
      lotomania_resultado_num_frequencia_total[72] := reg_lotomania_resultado_num.num_72;
      lotomania_resultado_num_frequencia_total[73] := reg_lotomania_resultado_num.num_73;
      lotomania_resultado_num_frequencia_total[74] := reg_lotomania_resultado_num.num_74;
      lotomania_resultado_num_frequencia_total[75] := reg_lotomania_resultado_num.num_75;
      lotomania_resultado_num_frequencia_total[76] := reg_lotomania_resultado_num.num_76;
      lotomania_resultado_num_frequencia_total[77] := reg_lotomania_resultado_num.num_77;
      lotomania_resultado_num_frequencia_total[78] := reg_lotomania_resultado_num.num_78;
      lotomania_resultado_num_frequencia_total[79] := reg_lotomania_resultado_num.num_79;
      lotomania_resultado_num_frequencia_total[80] := reg_lotomania_resultado_num.num_80;
      lotomania_resultado_num_frequencia_total[81] := reg_lotomania_resultado_num.num_81;
      lotomania_resultado_num_frequencia_total[82] := reg_lotomania_resultado_num.num_82;
      lotomania_resultado_num_frequencia_total[83] := reg_lotomania_resultado_num.num_83;
      lotomania_resultado_num_frequencia_total[84] := reg_lotomania_resultado_num.num_84;
      lotomania_resultado_num_frequencia_total[85] := reg_lotomania_resultado_num.num_85;
      lotomania_resultado_num_frequencia_total[86] := reg_lotomania_resultado_num.num_86;
      lotomania_resultado_num_frequencia_total[87] := reg_lotomania_resultado_num.num_87;
      lotomania_resultado_num_frequencia_total[88] := reg_lotomania_resultado_num.num_88;
      lotomania_resultado_num_frequencia_total[89] := reg_lotomania_resultado_num.num_89;
      lotomania_resultado_num_frequencia_total[90] := reg_lotomania_resultado_num.num_90;
      lotomania_resultado_num_frequencia_total[91] := reg_lotomania_resultado_num.num_91;
      lotomania_resultado_num_frequencia_total[92] := reg_lotomania_resultado_num.num_92;
      lotomania_resultado_num_frequencia_total[93] := reg_lotomania_resultado_num.num_93;
      lotomania_resultado_num_frequencia_total[94] := reg_lotomania_resultado_num.num_94;
      lotomania_resultado_num_frequencia_total[95] := reg_lotomania_resultado_num.num_95;
      lotomania_resultado_num_frequencia_total[96] := reg_lotomania_resultado_num.num_96;
      lotomania_resultado_num_frequencia_total[97] := reg_lotomania_resultado_num.num_97;
      lotomania_resultado_num_frequencia_total[98] := reg_lotomania_resultado_num.num_98;
      lotomania_resultado_num_frequencia_total[99] := reg_lotomania_resultado_num.num_99;

      -- Serve pra contar a quantidade de vezes de cada bola.
      lotomania_resultado_num_qt_vezes[0] := reg_lotomania_resultado_num.num_0;
      lotomania_resultado_num_qt_vezes[1] := reg_lotomania_resultado_num.num_1;
      lotomania_resultado_num_qt_vezes[2] := reg_lotomania_resultado_num.num_2;
      lotomania_resultado_num_qt_vezes[3] := reg_lotomania_resultado_num.num_3;
      lotomania_resultado_num_qt_vezes[4] := reg_lotomania_resultado_num.num_4;
      lotomania_resultado_num_qt_vezes[5] := reg_lotomania_resultado_num.num_5;
      lotomania_resultado_num_qt_vezes[6] := reg_lotomania_resultado_num.num_6;
      lotomania_resultado_num_qt_vezes[7] := reg_lotomania_resultado_num.num_7;
      lotomania_resultado_num_qt_vezes[8] := reg_lotomania_resultado_num.num_8;
      lotomania_resultado_num_qt_vezes[9] := reg_lotomania_resultado_num.num_9;
      lotomania_resultado_num_qt_vezes[10] := reg_lotomania_resultado_num.num_10;
      lotomania_resultado_num_qt_vezes[11] := reg_lotomania_resultado_num.num_11;
      lotomania_resultado_num_qt_vezes[12] := reg_lotomania_resultado_num.num_12;
      lotomania_resultado_num_qt_vezes[13] := reg_lotomania_resultado_num.num_13;
      lotomania_resultado_num_qt_vezes[14] := reg_lotomania_resultado_num.num_14;
      lotomania_resultado_num_qt_vezes[15] := reg_lotomania_resultado_num.num_15;
      lotomania_resultado_num_qt_vezes[16] := reg_lotomania_resultado_num.num_16;
      lotomania_resultado_num_qt_vezes[17] := reg_lotomania_resultado_num.num_17;
      lotomania_resultado_num_qt_vezes[18] := reg_lotomania_resultado_num.num_18;
      lotomania_resultado_num_qt_vezes[19] := reg_lotomania_resultado_num.num_19;
      lotomania_resultado_num_qt_vezes[20] := reg_lotomania_resultado_num.num_20;
      lotomania_resultado_num_qt_vezes[21] := reg_lotomania_resultado_num.num_21;
      lotomania_resultado_num_qt_vezes[22] := reg_lotomania_resultado_num.num_22;
      lotomania_resultado_num_qt_vezes[23] := reg_lotomania_resultado_num.num_23;
      lotomania_resultado_num_qt_vezes[24] := reg_lotomania_resultado_num.num_24;
      lotomania_resultado_num_qt_vezes[25] := reg_lotomania_resultado_num.num_25;
      lotomania_resultado_num_qt_vezes[26] := reg_lotomania_resultado_num.num_26;
      lotomania_resultado_num_qt_vezes[27] := reg_lotomania_resultado_num.num_27;
      lotomania_resultado_num_qt_vezes[28] := reg_lotomania_resultado_num.num_28;
      lotomania_resultado_num_qt_vezes[29] := reg_lotomania_resultado_num.num_29;
      lotomania_resultado_num_qt_vezes[30] := reg_lotomania_resultado_num.num_30;
      lotomania_resultado_num_qt_vezes[31] := reg_lotomania_resultado_num.num_31;
      lotomania_resultado_num_qt_vezes[32] := reg_lotomania_resultado_num.num_32;
      lotomania_resultado_num_qt_vezes[33] := reg_lotomania_resultado_num.num_33;
      lotomania_resultado_num_qt_vezes[34] := reg_lotomania_resultado_num.num_34;
      lotomania_resultado_num_qt_vezes[35] := reg_lotomania_resultado_num.num_35;
      lotomania_resultado_num_qt_vezes[36] := reg_lotomania_resultado_num.num_36;
      lotomania_resultado_num_qt_vezes[37] := reg_lotomania_resultado_num.num_37;
      lotomania_resultado_num_qt_vezes[38] := reg_lotomania_resultado_num.num_38;
      lotomania_resultado_num_qt_vezes[39] := reg_lotomania_resultado_num.num_39;
      lotomania_resultado_num_qt_vezes[40] := reg_lotomania_resultado_num.num_40;
      lotomania_resultado_num_qt_vezes[41] := reg_lotomania_resultado_num.num_41;
      lotomania_resultado_num_qt_vezes[42] := reg_lotomania_resultado_num.num_42;
      lotomania_resultado_num_qt_vezes[43] := reg_lotomania_resultado_num.num_43;
      lotomania_resultado_num_qt_vezes[44] := reg_lotomania_resultado_num.num_44;
      lotomania_resultado_num_qt_vezes[45] := reg_lotomania_resultado_num.num_45;
      lotomania_resultado_num_qt_vezes[46] := reg_lotomania_resultado_num.num_46;
      lotomania_resultado_num_qt_vezes[47] := reg_lotomania_resultado_num.num_47;
      lotomania_resultado_num_qt_vezes[48] := reg_lotomania_resultado_num.num_48;
      lotomania_resultado_num_qt_vezes[49] := reg_lotomania_resultado_num.num_49;
      lotomania_resultado_num_qt_vezes[50] := reg_lotomania_resultado_num.num_50;
      lotomania_resultado_num_qt_vezes[51] := reg_lotomania_resultado_num.num_51;
      lotomania_resultado_num_qt_vezes[52] := reg_lotomania_resultado_num.num_52;
      lotomania_resultado_num_qt_vezes[53] := reg_lotomania_resultado_num.num_53;
      lotomania_resultado_num_qt_vezes[54] := reg_lotomania_resultado_num.num_54;
      lotomania_resultado_num_qt_vezes[55] := reg_lotomania_resultado_num.num_55;
      lotomania_resultado_num_qt_vezes[56] := reg_lotomania_resultado_num.num_56;
      lotomania_resultado_num_qt_vezes[57] := reg_lotomania_resultado_num.num_57;
      lotomania_resultado_num_qt_vezes[58] := reg_lotomania_resultado_num.num_58;
      lotomania_resultado_num_qt_vezes[59] := reg_lotomania_resultado_num.num_59;
      lotomania_resultado_num_qt_vezes[60] := reg_lotomania_resultado_num.num_60;
      lotomania_resultado_num_qt_vezes[61] := reg_lotomania_resultado_num.num_61;
      lotomania_resultado_num_qt_vezes[62] := reg_lotomania_resultado_num.num_62;
      lotomania_resultado_num_qt_vezes[63] := reg_lotomania_resultado_num.num_63;
      lotomania_resultado_num_qt_vezes[64] := reg_lotomania_resultado_num.num_64;
      lotomania_resultado_num_qt_vezes[65] := reg_lotomania_resultado_num.num_65;
      lotomania_resultado_num_qt_vezes[66] := reg_lotomania_resultado_num.num_66;
      lotomania_resultado_num_qt_vezes[67] := reg_lotomania_resultado_num.num_67;
      lotomania_resultado_num_qt_vezes[68] := reg_lotomania_resultado_num.num_68;
      lotomania_resultado_num_qt_vezes[69] := reg_lotomania_resultado_num.num_69;
      lotomania_resultado_num_qt_vezes[70] := reg_lotomania_resultado_num.num_70;
      lotomania_resultado_num_qt_vezes[71] := reg_lotomania_resultado_num.num_71;
      lotomania_resultado_num_qt_vezes[72] := reg_lotomania_resultado_num.num_72;
      lotomania_resultado_num_qt_vezes[73] := reg_lotomania_resultado_num.num_73;
      lotomania_resultado_num_qt_vezes[74] := reg_lotomania_resultado_num.num_74;
      lotomania_resultado_num_qt_vezes[75] := reg_lotomania_resultado_num.num_75;
      lotomania_resultado_num_qt_vezes[76] := reg_lotomania_resultado_num.num_76;
      lotomania_resultado_num_qt_vezes[77] := reg_lotomania_resultado_num.num_77;
      lotomania_resultado_num_qt_vezes[78] := reg_lotomania_resultado_num.num_78;
      lotomania_resultado_num_qt_vezes[79] := reg_lotomania_resultado_num.num_79;
      lotomania_resultado_num_qt_vezes[80] := reg_lotomania_resultado_num.num_80;
      lotomania_resultado_num_qt_vezes[81] := reg_lotomania_resultado_num.num_81;
      lotomania_resultado_num_qt_vezes[82] := reg_lotomania_resultado_num.num_82;
      lotomania_resultado_num_qt_vezes[83] := reg_lotomania_resultado_num.num_83;
      lotomania_resultado_num_qt_vezes[84] := reg_lotomania_resultado_num.num_84;
      lotomania_resultado_num_qt_vezes[85] := reg_lotomania_resultado_num.num_85;
      lotomania_resultado_num_qt_vezes[86] := reg_lotomania_resultado_num.num_86;
      lotomania_resultado_num_qt_vezes[87] := reg_lotomania_resultado_num.num_87;
      lotomania_resultado_num_qt_vezes[88] := reg_lotomania_resultado_num.num_88;
      lotomania_resultado_num_qt_vezes[89] := reg_lotomania_resultado_num.num_89;
      lotomania_resultado_num_qt_vezes[90] := reg_lotomania_resultado_num.num_90;
      lotomania_resultado_num_qt_vezes[91] := reg_lotomania_resultado_num.num_91;
      lotomania_resultado_num_qt_vezes[92] := reg_lotomania_resultado_num.num_92;
      lotomania_resultado_num_qt_vezes[93] := reg_lotomania_resultado_num.num_93;
      lotomania_resultado_num_qt_vezes[94] := reg_lotomania_resultado_num.num_94;
      lotomania_resultado_num_qt_vezes[95] := reg_lotomania_resultado_num.num_95;
      lotomania_resultado_num_qt_vezes[96] := reg_lotomania_resultado_num.num_96;
      lotomania_resultado_num_qt_vezes[97] := reg_lotomania_resultado_num.num_97;
      lotomania_resultado_num_qt_vezes[98] := reg_lotomania_resultado_num.num_98;
      lotomania_resultado_num_qt_vezes[99] := reg_lotomania_resultado_num.num_99;
      
      lotomania_resultado_num_sobe_desce[0] := reg_lotomania_resultado_num.num_0;
      lotomania_resultado_num_sobe_desce[1] := reg_lotomania_resultado_num.num_1;
      lotomania_resultado_num_sobe_desce[2] := reg_lotomania_resultado_num.num_2;
      lotomania_resultado_num_sobe_desce[3] := reg_lotomania_resultado_num.num_3;
      lotomania_resultado_num_sobe_desce[4] := reg_lotomania_resultado_num.num_4;
      lotomania_resultado_num_sobe_desce[5] := reg_lotomania_resultado_num.num_5;
      lotomania_resultado_num_sobe_desce[6] := reg_lotomania_resultado_num.num_6;
      lotomania_resultado_num_sobe_desce[7] := reg_lotomania_resultado_num.num_7;
      lotomania_resultado_num_sobe_desce[8] := reg_lotomania_resultado_num.num_8;
      lotomania_resultado_num_sobe_desce[9] := reg_lotomania_resultado_num.num_9;
      lotomania_resultado_num_sobe_desce[10] := reg_lotomania_resultado_num.num_10;
      lotomania_resultado_num_sobe_desce[11] := reg_lotomania_resultado_num.num_11;
      lotomania_resultado_num_sobe_desce[12] := reg_lotomania_resultado_num.num_12;
      lotomania_resultado_num_sobe_desce[13] := reg_lotomania_resultado_num.num_13;
      lotomania_resultado_num_sobe_desce[14] := reg_lotomania_resultado_num.num_14;
      lotomania_resultado_num_sobe_desce[15] := reg_lotomania_resultado_num.num_15;
      lotomania_resultado_num_sobe_desce[16] := reg_lotomania_resultado_num.num_16;
      lotomania_resultado_num_sobe_desce[17] := reg_lotomania_resultado_num.num_17;
      lotomania_resultado_num_sobe_desce[18] := reg_lotomania_resultado_num.num_18;
      lotomania_resultado_num_sobe_desce[19] := reg_lotomania_resultado_num.num_19;
      lotomania_resultado_num_sobe_desce[20] := reg_lotomania_resultado_num.num_20;
      lotomania_resultado_num_sobe_desce[21] := reg_lotomania_resultado_num.num_21;
      lotomania_resultado_num_sobe_desce[22] := reg_lotomania_resultado_num.num_22;
      lotomania_resultado_num_sobe_desce[23] := reg_lotomania_resultado_num.num_23;
      lotomania_resultado_num_sobe_desce[24] := reg_lotomania_resultado_num.num_24;
      lotomania_resultado_num_sobe_desce[25] := reg_lotomania_resultado_num.num_25;
      lotomania_resultado_num_sobe_desce[26] := reg_lotomania_resultado_num.num_26;
      lotomania_resultado_num_sobe_desce[27] := reg_lotomania_resultado_num.num_27;
      lotomania_resultado_num_sobe_desce[28] := reg_lotomania_resultado_num.num_28;
      lotomania_resultado_num_sobe_desce[29] := reg_lotomania_resultado_num.num_29;
      lotomania_resultado_num_sobe_desce[30] := reg_lotomania_resultado_num.num_30;
      lotomania_resultado_num_sobe_desce[31] := reg_lotomania_resultado_num.num_31;
      lotomania_resultado_num_sobe_desce[32] := reg_lotomania_resultado_num.num_32;
      lotomania_resultado_num_sobe_desce[33] := reg_lotomania_resultado_num.num_33;
      lotomania_resultado_num_sobe_desce[34] := reg_lotomania_resultado_num.num_34;
      lotomania_resultado_num_sobe_desce[35] := reg_lotomania_resultado_num.num_35;
      lotomania_resultado_num_sobe_desce[36] := reg_lotomania_resultado_num.num_36;
      lotomania_resultado_num_sobe_desce[37] := reg_lotomania_resultado_num.num_37;
      lotomania_resultado_num_sobe_desce[38] := reg_lotomania_resultado_num.num_38;
      lotomania_resultado_num_sobe_desce[39] := reg_lotomania_resultado_num.num_39;
      lotomania_resultado_num_sobe_desce[40] := reg_lotomania_resultado_num.num_40;
      lotomania_resultado_num_sobe_desce[41] := reg_lotomania_resultado_num.num_41;
      lotomania_resultado_num_sobe_desce[42] := reg_lotomania_resultado_num.num_42;
      lotomania_resultado_num_sobe_desce[43] := reg_lotomania_resultado_num.num_43;
      lotomania_resultado_num_sobe_desce[44] := reg_lotomania_resultado_num.num_44;
      lotomania_resultado_num_sobe_desce[45] := reg_lotomania_resultado_num.num_45;
      lotomania_resultado_num_sobe_desce[46] := reg_lotomania_resultado_num.num_46;
      lotomania_resultado_num_sobe_desce[47] := reg_lotomania_resultado_num.num_47;
      lotomania_resultado_num_sobe_desce[48] := reg_lotomania_resultado_num.num_48;
      lotomania_resultado_num_sobe_desce[49] := reg_lotomania_resultado_num.num_49;
      lotomania_resultado_num_sobe_desce[50] := reg_lotomania_resultado_num.num_50;
      lotomania_resultado_num_sobe_desce[51] := reg_lotomania_resultado_num.num_51;
      lotomania_resultado_num_sobe_desce[52] := reg_lotomania_resultado_num.num_52;
      lotomania_resultado_num_sobe_desce[53] := reg_lotomania_resultado_num.num_53;
      lotomania_resultado_num_sobe_desce[54] := reg_lotomania_resultado_num.num_54;
      lotomania_resultado_num_sobe_desce[55] := reg_lotomania_resultado_num.num_55;
      lotomania_resultado_num_sobe_desce[56] := reg_lotomania_resultado_num.num_56;
      lotomania_resultado_num_sobe_desce[57] := reg_lotomania_resultado_num.num_57;
      lotomania_resultado_num_sobe_desce[58] := reg_lotomania_resultado_num.num_58;
      lotomania_resultado_num_sobe_desce[59] := reg_lotomania_resultado_num.num_59;
      lotomania_resultado_num_sobe_desce[60] := reg_lotomania_resultado_num.num_60;
      lotomania_resultado_num_sobe_desce[61] := reg_lotomania_resultado_num.num_61;
      lotomania_resultado_num_sobe_desce[62] := reg_lotomania_resultado_num.num_62;
      lotomania_resultado_num_sobe_desce[63] := reg_lotomania_resultado_num.num_63;
      lotomania_resultado_num_sobe_desce[64] := reg_lotomania_resultado_num.num_64;
      lotomania_resultado_num_sobe_desce[65] := reg_lotomania_resultado_num.num_65;
      lotomania_resultado_num_sobe_desce[66] := reg_lotomania_resultado_num.num_66;
      lotomania_resultado_num_sobe_desce[67] := reg_lotomania_resultado_num.num_67;
      lotomania_resultado_num_sobe_desce[68] := reg_lotomania_resultado_num.num_68;
      lotomania_resultado_num_sobe_desce[69] := reg_lotomania_resultado_num.num_69;
      lotomania_resultado_num_sobe_desce[70] := reg_lotomania_resultado_num.num_70;
      lotomania_resultado_num_sobe_desce[71] := reg_lotomania_resultado_num.num_71;
      lotomania_resultado_num_sobe_desce[72] := reg_lotomania_resultado_num.num_72;
      lotomania_resultado_num_sobe_desce[73] := reg_lotomania_resultado_num.num_73;
      lotomania_resultado_num_sobe_desce[74] := reg_lotomania_resultado_num.num_74;
      lotomania_resultado_num_sobe_desce[75] := reg_lotomania_resultado_num.num_75;
      lotomania_resultado_num_sobe_desce[76] := reg_lotomania_resultado_num.num_76;
      lotomania_resultado_num_sobe_desce[77] := reg_lotomania_resultado_num.num_77;
      lotomania_resultado_num_sobe_desce[78] := reg_lotomania_resultado_num.num_78;
      lotomania_resultado_num_sobe_desce[79] := reg_lotomania_resultado_num.num_79;
      lotomania_resultado_num_sobe_desce[80] := reg_lotomania_resultado_num.num_80;
      lotomania_resultado_num_sobe_desce[81] := reg_lotomania_resultado_num.num_81;
      lotomania_resultado_num_sobe_desce[82] := reg_lotomania_resultado_num.num_82;
      lotomania_resultado_num_sobe_desce[83] := reg_lotomania_resultado_num.num_83;
      lotomania_resultado_num_sobe_desce[84] := reg_lotomania_resultado_num.num_84;
      lotomania_resultado_num_sobe_desce[85] := reg_lotomania_resultado_num.num_85;
      lotomania_resultado_num_sobe_desce[86] := reg_lotomania_resultado_num.num_86;
      lotomania_resultado_num_sobe_desce[87] := reg_lotomania_resultado_num.num_87;
      lotomania_resultado_num_sobe_desce[88] := reg_lotomania_resultado_num.num_88;
      lotomania_resultado_num_sobe_desce[89] := reg_lotomania_resultado_num.num_89;
      lotomania_resultado_num_sobe_desce[90] := reg_lotomania_resultado_num.num_90;
      lotomania_resultado_num_sobe_desce[91] := reg_lotomania_resultado_num.num_91;
      lotomania_resultado_num_sobe_desce[92] := reg_lotomania_resultado_num.num_92;
      lotomania_resultado_num_sobe_desce[93] := reg_lotomania_resultado_num.num_93;
      lotomania_resultado_num_sobe_desce[94] := reg_lotomania_resultado_num.num_94;
      lotomania_resultado_num_sobe_desce[95] := reg_lotomania_resultado_num.num_95;
      lotomania_resultado_num_sobe_desce[96] := reg_lotomania_resultado_num.num_96;
      lotomania_resultado_num_sobe_desce[97] := reg_lotomania_resultado_num.num_97;
      lotomania_resultado_num_sobe_desce[98] := reg_lotomania_resultado_num.num_98;
      lotomania_resultado_num_sobe_desce[99] := reg_lotomania_resultado_num.num_99;

      -- Se é o primeiro concurso, devemos marcar as bolas que não saiu com o valor -1 pois
      -- senão, irá considera que l

      qt_novos := 0;
      qt_repetidos := 0;
      qt_deixou_de_sair := 0;
      qt_ainda_nao_saiu := 0;

      uB := 0;
      while uB <= 99 LOOP
        if lotomania_resultado_num_frequencia[uB] = 0 then
          lotomania_resultado_num_frequencia[uB] := -1;
          lotomania_resultado_num_frequencia_total[uB] := -1;
          lotomania_resultado_num_sobe_desce[uB] := -1;
        END IF;

        Insert Into lotomania.lotomania_resultado_bolas_frequencia(concurso, bola, frequencia) VALUES
          (reg_lotomania_resultado_num.concurso, uB, lotomania_resultado_num_frequencia[uB]);

        Insert Into lotomania.lotomania_resultado_bolas_frequencia_total(concurso, bola, frequencia) VALUES
          (reg_lotomania_resultado_num.concurso, uB, lotomania_resultado_num_frequencia_total[uB]);

        Insert Into lotomania.lotomania_resultado_bolas_qt_vezes(concurso, bola, qt_vezes) VALUES
          (reg_lotomania_resultado_num.concurso, uB, lotomania_resultado_num_qt_vezes[uB]);

        Insert Into lotomania.lotomania_resultado_bolas_sobe_desce(concurso, bola, sobe_desce) values
          (reg_lotomania_resultado_num.concurso, uB, lotomania_resultado_num_sobe_desce[uB]);

        case
          when lotomania_resultado_num_frequencia[uB] > 1 then
            qt_repetidos := qt_repetidos + 1;
          when lotomania_resultado_num_frequencia[uB] = 1 then
            qt_novos := qt_novos + 1;
          when lotomania_resultado_num_frequencia[uB] = -1 then
            qt_deixou_de_sair := qt_deixou_de_sair + 1;
          when lotomania_resultado_num_frequencia[uB] < -1 then
            qt_ainda_nao_saiu := qt_ainda_nao_saiu + 1;
        end case;

        uB := uB + 1;
      END LOOP;

      Insert Into Lotomania.lotomania_resultado_bolas_frequencia_status_total
      (concurso, ainda_nao_saiu, deixou_de_sair, novos, repetindo) values
      (reg_lotomania_resultado_num.concurso, qt_ainda_nao_saiu, qt_deixou_de_sair, qt_novos, qt_repetidos);




      
      -- No caso da lotomania, pode inserir os registros, diferente da lotofacil.
      INSERT INTO lotomania.lotomania_resultado_num_frequencia (
        concurso, num_0, 
                  num_1, num_2, num_3, num_4, num_5,
                  num_6, num_7, num_8, num_9, num_10,
                  num_11, num_12, num_13, num_14, num_15,
                  num_16, num_17, num_18, num_19, num_20,
                  num_21, num_22, num_23, num_24, num_25,
                  num_26, num_27, num_28, num_29, num_30,
                  num_31, num_32, num_33, num_34, num_35,
                  num_36, num_37, num_38, num_39, num_40,
                  num_41, num_42, num_43, num_44, num_45,
                  num_46, num_47, num_48, num_49, num_50,
                  num_51, num_52, num_53, num_54, num_55,
                  num_56, num_57, num_58, num_59, num_60,
                  num_61, num_62, num_63, num_64, num_65,
                  num_66, num_67, num_68, num_69, num_70,
                  num_71, num_72, num_73, num_74, num_75,
                  num_76, num_77, num_78, num_79, num_80,
                  num_81, num_82, num_83, num_84, num_85,
                  num_86, num_87, num_88, num_89, num_90,
                  num_91, num_92, num_93, num_94, num_95,
                  num_96, num_97, num_98, num_99)
      VALUES (reg_lotomania_resultado_num.concurso,
        lotomania_resultado_num_frequencia[0],
        lotomania_resultado_num_frequencia[1],
        lotomania_resultado_num_frequencia[2],
        lotomania_resultado_num_frequencia[3],
        lotomania_resultado_num_frequencia[4],
        lotomania_resultado_num_frequencia[5],
        lotomania_resultado_num_frequencia[6],
        lotomania_resultado_num_frequencia[7],
        lotomania_resultado_num_frequencia[8],
        lotomania_resultado_num_frequencia[9],
        lotomania_resultado_num_frequencia[10],
        lotomania_resultado_num_frequencia[11],
        lotomania_resultado_num_frequencia[12],
        lotomania_resultado_num_frequencia[13],
        lotomania_resultado_num_frequencia[14],
        lotomania_resultado_num_frequencia[15],
        lotomania_resultado_num_frequencia[16],
        lotomania_resultado_num_frequencia[17],
        lotomania_resultado_num_frequencia[18],
        lotomania_resultado_num_frequencia[19],
        lotomania_resultado_num_frequencia[20],
        lotomania_resultado_num_frequencia[21],
        lotomania_resultado_num_frequencia[22],
        lotomania_resultado_num_frequencia[23],
        lotomania_resultado_num_frequencia[24],
        lotomania_resultado_num_frequencia[25],
        lotomania_resultado_num_frequencia[26],
        lotomania_resultado_num_frequencia[27],
        lotomania_resultado_num_frequencia[28],
        lotomania_resultado_num_frequencia[29],
        lotomania_resultado_num_frequencia[30],
        lotomania_resultado_num_frequencia[31],
        lotomania_resultado_num_frequencia[32],
        lotomania_resultado_num_frequencia[33],
        lotomania_resultado_num_frequencia[34],
        lotomania_resultado_num_frequencia[35],
        lotomania_resultado_num_frequencia[36],
        lotomania_resultado_num_frequencia[37],
        lotomania_resultado_num_frequencia[38],
        lotomania_resultado_num_frequencia[39],
        lotomania_resultado_num_frequencia[40],
        lotomania_resultado_num_frequencia[41],
        lotomania_resultado_num_frequencia[42],
        lotomania_resultado_num_frequencia[43],
        lotomania_resultado_num_frequencia[44],
        lotomania_resultado_num_frequencia[45],
        lotomania_resultado_num_frequencia[46],
        lotomania_resultado_num_frequencia[47],
        lotomania_resultado_num_frequencia[48],
        lotomania_resultado_num_frequencia[49],
        lotomania_resultado_num_frequencia[50],
        lotomania_resultado_num_frequencia[51],
        lotomania_resultado_num_frequencia[52],
        lotomania_resultado_num_frequencia[53],
        lotomania_resultado_num_frequencia[54],
        lotomania_resultado_num_frequencia[55],
        lotomania_resultado_num_frequencia[56],
        lotomania_resultado_num_frequencia[57],
        lotomania_resultado_num_frequencia[58],
        lotomania_resultado_num_frequencia[59],
        lotomania_resultado_num_frequencia[60],
        lotomania_resultado_num_frequencia[61],
        lotomania_resultado_num_frequencia[62],
        lotomania_resultado_num_frequencia[63],
        lotomania_resultado_num_frequencia[64],
        lotomania_resultado_num_frequencia[65],
        lotomania_resultado_num_frequencia[66],
        lotomania_resultado_num_frequencia[67],
        lotomania_resultado_num_frequencia[68],
        lotomania_resultado_num_frequencia[69],
        lotomania_resultado_num_frequencia[70],
        lotomania_resultado_num_frequencia[71],
        lotomania_resultado_num_frequencia[72],
        lotomania_resultado_num_frequencia[73],
        lotomania_resultado_num_frequencia[74],
        lotomania_resultado_num_frequencia[75],
        lotomania_resultado_num_frequencia[76],
        lotomania_resultado_num_frequencia[77],
        lotomania_resultado_num_frequencia[78],
        lotomania_resultado_num_frequencia[79],
        lotomania_resultado_num_frequencia[80],
        lotomania_resultado_num_frequencia[81],
        lotomania_resultado_num_frequencia[82],
        lotomania_resultado_num_frequencia[83],
        lotomania_resultado_num_frequencia[84],
        lotomania_resultado_num_frequencia[85],
        lotomania_resultado_num_frequencia[86],
        lotomania_resultado_num_frequencia[87],
        lotomania_resultado_num_frequencia[88],
        lotomania_resultado_num_frequencia[89],
        lotomania_resultado_num_frequencia[90],
        lotomania_resultado_num_frequencia[91],
        lotomania_resultado_num_frequencia[92],
        lotomania_resultado_num_frequencia[93],
        lotomania_resultado_num_frequencia[94],
        lotomania_resultado_num_frequencia[95],
        lotomania_resultado_num_frequencia[96],
        lotomania_resultado_num_frequencia[97],
        lotomania_resultado_num_frequencia[98],
        lotomania_resultado_num_frequencia[99]);
      
      INSERT INTO lotomania.lotomania_resultado_num_frequencia_total (
        concurso, num_0, 
                  num_1, num_2, num_3, num_4, num_5,
                  num_6, num_7, num_8, num_9, num_10,
                  num_11, num_12, num_13, num_14, num_15,
                  num_16, num_17, num_18, num_19, num_20,
                  num_21, num_22, num_23, num_24, num_25,
                  num_26, num_27, num_28, num_29, num_30,
                  num_31, num_32, num_33, num_34, num_35,
                  num_36, num_37, num_38, num_39, num_40,
                  num_41, num_42, num_43, num_44, num_45,
                  num_46, num_47, num_48, num_49, num_50,
                  num_51, num_52, num_53, num_54, num_55,
                  num_56, num_57, num_58, num_59, num_60,
                  num_61, num_62, num_63, num_64, num_65,
                  num_66, num_67, num_68, num_69, num_70,
                  num_71, num_72, num_73, num_74, num_75,
                  num_76, num_77, num_78, num_79, num_80,
                  num_81, num_82, num_83, num_84, num_85,
                  num_86, num_87, num_88, num_89, num_90,
                  num_91, num_92, num_93, num_94, num_95,
                  num_96, num_97, num_98, num_99)
      VALUES (reg_lotomania_resultado_num.concurso,    
        lotomania_resultado_num_frequencia_total[0],
        lotomania_resultado_num_frequencia_total[1],
        lotomania_resultado_num_frequencia_total[2],
        lotomania_resultado_num_frequencia_total[3],
        lotomania_resultado_num_frequencia_total[4],
        lotomania_resultado_num_frequencia_total[5],
        lotomania_resultado_num_frequencia_total[6],
        lotomania_resultado_num_frequencia_total[7],
        lotomania_resultado_num_frequencia_total[8],
        lotomania_resultado_num_frequencia_total[9],
        lotomania_resultado_num_frequencia_total[10],
        lotomania_resultado_num_frequencia_total[11],
        lotomania_resultado_num_frequencia_total[12],
        lotomania_resultado_num_frequencia_total[13],
        lotomania_resultado_num_frequencia_total[14],
        lotomania_resultado_num_frequencia_total[15],
        lotomania_resultado_num_frequencia_total[16],
        lotomania_resultado_num_frequencia_total[17],
        lotomania_resultado_num_frequencia_total[18],
        lotomania_resultado_num_frequencia_total[19],
        lotomania_resultado_num_frequencia_total[20],
        lotomania_resultado_num_frequencia_total[21],
        lotomania_resultado_num_frequencia_total[22],
        lotomania_resultado_num_frequencia_total[23],
        lotomania_resultado_num_frequencia_total[24],
        lotomania_resultado_num_frequencia_total[25],
        lotomania_resultado_num_frequencia_total[26],
        lotomania_resultado_num_frequencia_total[27],
        lotomania_resultado_num_frequencia_total[28],
        lotomania_resultado_num_frequencia_total[29],
        lotomania_resultado_num_frequencia_total[30],
        lotomania_resultado_num_frequencia_total[31],
        lotomania_resultado_num_frequencia_total[32],
        lotomania_resultado_num_frequencia_total[33],
        lotomania_resultado_num_frequencia_total[34],
        lotomania_resultado_num_frequencia_total[35],
        lotomania_resultado_num_frequencia_total[36],
        lotomania_resultado_num_frequencia_total[37],
        lotomania_resultado_num_frequencia_total[38],
        lotomania_resultado_num_frequencia_total[39],
        lotomania_resultado_num_frequencia_total[40],
        lotomania_resultado_num_frequencia_total[41],
        lotomania_resultado_num_frequencia_total[42],
        lotomania_resultado_num_frequencia_total[43],
        lotomania_resultado_num_frequencia_total[44],
        lotomania_resultado_num_frequencia_total[45],
        lotomania_resultado_num_frequencia_total[46],
        lotomania_resultado_num_frequencia_total[47],
        lotomania_resultado_num_frequencia_total[48],
        lotomania_resultado_num_frequencia_total[49],
        lotomania_resultado_num_frequencia_total[50],
        lotomania_resultado_num_frequencia_total[51],
        lotomania_resultado_num_frequencia_total[52],
        lotomania_resultado_num_frequencia_total[53],
        lotomania_resultado_num_frequencia_total[54],
        lotomania_resultado_num_frequencia_total[55],
        lotomania_resultado_num_frequencia_total[56],
        lotomania_resultado_num_frequencia_total[57],
        lotomania_resultado_num_frequencia_total[58],
        lotomania_resultado_num_frequencia_total[59],
        lotomania_resultado_num_frequencia_total[60],
        lotomania_resultado_num_frequencia_total[61],
        lotomania_resultado_num_frequencia_total[62],
        lotomania_resultado_num_frequencia_total[63],
        lotomania_resultado_num_frequencia_total[64],
        lotomania_resultado_num_frequencia_total[65],
        lotomania_resultado_num_frequencia_total[66],
        lotomania_resultado_num_frequencia_total[67],
        lotomania_resultado_num_frequencia_total[68],
        lotomania_resultado_num_frequencia_total[69],
        lotomania_resultado_num_frequencia_total[70],
        lotomania_resultado_num_frequencia_total[71],
        lotomania_resultado_num_frequencia_total[72],
        lotomania_resultado_num_frequencia_total[73],
        lotomania_resultado_num_frequencia_total[74],
        lotomania_resultado_num_frequencia_total[75],
        lotomania_resultado_num_frequencia_total[76],
        lotomania_resultado_num_frequencia_total[77],
        lotomania_resultado_num_frequencia_total[78],
        lotomania_resultado_num_frequencia_total[79],
        lotomania_resultado_num_frequencia_total[80],
        lotomania_resultado_num_frequencia_total[81],
        lotomania_resultado_num_frequencia_total[82],
        lotomania_resultado_num_frequencia_total[83],
        lotomania_resultado_num_frequencia_total[84],
        lotomania_resultado_num_frequencia_total[85],
        lotomania_resultado_num_frequencia_total[86],
        lotomania_resultado_num_frequencia_total[87],
        lotomania_resultado_num_frequencia_total[88],
        lotomania_resultado_num_frequencia_total[89],
        lotomania_resultado_num_frequencia_total[90],
        lotomania_resultado_num_frequencia_total[91],
        lotomania_resultado_num_frequencia_total[92],
        lotomania_resultado_num_frequencia_total[93],
        lotomania_resultado_num_frequencia_total[94],
        lotomania_resultado_num_frequencia_total[95],
        lotomania_resultado_num_frequencia_total[96],
        lotomania_resultado_num_frequencia_total[97],
        lotomania_resultado_num_frequencia_total[98],
        lotomania_resultado_num_frequencia_total[99]    
      );      
      
      INSERT INTO lotomania.lotomania_resultado_num_qt_vezes (
        concurso, num_0, 
                  num_1, num_2, num_3, num_4, num_5,
                  num_6, num_7, num_8, num_9, num_10,
                  num_11, num_12, num_13, num_14, num_15,
                  num_16, num_17, num_18, num_19, num_20,
                  num_21, num_22, num_23, num_24, num_25,
                  num_26, num_27, num_28, num_29, num_30,
                  num_31, num_32, num_33, num_34, num_35,
                  num_36, num_37, num_38, num_39, num_40,
                  num_41, num_42, num_43, num_44, num_45,
                  num_46, num_47, num_48, num_49, num_50,
                  num_51, num_52, num_53, num_54, num_55,
                  num_56, num_57, num_58, num_59, num_60,
                  num_61, num_62, num_63, num_64, num_65,
                  num_66, num_67, num_68, num_69, num_70,
                  num_71, num_72, num_73, num_74, num_75,
                  num_76, num_77, num_78, num_79, num_80,
                  num_81, num_82, num_83, num_84, num_85,
                  num_86, num_87, num_88, num_89, num_90,
                  num_91, num_92, num_93, num_94, num_95,
                  num_96, num_97, num_98, num_99)
      VALUES (reg_lotomania_resultado_num.concurso,
        lotomania_resultado_num_qt_vezes[0],
        lotomania_resultado_num_qt_vezes[1],
        lotomania_resultado_num_qt_vezes[2],
        lotomania_resultado_num_qt_vezes[3],
        lotomania_resultado_num_qt_vezes[4],
        lotomania_resultado_num_qt_vezes[5],
        lotomania_resultado_num_qt_vezes[6],
        lotomania_resultado_num_qt_vezes[7],
        lotomania_resultado_num_qt_vezes[8],
        lotomania_resultado_num_qt_vezes[9],
        lotomania_resultado_num_qt_vezes[10],
        lotomania_resultado_num_qt_vezes[11],
        lotomania_resultado_num_qt_vezes[12],
        lotomania_resultado_num_qt_vezes[13],
        lotomania_resultado_num_qt_vezes[14],
        lotomania_resultado_num_qt_vezes[15],
        lotomania_resultado_num_qt_vezes[16],
        lotomania_resultado_num_qt_vezes[17],
        lotomania_resultado_num_qt_vezes[18],
        lotomania_resultado_num_qt_vezes[19],
        lotomania_resultado_num_qt_vezes[20],
        lotomania_resultado_num_qt_vezes[21],
        lotomania_resultado_num_qt_vezes[22],
        lotomania_resultado_num_qt_vezes[23],
        lotomania_resultado_num_qt_vezes[24],
        lotomania_resultado_num_qt_vezes[25],
        lotomania_resultado_num_qt_vezes[26],
        lotomania_resultado_num_qt_vezes[27],
        lotomania_resultado_num_qt_vezes[28],
        lotomania_resultado_num_qt_vezes[29],
        lotomania_resultado_num_qt_vezes[30],
        lotomania_resultado_num_qt_vezes[31],
        lotomania_resultado_num_qt_vezes[32],
        lotomania_resultado_num_qt_vezes[33],
        lotomania_resultado_num_qt_vezes[34],
        lotomania_resultado_num_qt_vezes[35],
        lotomania_resultado_num_qt_vezes[36],
        lotomania_resultado_num_qt_vezes[37],
        lotomania_resultado_num_qt_vezes[38],
        lotomania_resultado_num_qt_vezes[39],
        lotomania_resultado_num_qt_vezes[40],
        lotomania_resultado_num_qt_vezes[41],
        lotomania_resultado_num_qt_vezes[42],
        lotomania_resultado_num_qt_vezes[43],
        lotomania_resultado_num_qt_vezes[44],
        lotomania_resultado_num_qt_vezes[45],
        lotomania_resultado_num_qt_vezes[46],
        lotomania_resultado_num_qt_vezes[47],
        lotomania_resultado_num_qt_vezes[48],
        lotomania_resultado_num_qt_vezes[49],
        lotomania_resultado_num_qt_vezes[50],
        lotomania_resultado_num_qt_vezes[51],
        lotomania_resultado_num_qt_vezes[52],
        lotomania_resultado_num_qt_vezes[53],
        lotomania_resultado_num_qt_vezes[54],
        lotomania_resultado_num_qt_vezes[55],
        lotomania_resultado_num_qt_vezes[56],
        lotomania_resultado_num_qt_vezes[57],
        lotomania_resultado_num_qt_vezes[58],
        lotomania_resultado_num_qt_vezes[59],
        lotomania_resultado_num_qt_vezes[60],
        lotomania_resultado_num_qt_vezes[61],
        lotomania_resultado_num_qt_vezes[62],
        lotomania_resultado_num_qt_vezes[63],
        lotomania_resultado_num_qt_vezes[64],
        lotomania_resultado_num_qt_vezes[65],
        lotomania_resultado_num_qt_vezes[66],
        lotomania_resultado_num_qt_vezes[67],
        lotomania_resultado_num_qt_vezes[68],
        lotomania_resultado_num_qt_vezes[69],
        lotomania_resultado_num_qt_vezes[70],
        lotomania_resultado_num_qt_vezes[71],
        lotomania_resultado_num_qt_vezes[72],
        lotomania_resultado_num_qt_vezes[73],
        lotomania_resultado_num_qt_vezes[74],
        lotomania_resultado_num_qt_vezes[75],
        lotomania_resultado_num_qt_vezes[76],
        lotomania_resultado_num_qt_vezes[77],
        lotomania_resultado_num_qt_vezes[78],
        lotomania_resultado_num_qt_vezes[79],
        lotomania_resultado_num_qt_vezes[80],
        lotomania_resultado_num_qt_vezes[81],
        lotomania_resultado_num_qt_vezes[82],
        lotomania_resultado_num_qt_vezes[83],
        lotomania_resultado_num_qt_vezes[84],
        lotomania_resultado_num_qt_vezes[85],
        lotomania_resultado_num_qt_vezes[86],
        lotomania_resultado_num_qt_vezes[87],
        lotomania_resultado_num_qt_vezes[88],
        lotomania_resultado_num_qt_vezes[89],
        lotomania_resultado_num_qt_vezes[90],
        lotomania_resultado_num_qt_vezes[91],
        lotomania_resultado_num_qt_vezes[92],
        lotomania_resultado_num_qt_vezes[93],
        lotomania_resultado_num_qt_vezes[94],
        lotomania_resultado_num_qt_vezes[95],
        lotomania_resultado_num_qt_vezes[96],
        lotomania_resultado_num_qt_vezes[97],
        lotomania_resultado_num_qt_vezes[98],
        lotomania_resultado_num_qt_vezes[99]);
      
      INSERT INTO lotomania.lotomania_resultado_num_sobe_desce (
        concurso, num_0, 
                  num_1, num_2, num_3, num_4, num_5,
                  num_6, num_7, num_8, num_9, num_10,
                  num_11, num_12, num_13, num_14, num_15,
                  num_16, num_17, num_18, num_19, num_20,
                  num_21, num_22, num_23, num_24, num_25,
                  num_26, num_27, num_28, num_29, num_30,
                  num_31, num_32, num_33, num_34, num_35,
                  num_36, num_37, num_38, num_39, num_40,
                  num_41, num_42, num_43, num_44, num_45,
                  num_46, num_47, num_48, num_49, num_50,
                  num_51, num_52, num_53, num_54, num_55,
                  num_56, num_57, num_58, num_59, num_60,
                  num_61, num_62, num_63, num_64, num_65,
                  num_66, num_67, num_68, num_69, num_70,
                  num_71, num_72, num_73, num_74, num_75,
                  num_76, num_77, num_78, num_79, num_80,
                  num_81, num_82, num_83, num_84, num_85,
                  num_86, num_87, num_88, num_89, num_90,
                  num_91, num_92, num_93, num_94, num_95,
                  num_96, num_97, num_98, num_99)
      VALUES (reg_lotomania_resultado_num.concurso,
        lotomania_resultado_num_sobe_desce[0],
        lotomania_resultado_num_sobe_desce[1],
        lotomania_resultado_num_sobe_desce[2],
        lotomania_resultado_num_sobe_desce[3],
        lotomania_resultado_num_sobe_desce[4],
        lotomania_resultado_num_sobe_desce[5],
        lotomania_resultado_num_sobe_desce[6],
        lotomania_resultado_num_sobe_desce[7],
        lotomania_resultado_num_sobe_desce[8],
        lotomania_resultado_num_sobe_desce[9],
        lotomania_resultado_num_sobe_desce[10],
        lotomania_resultado_num_sobe_desce[11],
        lotomania_resultado_num_sobe_desce[12],
        lotomania_resultado_num_sobe_desce[13],
        lotomania_resultado_num_sobe_desce[14],
        lotomania_resultado_num_sobe_desce[15],
        lotomania_resultado_num_sobe_desce[16],
        lotomania_resultado_num_sobe_desce[17],
        lotomania_resultado_num_sobe_desce[18],
        lotomania_resultado_num_sobe_desce[19],
        lotomania_resultado_num_sobe_desce[20],
        lotomania_resultado_num_sobe_desce[21],
        lotomania_resultado_num_sobe_desce[22],
        lotomania_resultado_num_sobe_desce[23],
        lotomania_resultado_num_sobe_desce[24],
        lotomania_resultado_num_sobe_desce[25],
        lotomania_resultado_num_sobe_desce[26],
        lotomania_resultado_num_sobe_desce[27],
        lotomania_resultado_num_sobe_desce[28],
        lotomania_resultado_num_sobe_desce[29],
        lotomania_resultado_num_sobe_desce[30],
        lotomania_resultado_num_sobe_desce[31],
        lotomania_resultado_num_sobe_desce[32],
        lotomania_resultado_num_sobe_desce[33],
        lotomania_resultado_num_sobe_desce[34],
        lotomania_resultado_num_sobe_desce[35],
        lotomania_resultado_num_sobe_desce[36],
        lotomania_resultado_num_sobe_desce[37],
        lotomania_resultado_num_sobe_desce[38],
        lotomania_resultado_num_sobe_desce[39],
        lotomania_resultado_num_sobe_desce[40],
        lotomania_resultado_num_sobe_desce[41],
        lotomania_resultado_num_sobe_desce[42],
        lotomania_resultado_num_sobe_desce[43],
        lotomania_resultado_num_sobe_desce[44],
        lotomania_resultado_num_sobe_desce[45],
        lotomania_resultado_num_sobe_desce[46],
        lotomania_resultado_num_sobe_desce[47],
        lotomania_resultado_num_sobe_desce[48],
        lotomania_resultado_num_sobe_desce[49],
        lotomania_resultado_num_sobe_desce[50],
        lotomania_resultado_num_sobe_desce[51],
        lotomania_resultado_num_sobe_desce[52],
        lotomania_resultado_num_sobe_desce[53],
        lotomania_resultado_num_sobe_desce[54],
        lotomania_resultado_num_sobe_desce[55],
        lotomania_resultado_num_sobe_desce[56],
        lotomania_resultado_num_sobe_desce[57],
        lotomania_resultado_num_sobe_desce[58],
        lotomania_resultado_num_sobe_desce[59],
        lotomania_resultado_num_sobe_desce[60],
        lotomania_resultado_num_sobe_desce[61],
        lotomania_resultado_num_sobe_desce[62],
        lotomania_resultado_num_sobe_desce[63],
        lotomania_resultado_num_sobe_desce[64],
        lotomania_resultado_num_sobe_desce[65],
        lotomania_resultado_num_sobe_desce[66],
        lotomania_resultado_num_sobe_desce[67],
        lotomania_resultado_num_sobe_desce[68],
        lotomania_resultado_num_sobe_desce[69],
        lotomania_resultado_num_sobe_desce[70],
        lotomania_resultado_num_sobe_desce[71],
        lotomania_resultado_num_sobe_desce[72],
        lotomania_resultado_num_sobe_desce[73],
        lotomania_resultado_num_sobe_desce[74],
        lotomania_resultado_num_sobe_desce[75],
        lotomania_resultado_num_sobe_desce[76],
        lotomania_resultado_num_sobe_desce[77],
        lotomania_resultado_num_sobe_desce[78],
        lotomania_resultado_num_sobe_desce[79],
        lotomania_resultado_num_sobe_desce[80],
        lotomania_resultado_num_sobe_desce[81],
        lotomania_resultado_num_sobe_desce[82],
        lotomania_resultado_num_sobe_desce[83],
        lotomania_resultado_num_sobe_desce[84],
        lotomania_resultado_num_sobe_desce[85],
        lotomania_resultado_num_sobe_desce[86],
        lotomania_resultado_num_sobe_desce[87],
        lotomania_resultado_num_sobe_desce[88],
        lotomania_resultado_num_sobe_desce[89],
        lotomania_resultado_num_sobe_desce[90],
        lotomania_resultado_num_sobe_desce[91],
        lotomania_resultado_num_sobe_desce[92],
        lotomania_resultado_num_sobe_desce[93],
        lotomania_resultado_num_sobe_desce[94],
        lotomania_resultado_num_sobe_desce[95],
        lotomania_resultado_num_sobe_desce[96],
        lotomania_resultado_num_sobe_desce[97],
        lotomania_resultado_num_sobe_desce[98],
        lotomania_resultado_num_sobe_desce[99]);







      continue;      
    END IF;

    lotomania_resultado_num_atual[0] := reg_lotomania_resultado_num.num_0;
    lotomania_resultado_num_atual[1] := reg_lotomania_resultado_num.num_1;
    lotomania_resultado_num_atual[2] := reg_lotomania_resultado_num.num_2;
    lotomania_resultado_num_atual[3] := reg_lotomania_resultado_num.num_3;
    lotomania_resultado_num_atual[4] := reg_lotomania_resultado_num.num_4;
    lotomania_resultado_num_atual[5] := reg_lotomania_resultado_num.num_5;
    lotomania_resultado_num_atual[6] := reg_lotomania_resultado_num.num_6;
    lotomania_resultado_num_atual[7] := reg_lotomania_resultado_num.num_7;
    lotomania_resultado_num_atual[8] := reg_lotomania_resultado_num.num_8;
    lotomania_resultado_num_atual[9] := reg_lotomania_resultado_num.num_9;
    lotomania_resultado_num_atual[10] := reg_lotomania_resultado_num.num_10;
    lotomania_resultado_num_atual[11] := reg_lotomania_resultado_num.num_11;
    lotomania_resultado_num_atual[12] := reg_lotomania_resultado_num.num_12;
    lotomania_resultado_num_atual[13] := reg_lotomania_resultado_num.num_13;
    lotomania_resultado_num_atual[14] := reg_lotomania_resultado_num.num_14;
    lotomania_resultado_num_atual[15] := reg_lotomania_resultado_num.num_15;
    lotomania_resultado_num_atual[16] := reg_lotomania_resultado_num.num_16;
    lotomania_resultado_num_atual[17] := reg_lotomania_resultado_num.num_17;
    lotomania_resultado_num_atual[18] := reg_lotomania_resultado_num.num_18;
    lotomania_resultado_num_atual[19] := reg_lotomania_resultado_num.num_19;
    lotomania_resultado_num_atual[20] := reg_lotomania_resultado_num.num_20;
    lotomania_resultado_num_atual[21] := reg_lotomania_resultado_num.num_21;
    lotomania_resultado_num_atual[22] := reg_lotomania_resultado_num.num_22;
    lotomania_resultado_num_atual[23] := reg_lotomania_resultado_num.num_23;
    lotomania_resultado_num_atual[24] := reg_lotomania_resultado_num.num_24;
    lotomania_resultado_num_atual[25] := reg_lotomania_resultado_num.num_25;
    lotomania_resultado_num_atual[26] := reg_lotomania_resultado_num.num_26;
    lotomania_resultado_num_atual[27] := reg_lotomania_resultado_num.num_27;
    lotomania_resultado_num_atual[28] := reg_lotomania_resultado_num.num_28;
    lotomania_resultado_num_atual[29] := reg_lotomania_resultado_num.num_29;
    lotomania_resultado_num_atual[30] := reg_lotomania_resultado_num.num_30;
    lotomania_resultado_num_atual[31] := reg_lotomania_resultado_num.num_31;
    lotomania_resultado_num_atual[32] := reg_lotomania_resultado_num.num_32;
    lotomania_resultado_num_atual[33] := reg_lotomania_resultado_num.num_33;
    lotomania_resultado_num_atual[34] := reg_lotomania_resultado_num.num_34;
    lotomania_resultado_num_atual[35] := reg_lotomania_resultado_num.num_35;
    lotomania_resultado_num_atual[36] := reg_lotomania_resultado_num.num_36;
    lotomania_resultado_num_atual[37] := reg_lotomania_resultado_num.num_37;
    lotomania_resultado_num_atual[38] := reg_lotomania_resultado_num.num_38;
    lotomania_resultado_num_atual[39] := reg_lotomania_resultado_num.num_39;
    lotomania_resultado_num_atual[40] := reg_lotomania_resultado_num.num_40;
    lotomania_resultado_num_atual[41] := reg_lotomania_resultado_num.num_41;
    lotomania_resultado_num_atual[42] := reg_lotomania_resultado_num.num_42;
    lotomania_resultado_num_atual[43] := reg_lotomania_resultado_num.num_43;
    lotomania_resultado_num_atual[44] := reg_lotomania_resultado_num.num_44;
    lotomania_resultado_num_atual[45] := reg_lotomania_resultado_num.num_45;
    lotomania_resultado_num_atual[46] := reg_lotomania_resultado_num.num_46;
    lotomania_resultado_num_atual[47] := reg_lotomania_resultado_num.num_47;
    lotomania_resultado_num_atual[48] := reg_lotomania_resultado_num.num_48;
    lotomania_resultado_num_atual[49] := reg_lotomania_resultado_num.num_49;
    lotomania_resultado_num_atual[50] := reg_lotomania_resultado_num.num_50;
    lotomania_resultado_num_atual[51] := reg_lotomania_resultado_num.num_51;
    lotomania_resultado_num_atual[52] := reg_lotomania_resultado_num.num_52;
    lotomania_resultado_num_atual[53] := reg_lotomania_resultado_num.num_53;
    lotomania_resultado_num_atual[54] := reg_lotomania_resultado_num.num_54;
    lotomania_resultado_num_atual[55] := reg_lotomania_resultado_num.num_55;
    lotomania_resultado_num_atual[56] := reg_lotomania_resultado_num.num_56;
    lotomania_resultado_num_atual[57] := reg_lotomania_resultado_num.num_57;
    lotomania_resultado_num_atual[58] := reg_lotomania_resultado_num.num_58;
    lotomania_resultado_num_atual[59] := reg_lotomania_resultado_num.num_59;
    lotomania_resultado_num_atual[60] := reg_lotomania_resultado_num.num_60;
    lotomania_resultado_num_atual[61] := reg_lotomania_resultado_num.num_61;
    lotomania_resultado_num_atual[62] := reg_lotomania_resultado_num.num_62;
    lotomania_resultado_num_atual[63] := reg_lotomania_resultado_num.num_63;
    lotomania_resultado_num_atual[64] := reg_lotomania_resultado_num.num_64;
    lotomania_resultado_num_atual[65] := reg_lotomania_resultado_num.num_65;
    lotomania_resultado_num_atual[66] := reg_lotomania_resultado_num.num_66;
    lotomania_resultado_num_atual[67] := reg_lotomania_resultado_num.num_67;
    lotomania_resultado_num_atual[68] := reg_lotomania_resultado_num.num_68;
    lotomania_resultado_num_atual[69] := reg_lotomania_resultado_num.num_69;
    lotomania_resultado_num_atual[70] := reg_lotomania_resultado_num.num_70;
    lotomania_resultado_num_atual[71] := reg_lotomania_resultado_num.num_71;
    lotomania_resultado_num_atual[72] := reg_lotomania_resultado_num.num_72;
    lotomania_resultado_num_atual[73] := reg_lotomania_resultado_num.num_73;
    lotomania_resultado_num_atual[74] := reg_lotomania_resultado_num.num_74;
    lotomania_resultado_num_atual[75] := reg_lotomania_resultado_num.num_75;
    lotomania_resultado_num_atual[76] := reg_lotomania_resultado_num.num_76;
    lotomania_resultado_num_atual[77] := reg_lotomania_resultado_num.num_77;
    lotomania_resultado_num_atual[78] := reg_lotomania_resultado_num.num_78;
    lotomania_resultado_num_atual[79] := reg_lotomania_resultado_num.num_79;
    lotomania_resultado_num_atual[80] := reg_lotomania_resultado_num.num_80;
    lotomania_resultado_num_atual[81] := reg_lotomania_resultado_num.num_81;
    lotomania_resultado_num_atual[82] := reg_lotomania_resultado_num.num_82;
    lotomania_resultado_num_atual[83] := reg_lotomania_resultado_num.num_83;
    lotomania_resultado_num_atual[84] := reg_lotomania_resultado_num.num_84;
    lotomania_resultado_num_atual[85] := reg_lotomania_resultado_num.num_85;
    lotomania_resultado_num_atual[86] := reg_lotomania_resultado_num.num_86;
    lotomania_resultado_num_atual[87] := reg_lotomania_resultado_num.num_87;
    lotomania_resultado_num_atual[88] := reg_lotomania_resultado_num.num_88;
    lotomania_resultado_num_atual[89] := reg_lotomania_resultado_num.num_89;
    lotomania_resultado_num_atual[90] := reg_lotomania_resultado_num.num_90;
    lotomania_resultado_num_atual[91] := reg_lotomania_resultado_num.num_91;
    lotomania_resultado_num_atual[92] := reg_lotomania_resultado_num.num_92;
    lotomania_resultado_num_atual[93] := reg_lotomania_resultado_num.num_93;
    lotomania_resultado_num_atual[94] := reg_lotomania_resultado_num.num_94;
    lotomania_resultado_num_atual[95] := reg_lotomania_resultado_num.num_95;
    lotomania_resultado_num_atual[96] := reg_lotomania_resultado_num.num_96;
    lotomania_resultado_num_atual[97] := reg_lotomania_resultado_num.num_97;
    lotomania_resultado_num_atual[98] := reg_lotomania_resultado_num.num_98;
    lotomania_resultado_num_atual[99] := reg_lotomania_resultado_num.num_99;

    -- Neste loop, iremos contabilizar a quantidade de bolas:
    -- que são novas, repetidas, que deixaram de sair e ainda não saíram
    -- Também, será identificadas quais são as bolas novas, repetidas, que deixaram de sair, que ainda não saíram
    -- em cada concurso.
    -- Será preenchida a tabela lotomania.lotomania_resultado_num_frequencia, desta forma:
    -- Se a bola saiu no concurso atual e não saiu no concurso anterior, ela terá no campo corresponde a mesma,
    -- o valor 1.
    -- Se a bola saiu no concurso atual e também saiu no concurso anterior, o valor do campo no concurso atual
    -- será igual ao valor do mesmo campo do concurso anterior, acrescentado pelo valor 1.
    -- Se a bola não saiu no concurso atual, e também não saiu no concurso anterior, ela terá no campo
    -- do concurso atual, o valor do campo correspondente acrescido do valor -1.

    /*
    qt_novos := 0;
    qt_repetidos := 0;
    qt_deixou_de_sair := 0;
    qt_ainda_nao_saiu := 0;


       
    -- qtNovos := 0;
    -- qtRepetidos := 0;
    -- qtDeixou_de_Sair := 0;
    -- qtAinda_Nao_Saiu := 0;
    qtAlternaram_para_Negativo := 0;
    qtAlternaram_para_Positivo := 0;
    
    
    sql_novos_num := '';
    sql_repetidos_num := '';
    sql_deixou_de_sair_num := '';
    sql_ainda_nao_saiu_num := '';
    
    sql_novos_bolas := '';
    sql_repetidos_bolas := '';
    sql_deixou_de_sair_bolas := '';
    sql_ainda_nao_saiu_bolas := '';

    strAlternaram_para_negativo := '';
    strAlternaram_para_Positivo := '';


    qt_Pares := 0;
    qt_Impares := 0;
    soma_frequencia := 0;
    */

    uA := 0;
    for uA in 0..99 LOOP
      -- Informações
      if lotomania_resultado_num_atual[uA] >= 1 then
        case
          when sign(lotomania_resultado_num_sobe_desce[uA]) = -1 then
            lotomania_resultado_num_sobe_desce[uA] := lotomania_resultado_num_sobe_desce[uA] + 1;
          when sign(lotomania_resultado_num_sobe_desce[uA]) = 1 then
            lotomania_resultado_num_sobe_desce[uA] := lotomania_resultado_num_sobe_desce[uA] + 1;
          when sign(lotomania_resultado_num_sobe_desce[uA]) = 0 then
            lotomania_resultado_num_sobe_desce[uA] := 1;
        end case;
      else
        case
          when sign(lotomania_resultado_num_sobe_desce[uA]) = -1 then
            lotomania_resultado_num_sobe_desce[uA] := lotomania_resultado_num_sobe_desce[uA] - 1;
          when sign(lotomania_resultado_num_sobe_desce[uA]) = 1 then
            lotomania_resultado_num_sobe_desce[uA] := lotomania_resultado_num_sobe_desce[uA] - 1;
          when sign(lotomania_resultado_num_sobe_desce[uA]) = 0 then
            lotomania_resultado_num_sobe_desce[uA] := -1;
        end case;
      end if;

      if lotomania_resultado_num_atual[uA] >= 1 then
        lotomania_resultado_num_qt_vezes[uA] := lotomania_resultado_num_qt_vezes[uA] + 1;
      END IF;

      -- Bola não foi sorteado no concurso atual.
      IF lotomania_resultado_num_atual [uA] = 1
      THEN
        CASE
          -- Frequência negativa quer dizer que a bola não vinha saíndo desde o último concurso
          -- Então, devemos começar com o valor 1.
          WHEN sign(lotomania_resultado_num_frequencia [uA]) = -1
          THEN
            lotomania_resultado_num_frequencia [uA] := 1;
          
          -- Se a frequencia anterior tem o valor zero, quer dizer, que é a primeira vez que estamos
          -- analisando, então iremos definir o valor da frequencia do concurso atual pra o valor 1.
          WHEN sign(lotomania_resultado_num_frequencia [uA]) = 0
          THEN
            lotomania_resultado_num_frequencia [uA] := 1;
          
          -- Se a frequencia anterior tem um valor positivo, quer dizer, que a bola está se repetindo
          -- desde o último concurso.
          WHEN sign(lotomania_resultado_num_frequencia [uA]) = 1
          THEN
            lotomania_resultado_num_frequencia [uA] := lotomania_resultado_num_frequencia [uA] + 1;
        END CASE;
      ELSE
        IF lotomania_resultado_num_atual [uA] = 0
        THEN
          CASE
          -- Frequência negativa quer dizer que a bola não vinha saíndo desde o último concurso
          -- Então, devemos começar com o valor 1.
            WHEN sign(lotomania_resultado_num_frequencia [uA]) = -1
            THEN
              lotomania_resultado_num_frequencia [uA] := lotomania_resultado_num_frequencia [uA] - 1;
            
          -- Se a frequencia anterior tem o valor zero, quer dizer, que é a primeira vez que estamos
          -- analisando, então iremos definir o valor da frequencia do concurso atual pra o valor 1.            
            WHEN sign(lotomania_resultado_num_frequencia [uA]) = 0
            THEN
              lotomania_resultado_num_frequencia [uA] := -1;
            
            -- Se a frequencia anterior tem um valor positivo, quer dizer, que a bola está se repetindo
            -- desde o último concurso.            
            WHEN sign(lotomania_resultado_num_frequencia [uA]) = 1
            THEN
              lotomania_resultado_num_frequencia [uA] := -1;
          END CASE;
        END IF;
      END IF;

      -- Estamos percorrendo os campos num_ em ordem crescente, onde o primeiro
      -- campo é num_1 e o último é num_25, então, sempre ao ser inseridos
      -- dados nas tabelas com sufixo _bolas, sempre as bolas estão em ordem
      -- crescente.

      -- Se a frequência atual é um número menor que -1, quer dizer que ainda
      -- este número ainda não saiu.
      
      -- ####################### REFERENTE A AINDA NÃO SAIU ###########################
      -- Um número diz-se que ainda não saiu se não saiu no concurso anterior nem no concurso atual
      -- Então, o valor dele sempre será um número menor que -1.
      /*

      IF lotomania_resultado_num_frequencia [ua] < -1
      THEN
        qt_ainda_nao_saiu := qt_ainda_nao_saiu + 1;

        -- Aqui, iremos, construir o sql para o insert.
        sql_ainda_nao_saiu_num := sql_ainda_nao_saiu_num || ', num_' || uA;
        sql_ainda_nao_saiu_bolas := sql_ainda_nao_saiu_bolas || ', ' || uA;

        -- Se a frequência tem o valor -1, quer dizer, que o número estava
        -- saindo nos concursos anterior ou concurso anterior e deixou de sair.
      ELSIF lotomania_resultado_num_frequencia [uA] = -1
        THEN
          
          qt_deixou_de_sair := qt_deixou_de_sair + 1;
          
          sql_deixou_de_sair_num := sql_deixou_de_sair_num || ', num_' || uA;
          sql_deixou_de_sair_bolas := sql_deixou_de_sair_bolas || ', ' || uA;

      -- Se a frequência tem o valor de 1, quer dizer, que o número não saiu
      -- no último concurso, então é novo.
      ELSIF lotomania_resultado_num_frequencia [uA] = 1
        THEN
          
          qt_novos := qt_novos + 1;
          
          sql_novos_num := sql_novos_num || ', num_' || uA;
          sql_novos_bolas := sql_novos_bolas || ', ' || uA;

      -- Se a frequência tem o valor maior que 1, quer dizer, que o número
      -- está se repetindo.
      ELSIF lotomania_resultado_num_frequencia [uA] > 1
        THEN

          qt_repetidos := qt_repetidos + 1;
          
          sql_repetidos_num := sql_repetidos_num || ', num_' || uA;
          sql_repetidos_bolas := sql_repetidos_bolas || ', ' || uA;

      END IF;
      */
      
      -- Soma a frequencia atual, com a soma total de todas as frequências já
      -- encontradas.
      lotomania_resultado_num_frequencia_total[uA] := lotomania_resultado_num_frequencia_total [uA] +
                                                      lotomania_resultado_num_frequencia[uA];

      -- Incrementa a variável
      --uA := uA + 1;
    END LOOP;

    /**
      Vamos contabilizar a quantidade de novos, ainda não saiu, deixou de sair e repetindo.
     */
    qt_novos := 0;
    qt_repetidos := 0;
    qt_deixou_de_sair := 0;
    qt_ainda_nao_saiu := 0;


    --Insere 1 registro por bola, nas tabelas lotomania_resultado_bolas_frequencia e
    -- lotomania_resultado_bolas_frequencia_total.
    for uA in 0..99 LOOP
      Insert Into lotomania.lotomania_resultado_bolas_frequencia(concurso, bola, frequencia) VALUES
        (reg_lotomania_resultado_num.concurso, uA, lotomania_resultado_num_frequencia[uA]);

      Insert Into lotomania.lotomania_resultado_bolas_frequencia_total(concurso, bola, frequencia) VALUES
        (reg_lotomania_resultado_num.concurso, uA, lotomania_resultado_num_frequencia_total[uA]);

      Insert Into lotomania.lotomania_resultado_bolas_qt_vezes(concurso, bola, qt_vezes) VALUES
        (reg_lotomania_resultado_num.concurso, uA, lotomania_resultado_num_qt_vezes[uA]);

      Insert Into lotomania.lotomania_resultado_bolas_sobe_desce(concurso, bola, sobe_desce) values
        (reg_lotomania_resultado_num.concurso, uA, lotomania_resultado_num_sobe_desce[ua]);

        case
          when lotomania_resultado_num_frequencia[uA] > 1 then
            qt_repetidos := qt_repetidos + 1;
          when lotomania_resultado_num_frequencia[uA] = 1 then
            qt_novos := qt_novos + 1;
          when lotomania_resultado_num_frequencia[uA] = -1 then
            qt_deixou_de_sair := qt_deixou_de_sair + 1;
          when lotomania_resultado_num_frequencia[uA] < -1 then
            qt_ainda_nao_saiu := qt_ainda_nao_saiu + 1;
        end case;

    END LOOP;

    Insert Into Lotomania.lotomania_resultado_bolas_frequencia_status_total
      (concurso, ainda_nao_saiu, deixou_de_sair, novos, repetindo) values
      (reg_lotomania_resultado_num.concurso, qt_ainda_nao_saiu, qt_deixou_de_sair, qt_novos, qt_repetidos);

    -- A tabela lotomania_resultado_num_frequencia tem a frequencia baseada nos últimos concursos.
    -- A outra tabela, lotomania_resultado_num_frequencia_total, tem a soma de cada frequencia de
    -- cada concurso.
    -- Nesta tabela fica fácil detectar, qual é a bola que mais sai e a que menos sai.

    Raise Notice 'Concurso: %', reg_lotomania_resultado_num.concurso;


    INSERT INTO lotomania.lotomania_resultado_num_frequencia (
      concurso, num_0, 
                num_1, num_2, num_3, num_4, num_5,
                num_6, num_7, num_8, num_9, num_10,
                num_11, num_12, num_13, num_14, num_15,
                num_16, num_17, num_18, num_19, num_20,
                num_21, num_22, num_23, num_24, num_25,
                num_26, num_27, num_28, num_29, num_30,
                num_31, num_32, num_33, num_34, num_35,
                num_36, num_37, num_38, num_39, num_40,
                num_41, num_42, num_43, num_44, num_45,
                num_46, num_47, num_48, num_49, num_50,
                num_51, num_52, num_53, num_54, num_55,
                num_56, num_57, num_58, num_59, num_60,
                num_61, num_62, num_63, num_64, num_65,
                num_66, num_67, num_68, num_69, num_70,
                num_71, num_72, num_73, num_74, num_75,
                num_76, num_77, num_78, num_79, num_80,
                num_81, num_82, num_83, num_84, num_85,
                num_86, num_87, num_88, num_89, num_90,
                num_91, num_92, num_93, num_94, num_95,
                num_96, num_97, num_98, num_99)
    VALUES (reg_lotomania_resultado_num.concurso,
      lotomania_resultado_num_frequencia[0],
      lotomania_resultado_num_frequencia[1],
      lotomania_resultado_num_frequencia[2],
      lotomania_resultado_num_frequencia[3],
      lotomania_resultado_num_frequencia[4],
      lotomania_resultado_num_frequencia[5],
      lotomania_resultado_num_frequencia[6],
      lotomania_resultado_num_frequencia[7],
      lotomania_resultado_num_frequencia[8],
      lotomania_resultado_num_frequencia[9],
      lotomania_resultado_num_frequencia[10],
      lotomania_resultado_num_frequencia[11],
      lotomania_resultado_num_frequencia[12],
      lotomania_resultado_num_frequencia[13],
      lotomania_resultado_num_frequencia[14],
      lotomania_resultado_num_frequencia[15],
      lotomania_resultado_num_frequencia[16],
      lotomania_resultado_num_frequencia[17],
      lotomania_resultado_num_frequencia[18],
      lotomania_resultado_num_frequencia[19],
      lotomania_resultado_num_frequencia[20],
      lotomania_resultado_num_frequencia[21],
      lotomania_resultado_num_frequencia[22],
      lotomania_resultado_num_frequencia[23],
      lotomania_resultado_num_frequencia[24],
      lotomania_resultado_num_frequencia[25],
      lotomania_resultado_num_frequencia[26],
      lotomania_resultado_num_frequencia[27],
      lotomania_resultado_num_frequencia[28],
      lotomania_resultado_num_frequencia[29],
      lotomania_resultado_num_frequencia[30],
      lotomania_resultado_num_frequencia[31],
      lotomania_resultado_num_frequencia[32],
      lotomania_resultado_num_frequencia[33],
      lotomania_resultado_num_frequencia[34],
      lotomania_resultado_num_frequencia[35],
      lotomania_resultado_num_frequencia[36],
      lotomania_resultado_num_frequencia[37],
      lotomania_resultado_num_frequencia[38],
      lotomania_resultado_num_frequencia[39],
      lotomania_resultado_num_frequencia[40],
      lotomania_resultado_num_frequencia[41],
      lotomania_resultado_num_frequencia[42],
      lotomania_resultado_num_frequencia[43],
      lotomania_resultado_num_frequencia[44],
      lotomania_resultado_num_frequencia[45],
      lotomania_resultado_num_frequencia[46],
      lotomania_resultado_num_frequencia[47],
      lotomania_resultado_num_frequencia[48],
      lotomania_resultado_num_frequencia[49],
      lotomania_resultado_num_frequencia[50],
      lotomania_resultado_num_frequencia[51],
      lotomania_resultado_num_frequencia[52],
      lotomania_resultado_num_frequencia[53],
      lotomania_resultado_num_frequencia[54],
      lotomania_resultado_num_frequencia[55],
      lotomania_resultado_num_frequencia[56],
      lotomania_resultado_num_frequencia[57],
      lotomania_resultado_num_frequencia[58],
      lotomania_resultado_num_frequencia[59],
      lotomania_resultado_num_frequencia[60],
      lotomania_resultado_num_frequencia[61],
      lotomania_resultado_num_frequencia[62],
      lotomania_resultado_num_frequencia[63],
      lotomania_resultado_num_frequencia[64],
      lotomania_resultado_num_frequencia[65],
      lotomania_resultado_num_frequencia[66],
      lotomania_resultado_num_frequencia[67],
      lotomania_resultado_num_frequencia[68],
      lotomania_resultado_num_frequencia[69],
      lotomania_resultado_num_frequencia[70],
      lotomania_resultado_num_frequencia[71],
      lotomania_resultado_num_frequencia[72],
      lotomania_resultado_num_frequencia[73],
      lotomania_resultado_num_frequencia[74],
      lotomania_resultado_num_frequencia[75],
      lotomania_resultado_num_frequencia[76],
      lotomania_resultado_num_frequencia[77],
      lotomania_resultado_num_frequencia[78],
      lotomania_resultado_num_frequencia[79],
      lotomania_resultado_num_frequencia[80],
      lotomania_resultado_num_frequencia[81],
      lotomania_resultado_num_frequencia[82],
      lotomania_resultado_num_frequencia[83],
      lotomania_resultado_num_frequencia[84],
      lotomania_resultado_num_frequencia[85],
      lotomania_resultado_num_frequencia[86],
      lotomania_resultado_num_frequencia[87],
      lotomania_resultado_num_frequencia[88],
      lotomania_resultado_num_frequencia[89],
      lotomania_resultado_num_frequencia[90],
      lotomania_resultado_num_frequencia[91],
      lotomania_resultado_num_frequencia[92],
      lotomania_resultado_num_frequencia[93],
      lotomania_resultado_num_frequencia[94],
      lotomania_resultado_num_frequencia[95],
      lotomania_resultado_num_frequencia[96],
      lotomania_resultado_num_frequencia[97],
      lotomania_resultado_num_frequencia[98],
      lotomania_resultado_num_frequencia[99]);
    
    INSERT INTO lotomania.lotomania_resultado_num_frequencia_total (
      concurso, num_0, 
                num_1, num_2, num_3, num_4, num_5,
                num_6, num_7, num_8, num_9, num_10,
                num_11, num_12, num_13, num_14, num_15,
                num_16, num_17, num_18, num_19, num_20,
                num_21, num_22, num_23, num_24, num_25,
                num_26, num_27, num_28, num_29, num_30,
                num_31, num_32, num_33, num_34, num_35,
                num_36, num_37, num_38, num_39, num_40,
                num_41, num_42, num_43, num_44, num_45,
                num_46, num_47, num_48, num_49, num_50,
                num_51, num_52, num_53, num_54, num_55,
                num_56, num_57, num_58, num_59, num_60,
                num_61, num_62, num_63, num_64, num_65,
                num_66, num_67, num_68, num_69, num_70,
                num_71, num_72, num_73, num_74, num_75,
                num_76, num_77, num_78, num_79, num_80,
                num_81, num_82, num_83, num_84, num_85,
                num_86, num_87, num_88, num_89, num_90,
                num_91, num_92, num_93, num_94, num_95,
                num_96, num_97, num_98, num_99)
    VALUES (reg_lotomania_resultado_num.concurso,    
      lotomania_resultado_num_frequencia_total[0],
      lotomania_resultado_num_frequencia_total[1],
      lotomania_resultado_num_frequencia_total[2],
      lotomania_resultado_num_frequencia_total[3],
      lotomania_resultado_num_frequencia_total[4],
      lotomania_resultado_num_frequencia_total[5],
      lotomania_resultado_num_frequencia_total[6],
      lotomania_resultado_num_frequencia_total[7],
      lotomania_resultado_num_frequencia_total[8],
      lotomania_resultado_num_frequencia_total[9],
      lotomania_resultado_num_frequencia_total[10],
      lotomania_resultado_num_frequencia_total[11],
      lotomania_resultado_num_frequencia_total[12],
      lotomania_resultado_num_frequencia_total[13],
      lotomania_resultado_num_frequencia_total[14],
      lotomania_resultado_num_frequencia_total[15],
      lotomania_resultado_num_frequencia_total[16],
      lotomania_resultado_num_frequencia_total[17],
      lotomania_resultado_num_frequencia_total[18],
      lotomania_resultado_num_frequencia_total[19],
      lotomania_resultado_num_frequencia_total[20],
      lotomania_resultado_num_frequencia_total[21],
      lotomania_resultado_num_frequencia_total[22],
      lotomania_resultado_num_frequencia_total[23],
      lotomania_resultado_num_frequencia_total[24],
      lotomania_resultado_num_frequencia_total[25],
      lotomania_resultado_num_frequencia_total[26],
      lotomania_resultado_num_frequencia_total[27],
      lotomania_resultado_num_frequencia_total[28],
      lotomania_resultado_num_frequencia_total[29],
      lotomania_resultado_num_frequencia_total[30],
      lotomania_resultado_num_frequencia_total[31],
      lotomania_resultado_num_frequencia_total[32],
      lotomania_resultado_num_frequencia_total[33],
      lotomania_resultado_num_frequencia_total[34],
      lotomania_resultado_num_frequencia_total[35],
      lotomania_resultado_num_frequencia_total[36],
      lotomania_resultado_num_frequencia_total[37],
      lotomania_resultado_num_frequencia_total[38],
      lotomania_resultado_num_frequencia_total[39],
      lotomania_resultado_num_frequencia_total[40],
      lotomania_resultado_num_frequencia_total[41],
      lotomania_resultado_num_frequencia_total[42],
      lotomania_resultado_num_frequencia_total[43],
      lotomania_resultado_num_frequencia_total[44],
      lotomania_resultado_num_frequencia_total[45],
      lotomania_resultado_num_frequencia_total[46],
      lotomania_resultado_num_frequencia_total[47],
      lotomania_resultado_num_frequencia_total[48],
      lotomania_resultado_num_frequencia_total[49],
      lotomania_resultado_num_frequencia_total[50],
      lotomania_resultado_num_frequencia_total[51],
      lotomania_resultado_num_frequencia_total[52],
      lotomania_resultado_num_frequencia_total[53],
      lotomania_resultado_num_frequencia_total[54],
      lotomania_resultado_num_frequencia_total[55],
      lotomania_resultado_num_frequencia_total[56],
      lotomania_resultado_num_frequencia_total[57],
      lotomania_resultado_num_frequencia_total[58],
      lotomania_resultado_num_frequencia_total[59],
      lotomania_resultado_num_frequencia_total[60],
      lotomania_resultado_num_frequencia_total[61],
      lotomania_resultado_num_frequencia_total[62],
      lotomania_resultado_num_frequencia_total[63],
      lotomania_resultado_num_frequencia_total[64],
      lotomania_resultado_num_frequencia_total[65],
      lotomania_resultado_num_frequencia_total[66],
      lotomania_resultado_num_frequencia_total[67],
      lotomania_resultado_num_frequencia_total[68],
      lotomania_resultado_num_frequencia_total[69],
      lotomania_resultado_num_frequencia_total[70],
      lotomania_resultado_num_frequencia_total[71],
      lotomania_resultado_num_frequencia_total[72],
      lotomania_resultado_num_frequencia_total[73],
      lotomania_resultado_num_frequencia_total[74],
      lotomania_resultado_num_frequencia_total[75],
      lotomania_resultado_num_frequencia_total[76],
      lotomania_resultado_num_frequencia_total[77],
      lotomania_resultado_num_frequencia_total[78],
      lotomania_resultado_num_frequencia_total[79],
      lotomania_resultado_num_frequencia_total[80],
      lotomania_resultado_num_frequencia_total[81],
      lotomania_resultado_num_frequencia_total[82],
      lotomania_resultado_num_frequencia_total[83],
      lotomania_resultado_num_frequencia_total[84],
      lotomania_resultado_num_frequencia_total[85],
      lotomania_resultado_num_frequencia_total[86],
      lotomania_resultado_num_frequencia_total[87],
      lotomania_resultado_num_frequencia_total[88],
      lotomania_resultado_num_frequencia_total[89],
      lotomania_resultado_num_frequencia_total[90],
      lotomania_resultado_num_frequencia_total[91],
      lotomania_resultado_num_frequencia_total[92],
      lotomania_resultado_num_frequencia_total[93],
      lotomania_resultado_num_frequencia_total[94],
      lotomania_resultado_num_frequencia_total[95],
      lotomania_resultado_num_frequencia_total[96],
      lotomania_resultado_num_frequencia_total[97],
      lotomania_resultado_num_frequencia_total[98],
      lotomania_resultado_num_frequencia_total[99]    
    );

    INSERT INTO lotomania.lotomania_resultado_num_qt_vezes (
        concurso, num_0,
                  num_1, num_2, num_3, num_4, num_5,
                  num_6, num_7, num_8, num_9, num_10,
                  num_11, num_12, num_13, num_14, num_15,
                  num_16, num_17, num_18, num_19, num_20,
                  num_21, num_22, num_23, num_24, num_25,
                  num_26, num_27, num_28, num_29, num_30,
                  num_31, num_32, num_33, num_34, num_35,
                  num_36, num_37, num_38, num_39, num_40,
                  num_41, num_42, num_43, num_44, num_45,
                  num_46, num_47, num_48, num_49, num_50,
                  num_51, num_52, num_53, num_54, num_55,
                  num_56, num_57, num_58, num_59, num_60,
                  num_61, num_62, num_63, num_64, num_65,
                  num_66, num_67, num_68, num_69, num_70,
                  num_71, num_72, num_73, num_74, num_75,
                  num_76, num_77, num_78, num_79, num_80,
                  num_81, num_82, num_83, num_84, num_85,
                  num_86, num_87, num_88, num_89, num_90,
                  num_91, num_92, num_93, num_94, num_95,
                  num_96, num_97, num_98, num_99)
      VALUES (reg_lotomania_resultado_num.concurso,
        lotomania_resultado_num_qt_vezes[0],
        lotomania_resultado_num_qt_vezes[1],
        lotomania_resultado_num_qt_vezes[2],
        lotomania_resultado_num_qt_vezes[3],
        lotomania_resultado_num_qt_vezes[4],
        lotomania_resultado_num_qt_vezes[5],
        lotomania_resultado_num_qt_vezes[6],
        lotomania_resultado_num_qt_vezes[7],
        lotomania_resultado_num_qt_vezes[8],
        lotomania_resultado_num_qt_vezes[9],
        lotomania_resultado_num_qt_vezes[10],
        lotomania_resultado_num_qt_vezes[11],
        lotomania_resultado_num_qt_vezes[12],
        lotomania_resultado_num_qt_vezes[13],
        lotomania_resultado_num_qt_vezes[14],
        lotomania_resultado_num_qt_vezes[15],
        lotomania_resultado_num_qt_vezes[16],
        lotomania_resultado_num_qt_vezes[17],
        lotomania_resultado_num_qt_vezes[18],
        lotomania_resultado_num_qt_vezes[19],
        lotomania_resultado_num_qt_vezes[20],
        lotomania_resultado_num_qt_vezes[21],
        lotomania_resultado_num_qt_vezes[22],
        lotomania_resultado_num_qt_vezes[23],
        lotomania_resultado_num_qt_vezes[24],
        lotomania_resultado_num_qt_vezes[25],
        lotomania_resultado_num_qt_vezes[26],
        lotomania_resultado_num_qt_vezes[27],
        lotomania_resultado_num_qt_vezes[28],
        lotomania_resultado_num_qt_vezes[29],
        lotomania_resultado_num_qt_vezes[30],
        lotomania_resultado_num_qt_vezes[31],
        lotomania_resultado_num_qt_vezes[32],
        lotomania_resultado_num_qt_vezes[33],
        lotomania_resultado_num_qt_vezes[34],
        lotomania_resultado_num_qt_vezes[35],
        lotomania_resultado_num_qt_vezes[36],
        lotomania_resultado_num_qt_vezes[37],
        lotomania_resultado_num_qt_vezes[38],
        lotomania_resultado_num_qt_vezes[39],
        lotomania_resultado_num_qt_vezes[40],
        lotomania_resultado_num_qt_vezes[41],
        lotomania_resultado_num_qt_vezes[42],
        lotomania_resultado_num_qt_vezes[43],
        lotomania_resultado_num_qt_vezes[44],
        lotomania_resultado_num_qt_vezes[45],
        lotomania_resultado_num_qt_vezes[46],
        lotomania_resultado_num_qt_vezes[47],
        lotomania_resultado_num_qt_vezes[48],
        lotomania_resultado_num_qt_vezes[49],
        lotomania_resultado_num_qt_vezes[50],
        lotomania_resultado_num_qt_vezes[51],
        lotomania_resultado_num_qt_vezes[52],
        lotomania_resultado_num_qt_vezes[53],
        lotomania_resultado_num_qt_vezes[54],
        lotomania_resultado_num_qt_vezes[55],
        lotomania_resultado_num_qt_vezes[56],
        lotomania_resultado_num_qt_vezes[57],
        lotomania_resultado_num_qt_vezes[58],
        lotomania_resultado_num_qt_vezes[59],
        lotomania_resultado_num_qt_vezes[60],
        lotomania_resultado_num_qt_vezes[61],
        lotomania_resultado_num_qt_vezes[62],
        lotomania_resultado_num_qt_vezes[63],
        lotomania_resultado_num_qt_vezes[64],
        lotomania_resultado_num_qt_vezes[65],
        lotomania_resultado_num_qt_vezes[66],
        lotomania_resultado_num_qt_vezes[67],
        lotomania_resultado_num_qt_vezes[68],
        lotomania_resultado_num_qt_vezes[69],
        lotomania_resultado_num_qt_vezes[70],
        lotomania_resultado_num_qt_vezes[71],
        lotomania_resultado_num_qt_vezes[72],
        lotomania_resultado_num_qt_vezes[73],
        lotomania_resultado_num_qt_vezes[74],
        lotomania_resultado_num_qt_vezes[75],
        lotomania_resultado_num_qt_vezes[76],
        lotomania_resultado_num_qt_vezes[77],
        lotomania_resultado_num_qt_vezes[78],
        lotomania_resultado_num_qt_vezes[79],
        lotomania_resultado_num_qt_vezes[80],
        lotomania_resultado_num_qt_vezes[81],
        lotomania_resultado_num_qt_vezes[82],
        lotomania_resultado_num_qt_vezes[83],
        lotomania_resultado_num_qt_vezes[84],
        lotomania_resultado_num_qt_vezes[85],
        lotomania_resultado_num_qt_vezes[86],
        lotomania_resultado_num_qt_vezes[87],
        lotomania_resultado_num_qt_vezes[88],
        lotomania_resultado_num_qt_vezes[89],
        lotomania_resultado_num_qt_vezes[90],
        lotomania_resultado_num_qt_vezes[91],
        lotomania_resultado_num_qt_vezes[92],
        lotomania_resultado_num_qt_vezes[93],
        lotomania_resultado_num_qt_vezes[94],
        lotomania_resultado_num_qt_vezes[95],
        lotomania_resultado_num_qt_vezes[96],
        lotomania_resultado_num_qt_vezes[97],
        lotomania_resultado_num_qt_vezes[98],
        lotomania_resultado_num_qt_vezes[99]);

    INSERT INTO lotomania.lotomania_resultado_num_sobe_desce (
        concurso, num_0,
                  num_1, num_2, num_3, num_4, num_5,
                  num_6, num_7, num_8, num_9, num_10,
                  num_11, num_12, num_13, num_14, num_15,
                  num_16, num_17, num_18, num_19, num_20,
                  num_21, num_22, num_23, num_24, num_25,
                  num_26, num_27, num_28, num_29, num_30,
                  num_31, num_32, num_33, num_34, num_35,
                  num_36, num_37, num_38, num_39, num_40,
                  num_41, num_42, num_43, num_44, num_45,
                  num_46, num_47, num_48, num_49, num_50,
                  num_51, num_52, num_53, num_54, num_55,
                  num_56, num_57, num_58, num_59, num_60,
                  num_61, num_62, num_63, num_64, num_65,
                  num_66, num_67, num_68, num_69, num_70,
                  num_71, num_72, num_73, num_74, num_75,
                  num_76, num_77, num_78, num_79, num_80,
                  num_81, num_82, num_83, num_84, num_85,
                  num_86, num_87, num_88, num_89, num_90,
                  num_91, num_92, num_93, num_94, num_95,
                  num_96, num_97, num_98, num_99)
      VALUES (reg_lotomania_resultado_num.concurso,
        lotomania_resultado_num_sobe_desce[0],
        lotomania_resultado_num_sobe_desce[1],
        lotomania_resultado_num_sobe_desce[2],
        lotomania_resultado_num_sobe_desce[3],
        lotomania_resultado_num_sobe_desce[4],
        lotomania_resultado_num_sobe_desce[5],
        lotomania_resultado_num_sobe_desce[6],
        lotomania_resultado_num_sobe_desce[7],
        lotomania_resultado_num_sobe_desce[8],
        lotomania_resultado_num_sobe_desce[9],
        lotomania_resultado_num_sobe_desce[10],
        lotomania_resultado_num_sobe_desce[11],
        lotomania_resultado_num_sobe_desce[12],
        lotomania_resultado_num_sobe_desce[13],
        lotomania_resultado_num_sobe_desce[14],
        lotomania_resultado_num_sobe_desce[15],
        lotomania_resultado_num_sobe_desce[16],
        lotomania_resultado_num_sobe_desce[17],
        lotomania_resultado_num_sobe_desce[18],
        lotomania_resultado_num_sobe_desce[19],
        lotomania_resultado_num_sobe_desce[20],
        lotomania_resultado_num_sobe_desce[21],
        lotomania_resultado_num_sobe_desce[22],
        lotomania_resultado_num_sobe_desce[23],
        lotomania_resultado_num_sobe_desce[24],
        lotomania_resultado_num_sobe_desce[25],
        lotomania_resultado_num_sobe_desce[26],
        lotomania_resultado_num_sobe_desce[27],
        lotomania_resultado_num_sobe_desce[28],
        lotomania_resultado_num_sobe_desce[29],
        lotomania_resultado_num_sobe_desce[30],
        lotomania_resultado_num_sobe_desce[31],
        lotomania_resultado_num_sobe_desce[32],
        lotomania_resultado_num_sobe_desce[33],
        lotomania_resultado_num_sobe_desce[34],
        lotomania_resultado_num_sobe_desce[35],
        lotomania_resultado_num_sobe_desce[36],
        lotomania_resultado_num_sobe_desce[37],
        lotomania_resultado_num_sobe_desce[38],
        lotomania_resultado_num_sobe_desce[39],
        lotomania_resultado_num_sobe_desce[40],
        lotomania_resultado_num_sobe_desce[41],
        lotomania_resultado_num_sobe_desce[42],
        lotomania_resultado_num_sobe_desce[43],
        lotomania_resultado_num_sobe_desce[44],
        lotomania_resultado_num_sobe_desce[45],
        lotomania_resultado_num_sobe_desce[46],
        lotomania_resultado_num_sobe_desce[47],
        lotomania_resultado_num_sobe_desce[48],
        lotomania_resultado_num_sobe_desce[49],
        lotomania_resultado_num_sobe_desce[50],
        lotomania_resultado_num_sobe_desce[51],
        lotomania_resultado_num_sobe_desce[52],
        lotomania_resultado_num_sobe_desce[53],
        lotomania_resultado_num_sobe_desce[54],
        lotomania_resultado_num_sobe_desce[55],
        lotomania_resultado_num_sobe_desce[56],
        lotomania_resultado_num_sobe_desce[57],
        lotomania_resultado_num_sobe_desce[58],
        lotomania_resultado_num_sobe_desce[59],
        lotomania_resultado_num_sobe_desce[60],
        lotomania_resultado_num_sobe_desce[61],
        lotomania_resultado_num_sobe_desce[62],
        lotomania_resultado_num_sobe_desce[63],
        lotomania_resultado_num_sobe_desce[64],
        lotomania_resultado_num_sobe_desce[65],
        lotomania_resultado_num_sobe_desce[66],
        lotomania_resultado_num_sobe_desce[67],
        lotomania_resultado_num_sobe_desce[68],
        lotomania_resultado_num_sobe_desce[69],
        lotomania_resultado_num_sobe_desce[70],
        lotomania_resultado_num_sobe_desce[71],
        lotomania_resultado_num_sobe_desce[72],
        lotomania_resultado_num_sobe_desce[73],
        lotomania_resultado_num_sobe_desce[74],
        lotomania_resultado_num_sobe_desce[75],
        lotomania_resultado_num_sobe_desce[76],
        lotomania_resultado_num_sobe_desce[77],
        lotomania_resultado_num_sobe_desce[78],
        lotomania_resultado_num_sobe_desce[79],
        lotomania_resultado_num_sobe_desce[80],
        lotomania_resultado_num_sobe_desce[81],
        lotomania_resultado_num_sobe_desce[82],
        lotomania_resultado_num_sobe_desce[83],
        lotomania_resultado_num_sobe_desce[84],
        lotomania_resultado_num_sobe_desce[85],
        lotomania_resultado_num_sobe_desce[86],
        lotomania_resultado_num_sobe_desce[87],
        lotomania_resultado_num_sobe_desce[88],
        lotomania_resultado_num_sobe_desce[89],
        lotomania_resultado_num_sobe_desce[90],
        lotomania_resultado_num_sobe_desce[91],
        lotomania_resultado_num_sobe_desce[92],
        lotomania_resultado_num_sobe_desce[93],
        lotomania_resultado_num_sobe_desce[94],
        lotomania_resultado_num_sobe_desce[95],
        lotomania_resultado_num_sobe_desce[96],
        lotomania_resultado_num_sobe_desce[97],
        lotomania_resultado_num_sobe_desce[98],
        lotomania_resultado_num_sobe_desce[99]);




    /*

    Raise Notice 'qt_novos: %, qt_repetidos: %, qt_ainda_nao_saiu: %, qt_deixou_de_sair: %',
      qt_novos, qt_repetidos, qt_ainda_nao_saiu, qt_deixou_de_sair;

    if qt_novos > 10 and reg_lotomania_resultado_num.concurso <> 1 THEN
      Raise EXCEPTION 'Erro, lotomania %, qt de novos: %, a quantidade máxima de ítens novos é 10:',
        reg_lotomania_resultado_num.concurso, qt_novos;
    END IF;

    if (reg_lotomania_resultado_num.concurso <> 1) and (qt_repetidos < 5 or qt_repetidos > 15) then
      Raise Exception 'Na lotomania, a quantidade mínima de ítens repetidos é 5, e a quantidade máxima é 15,'
    'foi informado %', qt_repetidos;
    END IF;

    /*
    if (reg_lotomania_resultado_num.concurso <> 1) and (qt_novos <> qt_deixou_de_sair) then
      Raise Exception 'Na lotomania de 15 números, sempre a quantidade de novos é igual à quantidade de números '
        'que deixaram de sair, erro, quantidade de novos diferentes de quantidade de números que deixou de sair.';
    END IF;
    */

    Raise Notice 'Concurso: %, qtNovos: %, qtRepetidos: %, qtAindaNaoSaiu %', reg_lotomania_resultado_num.concurso,
      qt_novos, qt_repetidos, qt_ainda_nao_saiu;


    -- ######################## NOVOS ##################################
    uA := 1;
    sql_bolas_coluna := '';
    sql_num_valor_1 := '';
    while uA <= qt_novos LOOP
      sql_bolas_coluna := sql_bolas_coluna || ', b_' || uA;
      sql_num_valor_1 := sql_num_valor_1 || ', 1';
      uA := uA + 1;
    END LOOP;

    sql_novos_bolas :=  'Insert into lotomania.lotomania_resultado_novos_bolas (concurso, qt_novos ' ||
                        sql_bolas_coluna || ') values (' || reg_lotomania_resultado_num.concurso ||
                        ', ' || qt_novos || sql_novos_bolas || ')';

    sql_novos_num := 'Insert into lotomania.lotomania_resultado_novos_num (concurso, qt_novos ' ||
                      sql_novos_num || ') values (' || reg_lotomania_resultado_num.concurso ||
                        ', ' || qt_novos || sql_num_valor_1 || ')';


    Raise Notice '%', sql_novos_num;
    execute sql_novos_bolas;
    execute sql_novos_num;

    -- ######################## REPETIDOS ##################################
    uA := 1;
    sql_bolas_coluna := '';
    sql_num_valor_1 := '';
    while uA <= qt_repetidos LOOP
      sql_bolas_coluna := sql_bolas_coluna || ', b_' || uA;
      sql_num_valor_1 := sql_num_valor_1 || ', 1';
      uA := uA + 1;
    END LOOP;

    sql_repetidos_bolas :=  'Insert into lotomania.lotomania_resultado_repetidos_bolas (concurso, qt_repetidos ' ||
                        sql_bolas_coluna || ') values (' || reg_lotomania_resultado_num.concurso ||
                        ', ' || qt_repetidos || sql_repetidos_bolas || ')';

    sql_repetidos_num := 'Insert into lotomania.lotomania_resultado_repetidos_num (concurso, qt_repetidos ' ||
                      sql_repetidos_num || ') values (' || reg_lotomania_resultado_num.concurso ||
                        ', ' || qt_repetidos || sql_num_valor_1 || ')';


    Raise Notice '%', sql_repetidos_num;
    execute sql_repetidos_bolas;
    execute sql_repetidos_num;

    -- ######################## AINDA NÃO SAIU ##################################
    uA := 1;
    sql_bolas_coluna := '';
    sql_num_valor_1 := '';
    while uA <= qt_ainda_nao_saiu LOOP
      sql_bolas_coluna := sql_bolas_coluna || ', b_' || uA;
      sql_num_valor_1 := sql_num_valor_1 || ', 1';
      uA := uA + 1;
    END LOOP;

    sql_ainda_nao_saiu_bolas :=  'Insert into lotomania.lotomania_resultado_ainda_nao_saiu_bolas (concurso, qt_ainda_nao_saiu ' ||
                        sql_bolas_coluna || ') values (' || reg_lotomania_resultado_num.concurso ||
                        ', ' || qt_ainda_nao_saiu || sql_ainda_nao_saiu_bolas || ')';

    sql_ainda_nao_saiu_num := 'Insert into lotomania.lotomania_resultado_ainda_nao_saiu_num (concurso, qt_ainda_nao_saiu ' ||
                      sql_ainda_nao_saiu_num || ') values (' || reg_lotomania_resultado_num.concurso ||
                        ', ' || qt_ainda_nao_saiu || sql_num_valor_1 || ')';


    Raise Notice '%', sql_ainda_nao_saiu_num;
    execute sql_ainda_nao_saiu_bolas;
    execute sql_ainda_nao_saiu_num;

    -- ######################## DEIXOU DE SAIR ##################################
    uA := 1;
    sql_bolas_coluna := '';
    sql_num_valor_1 := '';
    while uA <= qt_deixou_de_sair LOOP
      sql_bolas_coluna := sql_bolas_coluna || ', b_' || uA;
      sql_num_valor_1 := sql_num_valor_1 || ', 1';
      uA := uA + 1;
    END LOOP;

    sql_deixou_de_sair_bolas :=  'Insert into lotomania.lotomania_resultado_deixou_de_sair_bolas (concurso, qt_deixou_de_sair ' ||
                        sql_bolas_coluna || ') values (' || reg_lotomania_resultado_num.concurso ||
                        ', ' || qt_deixou_de_sair || sql_deixou_de_sair_bolas || ')';

    sql_deixou_de_sair_num := 'Insert into lotomania.lotomania_resultado_deixou_de_sair_num (concurso, qt_deixou_de_sair ' ||
                      sql_deixou_de_sair_num || ') values (' || reg_lotomania_resultado_num.concurso ||
                        ', ' || qt_deixou_de_sair || sql_num_valor_1 || ')';


    Raise Notice '%', sql_deixou_de_sair_num;
    execute sql_deixou_de_sair_bolas;
    execute sql_deixou_de_sair_num;
    */
  END LOOP;
END $$;