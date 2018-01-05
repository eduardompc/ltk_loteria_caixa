/**
  Tabela de frequência, onde o valor:
  >> negativo, indica que a bola não saiu, ou ainda não saiu.
  >> positivo, indica que a bola saiu, ou está se repetindo.
  Se o campo tem o valor 1, que dizer, que a bola é nova, não estava no concurso anterior, mas
  apareceu no atual.
  Se o campo tem o valor maior que 1, quer dizer que a bola esta se repetindo desde os últimos jogos;
  Se o campo tem o valor negativo igual a -1, quer dizer que a bola estava no concurso anterior,
  mas não saiu no concurso atual.
  Se o campo tem o valor negativo menor  que -1, quer dizer que a bola ainda não saiu desde o último
  concurso e o atual.
 */
drop table if exists ltk_quina.quina_resultado_num_frequencia;
CREATE TABLE ltk_quina.quina_resultado_num_frequencia (
  concurso         NUMERIC      NOT NULL,

  num_1                    NUMERIC DEFAULT 0 ,
  num_2                    NUMERIC DEFAULT 0 ,
  num_3                    NUMERIC DEFAULT 0 ,
  num_4                    NUMERIC DEFAULT 0 ,
  num_5                    NUMERIC DEFAULT 0 ,
  num_6                    NUMERIC DEFAULT 0 ,
  num_7                    NUMERIC DEFAULT 0 ,
  num_8                    NUMERIC DEFAULT 0 ,
  num_9                    NUMERIC DEFAULT 0 ,
  num_10                   NUMERIC DEFAULT 0 ,
  num_11                   NUMERIC DEFAULT 0 ,
  num_12                   NUMERIC DEFAULT 0 ,
  num_13                   NUMERIC DEFAULT 0 ,
  num_14                   NUMERIC DEFAULT 0 ,
  num_15                   NUMERIC DEFAULT 0 ,
  num_16                   NUMERIC DEFAULT 0 ,
  num_17                   NUMERIC DEFAULT 0 ,
  num_18                   NUMERIC DEFAULT 0 ,
  num_19                   NUMERIC DEFAULT 0 ,
  num_20                   NUMERIC DEFAULT 0 ,
  num_21                   NUMERIC DEFAULT 0 ,
  num_22                   NUMERIC DEFAULT 0 ,
  num_23                   NUMERIC DEFAULT 0 ,
  num_24                   NUMERIC DEFAULT 0 ,
  num_25                   NUMERIC DEFAULT 0 ,
  num_26                   NUMERIC DEFAULT 0 ,
  num_27                   NUMERIC DEFAULT 0 ,
  num_28                   NUMERIC DEFAULT 0 ,
  num_29                   NUMERIC DEFAULT 0 ,
  num_30                   NUMERIC DEFAULT 0 ,
  num_31                   NUMERIC DEFAULT 0 ,
  num_32                   NUMERIC DEFAULT 0 ,
  num_33                   NUMERIC DEFAULT 0 ,
  num_34                   NUMERIC DEFAULT 0 ,
  num_35                   NUMERIC DEFAULT 0 ,
  num_36                   NUMERIC DEFAULT 0 ,
  num_37                   NUMERIC DEFAULT 0 ,
  num_38                   NUMERIC DEFAULT 0 ,
  num_39                   NUMERIC DEFAULT 0 ,
  num_40                   NUMERIC DEFAULT 0 ,
  num_41                   NUMERIC DEFAULT 0 ,
  num_42                   NUMERIC DEFAULT 0 ,
  num_43                   NUMERIC DEFAULT 0 ,
  num_44                   NUMERIC DEFAULT 0 ,
  num_45                   NUMERIC DEFAULT 0 ,
  num_46                   NUMERIC DEFAULT 0 ,
  num_47                   NUMERIC DEFAULT 0 ,
  num_48                   NUMERIC DEFAULT 0 ,
  num_49                   NUMERIC DEFAULT 0 ,
  num_50                   NUMERIC DEFAULT 0 ,
  num_51                   NUMERIC DEFAULT 0 ,
  num_52                   NUMERIC DEFAULT 0 ,
  num_53                   NUMERIC DEFAULT 0 ,
  num_54                   NUMERIC DEFAULT 0 ,
  num_55                   NUMERIC DEFAULT 0 ,
  num_56                   NUMERIC DEFAULT 0 ,
  num_57                   NUMERIC DEFAULT 0 ,
  num_58                   NUMERIC DEFAULT 0 ,
  num_59                   NUMERIC DEFAULT 0 ,
  num_60                   NUMERIC DEFAULT 0 ,
  num_61                   NUMERIC DEFAULT 0 ,
  num_62                   NUMERIC DEFAULT 0 ,
  num_63                   NUMERIC DEFAULT 0 ,
  num_64                   NUMERIC DEFAULT 0 ,
  num_65                   NUMERIC DEFAULT 0 ,
  num_66                   NUMERIC DEFAULT 0 ,
  num_67                   NUMERIC DEFAULT 0 ,
  num_68                   NUMERIC DEFAULT 0 ,
  num_69                   NUMERIC DEFAULT 0 ,
  num_70                   NUMERIC DEFAULT 0 ,
  num_71                   NUMERIC DEFAULT 0 ,
  num_72                   NUMERIC DEFAULT 0 ,
  num_73                   NUMERIC DEFAULT 0 ,
  num_74                   NUMERIC DEFAULT 0 ,
  num_75                   NUMERIC DEFAULT 0 ,
  num_76                   NUMERIC DEFAULT 0 ,
  num_77                   NUMERIC DEFAULT 0 ,
  num_78                   NUMERIC DEFAULT 0 ,
  num_79                   NUMERIC DEFAULT 0 ,
  num_80                   NUMERIC DEFAULT 0 ,

  CONSTRAINT quina_resultado_num_frequencia_pk PRIMARY KEY (concurso),

  constraint quina_resultado_num_frequencia_fk FOREIGN KEY (concurso) references ltk_quina.quina_resultado_num(concurso)
  on update CASCADE on delete cascade
);
comment on CONSTRAINT quina_resultado_num_frequencia_fk on ltk_quina.quina_resultado_num_frequencia is
'A tabela está com as clausulas on update cascade on delete cascade, pois, se for deletado '
'algum registro da tabela quina_resultado_num automaticamente, este será deletado.';

/**
  Na tabela quina_resultado_num_frequencia acima, a cada concurso sorteado,
  comparando o concurso atual com o concurso anterior, e verificamos quais bolas são
  novas, se repetem, deixou de sair ou ainda não saiu. Então pra cada campo, definirmos
  um valor negativo, que pode ser -1 ou menor que -1, ou positivo.
  A diferença da tabela abaixo, é que soma todos os valores de cada campo, pra termos
  uma frequência desde o primeiro concurso.
 */
drop table if exists ltk_quina.quina_resultado_num_frequencia_total;
CREATE TABLE ltk_quina.quina_resultado_num_frequencia_total (

  concurso         NUMERIC      NOT NULL,

  num_1                    NUMERIC DEFAULT 0 ,
  num_2                    NUMERIC DEFAULT 0 ,
  num_3                    NUMERIC DEFAULT 0 ,
  num_4                    NUMERIC DEFAULT 0 ,
  num_5                    NUMERIC DEFAULT 0 ,
  num_6                    NUMERIC DEFAULT 0 ,
  num_7                    NUMERIC DEFAULT 0 ,
  num_8                    NUMERIC DEFAULT 0 ,
  num_9                    NUMERIC DEFAULT 0 ,
  num_10                   NUMERIC DEFAULT 0 ,
  num_11                   NUMERIC DEFAULT 0 ,
  num_12                   NUMERIC DEFAULT 0 ,
  num_13                   NUMERIC DEFAULT 0 ,
  num_14                   NUMERIC DEFAULT 0 ,
  num_15                   NUMERIC DEFAULT 0 ,
  num_16                   NUMERIC DEFAULT 0 ,
  num_17                   NUMERIC DEFAULT 0 ,
  num_18                   NUMERIC DEFAULT 0 ,
  num_19                   NUMERIC DEFAULT 0 ,
  num_20                   NUMERIC DEFAULT 0 ,
  num_21                   NUMERIC DEFAULT 0 ,
  num_22                   NUMERIC DEFAULT 0 ,
  num_23                   NUMERIC DEFAULT 0 ,
  num_24                   NUMERIC DEFAULT 0 ,
  num_25                   NUMERIC DEFAULT 0 ,
  num_26                   NUMERIC DEFAULT 0 ,
  num_27                   NUMERIC DEFAULT 0 ,
  num_28                   NUMERIC DEFAULT 0 ,
  num_29                   NUMERIC DEFAULT 0 ,
  num_30                   NUMERIC DEFAULT 0 ,
  num_31                   NUMERIC DEFAULT 0 ,
  num_32                   NUMERIC DEFAULT 0 ,
  num_33                   NUMERIC DEFAULT 0 ,
  num_34                   NUMERIC DEFAULT 0 ,
  num_35                   NUMERIC DEFAULT 0 ,
  num_36                   NUMERIC DEFAULT 0 ,
  num_37                   NUMERIC DEFAULT 0 ,
  num_38                   NUMERIC DEFAULT 0 ,
  num_39                   NUMERIC DEFAULT 0 ,
  num_40                   NUMERIC DEFAULT 0 ,
  num_41                   NUMERIC DEFAULT 0 ,
  num_42                   NUMERIC DEFAULT 0 ,
  num_43                   NUMERIC DEFAULT 0 ,
  num_44                   NUMERIC DEFAULT 0 ,
  num_45                   NUMERIC DEFAULT 0 ,
  num_46                   NUMERIC DEFAULT 0 ,
  num_47                   NUMERIC DEFAULT 0 ,
  num_48                   NUMERIC DEFAULT 0 ,
  num_49                   NUMERIC DEFAULT 0 ,
  num_50                   NUMERIC DEFAULT 0 ,
  num_51                   NUMERIC DEFAULT 0 ,
  num_52                   NUMERIC DEFAULT 0 ,
  num_53                   NUMERIC DEFAULT 0 ,
  num_54                   NUMERIC DEFAULT 0 ,
  num_55                   NUMERIC DEFAULT 0 ,
  num_56                   NUMERIC DEFAULT 0 ,
  num_57                   NUMERIC DEFAULT 0 ,
  num_58                   NUMERIC DEFAULT 0 ,
  num_59                   NUMERIC DEFAULT 0 ,
  num_60                   NUMERIC DEFAULT 0 ,
  num_61                   NUMERIC DEFAULT 0 ,
  num_62                   NUMERIC DEFAULT 0 ,
  num_63                   NUMERIC DEFAULT 0 ,
  num_64                   NUMERIC DEFAULT 0 ,
  num_65                   NUMERIC DEFAULT 0 ,
  num_66                   NUMERIC DEFAULT 0 ,
  num_67                   NUMERIC DEFAULT 0 ,
  num_68                   NUMERIC DEFAULT 0 ,
  num_69                   NUMERIC DEFAULT 0 ,
  num_70                   NUMERIC DEFAULT 0 ,
  num_71                   NUMERIC DEFAULT 0 ,
  num_72                   NUMERIC DEFAULT 0 ,
  num_73                   NUMERIC DEFAULT 0 ,
  num_74                   NUMERIC DEFAULT 0 ,
  num_75                   NUMERIC DEFAULT 0 ,
  num_76                   NUMERIC DEFAULT 0 ,
  num_77                   NUMERIC DEFAULT 0 ,
  num_78                   NUMERIC DEFAULT 0 ,
  num_79                   NUMERIC DEFAULT 0 ,
  num_80                   NUMERIC DEFAULT 0 ,


  CONSTRAINT quina_resultado_num_frequencia_total_pk PRIMARY KEY (concurso),

  constraint quina_resultado_num_frequencia_total_fk FOREIGN KEY (concurso) references ltk_quina.quina_resultado_num(concurso)
  on update CASCADE on delete cascade
);
comment on CONSTRAINT quina_resultado_num_frequencia_total_fk on ltk_quina.quina_resultado_num_frequencia_total is
'A tabela está com as clausulas on update cascade on delete cascade, pois, se for deletado '
'algum registro da tabela quina_resultado_num automaticamente, este será deletado.';

/**
  Esta tabela é semelhante à tabela lotofacil_resultado_num_frequencia, entretanto
  haverá além do concurso, os campos bola e a frequência.
  Pra cada bola, do mesmo concurso, haverá um novo registro, diferente da tabela
  lotofacil_resultado_bola
 */
drop table if exists ltk_quina.quina_resultado_bolas_frequencia;
create table ltk_quina.quina_resultado_bolas_frequencia(
  concurso numeric not null,
  bola numeric not null,
  frequencia numeric not null,
  CONSTRAINT quina_resultado_bolas_frequencia_FK FOREIGN KEY (concurso) REFERENCES ltk_quina.quina_resultado_num(concurso) on update cascade on delete cascade
);

drop table if exists ltk_quina.quina_resultado_bolas_frequencia_total;
create table ltk_quina.quina_resultado_bolas_frequencia_total(
  concurso numeric not null,
  bola numeric not null,
  frequencia numeric not null,
  CONSTRAINT quina_resultado_bolas_frequencia_FK FOREIGN KEY (concurso) REFERENCES ltk_quina.quina_resultado_num(concurso) on update cascade on delete cascade
);

drop view if EXISTS ltk_quina.v_quina_resultado_bolas_frequencia;
create view ltk_quina.v_quina_resultado_bolas_frequencia as
  select concurso, bola,
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

    from ltk_quina.quina_resultado_bolas_frequencia
      order by concurso desc, frequencia asc, bola asc;


/**
  Cria uma tabela de ciclo de frequência.
  O ciclo de frequência tem por objetivo detectar bolas que ainda não saiu desde os ciclos anteriores.
  Como há 80 bolas, provavelmente, haverá 16 ciclos.
  Se uma das bolas se repetir no novo concurso, deve-se resetar o ciclo.
  A cada concurso sorteado, devemos verificar se tais bolas não se repetiram desde o ciclo 1, se não
  repetiu, devemos incluir estas bolas no ciclo atual e incrementar o ciclo pra o próximo.
  Na tabela quina_frequencia_ciclo, haverá as bolas que ainda faltam pra completar o ciclo.
  O objetivo desta tabela é facilitar




  1 ciclo se renova toda vez que uma bola se repete naquele mesmo ciclo.
  Esta tabela armazena cada ciclo e quantas bolas faltam pra completar cada ciclo.
  Fiz esta tabela pois analisando, percebi que dificilmente as bolas se repete nos últimos jogos.
 */
drop table if exists ltk_quina.quina_frequencia_ciclo;
create table ltk_quina.quina_frequencia_ciclo(
  concurso numeric not null,
  ciclo numeric not null,
  bola numeric not null,
  nao_sai_a numeric not null,

  CONSTRAINT quina_frequencia_ciclo_fk FOREIGN KEY (concurso) REFERENCES ltk_quina.quina_resultado_num(concurso)
  on update cascade on delete cascade
);


/***
  Função para atualizar as tabelas de novos, repetidos, ainda_nao_saiu e deixou_de_sair.
  TODO FALTA ALTERAR ESTA FUNÇÃO
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_frequencia_atualizar();
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_frequencia_atualizar()
  RETURNS VOID
LANGUAGE plpgsql
AS $$
DECLARE
  -- Serve pra armazenar cada registro, após percorremos no loop.
  reg_lotofacil_resultado_num          lotofacil.lotofacil_resultado_num%ROWTYPE;

  lotofacil_resultado_num_atual NUMERIC [26];
  lotofacil_resultado_num_frequencia      NUMERIC [26];

  lotofacil_resultado_num_frequencia_total numeric[26];

  -- As 6 variáveis abaixo armazena a quantidade de novos, repetidos, deixou_de_sair e ainda_nao_saiu
  -- encontradas.
  qt_novos numeric;
  qt_repetidos numeric;
  qt_deixou_de_sair numeric;
  qt_ainda_nao_saiu numeric;

  qtAlternaram_para_Positivo      NUMERIC;
  qtAlternaram_para_Negativo      NUMERIC;

  -- Variáveis utilizadas pra popular as tabelas que terminam com o sufixo num:
  -- lotofacil_resultado_novos_num,
  -- lotofacil_resultado_repetidos_num;
  -- lotofacil_resultado_deixou_de_sair_num;
  -- lotofacil_resultado_ainda_nao_saiu_num;
  sql_novos_num text;
  sql_repetidos_num text;
  sql_deixou_de_sair_num text;
  sql_ainda_nao_saiu_num text;

  -- Variáveis utilizadas pra popular as tabelas que terminam com o sufixo bolas:
  -- lotofacil_resultado_novos_bolas,
  -- lotofacil_resultado_repetidos_bolas;
  -- lotofacil_resultado_deixou_de_sair_bolas;
  -- lotofacil_resultado_ainda_nao_saiu_bolas;

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
  DELETE FROM lotofacil.lotofacil_resultado_novos_num;
  DELETE from lotofacil.lotofacil_resultado_repetidos_num;
  DELETE from lotofacil.lotofacil_resultado_ainda_nao_saiu_num;
  DELETE from lotofacil.lotofacil_resultado_deixou_de_sair_num;

  DELETE FROM lotofacil.lotofacil_resultado_novos_bolas;
  DELETE from lotofacil.lotofacil_resultado_repetidos_bolas;
  DELETE from lotofacil.lotofacil_resultado_ainda_nao_saiu_bolas;
  DELETE from lotofacil.lotofacil_resultado_deixou_de_sair_bolas;

  DELETE FROM lotofacil.lotofacil_resultado_num_frequencia;
  Delete from lotofacil.lotofacil_resultado_num_frequencia_total;

  Delete from lotofacil.lotofacil_resultado_bolas_frequencia;
  Delete from lotofacil.lotofacil_resultado_bolas_frequencia_total;


  -- A cada iteração do loop abaixo, os valores de cada elemento deste arranjo
  -- terá valores diferentes conforme percorremos cada concurso.
  lotofacil_resultado_num_frequencia [1] := 0;
  lotofacil_resultado_num_frequencia [2] := 0;
  lotofacil_resultado_num_frequencia [3] := 0;
  lotofacil_resultado_num_frequencia [4] := 0;
  lotofacil_resultado_num_frequencia [5] := 0;
  lotofacil_resultado_num_frequencia [6] := 0;
  lotofacil_resultado_num_frequencia [7] := 0;
  lotofacil_resultado_num_frequencia [8] := 0;
  lotofacil_resultado_num_frequencia [9] := 0;
  lotofacil_resultado_num_frequencia [10] := 0;
  lotofacil_resultado_num_frequencia [11] := 0;
  lotofacil_resultado_num_frequencia [12] := 0;
  lotofacil_resultado_num_frequencia [13] := 0;
  lotofacil_resultado_num_frequencia [14] := 0;
  lotofacil_resultado_num_frequencia [15] := 0;
  lotofacil_resultado_num_frequencia [16] := 0;
  lotofacil_resultado_num_frequencia [17] := 0;
  lotofacil_resultado_num_frequencia [18] := 0;
  lotofacil_resultado_num_frequencia [19] := 0;
  lotofacil_resultado_num_frequencia [20] := 0;
  lotofacil_resultado_num_frequencia [21] := 0;
  lotofacil_resultado_num_frequencia [22] := 0;
  lotofacil_resultado_num_frequencia [23] := 0;
  lotofacil_resultado_num_frequencia [24] := 0;
  lotofacil_resultado_num_frequencia [25] := 0;

  lotofacil_resultado_num_frequencia_total [1] := 0;
  lotofacil_resultado_num_frequencia_total [2] := 0;
  lotofacil_resultado_num_frequencia_total [3] := 0;
  lotofacil_resultado_num_frequencia_total [4] := 0;
  lotofacil_resultado_num_frequencia_total [5] := 0;
  lotofacil_resultado_num_frequencia_total [6] := 0;
  lotofacil_resultado_num_frequencia_total [7] := 0;
  lotofacil_resultado_num_frequencia_total [8] := 0;
  lotofacil_resultado_num_frequencia_total [9] := 0;
  lotofacil_resultado_num_frequencia_total [10] := 0;
  lotofacil_resultado_num_frequencia_total [11] := 0;
  lotofacil_resultado_num_frequencia_total [12] := 0;
  lotofacil_resultado_num_frequencia_total [13] := 0;
  lotofacil_resultado_num_frequencia_total [14] := 0;
  lotofacil_resultado_num_frequencia_total [15] := 0;
  lotofacil_resultado_num_frequencia_total [16] := 0;
  lotofacil_resultado_num_frequencia_total [17] := 0;
  lotofacil_resultado_num_frequencia_total [18] := 0;
  lotofacil_resultado_num_frequencia_total [19] := 0;
  lotofacil_resultado_num_frequencia_total [20] := 0;
  lotofacil_resultado_num_frequencia_total [21] := 0;
  lotofacil_resultado_num_frequencia_total [22] := 0;
  lotofacil_resultado_num_frequencia_total [23] := 0;
  lotofacil_resultado_num_frequencia_total [24] := 0;
  lotofacil_resultado_num_frequencia_total [25] := 0;


  b_primeiro_concurso = true;

  -- No loop abaixo, iremos comparar o concurso atual com o concurso anterior.
  FOR reg_lotofacil_resultado_num IN
  SELECT *
  FROM lotofacil.lotofacil_resultado_num
  ORDER BY concurso ASC
  LOOP
    -- Se é o primeiro concurso, iremos analisar e realizar nova iteração
    -- Pois, nossa tabela de frequência é baseada na comparação do concurso
    -- anterior e concurso atual.
    if b_primeiro_concurso = true THEN
      b_primeiro_concurso = false;

      lotofacil_resultado_num_frequencia [1] := reg_lotofacil_resultado_num.num_1;
      lotofacil_resultado_num_frequencia [2] := reg_lotofacil_resultado_num.num_2;
      lotofacil_resultado_num_frequencia [3] := reg_lotofacil_resultado_num.num_3;
      lotofacil_resultado_num_frequencia [4] := reg_lotofacil_resultado_num.num_4;
      lotofacil_resultado_num_frequencia [5] := reg_lotofacil_resultado_num.num_5;
      lotofacil_resultado_num_frequencia [6] := reg_lotofacil_resultado_num.num_6;
      lotofacil_resultado_num_frequencia [7] := reg_lotofacil_resultado_num.num_7;
      lotofacil_resultado_num_frequencia [8] := reg_lotofacil_resultado_num.num_8;
      lotofacil_resultado_num_frequencia [9] := reg_lotofacil_resultado_num.num_9;
      lotofacil_resultado_num_frequencia [10] := reg_lotofacil_resultado_num.num_10;
      lotofacil_resultado_num_frequencia [11] := reg_lotofacil_resultado_num.num_11;
      lotofacil_resultado_num_frequencia [12] := reg_lotofacil_resultado_num.num_12;
      lotofacil_resultado_num_frequencia [13] := reg_lotofacil_resultado_num.num_13;
      lotofacil_resultado_num_frequencia [14] := reg_lotofacil_resultado_num.num_14;
      lotofacil_resultado_num_frequencia [15] := reg_lotofacil_resultado_num.num_15;
      lotofacil_resultado_num_frequencia [16] := reg_lotofacil_resultado_num.num_16;
      lotofacil_resultado_num_frequencia [17] := reg_lotofacil_resultado_num.num_17;
      lotofacil_resultado_num_frequencia [18] := reg_lotofacil_resultado_num.num_18;
      lotofacil_resultado_num_frequencia [19] := reg_lotofacil_resultado_num.num_19;
      lotofacil_resultado_num_frequencia [20] := reg_lotofacil_resultado_num.num_20;
      lotofacil_resultado_num_frequencia [21] := reg_lotofacil_resultado_num.num_21;
      lotofacil_resultado_num_frequencia [22] := reg_lotofacil_resultado_num.num_22;
      lotofacil_resultado_num_frequencia [23] := reg_lotofacil_resultado_num.num_23;
      lotofacil_resultado_num_frequencia [24] := reg_lotofacil_resultado_num.num_24;
      lotofacil_resultado_num_frequencia [25] := reg_lotofacil_resultado_num.num_25;

      lotofacil_resultado_num_frequencia_total [1] := reg_lotofacil_resultado_num.num_1;
      lotofacil_resultado_num_frequencia_total [2] := reg_lotofacil_resultado_num.num_2;
      lotofacil_resultado_num_frequencia_total [3] := reg_lotofacil_resultado_num.num_3;
      lotofacil_resultado_num_frequencia_total [4] := reg_lotofacil_resultado_num.num_4;
      lotofacil_resultado_num_frequencia_total [5] := reg_lotofacil_resultado_num.num_5;
      lotofacil_resultado_num_frequencia_total [6] := reg_lotofacil_resultado_num.num_6;
      lotofacil_resultado_num_frequencia_total [7] := reg_lotofacil_resultado_num.num_7;
      lotofacil_resultado_num_frequencia_total [8] := reg_lotofacil_resultado_num.num_8;
      lotofacil_resultado_num_frequencia_total [9] := reg_lotofacil_resultado_num.num_9;
      lotofacil_resultado_num_frequencia_total [10] := reg_lotofacil_resultado_num.num_10;
      lotofacil_resultado_num_frequencia_total [11] := reg_lotofacil_resultado_num.num_11;
      lotofacil_resultado_num_frequencia_total [12] := reg_lotofacil_resultado_num.num_12;
      lotofacil_resultado_num_frequencia_total [13] := reg_lotofacil_resultado_num.num_13;
      lotofacil_resultado_num_frequencia_total [14] := reg_lotofacil_resultado_num.num_14;
      lotofacil_resultado_num_frequencia_total [15] := reg_lotofacil_resultado_num.num_15;
      lotofacil_resultado_num_frequencia_total [16] := reg_lotofacil_resultado_num.num_16;
      lotofacil_resultado_num_frequencia_total [17] := reg_lotofacil_resultado_num.num_17;
      lotofacil_resultado_num_frequencia_total [18] := reg_lotofacil_resultado_num.num_18;
      lotofacil_resultado_num_frequencia_total [19] := reg_lotofacil_resultado_num.num_19;
      lotofacil_resultado_num_frequencia_total [20] := reg_lotofacil_resultado_num.num_20;
      lotofacil_resultado_num_frequencia_total [21] := reg_lotofacil_resultado_num.num_21;
      lotofacil_resultado_num_frequencia_total [22] := reg_lotofacil_resultado_num.num_22;
      lotofacil_resultado_num_frequencia_total [23] := reg_lotofacil_resultado_num.num_23;
      lotofacil_resultado_num_frequencia_total [24] := reg_lotofacil_resultado_num.num_24;
      lotofacil_resultado_num_frequencia_total [25] := reg_lotofacil_resultado_num.num_25;

      -- Se é o primeiro concurso, devemos marcar as bolas que não saiu com o valor -1 pois
      -- senão, irá considera que l
      uB := 1;
      while uB <= 25 LOOP
        if lotofacil_resultado_num_frequencia[uB] = 0 then
          lotofacil_resultado_num_frequencia[uB] := -1;
          lotofacil_resultado_num_frequencia_total[uB] := -1;
        END IF;
        uB := uB + 1;
      END LOOP;






      continue;

    END IF;

    lotofacil_resultado_num_atual [1] := reg_lotofacil_resultado_num.num_1;
    lotofacil_resultado_num_atual [2] := reg_lotofacil_resultado_num.num_2;
    lotofacil_resultado_num_atual [3] := reg_lotofacil_resultado_num.num_3;
    lotofacil_resultado_num_atual [4] := reg_lotofacil_resultado_num.num_4;
    lotofacil_resultado_num_atual [5] := reg_lotofacil_resultado_num.num_5;
    lotofacil_resultado_num_atual [6] := reg_lotofacil_resultado_num.num_6;
    lotofacil_resultado_num_atual [7] := reg_lotofacil_resultado_num.num_7;
    lotofacil_resultado_num_atual [8] := reg_lotofacil_resultado_num.num_8;
    lotofacil_resultado_num_atual [9] := reg_lotofacil_resultado_num.num_9;
    lotofacil_resultado_num_atual [10] := reg_lotofacil_resultado_num.num_10;
    lotofacil_resultado_num_atual [11] := reg_lotofacil_resultado_num.num_11;
    lotofacil_resultado_num_atual [12] := reg_lotofacil_resultado_num.num_12;
    lotofacil_resultado_num_atual [13] := reg_lotofacil_resultado_num.num_13;
    lotofacil_resultado_num_atual [14] := reg_lotofacil_resultado_num.num_14;
    lotofacil_resultado_num_atual [15] := reg_lotofacil_resultado_num.num_15;
    lotofacil_resultado_num_atual [16] := reg_lotofacil_resultado_num.num_16;
    lotofacil_resultado_num_atual [17] := reg_lotofacil_resultado_num.num_17;
    lotofacil_resultado_num_atual [18] := reg_lotofacil_resultado_num.num_18;
    lotofacil_resultado_num_atual [19] := reg_lotofacil_resultado_num.num_19;
    lotofacil_resultado_num_atual [20] := reg_lotofacil_resultado_num.num_20;
    lotofacil_resultado_num_atual [21] := reg_lotofacil_resultado_num.num_21;
    lotofacil_resultado_num_atual [22] := reg_lotofacil_resultado_num.num_22;
    lotofacil_resultado_num_atual [23] := reg_lotofacil_resultado_num.num_23;
    lotofacil_resultado_num_atual [24] := reg_lotofacil_resultado_num.num_24;
    lotofacil_resultado_num_atual [25] := reg_lotofacil_resultado_num.num_25;

    -- Neste loop, iremos contabilizar a quantidade de bolas:
    -- que são novas, repetidas, que deixaram de sair e ainda não saíram
    -- Também, será identificadas quais são as bolas novas, repetidas, que deixaram de sair, que ainda não saíram
    -- em cada concurso.
    -- Será preenchida a tabela lotofacil.lotofacil_resultado_num_frequencia, desta forma:
    -- Se a bola saiu no concurso atual e não saiu no concurso anterior, ela terá no campo corresponde a mesma,
    -- o valor 1.
    -- Se a bola saiu no concurso atual e também saiu no concurso anterior, o valor do campo no concurso atual
    -- será igual ao valor do mesmo campo do concurso anterior, acrescentado pelo valor 1.
    -- Se a bola não saiu no concurso atual, e também não saiu no concurso anterior, ela terá no campo
    -- do concurso atual, o valor do campo correspondente acrescido do valor -1.

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

    uA := 1;
    WHILE uA <= 25 LOOP

      -- Bola não foi sorteado no concurso atual.
      IF lotofacil_resultado_num_atual [uA] = 1
      THEN
        CASE
          -- Frequência negativa quer dizer que a bola não vinha saíndo desde o último concurso
          -- Então, devemos começar com o valor 1.
          WHEN sign(lotofacil_resultado_num_frequencia [uA]) = -1
          THEN
            lotofacil_resultado_num_frequencia [uA] := 1;

          -- Se a frequencia anterior tem o valor zero, quer dizer, que é a primeira vez que estamos
          -- analisando, então iremos definir o valor da frequencia do concurso atual pra o valor 1.
          WHEN sign(lotofacil_resultado_num_frequencia [uA]) = 0
          THEN
            lotofacil_resultado_num_frequencia [uA] := 1;

          -- Se a frequencia anterior tem um valor positivo, quer dizer, que a bola está se repetindo
          -- desde o último concurso.
          WHEN sign(lotofacil_resultado_num_frequencia [uA]) = 1
          THEN
            lotofacil_resultado_num_frequencia [uA] := lotofacil_resultado_num_frequencia [uA] + 1;
        END CASE;
      ELSE
        IF lotofacil_resultado_num_atual [uA] = 0
        THEN
          CASE
          -- Frequência negativa quer dizer que a bola não vinha saíndo desde o último concurso
          -- Então, devemos começar com o valor 1.
            WHEN sign(lotofacil_resultado_num_frequencia [uA]) = -1
            THEN
              lotofacil_resultado_num_frequencia [uA] := lotofacil_resultado_num_frequencia [uA] - 1;

          -- Se a frequencia anterior tem o valor zero, quer dizer, que é a primeira vez que estamos
          -- analisando, então iremos definir o valor da frequencia do concurso atual pra o valor 1.
            WHEN sign(lotofacil_resultado_num_frequencia [uA]) = 0
            THEN
              lotofacil_resultado_num_frequencia [uA] := -1;

            -- Se a frequencia anterior tem um valor positivo, quer dizer, que a bola está se repetindo
            -- desde o último concurso.
            WHEN sign(lotofacil_resultado_num_frequencia [uA]) = 1
            THEN
              lotofacil_resultado_num_frequencia [uA] := -1;
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

      IF lotofacil_resultado_num_frequencia [ua] < -1
      THEN
        qt_ainda_nao_saiu := qt_ainda_nao_saiu + 1;

        -- Aqui, iremos, construir o sql para o insert.
        sql_ainda_nao_saiu_num := sql_ainda_nao_saiu_num || ', num_' || uA;
        sql_ainda_nao_saiu_bolas := sql_ainda_nao_saiu_bolas || ', ' || uA;

        -- Se a frequência tem o valor -1, quer dizer, que o número estava
        -- saindo nos concursos anterior ou concurso anterior e deixou de sair.
      ELSIF lotofacil_resultado_num_frequencia [uA] = -1
        THEN

          qt_deixou_de_sair := qt_deixou_de_sair + 1;

          sql_deixou_de_sair_num := sql_deixou_de_sair_num || ', num_' || uA;
          sql_deixou_de_sair_bolas := sql_deixou_de_sair_bolas || ', ' || uA;

      -- Se a frequência tem o valor de 1, quer dizer, que o número não saiu
      -- no último concurso, então é novo.
      ELSIF lotofacil_resultado_num_frequencia [uA] = 1
        THEN

          qt_novos := qt_novos + 1;

          sql_novos_num := sql_novos_num || ', num_' || uA;
          sql_novos_bolas := sql_novos_bolas || ', ' || uA;

      -- Se a frequência tem o valor maior que 1, quer dizer, que o número
      -- está se repetindo.
      ELSIF lotofacil_resultado_num_frequencia [uA] > 1
        THEN

          qt_repetidos := qt_repetidos + 1;

          sql_repetidos_num := sql_repetidos_num || ', num_' || uA;
          sql_repetidos_bolas := sql_repetidos_bolas || ', ' || uA;

      END IF;

      -- Soma a frequencia atual, com a soma total de todas as frequências já
      -- encontradas.
      lotofacil_resultado_num_frequencia_total[uA] := lotofacil_resultado_num_frequencia_total [uA] +
                                                      lotofacil_resultado_num_frequencia[uA];

      -- Incrementa a variável
      uA := uA + 1;
    END LOOP;

    --Insere 1 registro por bola, nas tabelas lotofacil_resultado_bolas_frequencia e
    -- lotofacil_resultado_bolas_frequencia_total.
    for uA in 1..25 LOOP
      Insert Into lotofacil.lotofacil_resultado_bolas_frequencia(concurso, bola, frequencia) VALUES
        (reg_lotofacil_resultado_num.concurso, uA, lotofacil_resultado_num_frequencia[uA]);

      Insert Into lotofacil.lotofacil_resultado_bolas_frequencia_total(concurso, bola, frequencia) VALUES
        (reg_lotofacil_resultado_num.concurso, uA, lotofacil_resultado_num_frequencia_total[uA]);

    END LOOP;

    -- A tabela lotofacil_resultado_num_frequencia tem a frequencia baseada nos últimos concursos.
    -- A outra tabela, lotofacil_resultado_num_frequencia_total, tem a soma de cada frequencia de
    -- cada concurso.
    -- Nesta tabela fica fácil detectar, qual é a bola que mais sai e a que menos sai.


    INSERT INTO lotofacil.lotofacil_resultado_num_frequencia (
      concurso, num_1, num_2, num_3, num_4, num_5,
                num_6, num_7, num_8, num_9, num_10,
                num_11, num_12, num_13, num_14, num_15,
                num_16, num_17, num_18, num_19, num_20,
                num_21, num_22, num_23, num_24, num_25)
    VALUES (reg_lotofacil_resultado_num.concurso,
            lotofacil_resultado_num_frequencia[1],
            lotofacil_resultado_num_frequencia[2],
            lotofacil_resultado_num_frequencia[3],
            lotofacil_resultado_num_frequencia[4],
            lotofacil_resultado_num_frequencia[5],
            lotofacil_resultado_num_frequencia[6],
            lotofacil_resultado_num_frequencia[7],
            lotofacil_resultado_num_frequencia[8],
            lotofacil_resultado_num_frequencia[9],
            lotofacil_resultado_num_frequencia[10],
            lotofacil_resultado_num_frequencia[11],
            lotofacil_resultado_num_frequencia[12],
            lotofacil_resultado_num_frequencia[13],
            lotofacil_resultado_num_frequencia[14],
            lotofacil_resultado_num_frequencia[15],
            lotofacil_resultado_num_frequencia[16],
            lotofacil_resultado_num_frequencia[17],
            lotofacil_resultado_num_frequencia[18],
            lotofacil_resultado_num_frequencia[19],
            lotofacil_resultado_num_frequencia[20],
            lotofacil_resultado_num_frequencia[21],
            lotofacil_resultado_num_frequencia[22],
            lotofacil_resultado_num_frequencia[23],
            lotofacil_resultado_num_frequencia[24],
            lotofacil_resultado_num_frequencia[25]);

    INSERT INTO lotofacil.lotofacil_resultado_num_frequencia_total (
      concurso, num_1, num_2, num_3, num_4, num_5,
                num_6, num_7, num_8, num_9, num_10,
                num_11, num_12, num_13, num_14, num_15,
                num_16, num_17, num_18, num_19, num_20,
                num_21, num_22, num_23, num_24, num_25)
    VALUES (reg_lotofacil_resultado_num.concurso,
            lotofacil_resultado_num_frequencia_total[1],
            lotofacil_resultado_num_frequencia_total[2],
            lotofacil_resultado_num_frequencia_total[3],
            lotofacil_resultado_num_frequencia_total[4],
            lotofacil_resultado_num_frequencia_total[5],
            lotofacil_resultado_num_frequencia_total[6],
            lotofacil_resultado_num_frequencia_total[7],
            lotofacil_resultado_num_frequencia_total[8],
            lotofacil_resultado_num_frequencia_total[9],
            lotofacil_resultado_num_frequencia_total[10],
            lotofacil_resultado_num_frequencia_total[11],
            lotofacil_resultado_num_frequencia_total[12],
            lotofacil_resultado_num_frequencia_total[13],
            lotofacil_resultado_num_frequencia_total[14],
            lotofacil_resultado_num_frequencia_total[15],
            lotofacil_resultado_num_frequencia_total[16],
            lotofacil_resultado_num_frequencia_total[17],
            lotofacil_resultado_num_frequencia_total[18],
            lotofacil_resultado_num_frequencia_total[19],
            lotofacil_resultado_num_frequencia_total[20],
            lotofacil_resultado_num_frequencia_total[21],
            lotofacil_resultado_num_frequencia_total[22],
            lotofacil_resultado_num_frequencia_total[23],
            lotofacil_resultado_num_frequencia_total[24],
            lotofacil_resultado_num_frequencia_total[25]);


    Raise Notice 'qt_novos: %, qt_repetidos: %, qt_ainda_nao_saiu: %, qt_deixou_de_sair: %',
      qt_novos, qt_repetidos, qt_ainda_nao_saiu, qt_deixou_de_sair;

    if qt_novos > 10 and reg_lotofacil_resultado_num.concurso <> 1 THEN
      Raise EXCEPTION 'Erro, lotofacil %, qt de novos: %, a quantidade máxima de ítens novos é 10:',
        reg_lotofacil_resultado_num.concurso, qt_novos;
    END IF;

    if (reg_lotofacil_resultado_num.concurso <> 1) and (qt_repetidos < 5 or qt_repetidos > 15) then
      Raise Exception 'Na lotofacil, a quantidade mínima de ítens repetidos é 5, e a quantidade máxima é 15,'
    'foi informado %', qt_repetidos;
    END IF;

    /*
    if (reg_lotofacil_resultado_num.concurso <> 1) and (qt_novos <> qt_deixou_de_sair) then
      Raise Exception 'Na lotofacil de 15 números, sempre a quantidade de novos é igual à quantidade de números '
        'que deixaram de sair, erro, quantidade de novos diferentes de quantidade de números que deixou de sair.';
    END IF;
    */

    Raise Notice 'Concurso: %, qtNovos: %, qtRepetidos: %, qtAindaNaoSaiu %', reg_lotofacil_resultado_num.concurso,
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

    sql_novos_bolas :=  'Insert into lotofacil.lotofacil_resultado_novos_bolas (concurso, qt_novos ' ||
                        sql_bolas_coluna || ') values (' || reg_lotofacil_resultado_num.concurso ||
                        ', ' || qt_novos || sql_novos_bolas || ')';

    sql_novos_num := 'Insert into lotofacil.lotofacil_resultado_novos_num (concurso, qt_novos ' ||
                      sql_novos_num || ') values (' || reg_lotofacil_resultado_num.concurso ||
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

    sql_repetidos_bolas :=  'Insert into lotofacil.lotofacil_resultado_repetidos_bolas (concurso, qt_repetidos ' ||
                        sql_bolas_coluna || ') values (' || reg_lotofacil_resultado_num.concurso ||
                        ', ' || qt_repetidos || sql_repetidos_bolas || ')';

    sql_repetidos_num := 'Insert into lotofacil.lotofacil_resultado_repetidos_num (concurso, qt_repetidos ' ||
                      sql_repetidos_num || ') values (' || reg_lotofacil_resultado_num.concurso ||
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

    sql_ainda_nao_saiu_bolas :=  'Insert into lotofacil.lotofacil_resultado_ainda_nao_saiu_bolas (concurso, qt_ainda_nao_saiu ' ||
                        sql_bolas_coluna || ') values (' || reg_lotofacil_resultado_num.concurso ||
                        ', ' || qt_ainda_nao_saiu || sql_ainda_nao_saiu_bolas || ')';

    sql_ainda_nao_saiu_num := 'Insert into lotofacil.lotofacil_resultado_ainda_nao_saiu_num (concurso, qt_ainda_nao_saiu ' ||
                      sql_ainda_nao_saiu_num || ') values (' || reg_lotofacil_resultado_num.concurso ||
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

    sql_deixou_de_sair_bolas :=  'Insert into lotofacil.lotofacil_resultado_deixou_de_sair_bolas (concurso, qt_deixou_de_sair ' ||
                        sql_bolas_coluna || ') values (' || reg_lotofacil_resultado_num.concurso ||
                        ', ' || qt_deixou_de_sair || sql_deixou_de_sair_bolas || ')';

    sql_deixou_de_sair_num := 'Insert into lotofacil.lotofacil_resultado_deixou_de_sair_num (concurso, qt_deixou_de_sair ' ||
                      sql_deixou_de_sair_num || ') values (' || reg_lotofacil_resultado_num.concurso ||
                        ', ' || qt_deixou_de_sair || sql_num_valor_1 || ')';


    Raise Notice '%', sql_deixou_de_sair_num;
    execute sql_deixou_de_sair_bolas;
    execute sql_deixou_de_sair_num;
  END LOOP;
END $$;


/***
  Função para atualizar as tabelas de novos, repetidos, ainda_nao_saiu e deixou_de_sair.
 */
DROP FUNCTION IF EXISTS ltk_quina.fn_quina_resultado_frequencia_atualizar();
CREATE FUNCTION ltk_quina.fn_quina_resultado_frequencia_atualizar()
  RETURNS VOID
LANGUAGE plpgsql
AS $$
DECLARE
  -- Serve pra armazenar cada registro, após percorremos no loop.
  reg_quina_resultado_num          ltk_quina.quina_resultado_num%ROWTYPE;

  quina_resultado_num_atual NUMERIC [81];
  quina_resultado_num_frequencia      NUMERIC [81];
  quina_resultado_num_frequencia_total numeric[81];

  renovar_ciclo boolean;
  qt_ciclos numeric;
  quina_frequencia_ciclo numeric[81];
  sql_insert_ciclo text;

  -- As 6 variáveis abaixo armazena a quantidade de novos, repetidos, deixou_de_sair e ainda_nao_saiu
  -- encontradas.
  qt_novos numeric;
  qt_repetidos numeric;
  qt_deixou_de_sair numeric;
  qt_ainda_nao_saiu numeric;

  qtAlternaram_para_Positivo      NUMERIC;
  qtAlternaram_para_Negativo      NUMERIC;

  -- Variáveis utilizadas pra popular as tabelas que terminam com o sufixo num:
  -- quina_resultado_novos_num,
  -- quina_resultado_repetidos_num;
  -- quina_resultado_deixou_de_sair_num;
  -- quina_resultado_ainda_nao_saiu_num;
  sql_novos_num text;
  sql_repetidos_num text;
  sql_deixou_de_sair_num text;
  sql_ainda_nao_saiu_num text;

  -- Variáveis utilizadas pra popular as tabelas que terminam com o sufixo bolas:
  -- quina_resultado_novos_bolas,
  -- quina_resultado_repetidos_bolas;
  -- quina_resultado_deixou_de_sair_bolas;
  -- quina_resultado_ainda_nao_saiu_bolas;

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
  DELETE FROM ltk_quina.quina_resultado_novos_num;
  DELETE from ltk_quina.quina_resultado_repetidos_num;
  DELETE from ltk_quina.quina_resultado_ainda_nao_saiu_num;
  DELETE from ltk_quina.quina_resultado_deixou_de_sair_num;

  DELETE FROM ltk_quina.quina_resultado_novos_bolas;
  DELETE from ltk_quina.quina_resultado_repetidos_bolas;
  DELETE from ltk_quina.quina_resultado_ainda_nao_saiu_bolas;
  DELETE from ltk_quina.quina_resultado_deixou_de_sair_bolas;
  */

  DELETE FROM ltk_quina.quina_resultado_num_frequencia;
  Delete from ltk_quina.quina_resultado_num_frequencia_total;

  Delete from ltk_quina.quina_resultado_bolas_frequencia;
  Delete from ltk_quina.quina_resultado_bolas_frequencia_total;

  Delete from ltk_quina.quina_frequencia_ciclo;


  -- A cada iteração do loop abaixo, os valores de cada elemento deste arranjo
  -- terá valores diferentes conforme percorremos cada concurso.
  quina_resultado_num_frequencia[1] := 0;
  quina_resultado_num_frequencia[2] := 0;
  quina_resultado_num_frequencia[3] := 0;
  quina_resultado_num_frequencia[4] := 0;
  quina_resultado_num_frequencia[5] := 0;
  quina_resultado_num_frequencia[6] := 0;
  quina_resultado_num_frequencia[7] := 0;
  quina_resultado_num_frequencia[8] := 0;
  quina_resultado_num_frequencia[9] := 0;
  quina_resultado_num_frequencia[10] := 0;
  quina_resultado_num_frequencia[11] := 0;
  quina_resultado_num_frequencia[12] := 0;
  quina_resultado_num_frequencia[13] := 0;
  quina_resultado_num_frequencia[14] := 0;
  quina_resultado_num_frequencia[15] := 0;
  quina_resultado_num_frequencia[16] := 0;
  quina_resultado_num_frequencia[17] := 0;
  quina_resultado_num_frequencia[18] := 0;
  quina_resultado_num_frequencia[19] := 0;
  quina_resultado_num_frequencia[20] := 0;
  quina_resultado_num_frequencia[21] := 0;
  quina_resultado_num_frequencia[22] := 0;
  quina_resultado_num_frequencia[23] := 0;
  quina_resultado_num_frequencia[24] := 0;
  quina_resultado_num_frequencia[25] := 0;
  quina_resultado_num_frequencia[26] := 0;
  quina_resultado_num_frequencia[27] := 0;
  quina_resultado_num_frequencia[28] := 0;
  quina_resultado_num_frequencia[29] := 0;
  quina_resultado_num_frequencia[30] := 0;
  quina_resultado_num_frequencia[31] := 0;
  quina_resultado_num_frequencia[32] := 0;
  quina_resultado_num_frequencia[33] := 0;
  quina_resultado_num_frequencia[34] := 0;
  quina_resultado_num_frequencia[35] := 0;
  quina_resultado_num_frequencia[36] := 0;
  quina_resultado_num_frequencia[37] := 0;
  quina_resultado_num_frequencia[38] := 0;
  quina_resultado_num_frequencia[39] := 0;
  quina_resultado_num_frequencia[40] := 0;
  quina_resultado_num_frequencia[41] := 0;
  quina_resultado_num_frequencia[42] := 0;
  quina_resultado_num_frequencia[43] := 0;
  quina_resultado_num_frequencia[44] := 0;
  quina_resultado_num_frequencia[45] := 0;
  quina_resultado_num_frequencia[46] := 0;
  quina_resultado_num_frequencia[47] := 0;
  quina_resultado_num_frequencia[48] := 0;
  quina_resultado_num_frequencia[49] := 0;
  quina_resultado_num_frequencia[50] := 0;
  quina_resultado_num_frequencia[51] := 0;
  quina_resultado_num_frequencia[52] := 0;
  quina_resultado_num_frequencia[53] := 0;
  quina_resultado_num_frequencia[54] := 0;
  quina_resultado_num_frequencia[55] := 0;
  quina_resultado_num_frequencia[56] := 0;
  quina_resultado_num_frequencia[57] := 0;
  quina_resultado_num_frequencia[58] := 0;
  quina_resultado_num_frequencia[59] := 0;
  quina_resultado_num_frequencia[60] := 0;
  quina_resultado_num_frequencia[61] := 0;
  quina_resultado_num_frequencia[62] := 0;
  quina_resultado_num_frequencia[63] := 0;
  quina_resultado_num_frequencia[64] := 0;
  quina_resultado_num_frequencia[65] := 0;
  quina_resultado_num_frequencia[66] := 0;
  quina_resultado_num_frequencia[67] := 0;
  quina_resultado_num_frequencia[68] := 0;
  quina_resultado_num_frequencia[69] := 0;
  quina_resultado_num_frequencia[70] := 0;
  quina_resultado_num_frequencia[71] := 0;
  quina_resultado_num_frequencia[72] := 0;
  quina_resultado_num_frequencia[73] := 0;
  quina_resultado_num_frequencia[74] := 0;
  quina_resultado_num_frequencia[75] := 0;
  quina_resultado_num_frequencia[76] := 0;
  quina_resultado_num_frequencia[77] := 0;
  quina_resultado_num_frequencia[78] := 0;
  quina_resultado_num_frequencia[79] := 0;
  quina_resultado_num_frequencia[80] := 0;
  
  quina_resultado_num_frequencia_total[1] := 0;
  quina_resultado_num_frequencia_total[2] := 0;
  quina_resultado_num_frequencia_total[3] := 0;
  quina_resultado_num_frequencia_total[4] := 0;
  quina_resultado_num_frequencia_total[5] := 0;
  quina_resultado_num_frequencia_total[6] := 0;
  quina_resultado_num_frequencia_total[7] := 0;
  quina_resultado_num_frequencia_total[8] := 0;
  quina_resultado_num_frequencia_total[9] := 0;
  quina_resultado_num_frequencia_total[10] := 0;
  quina_resultado_num_frequencia_total[11] := 0;
  quina_resultado_num_frequencia_total[12] := 0;
  quina_resultado_num_frequencia_total[13] := 0;
  quina_resultado_num_frequencia_total[14] := 0;
  quina_resultado_num_frequencia_total[15] := 0;
  quina_resultado_num_frequencia_total[16] := 0;
  quina_resultado_num_frequencia_total[17] := 0;
  quina_resultado_num_frequencia_total[18] := 0;
  quina_resultado_num_frequencia_total[19] := 0;
  quina_resultado_num_frequencia_total[20] := 0;
  quina_resultado_num_frequencia_total[21] := 0;
  quina_resultado_num_frequencia_total[22] := 0;
  quina_resultado_num_frequencia_total[23] := 0;
  quina_resultado_num_frequencia_total[24] := 0;
  quina_resultado_num_frequencia_total[25] := 0;
  quina_resultado_num_frequencia_total[26] := 0;
  quina_resultado_num_frequencia_total[27] := 0;
  quina_resultado_num_frequencia_total[28] := 0;
  quina_resultado_num_frequencia_total[29] := 0;
  quina_resultado_num_frequencia_total[30] := 0;
  quina_resultado_num_frequencia_total[31] := 0;
  quina_resultado_num_frequencia_total[32] := 0;
  quina_resultado_num_frequencia_total[33] := 0;
  quina_resultado_num_frequencia_total[34] := 0;
  quina_resultado_num_frequencia_total[35] := 0;
  quina_resultado_num_frequencia_total[36] := 0;
  quina_resultado_num_frequencia_total[37] := 0;
  quina_resultado_num_frequencia_total[38] := 0;
  quina_resultado_num_frequencia_total[39] := 0;
  quina_resultado_num_frequencia_total[40] := 0;
  quina_resultado_num_frequencia_total[41] := 0;
  quina_resultado_num_frequencia_total[42] := 0;
  quina_resultado_num_frequencia_total[43] := 0;
  quina_resultado_num_frequencia_total[44] := 0;
  quina_resultado_num_frequencia_total[45] := 0;
  quina_resultado_num_frequencia_total[46] := 0;
  quina_resultado_num_frequencia_total[47] := 0;
  quina_resultado_num_frequencia_total[48] := 0;
  quina_resultado_num_frequencia_total[49] := 0;
  quina_resultado_num_frequencia_total[50] := 0;
  quina_resultado_num_frequencia_total[51] := 0;
  quina_resultado_num_frequencia_total[52] := 0;
  quina_resultado_num_frequencia_total[53] := 0;
  quina_resultado_num_frequencia_total[54] := 0;
  quina_resultado_num_frequencia_total[55] := 0;
  quina_resultado_num_frequencia_total[56] := 0;
  quina_resultado_num_frequencia_total[57] := 0;
  quina_resultado_num_frequencia_total[58] := 0;
  quina_resultado_num_frequencia_total[59] := 0;
  quina_resultado_num_frequencia_total[60] := 0;
  quina_resultado_num_frequencia_total[61] := 0;
  quina_resultado_num_frequencia_total[62] := 0;
  quina_resultado_num_frequencia_total[63] := 0;
  quina_resultado_num_frequencia_total[64] := 0;
  quina_resultado_num_frequencia_total[65] := 0;
  quina_resultado_num_frequencia_total[66] := 0;
  quina_resultado_num_frequencia_total[67] := 0;
  quina_resultado_num_frequencia_total[68] := 0;
  quina_resultado_num_frequencia_total[69] := 0;
  quina_resultado_num_frequencia_total[70] := 0;
  quina_resultado_num_frequencia_total[71] := 0;
  quina_resultado_num_frequencia_total[72] := 0;
  quina_resultado_num_frequencia_total[73] := 0;
  quina_resultado_num_frequencia_total[74] := 0;
  quina_resultado_num_frequencia_total[75] := 0;
  quina_resultado_num_frequencia_total[76] := 0;
  quina_resultado_num_frequencia_total[77] := 0;
  quina_resultado_num_frequencia_total[78] := 0;
  quina_resultado_num_frequencia_total[79] := 0;
  quina_resultado_num_frequencia_total[80] := 0;
  
  quina_frequencia_ciclo[1] := 0;
  quina_frequencia_ciclo[2] := 0;
  quina_frequencia_ciclo[3] := 0;
  quina_frequencia_ciclo[4] := 0;
  quina_frequencia_ciclo[5] := 0;
  quina_frequencia_ciclo[6] := 0;
  quina_frequencia_ciclo[7] := 0;
  quina_frequencia_ciclo[8] := 0;
  quina_frequencia_ciclo[9] := 0;
  quina_frequencia_ciclo[10] := 0;
  quina_frequencia_ciclo[11] := 0;
  quina_frequencia_ciclo[12] := 0;
  quina_frequencia_ciclo[13] := 0;
  quina_frequencia_ciclo[14] := 0;
  quina_frequencia_ciclo[15] := 0;
  quina_frequencia_ciclo[16] := 0;
  quina_frequencia_ciclo[17] := 0;
  quina_frequencia_ciclo[18] := 0;
  quina_frequencia_ciclo[19] := 0;
  quina_frequencia_ciclo[20] := 0;
  quina_frequencia_ciclo[21] := 0;
  quina_frequencia_ciclo[22] := 0;
  quina_frequencia_ciclo[23] := 0;
  quina_frequencia_ciclo[24] := 0;
  quina_frequencia_ciclo[25] := 0;
  quina_frequencia_ciclo[26] := 0;
  quina_frequencia_ciclo[27] := 0;
  quina_frequencia_ciclo[28] := 0;
  quina_frequencia_ciclo[29] := 0;
  quina_frequencia_ciclo[30] := 0;
  quina_frequencia_ciclo[31] := 0;
  quina_frequencia_ciclo[32] := 0;
  quina_frequencia_ciclo[33] := 0;
  quina_frequencia_ciclo[34] := 0;
  quina_frequencia_ciclo[35] := 0;
  quina_frequencia_ciclo[36] := 0;
  quina_frequencia_ciclo[37] := 0;
  quina_frequencia_ciclo[38] := 0;
  quina_frequencia_ciclo[39] := 0;
  quina_frequencia_ciclo[40] := 0;
  quina_frequencia_ciclo[41] := 0;
  quina_frequencia_ciclo[42] := 0;
  quina_frequencia_ciclo[43] := 0;
  quina_frequencia_ciclo[44] := 0;
  quina_frequencia_ciclo[45] := 0;
  quina_frequencia_ciclo[46] := 0;
  quina_frequencia_ciclo[47] := 0;
  quina_frequencia_ciclo[48] := 0;
  quina_frequencia_ciclo[49] := 0;
  quina_frequencia_ciclo[50] := 0;
  quina_frequencia_ciclo[51] := 0;
  quina_frequencia_ciclo[52] := 0;
  quina_frequencia_ciclo[53] := 0;
  quina_frequencia_ciclo[54] := 0;
  quina_frequencia_ciclo[55] := 0;
  quina_frequencia_ciclo[56] := 0;
  quina_frequencia_ciclo[57] := 0;
  quina_frequencia_ciclo[58] := 0;
  quina_frequencia_ciclo[59] := 0;
  quina_frequencia_ciclo[60] := 0;
  quina_frequencia_ciclo[61] := 0;
  quina_frequencia_ciclo[62] := 0;
  quina_frequencia_ciclo[63] := 0;
  quina_frequencia_ciclo[64] := 0;
  quina_frequencia_ciclo[65] := 0;
  quina_frequencia_ciclo[66] := 0;
  quina_frequencia_ciclo[67] := 0;
  quina_frequencia_ciclo[68] := 0;
  quina_frequencia_ciclo[69] := 0;
  quina_frequencia_ciclo[70] := 0;
  quina_frequencia_ciclo[71] := 0;
  quina_frequencia_ciclo[72] := 0;
  quina_frequencia_ciclo[73] := 0;
  quina_frequencia_ciclo[74] := 0;
  quina_frequencia_ciclo[75] := 0;
  quina_frequencia_ciclo[76] := 0;
  quina_frequencia_ciclo[77] := 0;
  quina_frequencia_ciclo[78] := 0;
  quina_frequencia_ciclo[79] := 0;
  quina_frequencia_ciclo[80] := 0;

  b_primeiro_concurso = true;
  sql_insert_ciclo := '';

  -- No loop abaixo, iremos comparar o concurso atual com o concurso anterior.
  FOR reg_quina_resultado_num IN
  SELECT *
  FROM ltk_quina.quina_resultado_num
  ORDER BY concurso ASC
  LOOP
    -- Se é o primeiro concurso, iremos analisar e realizar nova iteração
    -- Pois, nossa tabela de frequência é baseada na comparação do concurso
    -- anterior e concurso atual.
    if b_primeiro_concurso = true THEN
      b_primeiro_concurso = false;

      quina_resultado_num_frequencia[1] := reg_quina_resultado_num.num_1;
      quina_resultado_num_frequencia[2] := reg_quina_resultado_num.num_2;
      quina_resultado_num_frequencia[3] := reg_quina_resultado_num.num_3;
      quina_resultado_num_frequencia[4] := reg_quina_resultado_num.num_4;
      quina_resultado_num_frequencia[5] := reg_quina_resultado_num.num_5;
      quina_resultado_num_frequencia[6] := reg_quina_resultado_num.num_6;
      quina_resultado_num_frequencia[7] := reg_quina_resultado_num.num_7;
      quina_resultado_num_frequencia[8] := reg_quina_resultado_num.num_8;
      quina_resultado_num_frequencia[9] := reg_quina_resultado_num.num_9;
      quina_resultado_num_frequencia[10] := reg_quina_resultado_num.num_10;
      quina_resultado_num_frequencia[11] := reg_quina_resultado_num.num_11;
      quina_resultado_num_frequencia[12] := reg_quina_resultado_num.num_12;
      quina_resultado_num_frequencia[13] := reg_quina_resultado_num.num_13;
      quina_resultado_num_frequencia[14] := reg_quina_resultado_num.num_14;
      quina_resultado_num_frequencia[15] := reg_quina_resultado_num.num_15;
      quina_resultado_num_frequencia[16] := reg_quina_resultado_num.num_16;
      quina_resultado_num_frequencia[17] := reg_quina_resultado_num.num_17;
      quina_resultado_num_frequencia[18] := reg_quina_resultado_num.num_18;
      quina_resultado_num_frequencia[19] := reg_quina_resultado_num.num_19;
      quina_resultado_num_frequencia[20] := reg_quina_resultado_num.num_20;
      quina_resultado_num_frequencia[21] := reg_quina_resultado_num.num_21;
      quina_resultado_num_frequencia[22] := reg_quina_resultado_num.num_22;
      quina_resultado_num_frequencia[23] := reg_quina_resultado_num.num_23;
      quina_resultado_num_frequencia[24] := reg_quina_resultado_num.num_24;
      quina_resultado_num_frequencia[25] := reg_quina_resultado_num.num_25;
      quina_resultado_num_frequencia[26] := reg_quina_resultado_num.num_26;
      quina_resultado_num_frequencia[27] := reg_quina_resultado_num.num_27;
      quina_resultado_num_frequencia[28] := reg_quina_resultado_num.num_28;
      quina_resultado_num_frequencia[29] := reg_quina_resultado_num.num_29;
      quina_resultado_num_frequencia[30] := reg_quina_resultado_num.num_30;
      quina_resultado_num_frequencia[31] := reg_quina_resultado_num.num_31;
      quina_resultado_num_frequencia[32] := reg_quina_resultado_num.num_32;
      quina_resultado_num_frequencia[33] := reg_quina_resultado_num.num_33;
      quina_resultado_num_frequencia[34] := reg_quina_resultado_num.num_34;
      quina_resultado_num_frequencia[35] := reg_quina_resultado_num.num_35;
      quina_resultado_num_frequencia[36] := reg_quina_resultado_num.num_36;
      quina_resultado_num_frequencia[37] := reg_quina_resultado_num.num_37;
      quina_resultado_num_frequencia[38] := reg_quina_resultado_num.num_38;
      quina_resultado_num_frequencia[39] := reg_quina_resultado_num.num_39;
      quina_resultado_num_frequencia[40] := reg_quina_resultado_num.num_40;
      quina_resultado_num_frequencia[41] := reg_quina_resultado_num.num_41;
      quina_resultado_num_frequencia[42] := reg_quina_resultado_num.num_42;
      quina_resultado_num_frequencia[43] := reg_quina_resultado_num.num_43;
      quina_resultado_num_frequencia[44] := reg_quina_resultado_num.num_44;
      quina_resultado_num_frequencia[45] := reg_quina_resultado_num.num_45;
      quina_resultado_num_frequencia[46] := reg_quina_resultado_num.num_46;
      quina_resultado_num_frequencia[47] := reg_quina_resultado_num.num_47;
      quina_resultado_num_frequencia[48] := reg_quina_resultado_num.num_48;
      quina_resultado_num_frequencia[49] := reg_quina_resultado_num.num_49;
      quina_resultado_num_frequencia[50] := reg_quina_resultado_num.num_50;
      quina_resultado_num_frequencia[51] := reg_quina_resultado_num.num_51;
      quina_resultado_num_frequencia[52] := reg_quina_resultado_num.num_52;
      quina_resultado_num_frequencia[53] := reg_quina_resultado_num.num_53;
      quina_resultado_num_frequencia[54] := reg_quina_resultado_num.num_54;
      quina_resultado_num_frequencia[55] := reg_quina_resultado_num.num_55;
      quina_resultado_num_frequencia[56] := reg_quina_resultado_num.num_56;
      quina_resultado_num_frequencia[57] := reg_quina_resultado_num.num_57;
      quina_resultado_num_frequencia[58] := reg_quina_resultado_num.num_58;
      quina_resultado_num_frequencia[59] := reg_quina_resultado_num.num_59;
      quina_resultado_num_frequencia[60] := reg_quina_resultado_num.num_60;
      quina_resultado_num_frequencia[61] := reg_quina_resultado_num.num_61;
      quina_resultado_num_frequencia[62] := reg_quina_resultado_num.num_62;
      quina_resultado_num_frequencia[63] := reg_quina_resultado_num.num_63;
      quina_resultado_num_frequencia[64] := reg_quina_resultado_num.num_64;
      quina_resultado_num_frequencia[65] := reg_quina_resultado_num.num_65;
      quina_resultado_num_frequencia[66] := reg_quina_resultado_num.num_66;
      quina_resultado_num_frequencia[67] := reg_quina_resultado_num.num_67;
      quina_resultado_num_frequencia[68] := reg_quina_resultado_num.num_68;
      quina_resultado_num_frequencia[69] := reg_quina_resultado_num.num_69;
      quina_resultado_num_frequencia[70] := reg_quina_resultado_num.num_70;
      quina_resultado_num_frequencia[71] := reg_quina_resultado_num.num_71;
      quina_resultado_num_frequencia[72] := reg_quina_resultado_num.num_72;
      quina_resultado_num_frequencia[73] := reg_quina_resultado_num.num_73;
      quina_resultado_num_frequencia[74] := reg_quina_resultado_num.num_74;
      quina_resultado_num_frequencia[75] := reg_quina_resultado_num.num_75;
      quina_resultado_num_frequencia[76] := reg_quina_resultado_num.num_76;
      quina_resultado_num_frequencia[77] := reg_quina_resultado_num.num_77;
      quina_resultado_num_frequencia[78] := reg_quina_resultado_num.num_78;
      quina_resultado_num_frequencia[79] := reg_quina_resultado_num.num_79;
      quina_resultado_num_frequencia[80] := reg_quina_resultado_num.num_80;
      
      
      quina_resultado_num_frequencia_total[1] := reg_quina_resultado_num.num_1;
      quina_resultado_num_frequencia_total[2] := reg_quina_resultado_num.num_2;
      quina_resultado_num_frequencia_total[3] := reg_quina_resultado_num.num_3;
      quina_resultado_num_frequencia_total[4] := reg_quina_resultado_num.num_4;
      quina_resultado_num_frequencia_total[5] := reg_quina_resultado_num.num_5;
      quina_resultado_num_frequencia_total[6] := reg_quina_resultado_num.num_6;
      quina_resultado_num_frequencia_total[7] := reg_quina_resultado_num.num_7;
      quina_resultado_num_frequencia_total[8] := reg_quina_resultado_num.num_8;
      quina_resultado_num_frequencia_total[9] := reg_quina_resultado_num.num_9;
      quina_resultado_num_frequencia_total[10] := reg_quina_resultado_num.num_10;
      quina_resultado_num_frequencia_total[11] := reg_quina_resultado_num.num_11;
      quina_resultado_num_frequencia_total[12] := reg_quina_resultado_num.num_12;
      quina_resultado_num_frequencia_total[13] := reg_quina_resultado_num.num_13;
      quina_resultado_num_frequencia_total[14] := reg_quina_resultado_num.num_14;
      quina_resultado_num_frequencia_total[15] := reg_quina_resultado_num.num_15;
      quina_resultado_num_frequencia_total[16] := reg_quina_resultado_num.num_16;
      quina_resultado_num_frequencia_total[17] := reg_quina_resultado_num.num_17;
      quina_resultado_num_frequencia_total[18] := reg_quina_resultado_num.num_18;
      quina_resultado_num_frequencia_total[19] := reg_quina_resultado_num.num_19;
      quina_resultado_num_frequencia_total[20] := reg_quina_resultado_num.num_20;
      quina_resultado_num_frequencia_total[21] := reg_quina_resultado_num.num_21;
      quina_resultado_num_frequencia_total[22] := reg_quina_resultado_num.num_22;
      quina_resultado_num_frequencia_total[23] := reg_quina_resultado_num.num_23;
      quina_resultado_num_frequencia_total[24] := reg_quina_resultado_num.num_24;
      quina_resultado_num_frequencia_total[25] := reg_quina_resultado_num.num_25;
      quina_resultado_num_frequencia_total[26] := reg_quina_resultado_num.num_26;
      quina_resultado_num_frequencia_total[27] := reg_quina_resultado_num.num_27;
      quina_resultado_num_frequencia_total[28] := reg_quina_resultado_num.num_28;
      quina_resultado_num_frequencia_total[29] := reg_quina_resultado_num.num_29;
      quina_resultado_num_frequencia_total[30] := reg_quina_resultado_num.num_30;
      quina_resultado_num_frequencia_total[31] := reg_quina_resultado_num.num_31;
      quina_resultado_num_frequencia_total[32] := reg_quina_resultado_num.num_32;
      quina_resultado_num_frequencia_total[33] := reg_quina_resultado_num.num_33;
      quina_resultado_num_frequencia_total[34] := reg_quina_resultado_num.num_34;
      quina_resultado_num_frequencia_total[35] := reg_quina_resultado_num.num_35;
      quina_resultado_num_frequencia_total[36] := reg_quina_resultado_num.num_36;
      quina_resultado_num_frequencia_total[37] := reg_quina_resultado_num.num_37;
      quina_resultado_num_frequencia_total[38] := reg_quina_resultado_num.num_38;
      quina_resultado_num_frequencia_total[39] := reg_quina_resultado_num.num_39;
      quina_resultado_num_frequencia_total[40] := reg_quina_resultado_num.num_40;
      quina_resultado_num_frequencia_total[41] := reg_quina_resultado_num.num_41;
      quina_resultado_num_frequencia_total[42] := reg_quina_resultado_num.num_42;
      quina_resultado_num_frequencia_total[43] := reg_quina_resultado_num.num_43;
      quina_resultado_num_frequencia_total[44] := reg_quina_resultado_num.num_44;
      quina_resultado_num_frequencia_total[45] := reg_quina_resultado_num.num_45;
      quina_resultado_num_frequencia_total[46] := reg_quina_resultado_num.num_46;
      quina_resultado_num_frequencia_total[47] := reg_quina_resultado_num.num_47;
      quina_resultado_num_frequencia_total[48] := reg_quina_resultado_num.num_48;
      quina_resultado_num_frequencia_total[49] := reg_quina_resultado_num.num_49;
      quina_resultado_num_frequencia_total[50] := reg_quina_resultado_num.num_50;
      quina_resultado_num_frequencia_total[51] := reg_quina_resultado_num.num_51;
      quina_resultado_num_frequencia_total[52] := reg_quina_resultado_num.num_52;
      quina_resultado_num_frequencia_total[53] := reg_quina_resultado_num.num_53;
      quina_resultado_num_frequencia_total[54] := reg_quina_resultado_num.num_54;
      quina_resultado_num_frequencia_total[55] := reg_quina_resultado_num.num_55;
      quina_resultado_num_frequencia_total[56] := reg_quina_resultado_num.num_56;
      quina_resultado_num_frequencia_total[57] := reg_quina_resultado_num.num_57;
      quina_resultado_num_frequencia_total[58] := reg_quina_resultado_num.num_58;
      quina_resultado_num_frequencia_total[59] := reg_quina_resultado_num.num_59;
      quina_resultado_num_frequencia_total[60] := reg_quina_resultado_num.num_60;
      quina_resultado_num_frequencia_total[61] := reg_quina_resultado_num.num_61;
      quina_resultado_num_frequencia_total[62] := reg_quina_resultado_num.num_62;
      quina_resultado_num_frequencia_total[63] := reg_quina_resultado_num.num_63;
      quina_resultado_num_frequencia_total[64] := reg_quina_resultado_num.num_64;
      quina_resultado_num_frequencia_total[65] := reg_quina_resultado_num.num_65;
      quina_resultado_num_frequencia_total[66] := reg_quina_resultado_num.num_66;
      quina_resultado_num_frequencia_total[67] := reg_quina_resultado_num.num_67;
      quina_resultado_num_frequencia_total[68] := reg_quina_resultado_num.num_68;
      quina_resultado_num_frequencia_total[69] := reg_quina_resultado_num.num_69;
      quina_resultado_num_frequencia_total[70] := reg_quina_resultado_num.num_70;
      quina_resultado_num_frequencia_total[71] := reg_quina_resultado_num.num_71;
      quina_resultado_num_frequencia_total[72] := reg_quina_resultado_num.num_72;
      quina_resultado_num_frequencia_total[73] := reg_quina_resultado_num.num_73;
      quina_resultado_num_frequencia_total[74] := reg_quina_resultado_num.num_74;
      quina_resultado_num_frequencia_total[75] := reg_quina_resultado_num.num_75;
      quina_resultado_num_frequencia_total[76] := reg_quina_resultado_num.num_76;
      quina_resultado_num_frequencia_total[77] := reg_quina_resultado_num.num_77;
      quina_resultado_num_frequencia_total[78] := reg_quina_resultado_num.num_78;
      quina_resultado_num_frequencia_total[79] := reg_quina_resultado_num.num_79;
      quina_resultado_num_frequencia_total[80] := reg_quina_resultado_num.num_80;

      renovar_ciclo = false;
      qt_ciclos := 2;

      quina_frequencia_ciclo[1] := reg_quina_resultado_num.num_1;
      quina_frequencia_ciclo[2] := reg_quina_resultado_num.num_2;
      quina_frequencia_ciclo[3] := reg_quina_resultado_num.num_3;
      quina_frequencia_ciclo[4] := reg_quina_resultado_num.num_4;
      quina_frequencia_ciclo[5] := reg_quina_resultado_num.num_5;
      quina_frequencia_ciclo[6] := reg_quina_resultado_num.num_6;
      quina_frequencia_ciclo[7] := reg_quina_resultado_num.num_7;
      quina_frequencia_ciclo[8] := reg_quina_resultado_num.num_8;
      quina_frequencia_ciclo[9] := reg_quina_resultado_num.num_9;
      quina_frequencia_ciclo[10] := reg_quina_resultado_num.num_10;
      quina_frequencia_ciclo[11] := reg_quina_resultado_num.num_11;
      quina_frequencia_ciclo[12] := reg_quina_resultado_num.num_12;
      quina_frequencia_ciclo[13] := reg_quina_resultado_num.num_13;
      quina_frequencia_ciclo[14] := reg_quina_resultado_num.num_14;
      quina_frequencia_ciclo[15] := reg_quina_resultado_num.num_15;
      quina_frequencia_ciclo[16] := reg_quina_resultado_num.num_16;
      quina_frequencia_ciclo[17] := reg_quina_resultado_num.num_17;
      quina_frequencia_ciclo[18] := reg_quina_resultado_num.num_18;
      quina_frequencia_ciclo[19] := reg_quina_resultado_num.num_19;
      quina_frequencia_ciclo[20] := reg_quina_resultado_num.num_20;
      quina_frequencia_ciclo[21] := reg_quina_resultado_num.num_21;
      quina_frequencia_ciclo[22] := reg_quina_resultado_num.num_22;
      quina_frequencia_ciclo[23] := reg_quina_resultado_num.num_23;
      quina_frequencia_ciclo[24] := reg_quina_resultado_num.num_24;
      quina_frequencia_ciclo[25] := reg_quina_resultado_num.num_25;
      quina_frequencia_ciclo[26] := reg_quina_resultado_num.num_26;
      quina_frequencia_ciclo[27] := reg_quina_resultado_num.num_27;
      quina_frequencia_ciclo[28] := reg_quina_resultado_num.num_28;
      quina_frequencia_ciclo[29] := reg_quina_resultado_num.num_29;
      quina_frequencia_ciclo[30] := reg_quina_resultado_num.num_30;
      quina_frequencia_ciclo[31] := reg_quina_resultado_num.num_31;
      quina_frequencia_ciclo[32] := reg_quina_resultado_num.num_32;
      quina_frequencia_ciclo[33] := reg_quina_resultado_num.num_33;
      quina_frequencia_ciclo[34] := reg_quina_resultado_num.num_34;
      quina_frequencia_ciclo[35] := reg_quina_resultado_num.num_35;
      quina_frequencia_ciclo[36] := reg_quina_resultado_num.num_36;
      quina_frequencia_ciclo[37] := reg_quina_resultado_num.num_37;
      quina_frequencia_ciclo[38] := reg_quina_resultado_num.num_38;
      quina_frequencia_ciclo[39] := reg_quina_resultado_num.num_39;
      quina_frequencia_ciclo[40] := reg_quina_resultado_num.num_40;
      quina_frequencia_ciclo[41] := reg_quina_resultado_num.num_41;
      quina_frequencia_ciclo[42] := reg_quina_resultado_num.num_42;
      quina_frequencia_ciclo[43] := reg_quina_resultado_num.num_43;
      quina_frequencia_ciclo[44] := reg_quina_resultado_num.num_44;
      quina_frequencia_ciclo[45] := reg_quina_resultado_num.num_45;
      quina_frequencia_ciclo[46] := reg_quina_resultado_num.num_46;
      quina_frequencia_ciclo[47] := reg_quina_resultado_num.num_47;
      quina_frequencia_ciclo[48] := reg_quina_resultado_num.num_48;
      quina_frequencia_ciclo[49] := reg_quina_resultado_num.num_49;
      quina_frequencia_ciclo[50] := reg_quina_resultado_num.num_50;
      quina_frequencia_ciclo[51] := reg_quina_resultado_num.num_51;
      quina_frequencia_ciclo[52] := reg_quina_resultado_num.num_52;
      quina_frequencia_ciclo[53] := reg_quina_resultado_num.num_53;
      quina_frequencia_ciclo[54] := reg_quina_resultado_num.num_54;
      quina_frequencia_ciclo[55] := reg_quina_resultado_num.num_55;
      quina_frequencia_ciclo[56] := reg_quina_resultado_num.num_56;
      quina_frequencia_ciclo[57] := reg_quina_resultado_num.num_57;
      quina_frequencia_ciclo[58] := reg_quina_resultado_num.num_58;
      quina_frequencia_ciclo[59] := reg_quina_resultado_num.num_59;
      quina_frequencia_ciclo[60] := reg_quina_resultado_num.num_60;
      quina_frequencia_ciclo[61] := reg_quina_resultado_num.num_61;
      quina_frequencia_ciclo[62] := reg_quina_resultado_num.num_62;
      quina_frequencia_ciclo[63] := reg_quina_resultado_num.num_63;
      quina_frequencia_ciclo[64] := reg_quina_resultado_num.num_64;
      quina_frequencia_ciclo[65] := reg_quina_resultado_num.num_65;
      quina_frequencia_ciclo[66] := reg_quina_resultado_num.num_66;
      quina_frequencia_ciclo[67] := reg_quina_resultado_num.num_67;
      quina_frequencia_ciclo[68] := reg_quina_resultado_num.num_68;
      quina_frequencia_ciclo[69] := reg_quina_resultado_num.num_69;
      quina_frequencia_ciclo[70] := reg_quina_resultado_num.num_70;
      quina_frequencia_ciclo[71] := reg_quina_resultado_num.num_71;
      quina_frequencia_ciclo[72] := reg_quina_resultado_num.num_72;
      quina_frequencia_ciclo[73] := reg_quina_resultado_num.num_73;
      quina_frequencia_ciclo[74] := reg_quina_resultado_num.num_74;
      quina_frequencia_ciclo[75] := reg_quina_resultado_num.num_75;
      quina_frequencia_ciclo[76] := reg_quina_resultado_num.num_76;
      quina_frequencia_ciclo[77] := reg_quina_resultado_num.num_77;
      quina_frequencia_ciclo[78] := reg_quina_resultado_num.num_78;
      quina_frequencia_ciclo[79] := reg_quina_resultado_num.num_79;
      quina_frequencia_ciclo[80] := reg_quina_resultado_num.num_80;

      -- Se é o primeiro concurso, devemos marcar as bolas que não saiu com o valor -1 pois
      -- senão, irá considera que l
      for uB in 1..80 LOOP
        if quina_resultado_num_frequencia[uB] = 0 then
          quina_resultado_num_frequencia[uB] := -1;
          quina_resultado_num_frequencia_total[uB] := -1;
        END IF;
      END LOOP;
      continue;

    END IF;
    
      quina_resultado_num_atual[1] := reg_quina_resultado_num.num_1;
      quina_resultado_num_atual[2] := reg_quina_resultado_num.num_2;
      quina_resultado_num_atual[3] := reg_quina_resultado_num.num_3;
      quina_resultado_num_atual[4] := reg_quina_resultado_num.num_4;
      quina_resultado_num_atual[5] := reg_quina_resultado_num.num_5;
      quina_resultado_num_atual[6] := reg_quina_resultado_num.num_6;
      quina_resultado_num_atual[7] := reg_quina_resultado_num.num_7;
      quina_resultado_num_atual[8] := reg_quina_resultado_num.num_8;
      quina_resultado_num_atual[9] := reg_quina_resultado_num.num_9;
      quina_resultado_num_atual[10] := reg_quina_resultado_num.num_10;
      quina_resultado_num_atual[11] := reg_quina_resultado_num.num_11;
      quina_resultado_num_atual[12] := reg_quina_resultado_num.num_12;
      quina_resultado_num_atual[13] := reg_quina_resultado_num.num_13;
      quina_resultado_num_atual[14] := reg_quina_resultado_num.num_14;
      quina_resultado_num_atual[15] := reg_quina_resultado_num.num_15;
      quina_resultado_num_atual[16] := reg_quina_resultado_num.num_16;
      quina_resultado_num_atual[17] := reg_quina_resultado_num.num_17;
      quina_resultado_num_atual[18] := reg_quina_resultado_num.num_18;
      quina_resultado_num_atual[19] := reg_quina_resultado_num.num_19;
      quina_resultado_num_atual[20] := reg_quina_resultado_num.num_20;
      quina_resultado_num_atual[21] := reg_quina_resultado_num.num_21;
      quina_resultado_num_atual[22] := reg_quina_resultado_num.num_22;
      quina_resultado_num_atual[23] := reg_quina_resultado_num.num_23;
      quina_resultado_num_atual[24] := reg_quina_resultado_num.num_24;
      quina_resultado_num_atual[25] := reg_quina_resultado_num.num_25;
      quina_resultado_num_atual[26] := reg_quina_resultado_num.num_26;
      quina_resultado_num_atual[27] := reg_quina_resultado_num.num_27;
      quina_resultado_num_atual[28] := reg_quina_resultado_num.num_28;
      quina_resultado_num_atual[29] := reg_quina_resultado_num.num_29;
      quina_resultado_num_atual[30] := reg_quina_resultado_num.num_30;
      quina_resultado_num_atual[31] := reg_quina_resultado_num.num_31;
      quina_resultado_num_atual[32] := reg_quina_resultado_num.num_32;
      quina_resultado_num_atual[33] := reg_quina_resultado_num.num_33;
      quina_resultado_num_atual[34] := reg_quina_resultado_num.num_34;
      quina_resultado_num_atual[35] := reg_quina_resultado_num.num_35;
      quina_resultado_num_atual[36] := reg_quina_resultado_num.num_36;
      quina_resultado_num_atual[37] := reg_quina_resultado_num.num_37;
      quina_resultado_num_atual[38] := reg_quina_resultado_num.num_38;
      quina_resultado_num_atual[39] := reg_quina_resultado_num.num_39;
      quina_resultado_num_atual[40] := reg_quina_resultado_num.num_40;
      quina_resultado_num_atual[41] := reg_quina_resultado_num.num_41;
      quina_resultado_num_atual[42] := reg_quina_resultado_num.num_42;
      quina_resultado_num_atual[43] := reg_quina_resultado_num.num_43;
      quina_resultado_num_atual[44] := reg_quina_resultado_num.num_44;
      quina_resultado_num_atual[45] := reg_quina_resultado_num.num_45;
      quina_resultado_num_atual[46] := reg_quina_resultado_num.num_46;
      quina_resultado_num_atual[47] := reg_quina_resultado_num.num_47;
      quina_resultado_num_atual[48] := reg_quina_resultado_num.num_48;
      quina_resultado_num_atual[49] := reg_quina_resultado_num.num_49;
      quina_resultado_num_atual[50] := reg_quina_resultado_num.num_50;
      quina_resultado_num_atual[51] := reg_quina_resultado_num.num_51;
      quina_resultado_num_atual[52] := reg_quina_resultado_num.num_52;
      quina_resultado_num_atual[53] := reg_quina_resultado_num.num_53;
      quina_resultado_num_atual[54] := reg_quina_resultado_num.num_54;
      quina_resultado_num_atual[55] := reg_quina_resultado_num.num_55;
      quina_resultado_num_atual[56] := reg_quina_resultado_num.num_56;
      quina_resultado_num_atual[57] := reg_quina_resultado_num.num_57;
      quina_resultado_num_atual[58] := reg_quina_resultado_num.num_58;
      quina_resultado_num_atual[59] := reg_quina_resultado_num.num_59;
      quina_resultado_num_atual[60] := reg_quina_resultado_num.num_60;
      quina_resultado_num_atual[61] := reg_quina_resultado_num.num_61;
      quina_resultado_num_atual[62] := reg_quina_resultado_num.num_62;
      quina_resultado_num_atual[63] := reg_quina_resultado_num.num_63;
      quina_resultado_num_atual[64] := reg_quina_resultado_num.num_64;
      quina_resultado_num_atual[65] := reg_quina_resultado_num.num_65;
      quina_resultado_num_atual[66] := reg_quina_resultado_num.num_66;
      quina_resultado_num_atual[67] := reg_quina_resultado_num.num_67;
      quina_resultado_num_atual[68] := reg_quina_resultado_num.num_68;
      quina_resultado_num_atual[69] := reg_quina_resultado_num.num_69;
      quina_resultado_num_atual[70] := reg_quina_resultado_num.num_70;
      quina_resultado_num_atual[71] := reg_quina_resultado_num.num_71;
      quina_resultado_num_atual[72] := reg_quina_resultado_num.num_72;
      quina_resultado_num_atual[73] := reg_quina_resultado_num.num_73;
      quina_resultado_num_atual[74] := reg_quina_resultado_num.num_74;
      quina_resultado_num_atual[75] := reg_quina_resultado_num.num_75;
      quina_resultado_num_atual[76] := reg_quina_resultado_num.num_76;
      quina_resultado_num_atual[77] := reg_quina_resultado_num.num_77;
      quina_resultado_num_atual[78] := reg_quina_resultado_num.num_78;
      quina_resultado_num_atual[79] := reg_quina_resultado_num.num_79;
      quina_resultado_num_atual[80] := reg_quina_resultado_num.num_80;

    -- Neste loop, iremos contabilizar a quantidade de bolas:
    -- que são novas, repetidas, que deixaram de sair e ainda não saíram
    -- Também, será identificadas quais são as bolas novas, repetidas, que deixaram de sair, que ainda não saíram
    -- em cada concurso.
    -- Será preenchida a tabela ltk_quina.quina_resultado_num_frequencia, desta forma:
    -- Se a bola saiu no concurso atual e não saiu no concurso anterior, ela terá no campo corresponde a mesma,
    -- o valor 1.
    -- Se a bola saiu no concurso atual e também saiu no concurso anterior, o valor do campo no concurso atual
    -- será igual ao valor do mesmo campo do concurso anterior, acrescentado pelo valor 1.
    -- Se a bola não saiu no concurso atual, e também não saiu no concurso anterior, ela terá no campo
    -- do concurso atual, o valor do campo correspondente acrescido do valor -1.

    
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

    uA := 1;
    WHILE uA <= 80 LOOP

      -- Bola não foi sorteado no concurso atual.
      IF quina_resultado_num_atual [uA] = 1
      THEN
        CASE
          -- Frequência negativa quer dizer que a bola não vinha saíndo desde o último concurso
          -- Então, devemos começar com o valor 1.
          WHEN sign(quina_resultado_num_frequencia [uA]) = -1
          THEN
            quina_resultado_num_frequencia [uA] := 1;

          -- Se a frequencia anterior tem o valor zero, quer dizer, que é a primeira vez que estamos
          -- analisando, então iremos definir o valor da frequencia do concurso atual pra o valor 1.
          WHEN sign(quina_resultado_num_frequencia [uA]) = 0
          THEN
            quina_resultado_num_frequencia [uA] := 1;

          -- Se a frequencia anterior tem um valor positivo, quer dizer, que a bola está se repetindo
          -- desde o último concurso.
          WHEN sign(quina_resultado_num_frequencia [uA]) = 1
          THEN
            quina_resultado_num_frequencia [uA] := quina_resultado_num_frequencia [uA] + 1;
        END CASE;
      ELSE
        IF quina_resultado_num_atual [uA] = 0
        THEN
          CASE
          -- Frequência negativa quer dizer que a bola não vinha saíndo desde o último concurso
          -- Então, devemos começar com o valor 1.
            WHEN sign(quina_resultado_num_frequencia [uA]) = -1
            THEN
              quina_resultado_num_frequencia [uA] := quina_resultado_num_frequencia [uA] - 1;

          -- Se a frequencia anterior tem o valor zero, quer dizer, que é a primeira vez que estamos
          -- analisando, então iremos definir o valor da frequencia do concurso atual pra o valor 1.
            WHEN sign(quina_resultado_num_frequencia [uA]) = 0
            THEN
              quina_resultado_num_frequencia [uA] := -1;

            -- Se a frequencia anterior tem um valor positivo, quer dizer, que a bola está se repetindo
            -- desde o último concurso.
            WHEN sign(quina_resultado_num_frequencia [uA]) = 1
            THEN
              quina_resultado_num_frequencia [uA] := -1;
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

      IF quina_resultado_num_frequencia [ua] < -1
      THEN
        qt_ainda_nao_saiu := qt_ainda_nao_saiu + 1;

        -- Aqui, iremos, construir o sql para o insert.
        sql_ainda_nao_saiu_num := sql_ainda_nao_saiu_num || ', num_' || uA;
        sql_ainda_nao_saiu_bolas := sql_ainda_nao_saiu_bolas || ', ' || uA;

        -- Se a frequência tem o valor -1, quer dizer, que o número estava
        -- saindo nos concursos anterior ou concurso anterior e deixou de sair.
      ELSIF quina_resultado_num_frequencia [uA] = -1
        THEN

          qt_deixou_de_sair := qt_deixou_de_sair + 1;

          sql_deixou_de_sair_num := sql_deixou_de_sair_num || ', num_' || uA;
          sql_deixou_de_sair_bolas := sql_deixou_de_sair_bolas || ', ' || uA;

      -- Se a frequência tem o valor de 1, quer dizer, que o número não saiu
      -- no último concurso, então é novo.
      ELSIF quina_resultado_num_frequencia [uA] = 1
        THEN

          qt_novos := qt_novos + 1;

          sql_novos_num := sql_novos_num || ', num_' || uA;
          sql_novos_bolas := sql_novos_bolas || ', ' || uA;

      -- Se a frequência tem o valor maior que 1, quer dizer, que o número
      -- está se repetindo.
      ELSIF quina_resultado_num_frequencia [uA] > 1
        THEN

          qt_repetidos := qt_repetidos + 1;

          sql_repetidos_num := sql_repetidos_num || ', num_' || uA;
          sql_repetidos_bolas := sql_repetidos_bolas || ', ' || uA;

      END IF;

      -- Soma a frequencia atual, com a soma total de todas as frequências já
      -- encontradas.
      quina_resultado_num_frequencia_total[uA] := quina_resultado_num_frequencia_total [uA] +
                                                      quina_resultado_num_frequencia[uA];


      /**
        Insere 1 registro por bola, nas tabelas quina_resultado_bolas_frequencia e
        quina_resultado_bolas_frequencia_total
       */
      Insert Into ltk_quina.quina_resultado_bolas_frequencia(concurso, bola, frequencia) VALUES
        (reg_quina_resultado_num.concurso, uA, quina_resultado_num_frequencia[uA]);

      Insert Into ltk_quina.quina_resultado_bolas_frequencia_total(concurso, bola, frequencia) VALUES
        (reg_quina_resultado_num.concurso, uA, quina_resultado_num_frequencia_total[uA]);

      /**
        Verificar ciclos, se todas as bolas do concurso atual, não se repetiram, iremos
        ir pra o próximo ciclo
       */


      if renovar_ciclo = false then
        -- Vamos verificas se a bola é nova, se sim, vamos verifica se esta bola já saiu nos concursos
        -- anteriores até o ciclo 1.
        if quina_resultado_num_frequencia[uA] >= 1 then
          -- Se a bola já saiu, indica que o ciclo acabou.
          if quina_frequencia_ciclo[uA] = 1 then
            renovar_ciclo := true;
          else
            -- Se a bola ainda não saiu, armazenar a mesma no arranjo de frequencia de ciclo.
            quina_frequencia_ciclo[uA] := 1;
          end if;
        else
          -- Se a bola ainda não saiu e não está no arranjo de ciclo, armazenar na tabela de frequencia
          -- de ciclo.
          if quina_frequencia_ciclo[uA] = 0 then
            if sql_insert_ciclo <> '' then
              sql_insert_ciclo := sql_insert_ciclo || ', ';
            END IF;
            sql_insert_ciclo := sql_insert_ciclo || '(' || reg_quina_resultado_num.concurso || ', ' ||
            qt_ciclos || ', ' || uA || ', ' || quina_resultado_num_frequencia[uA] || ')';

          END IF;
        end if;
      end if;

      -- Incrementa a variável
      uA := uA + 1;
    END LOOP;

    -- Se indicou pra renovar o ciclo devemos armazenar todas as 80 bolas,
    -- indicando que todas as bolas faltam.
    if renovar_ciclo = true then
      renovar_ciclo := false;
      qt_ciclos := 1;
      sql_insert_ciclo := '';

      for uA in 1..80 loop
        -- Aqui, é um novo ciclo, então, já devemos armazenar o ciclo da nova frequência.
        -- Ou seja, devemos atribuir 1 pra bola que saiu, 0, caso contrário.
        if quina_resultado_num_frequencia[uA] >= 1 then
          quina_frequencia_ciclo[uA] := 1;
        else
            quina_frequencia_ciclo[uA] := 0;
            if sql_insert_ciclo <> '' then
              sql_insert_ciclo := sql_insert_ciclo || ', ';
            END IF;
            sql_insert_ciclo := sql_insert_ciclo || '(' || reg_quina_resultado_num.concurso || ', ' ||
            qt_ciclos || ', ' || uA || ', ' || quina_resultado_num_frequencia[uA] || ')';
        end if;
      END LOOP;
    end if;

    Raise Notice 'sql_insert_ciclo : %', sql_insert_ciclo;
    sql_insert_ciclo := 'Insert into ltk_quina.quina_frequencia_ciclo (concurso, ciclo, bola, nao_sai_a) values ' ||
      sql_insert_ciclo;
    Execute sql_insert_ciclo;
    sql_insert_ciclo := '';

    qt_ciclos := qt_ciclos + 1;
    if qt_ciclos > 16 then
      qt_ciclos := 1;
    END IF;

    -- A tabela quina_resultado_num_frequencia tem a frequencia baseada nos últimos concursos.
    -- A outra tabela, quina_resultado_num_frequencia_total, tem a soma de cada frequencia de
    -- cada concurso.
    -- Nesta tabela fica fácil detectar, qual é a bola que mais sai e a que menos sai.


    INSERT INTO ltk_quina.quina_resultado_num_frequencia (
      concurso, num_1,  num_2,  num_3,  num_4,  num_5,  num_6,  num_7,  num_8,  num_9, num_10,
                num_11, num_12, num_13, num_14, num_15, num_16, num_17, num_18, num_19, num_20,
                num_21, num_22, num_23, num_24, num_25, num_26, num_27, num_28, num_29, num_30,
                num_31, num_32, num_33, num_34, num_35, num_36, num_37, num_38, num_39, num_40,
                num_41, num_42, num_43, num_44, num_45, num_46, num_47, num_48, num_49, num_50,
                num_51, num_52, num_53, num_54, num_55, num_56, num_57, num_58, num_59, num_60,
                num_61, num_62, num_63, num_64, num_65, num_66, num_67, num_68, num_69, num_70,
                num_71, num_72, num_73, num_74, num_75, num_76, num_77, num_78, num_79, num_80)
    VALUES (reg_quina_resultado_num.concurso,
      quina_resultado_num_frequencia[1],
      quina_resultado_num_frequencia[2],
      quina_resultado_num_frequencia[3],
      quina_resultado_num_frequencia[4],
      quina_resultado_num_frequencia[5],
      quina_resultado_num_frequencia[6],
      quina_resultado_num_frequencia[7],
      quina_resultado_num_frequencia[8],
      quina_resultado_num_frequencia[9],
      quina_resultado_num_frequencia[10],
      quina_resultado_num_frequencia[11],
      quina_resultado_num_frequencia[12],
      quina_resultado_num_frequencia[13],
      quina_resultado_num_frequencia[14],
      quina_resultado_num_frequencia[15],
      quina_resultado_num_frequencia[16],
      quina_resultado_num_frequencia[17],
      quina_resultado_num_frequencia[18],
      quina_resultado_num_frequencia[19],
      quina_resultado_num_frequencia[20],
      quina_resultado_num_frequencia[21],
      quina_resultado_num_frequencia[22],
      quina_resultado_num_frequencia[23],
      quina_resultado_num_frequencia[24],
      quina_resultado_num_frequencia[25],
      quina_resultado_num_frequencia[26],
      quina_resultado_num_frequencia[27],
      quina_resultado_num_frequencia[28],
      quina_resultado_num_frequencia[29],
      quina_resultado_num_frequencia[30],
      quina_resultado_num_frequencia[31],
      quina_resultado_num_frequencia[32],
      quina_resultado_num_frequencia[33],
      quina_resultado_num_frequencia[34],
      quina_resultado_num_frequencia[35],
      quina_resultado_num_frequencia[36],
      quina_resultado_num_frequencia[37],
      quina_resultado_num_frequencia[38],
      quina_resultado_num_frequencia[39],
      quina_resultado_num_frequencia[40],
      quina_resultado_num_frequencia[41],
      quina_resultado_num_frequencia[42],
      quina_resultado_num_frequencia[43],
      quina_resultado_num_frequencia[44],
      quina_resultado_num_frequencia[45],
      quina_resultado_num_frequencia[46],
      quina_resultado_num_frequencia[47],
      quina_resultado_num_frequencia[48],
      quina_resultado_num_frequencia[49],
      quina_resultado_num_frequencia[50],
      quina_resultado_num_frequencia[51],
      quina_resultado_num_frequencia[52],
      quina_resultado_num_frequencia[53],
      quina_resultado_num_frequencia[54],
      quina_resultado_num_frequencia[55],
      quina_resultado_num_frequencia[56],
      quina_resultado_num_frequencia[57],
      quina_resultado_num_frequencia[58],
      quina_resultado_num_frequencia[59],
      quina_resultado_num_frequencia[60],
      quina_resultado_num_frequencia[61],
      quina_resultado_num_frequencia[62],
      quina_resultado_num_frequencia[63],
      quina_resultado_num_frequencia[64],
      quina_resultado_num_frequencia[65],
      quina_resultado_num_frequencia[66],
      quina_resultado_num_frequencia[67],
      quina_resultado_num_frequencia[68],
      quina_resultado_num_frequencia[69],
      quina_resultado_num_frequencia[70],
      quina_resultado_num_frequencia[71],
      quina_resultado_num_frequencia[72],
      quina_resultado_num_frequencia[73],
      quina_resultado_num_frequencia[74],
      quina_resultado_num_frequencia[75],
      quina_resultado_num_frequencia[76],
      quina_resultado_num_frequencia[77],
      quina_resultado_num_frequencia[78],
      quina_resultado_num_frequencia[79],
      quina_resultado_num_frequencia[80]);

    INSERT INTO ltk_quina.quina_resultado_num_frequencia_total (
      concurso, num_1,  num_2,  num_3,  num_4,  num_5,  num_6,  num_7,  num_8,  num_9, num_10,
                num_11, num_12, num_13, num_14, num_15, num_16, num_17, num_18, num_19, num_20,
                num_21, num_22, num_23, num_24, num_25, num_26, num_27, num_28, num_29, num_30,
                num_31, num_32, num_33, num_34, num_35, num_36, num_37, num_38, num_39, num_40,
                num_41, num_42, num_43, num_44, num_45, num_46, num_47, num_48, num_49, num_50,
                num_51, num_52, num_53, num_54, num_55, num_56, num_57, num_58, num_59, num_60,
                num_61, num_62, num_63, num_64, num_65, num_66, num_67, num_68, num_69, num_70,
                num_71, num_72, num_73, num_74, num_75, num_76, num_77, num_78, num_79, num_80)
    VALUES (
      reg_quina_resultado_num.concurso,
      quina_resultado_num_frequencia_total[1],
      quina_resultado_num_frequencia_total[2],
      quina_resultado_num_frequencia_total[3],
      quina_resultado_num_frequencia_total[4],
      quina_resultado_num_frequencia_total[5],
      quina_resultado_num_frequencia_total[6],
      quina_resultado_num_frequencia_total[7],
      quina_resultado_num_frequencia_total[8],
      quina_resultado_num_frequencia_total[9],
      quina_resultado_num_frequencia_total[10],
      quina_resultado_num_frequencia_total[11],
      quina_resultado_num_frequencia_total[12],
      quina_resultado_num_frequencia_total[13],
      quina_resultado_num_frequencia_total[14],
      quina_resultado_num_frequencia_total[15],
      quina_resultado_num_frequencia_total[16],
      quina_resultado_num_frequencia_total[17],
      quina_resultado_num_frequencia_total[18],
      quina_resultado_num_frequencia_total[19],
      quina_resultado_num_frequencia_total[20],
      quina_resultado_num_frequencia_total[21],
      quina_resultado_num_frequencia_total[22],
      quina_resultado_num_frequencia_total[23],
      quina_resultado_num_frequencia_total[24],
      quina_resultado_num_frequencia_total[25],
      quina_resultado_num_frequencia_total[26],
      quina_resultado_num_frequencia_total[27],
      quina_resultado_num_frequencia_total[28],
      quina_resultado_num_frequencia_total[29],
      quina_resultado_num_frequencia_total[30],
      quina_resultado_num_frequencia_total[31],
      quina_resultado_num_frequencia_total[32],
      quina_resultado_num_frequencia_total[33],
      quina_resultado_num_frequencia_total[34],
      quina_resultado_num_frequencia_total[35],
      quina_resultado_num_frequencia_total[36],
      quina_resultado_num_frequencia_total[37],
      quina_resultado_num_frequencia_total[38],
      quina_resultado_num_frequencia_total[39],
      quina_resultado_num_frequencia_total[40],
      quina_resultado_num_frequencia_total[41],
      quina_resultado_num_frequencia_total[42],
      quina_resultado_num_frequencia_total[43],
      quina_resultado_num_frequencia_total[44],
      quina_resultado_num_frequencia_total[45],
      quina_resultado_num_frequencia_total[46],
      quina_resultado_num_frequencia_total[47],
      quina_resultado_num_frequencia_total[48],
      quina_resultado_num_frequencia_total[49],
      quina_resultado_num_frequencia_total[50],
      quina_resultado_num_frequencia_total[51],
      quina_resultado_num_frequencia_total[52],
      quina_resultado_num_frequencia_total[53],
      quina_resultado_num_frequencia_total[54],
      quina_resultado_num_frequencia_total[55],
      quina_resultado_num_frequencia_total[56],
      quina_resultado_num_frequencia_total[57],
      quina_resultado_num_frequencia_total[58],
      quina_resultado_num_frequencia_total[59],
      quina_resultado_num_frequencia_total[60],
      quina_resultado_num_frequencia_total[61],
      quina_resultado_num_frequencia_total[62],
      quina_resultado_num_frequencia_total[63],
      quina_resultado_num_frequencia_total[64],
      quina_resultado_num_frequencia_total[65],
      quina_resultado_num_frequencia_total[66],
      quina_resultado_num_frequencia_total[67],
      quina_resultado_num_frequencia_total[68],
      quina_resultado_num_frequencia_total[69],
      quina_resultado_num_frequencia_total[70],
      quina_resultado_num_frequencia_total[71],
      quina_resultado_num_frequencia_total[72],
      quina_resultado_num_frequencia_total[73],
      quina_resultado_num_frequencia_total[74],
      quina_resultado_num_frequencia_total[75],
      quina_resultado_num_frequencia_total[76],
      quina_resultado_num_frequencia_total[77],
      quina_resultado_num_frequencia_total[78],
      quina_resultado_num_frequencia_total[79],
      quina_resultado_num_frequencia_total[80]);

    continue;


    Raise Notice 'qt_novos: %, qt_repetidos: %, qt_ainda_nao_saiu: %, qt_deixou_de_sair: %',
      qt_novos, qt_repetidos, qt_ainda_nao_saiu, qt_deixou_de_sair;

    if qt_novos > 10 and reg_quina_resultado_num.concurso <> 1 THEN
      Raise EXCEPTION 'Erro, quina %, qt de novos: %, a quantidade máxima de ítens novos é 10:',
        reg_quina_resultado_num.concurso, qt_novos;
    END IF;

    if (reg_quina_resultado_num.concurso <> 1) and (qt_repetidos < 5 or qt_repetidos > 15) then
      Raise Exception 'Na quina, a quantidade mínima de ítens repetidos é 5, e a quantidade máxima é 15,'
    'foi informado %', qt_repetidos;
    END IF;

    /*
    if (reg_quina_resultado_num.concurso <> 1) and (qt_novos <> qt_deixou_de_sair) then
      Raise Exception 'Na quina de 15 números, sempre a quantidade de novos é igual à quantidade de números '
        'que deixaram de sair, erro, quantidade de novos diferentes de quantidade de números que deixou de sair.';
    END IF;
    */

    Raise Notice 'Concurso: %, qtNovos: %, qtRepetidos: %, qtAindaNaoSaiu %', reg_quina_resultado_num.concurso,
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

    sql_novos_bolas :=  'Insert into ltk_quina.quina_resultado_novos_bolas (concurso, qt_novos ' ||
                        sql_bolas_coluna || ') values (' || reg_quina_resultado_num.concurso ||
                        ', ' || qt_novos || sql_novos_bolas || ')';

    sql_novos_num := 'Insert into ltk_quina.quina_resultado_novos_num (concurso, qt_novos ' ||
                      sql_novos_num || ') values (' || reg_quina_resultado_num.concurso ||
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

    sql_repetidos_bolas :=  'Insert into ltk_quina.quina_resultado_repetidos_bolas (concurso, qt_repetidos ' ||
                        sql_bolas_coluna || ') values (' || reg_quina_resultado_num.concurso ||
                        ', ' || qt_repetidos || sql_repetidos_bolas || ')';

    sql_repetidos_num := 'Insert into ltk_quina.quina_resultado_repetidos_num (concurso, qt_repetidos ' ||
                      sql_repetidos_num || ') values (' || reg_quina_resultado_num.concurso ||
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

    sql_ainda_nao_saiu_bolas :=  'Insert into ltk_quina.quina_resultado_ainda_nao_saiu_bolas (concurso, qt_ainda_nao_saiu ' ||
                        sql_bolas_coluna || ') values (' || reg_quina_resultado_num.concurso ||
                        ', ' || qt_ainda_nao_saiu || sql_ainda_nao_saiu_bolas || ')';

    sql_ainda_nao_saiu_num := 'Insert into ltk_quina.quina_resultado_ainda_nao_saiu_num (concurso, qt_ainda_nao_saiu ' ||
                      sql_ainda_nao_saiu_num || ') values (' || reg_quina_resultado_num.concurso ||
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

    sql_deixou_de_sair_bolas :=  'Insert into ltk_quina.quina_resultado_deixou_de_sair_bolas (concurso, qt_deixou_de_sair ' ||
                        sql_bolas_coluna || ') values (' || reg_quina_resultado_num.concurso ||
                        ', ' || qt_deixou_de_sair || sql_deixou_de_sair_bolas || ')';

    sql_deixou_de_sair_num := 'Insert into ltk_quina.quina_resultado_deixou_de_sair_num (concurso, qt_deixou_de_sair ' ||
                      sql_deixou_de_sair_num || ') values (' || reg_quina_resultado_num.concurso ||
                        ', ' || qt_deixou_de_sair || sql_num_valor_1 || ')';


    Raise Notice '%', sql_deixou_de_sair_num;
    execute sql_deixou_de_sair_bolas;
    execute sql_deixou_de_sair_num;
  END LOOP;
END $$;

/**
  Cria a tabela quina_num_bolas_frequencia_concurso.
  O objetivo desta tabela é ter um total da frequência de todas as bolas de cada combinação
  da quina.
 */
drop table if exists ltk_quina.quina_num_bolas_concurso_frequencia;
create table ltk_quina.quina_num_bolas_concurso_frequencia(
  quina_id numeric not null,
  quina_qt numeric not null,
  concurso numeric default null,
  concurso_soma_frequencia_bolas numeric default 0,

  CONSTRAINT quina_num_bolas_concurso_frequencia_fk FOREIGN KEY (quina_id) REFERENCES
    ltk_quina.quina_bolas(quina_id) on update cascade on delete cascade
);

drop function if exists ltk_quina.fn_atualizar_quina_num_bolas_concurso_frequencia(numeric);

create function ltk_quina.fn_atualizar_quina_num_bolas_concurso_frequencia(concurso_atualizar numeric)
  returns void
  language plpgsql
  as $$
  BEGIN
    Raise Notice 'Truncating quina_num_bolas_concurso';
    Truncate ltk_quina.quina_num_bolas_concurso_frequencia;

    Insert into ltk_quina.quina_num_bolas_concurso_frequencia(quina_id, quina_qt, concurso, concurso_soma_frequencia_bolas)
      Select
        quina_id,
        quina_qt,
        concurso,
        sum(frequencia)
      from (
        Select
          quina_id,
          quina_qt,
          concurso_atualizar as concurso,
          quina_bolas.bola,
          frequencia
        from
          ltk_quina.quina_num_bolas quina_bolas,
          ltk_quina.v_quina_resultado_bolas_frequencia quina_freq
      where quina_bolas.bola = quina_freq.bola
      order by quina_id) quina_agrupado
    group by quina_id, quina_qt, concurso
    order by sum(frequencia);

  END;
  $$;


