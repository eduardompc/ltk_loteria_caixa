/**
  Sql pra criar os sql pra capturar os resultados do site da lotofacil.
 */
/**

  Importa resultados do site da lotofacil
 */
drop table if exists lotofacil.lotofacil_resultado_importacao;
create table lotofacil.lotofacil_resultado_importacao(
  concurso numeric not null,
  data date,
  b_1       NUMERIC DEFAULT NULL,
  b_2       NUMERIC DEFAULT NULL,
  b_3       NUMERIC DEFAULT NULL,
  b_4       NUMERIC DEFAULT NULL,
  b_5       NUMERIC DEFAULT NULL,
  b_6       NUMERIC DEFAULT NULL,
  b_7       NUMERIC DEFAULT NULL,
  b_8       NUMERIC DEFAULT NULL,
  b_9       NUMERIC DEFAULT NULL,
  b_10      NUMERIC DEFAULT NULL,
  b_11      NUMERIC DEFAULT NULL,
  b_12      NUMERIC DEFAULT NULL,
  b_13      NUMERIC DEFAULT NULL,
  b_14      NUMERIC DEFAULT NULL,
  b_15      NUMERIC DEFAULT NULL,
  arrecadacao_total decimal default 0,
  g_15_numeros numeric default 0,
  g_14_numeros numeric default 0,
  g_13_numeros numeric default 0,
  g_12_numeros numeric default 0,
  g_11_numeros numeric default 0,
  rateio_15_numeros decimal default 0,
  rateio_14_numeros decimal default 0,
  rateio_13_numeros decimal default 0,
  rateio_12_numeros decimal default 0,
  rateio_11_numeros decimal default 0,
  acumulado_15_numeros decimal default 0,
  estimativa_premio decimal default 0,
  valor_acum_especial decimal default 0,

  constraint lotofacil_resultado_importacao_pk PRIMARY KEY (concurso),
  constraint lotofacil_resultado_importacao_check CHECK (
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
    (b_14 < b_15))
);

/**
  Esta view indica quais registros estão inseridos no banco e quais precisam
  ser inseridos, com tais dados, fica fácil atualizar nosso tabela no futuro.
  E além disto, indica quais registros no banco estão com dados incorretos.
 */
drop view if exists lotofacil.v_lotofacil_resultado_importacao;
create view lotofacil.v_lotofacil_resultado_importacao AS
  Select
    case when ltf_bolas.concurso is null THEN
      'NOVO'
    ELSE
      'JA_INSERIDO'
    END as STATUS,

    case when (ltf_bolas_2.concurso is null) AND (ltf_bolas.concurso is null) THEN
      'AINDA_NAO_INSERIDO'
    when (ltf_bolas_2.concurso is null) and not (ltf_bolas.concurso is null) then
      'PRECISA_ATUALIZAR'
    ELSE
      'DADOS_CORRETOS'
    END AS STATUS_JA_INSERIDO,


    ltf_importado.* FROM
    (Select * from lotofacil.lotofacil_resultado_importacao) ltf_importado
      left join
    (Select concurso from lotofacil.lotofacil_resultado_bolas) ltf_bolas
      on ltf_importado.concurso = ltf_bolas.concurso
      left join
    (Select * from lotofacil.lotofacil_resultado_bolas) ltf_bolas_2
      on ltf_importado.concurso = ltf_bolas_2.concurso
      and ltf_importado.b_1 = ltf_bolas_2.b_1
      and ltf_importado.b_2 = ltf_bolas_2.b_2
      and ltf_importado.b_3 = ltf_bolas_2.b_3
      and ltf_importado.b_4 = ltf_bolas_2.b_4
      and ltf_importado.b_5 = ltf_bolas_2.b_5
      and ltf_importado.b_6 = ltf_bolas_2.b_6
      and ltf_importado.b_7 = ltf_bolas_2.b_7
      and ltf_importado.b_8 = ltf_bolas_2.b_8
      and ltf_importado.b_9 = ltf_bolas_2.b_9
      and ltf_importado.b_10 = ltf_bolas_2.b_10
      and ltf_importado.b_11 = ltf_bolas_2.b_11
      and ltf_importado.b_12 = ltf_bolas_2.b_12
      and ltf_importado.b_13 = ltf_bolas_2.b_13
      and ltf_importado.b_14 = ltf_bolas_2.b_14
      and ltf_importado.b_15 = ltf_bolas_2.b_15
    /*
  UNION
    Select
      case when ltf_importado.concurso is null THEN
        'AINDA_NAO_DISP_NO_ZIP'
      ELSE
        'JA_INSERIDO'
      END as STATUS,
      case when (ltf_bolas.concurso is not null) and
                (ltf_importado.concurso is null) THEN
        'AGUARDANDO_ZIP'
      ELSE
        'PRECISA_ATUALIZAR'
      END as STATUS_JA_INSERIDO,
      ltf_bolas.concurso,
      ltf_bolas.data,
      ltf_bolas.b_1, ltf_bolas.b_2, ltf_bolas.b_3, ltf_bolas.b_4, ltf_bolas.b_5,
      ltf_bolas.b_6, ltf_bolas.b_7, ltf_bolas.b_8, ltf_bolas.b_9, ltf_bolas.b_10,
      ltf_bolas.b_11, ltf_bolas.b_12, ltf_bolas.b_13, ltf_bolas.b_14, ltf_bolas.b_15,
      ltf_importado.arrecadacao_total,
      ltf_importado.g_15_numeros,
      ltf_importado.g_14_numeros,
      ltf_importado.g_13_numeros,
      ltf_importado.g_12_numeros,
      ltf_importado.g_11_numeros,
      ltf_importado.rateio_15_numeros,
      ltf_importado.rateio_14_numeros,
      ltf_importado.rateio_13_numeros,
      ltf_importado.rateio_12_numeros,
      ltf_importado.rateio_11_numeros,
      ltf_importado.acumulado_15_numeros,
      ltf_importado.estimativa_premio,
      ltf_importado.valor_acum_especial

    from
      (Select * from lotofacil.lotofacil_resultado_bolas) ltf_bolas
    left JOIN
      (Select concurso from lotofacil.lotofacil_resultado_importacao) ltf_importado
      on ltf_bolas.concurso = ltf_importado.concurso
*/

order by ltf_importado.concurso desc;


