
/**
  Inserir depois disto.
 */

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
DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_num_frequencia;
CREATE TABLE lotofacil.lotofacil_resultado_num_frequencia (
  concurso NUMERIC NOT NULL,

  num_1    NUMERIC DEFAULT 0,
  num_2    NUMERIC DEFAULT 0,
  num_3    NUMERIC DEFAULT 0,
  num_4    NUMERIC DEFAULT 0,
  num_5    NUMERIC DEFAULT 0,
  num_6    NUMERIC DEFAULT 0,
  num_7    NUMERIC DEFAULT 0,
  num_8    NUMERIC DEFAULT 0,
  num_9    NUMERIC DEFAULT 0,
  num_10   NUMERIC DEFAULT 0,
  num_11   NUMERIC DEFAULT 0,
  num_12   NUMERIC DEFAULT 0,
  num_13   NUMERIC DEFAULT 0,
  num_14   NUMERIC DEFAULT 0,
  num_15   NUMERIC DEFAULT 0,
  num_16   NUMERIC DEFAULT 0,
  num_17   NUMERIC DEFAULT 0,
  num_18   NUMERIC DEFAULT 0,
  num_19   NUMERIC DEFAULT 0,
  num_20   NUMERIC DEFAULT 0,
  num_21   NUMERIC DEFAULT 0,
  num_22   NUMERIC DEFAULT 0,
  num_23   NUMERIC DEFAULT 0,
  num_24   NUMERIC DEFAULT 0,
  num_25   NUMERIC DEFAULT 0,

  CONSTRAINT lotofacil_resultado_num_frequencia_pk PRIMARY KEY (concurso),

  CONSTRAINT lotofacil_resultado_num_frequencia_fk FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num (concurso)
  ON UPDATE CASCADE ON DELETE CASCADE
);
COMMENT ON CONSTRAINT lotofacil_resultado_num_frequencia_fk
ON lotofacil.lotofacil_resultado_num_frequencia IS
'A tabela está com as clausulas on update cascade on delete cascade, pois, se for deletado '
'algum registro da tabela lotofacil_resultado_num automaticamente, este será deletado.';

/**
  Na tabela lotofacil_resultado_num_frequencia acima, a cada concurso sorteado,
  comparando o concurso atual com o concurso anterior, e verificamos quais bolas são
  novas, se repetem, deixou de sair ou ainda não saiu. Então pra cada campo, definirmos
  um valor negativo, que pode ser -1 ou menor que -1, ou positivo.
  A diferença da tabela abaixo, é que soma todos os valores de cada campo, pra termos
  uma frequência desde o primeiro concurso.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_num_frequencia_total;
CREATE TABLE lotofacil.lotofacil_resultado_num_frequencia_total (

  concurso NUMERIC NOT NULL,

  num_1    NUMERIC DEFAULT 0,
  num_2    NUMERIC DEFAULT 0,
  num_3    NUMERIC DEFAULT 0,
  num_4    NUMERIC DEFAULT 0,
  num_5    NUMERIC DEFAULT 0,
  num_6    NUMERIC DEFAULT 0,
  num_7    NUMERIC DEFAULT 0,
  num_8    NUMERIC DEFAULT 0,
  num_9    NUMERIC DEFAULT 0,
  num_10   NUMERIC DEFAULT 0,
  num_11   NUMERIC DEFAULT 0,
  num_12   NUMERIC DEFAULT 0,
  num_13   NUMERIC DEFAULT 0,
  num_14   NUMERIC DEFAULT 0,
  num_15   NUMERIC DEFAULT 0,
  num_16   NUMERIC DEFAULT 0,
  num_17   NUMERIC DEFAULT 0,
  num_18   NUMERIC DEFAULT 0,
  num_19   NUMERIC DEFAULT 0,
  num_20   NUMERIC DEFAULT 0,
  num_21   NUMERIC DEFAULT 0,
  num_22   NUMERIC DEFAULT 0,
  num_23   NUMERIC DEFAULT 0,
  num_24   NUMERIC DEFAULT 0,
  num_25   NUMERIC DEFAULT 0,

  CONSTRAINT lotofacil_resultado_num_frequencia_total_pk PRIMARY KEY (concurso),

  CONSTRAINT lotofacil_resultado_num_frequencia_total_fk FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num (concurso)
  ON UPDATE CASCADE ON DELETE CASCADE
);
COMMENT ON CONSTRAINT lotofacil_resultado_num_frequencia_total_fk
ON lotofacil.lotofacil_resultado_num_frequencia_total IS
'A tabela está com as clausulas on update cascade on delete cascade, pois, se for deletado '
'algum registro da tabela lotofacil_resultado_num automaticamente, este será deletado.';

/**
  Toda vez que o número é sorteado na lotofacil, o valor é incrementado, senão é decrementado,
  assim, fica fácil identificar, quais bolas, estão saindo mais.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_num_sobe_desce;
CREATE TABLE lotofacil.lotofacil_resultado_num_sobe_desce (
  concurso NUMERIC NOT NULL,

  num_1    NUMERIC DEFAULT 0,
  num_2    NUMERIC DEFAULT 0,
  num_3    NUMERIC DEFAULT 0,
  num_4    NUMERIC DEFAULT 0,
  num_5    NUMERIC DEFAULT 0,
  num_6    NUMERIC DEFAULT 0,
  num_7    NUMERIC DEFAULT 0,
  num_8    NUMERIC DEFAULT 0,
  num_9    NUMERIC DEFAULT 0,
  num_10   NUMERIC DEFAULT 0,
  num_11   NUMERIC DEFAULT 0,
  num_12   NUMERIC DEFAULT 0,
  num_13   NUMERIC DEFAULT 0,
  num_14   NUMERIC DEFAULT 0,
  num_15   NUMERIC DEFAULT 0,
  num_16   NUMERIC DEFAULT 0,
  num_17   NUMERIC DEFAULT 0,
  num_18   NUMERIC DEFAULT 0,
  num_19   NUMERIC DEFAULT 0,
  num_20   NUMERIC DEFAULT 0,
  num_21   NUMERIC DEFAULT 0,
  num_22   NUMERIC DEFAULT 0,
  num_23   NUMERIC DEFAULT 0,
  num_24   NUMERIC DEFAULT 0,
  num_25   NUMERIC DEFAULT 0,

  CONSTRAINT lotofacil_resultado_num_sobe_desce_pk PRIMARY KEY (concurso),

  CONSTRAINT lotofacil_resultado_num_sobe_desce_fk FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num (concurso)
  ON UPDATE CASCADE ON DELETE CASCADE
);


/**
  Esta tabela é semelhante à tabela lotofacil_resultado_num_frequencia, entretanto
  haverá além do concurso, os campos bola e a frequência
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_bolas_frequencia;
CREATE TABLE lotofacil.lotofacil_resultado_bolas_frequencia (
  concurso   NUMERIC NOT NULL,
  bola       NUMERIC NOT NULL,
  frequencia NUMERIC NOT NULL,
  CONSTRAINT lotofacil_resultado_bolas_frequencia_FK FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num (concurso) ON UPDATE CASCADE ON DELETE CASCADE
);

DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_bolas_frequencia_total;
CREATE TABLE lotofacil.lotofacil_resultado_bolas_frequencia_total (
  concurso   NUMERIC NOT NULL,
  bola       NUMERIC NOT NULL,
  frequencia NUMERIC NOT NULL,
  CONSTRAINT lotofacil_resultado_bolas_frequencia_FK FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num (concurso) ON UPDATE CASCADE ON DELETE CASCADE
);

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_bolas_frequencia;
CREATE VIEW lotofacil.v_lotofacil_resultado_bolas_frequencia AS
  SELECT
    concurso,
    bola,
    CASE
    WHEN frequencia < -1
      THEN
        'ainda_nao_saiu'
    WHEN frequencia = -1
      THEN
        'deixou_de_sair'
    WHEN frequencia = 1
      THEN
        'novo'
    WHEN frequencia > 1
      THEN
        'repetindo'
    END AS frequencia_status,
    frequencia

  FROM lotofacil.lotofacil_resultado_bolas_frequencia
  ORDER BY concurso DESC, frequencia ASC, bola ASC;

DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_bolas_sobe_desce;
CREATE TABLE lotofacil.lotofacil_resultado_bolas_sobe_desce (
  concurso   NUMERIC NOT NULL,
  bola       NUMERIC NOT NULL,
  sobe_desce NUMERIC NOT NULL,
  CONSTRAINT lotofacil_resultado_bolas_sobe_desce_FK FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num (concurso) ON UPDATE CASCADE ON DELETE CASCADE
);


/**
  Esta tabela indica quantas bolas passou de um status pra outro,
  isto ajudará a decidir quantas bolas deve ser selecionadas.
  Os status são:
  ainda_nao_saiu
  deixou_de_sair
  novo
  repetindo.

  As possíveis passagem de status são:
  de 'deixou_de_sair' pra 'novo'

  de 'novo' pra 'deixou_de_sair' ou
  de 'novo' pra 'repetindo'

  de 'repetindo' pra 'repetindo' ou
  de 'repetindo' pra 'deixou_de_sair'

  de 'deixou_de_sair' pra 'ainda_nao_saiu'

  Então, haverá estes campos

  de_deixou_de_sair_pra_novo
  de deixou_de_sair_pra_ainda_nao_saiu

  de_novo_pra_repetindo
  de_novo_pra_deixou_de_sair

  de ainda_nao_saiu pra ainda nao saiu
  de ainda_nao_saiu pra novo

  Vamos encurtar os nomes:
  deixou_de_sair => de_dx_sair

 */
DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_passagem_de_status;
CREATE TABLE lotofacil.lotofacil_resultado_passagem_de_status (
  concurso                   NUMERIC NOT NULL,

  de_ainda_pra_novo          NUMERIC NOT NULL,
  de_ainda_pra_ainda         NUMERIC NOT NULL,

  de_novo_pra_deixou         NUMERIC NOT NULL,
  de_novo_pra_repetindo      NUMERIC NOT NULL,

  de_deixou_pra_novo         NUMERIC NOT NULL,
  de_deixou_pra_ainda        NUMERIC NOT NULL,

  de_repetindo_pra_repetindo NUMERIC NOT NULL,
  de_repetindo_pra_deixou    NUMERIC NOT NULL,

  CONSTRAINT lotofacil_resultado_passagem_de_status_fk FOREIGN KEY (concurso)
  REFERENCES lotofacil.lotofacil_resultado_bolas (concurso) ON DELETE CASCADE ON UPDATE CASCADE

);


/***
  Função para atualizar as tabelas de novos, repetidos, ainda_nao_saiu e deixou_de_sair.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_frequencia_atualizar();
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_frequencia_atualizar()
  RETURNS VOID
LANGUAGE plpgsql
AS $$
DECLARE
  -- Serve pra armazenar cada registro, após percorremos no loop.
  reg_lotofacil_resultado_num              lotofacil.lotofacil_resultado_num%ROWTYPE;

  lotofacil_resultado_num_atual            NUMERIC [26];
  lotofacil_resultado_num_frequencia       NUMERIC [26];

  lotofacil_resultado_num_frequencia_total NUMERIC [26];

  lotofacil_resultado_num_sobe_desce       NUMERIC [26];

  -- As 6 variáveis abaixo armazena a quantidade de novos, repetidos, deixou_de_sair e ainda_nao_saiu
  -- encontradas.
  qt_novos                                 NUMERIC;
  qt_repetidos                             NUMERIC;
  qt_deixou_de_sair                        NUMERIC;
  qt_ainda_nao_saiu                        NUMERIC;

  qtAlternaram_para_Positivo               NUMERIC;
  qtAlternaram_para_Negativo               NUMERIC;

  -- Variáveis utilizadas pra popular as tabelas que terminam com o sufixo num:
  -- lotofacil_resultado_novos_num,
  -- lotofacil_resultado_repetidos_num;
  -- lotofacil_resultado_deixou_de_sair_num;
  -- lotofacil_resultado_ainda_nao_saiu_num;
  sql_novos_num                            TEXT;
  sql_repetidos_num                        TEXT;
  sql_deixou_de_sair_num                   TEXT;
  sql_ainda_nao_saiu_num                   TEXT;

  -- Variáveis utilizadas pra popular as tabelas que terminam com o sufixo bolas:
  -- lotofacil_resultado_novos_bolas,
  -- lotofacil_resultado_repetidos_bolas;
  -- lotofacil_resultado_deixou_de_sair_bolas;
  -- lotofacil_resultado_ainda_nao_saiu_bolas;

  sql_novos_bolas                          TEXT;
  sql_repetidos_bolas                      TEXT;
  sql_deixou_de_sair_bolas                 TEXT;
  sql_ainda_nao_saiu_bolas                 TEXT;

  sql_bolas_coluna                         TEXT;
  sql_num_valor_1                          TEXT;

  b_primeiro_concurso                      BOOLEAN;


  strAlternaram_para_Positivo              CHARACTER VARYING;
  strAlternaram_para_negativo              CHARACTER VARYING;


  soma_frequencia                          NUMERIC;
  qt_Pares                                 NUMERIC;
  qt_Impares                               NUMERIC;

  uA                                       NUMERIC;
  uB                                       NUMERIC;

  qt_de_ainda_pra_novo                     NUMERIC;
  qt_de_ainda_pra_ainda                    NUMERIC;

  qt_de_novo_pra_deixou                    NUMERIC;
  qt_de_novo_pra_repetindo                 NUMERIC;

  qt_de_deixou_pra_novo                    NUMERIC;
  qt_de_deixou_pra_ainda                   NUMERIC;

  qt_de_repetindo_pra_deixou               NUMERIC;
  qt_de_repetindo_pra_repetindo            NUMERIC;

BEGIN
  -- Deleta todas as tabelas referente a novos, repetidos, ainda nao saiu, deixou de sair.
  /*
  DELETE FROM lotofacil.lotofacil_resultado_novos_num;
  DELETE FROM lotofacil.lotofacil_resultado_repetidos_num;
  DELETE FROM lotofacil.lotofacil_resultado_ainda_nao_saiu_num;
  DELETE FROM lotofacil.lotofacil_resultado_deixou_de_sair_num;

  DELETE FROM lotofacil.lotofacil_resultado_novos_bolas;
  DELETE FROM lotofacil.lotofacil_resultado_repetidos_bolas;
  DELETE FROM lotofacil.lotofacil_resultado_ainda_nao_saiu_bolas;
  DELETE FROM lotofacil.lotofacil_resultado_deixou_de_sair_bolas;
  */

  DELETE FROM lotofacil.lotofacil_resultado_num_frequencia;
  DELETE FROM lotofacil.lotofacil_resultado_num_frequencia_total;

  DELETE FROM lotofacil.lotofacil_resultado_bolas_frequencia;
  DELETE FROM lotofacil.lotofacil_resultado_bolas_frequencia_total;

  DELETE FROM lotofacil.lotofacil_resultado_num_sobe_desce;
  DELETE FROM lotofacil.lotofacil_resultado_bolas_sobe_desce;

  DELETE FROM lotofacil.lotofacil_resultado_passagem_de_status;

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

  lotofacil_resultado_num_sobe_desce [1] := 0;
  lotofacil_resultado_num_sobe_desce [2] := 0;
  lotofacil_resultado_num_sobe_desce [3] := 0;
  lotofacil_resultado_num_sobe_desce [4] := 0;
  lotofacil_resultado_num_sobe_desce [5] := 0;
  lotofacil_resultado_num_sobe_desce [6] := 0;
  lotofacil_resultado_num_sobe_desce [7] := 0;
  lotofacil_resultado_num_sobe_desce [8] := 0;
  lotofacil_resultado_num_sobe_desce [9] := 0;
  lotofacil_resultado_num_sobe_desce [10] := 0;
  lotofacil_resultado_num_sobe_desce [11] := 0;
  lotofacil_resultado_num_sobe_desce [12] := 0;
  lotofacil_resultado_num_sobe_desce [13] := 0;
  lotofacil_resultado_num_sobe_desce [14] := 0;
  lotofacil_resultado_num_sobe_desce [15] := 0;
  lotofacil_resultado_num_sobe_desce [16] := 0;
  lotofacil_resultado_num_sobe_desce [17] := 0;
  lotofacil_resultado_num_sobe_desce [18] := 0;
  lotofacil_resultado_num_sobe_desce [19] := 0;
  lotofacil_resultado_num_sobe_desce [20] := 0;
  lotofacil_resultado_num_sobe_desce [21] := 0;
  lotofacil_resultado_num_sobe_desce [22] := 0;
  lotofacil_resultado_num_sobe_desce [23] := 0;
  lotofacil_resultado_num_sobe_desce [24] := 0;
  lotofacil_resultado_num_sobe_desce [25] := 0;


  b_primeiro_concurso = TRUE;

  -- No loop abaixo, iremos comparar o concurso atual com o concurso anterior.
  FOR reg_lotofacil_resultado_num IN
  SELECT *
  FROM lotofacil.lotofacil_resultado_num
  ORDER BY concurso ASC
  LOOP
    -- Se é o primeiro concurso, iremos analisar e realizar nova iteração
    -- Pois, nossa tabela de frequência é baseada na comparação do concurso
    -- anterior e concurso atual.
    IF b_primeiro_concurso = TRUE
    THEN
      b_primeiro_concurso = FALSE;

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

      lotofacil_resultado_num_sobe_desce [1] := reg_lotofacil_resultado_num.num_1;
      lotofacil_resultado_num_sobe_desce [2] := reg_lotofacil_resultado_num.num_2;
      lotofacil_resultado_num_sobe_desce [3] := reg_lotofacil_resultado_num.num_3;
      lotofacil_resultado_num_sobe_desce [4] := reg_lotofacil_resultado_num.num_4;
      lotofacil_resultado_num_sobe_desce [5] := reg_lotofacil_resultado_num.num_5;
      lotofacil_resultado_num_sobe_desce [6] := reg_lotofacil_resultado_num.num_6;
      lotofacil_resultado_num_sobe_desce [7] := reg_lotofacil_resultado_num.num_7;
      lotofacil_resultado_num_sobe_desce [8] := reg_lotofacil_resultado_num.num_8;
      lotofacil_resultado_num_sobe_desce [9] := reg_lotofacil_resultado_num.num_9;
      lotofacil_resultado_num_sobe_desce [10] := reg_lotofacil_resultado_num.num_10;
      lotofacil_resultado_num_sobe_desce [11] := reg_lotofacil_resultado_num.num_11;
      lotofacil_resultado_num_sobe_desce [12] := reg_lotofacil_resultado_num.num_12;
      lotofacil_resultado_num_sobe_desce [13] := reg_lotofacil_resultado_num.num_13;
      lotofacil_resultado_num_sobe_desce [14] := reg_lotofacil_resultado_num.num_14;
      lotofacil_resultado_num_sobe_desce [15] := reg_lotofacil_resultado_num.num_15;
      lotofacil_resultado_num_sobe_desce [16] := reg_lotofacil_resultado_num.num_16;
      lotofacil_resultado_num_sobe_desce [17] := reg_lotofacil_resultado_num.num_17;
      lotofacil_resultado_num_sobe_desce [18] := reg_lotofacil_resultado_num.num_18;
      lotofacil_resultado_num_sobe_desce [19] := reg_lotofacil_resultado_num.num_19;
      lotofacil_resultado_num_sobe_desce [20] := reg_lotofacil_resultado_num.num_20;
      lotofacil_resultado_num_sobe_desce [21] := reg_lotofacil_resultado_num.num_21;
      lotofacil_resultado_num_sobe_desce [22] := reg_lotofacil_resultado_num.num_22;
      lotofacil_resultado_num_sobe_desce [23] := reg_lotofacil_resultado_num.num_23;
      lotofacil_resultado_num_sobe_desce [24] := reg_lotofacil_resultado_num.num_24;
      lotofacil_resultado_num_sobe_desce [25] := reg_lotofacil_resultado_num.num_25;

      -- Se é o primeiro concurso, devemos marcar as bolas que não saiu com o valor -1 pois
      -- senão, irá considera que l
      uB := 1;
      WHILE uB <= 25 LOOP
        IF lotofacil_resultado_num_frequencia [uB] = 0
        THEN
          lotofacil_resultado_num_frequencia [uB] := -1;
          lotofacil_resultado_num_frequencia_total [uB] := -1;
          lotofacil_resultado_num_sobe_desce [uB] := -1;
        END IF;
        uB := uB + 1;
      END LOOP;

      CONTINUE;

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

    qt_de_ainda_pra_novo := 0;
    qt_de_ainda_pra_ainda := 0;

    qt_de_novo_pra_deixou := 0;
    qt_de_novo_pra_repetindo := 0;

    qt_de_deixou_pra_novo := 0;
    qt_de_deixou_pra_ainda := 0;

    qt_de_repetindo_pra_deixou := 0;
    qt_de_repetindo_pra_repetindo := 0;


    uA := 1;
    WHILE uA <= 25 LOOP
      /*
        Devemos verificar a quantidade de bolas que passou de uma transição de status pra
        outra pois, no fim deste loop, cada célula do arranjo lotofacil_resultado_num_frequencia
        terá um novo valor.

        No arranjo lotofacil_resultado_num_frequencia, armazenará a últiam frequência, onde
        -1 indica que deixou de sair
        menor que -1 indica que ainda não saiu
        igual a 1 indica que é novo
        maior que 1 repetindo.

        No arranjo lotofacil_resultado_num_atual indica se a bola saiu ou não,
        1 se saiu, 0 se não saiu.

        De posse destes dados, podem saber de qual status uma bola fez a transição.
        Por exemplo, uma bola, que estava no status novo na último concurso,
        pode deixar de sair no concurso atual, ou seja, passou do estado 'novo' pra 'deixou de sair'.

        O objetivo disto, é saber qual são as transições que mais ocorre e assim, fazer
        uma melhor seleção dos filtros.
       */
      -- De ainda não saiu pra novo
      IF (lotofacil_resultado_num_frequencia [uA] < -1) AND
         (lotofacil_resultado_num_atual [uA] = 1)
      THEN
        qt_de_ainda_pra_novo := qt_de_ainda_pra_novo + 1;
      END IF;

      -- De ainda não saiu pra ainda nao saiu
      IF (lotofacil_resultado_num_frequencia [uA] < -1) AND
         (lotofacil_resultado_num_atual [uA] = 0)
      THEN
        qt_de_ainda_pra_ainda := qt_de_ainda_pra_ainda + 1;
      END IF;

      -- De novo pra deixou de sair
      IF (lotofacil_resultado_num_frequencia [uA] = 1) AND
         (lotofacil_resultado_num_atual [uA] = 0)
      THEN
        qt_de_novo_pra_deixou := qt_de_novo_pra_deixou + 1;
      END IF;

      -- De novo pra repetindo
      IF (lotofacil_resultado_num_frequencia [uA] = 1) AND
         (lotofacil_resultado_num_atual [uA] = 1)
      THEN
        qt_de_novo_pra_repetindo := qt_de_novo_pra_repetindo + 1;
      END IF;

      -- De deixou de sair pra novo
      IF (lotofacil_resultado_num_frequencia [uA] = -1) AND
         (lotofacil_resultado_num_atual [uA] = 1)
      THEN
        qt_de_deixou_pra_novo := qt_de_deixou_pra_novo + 1;
      END IF;

      -- De deixou de sair para ainda nao saiu
      IF (lotofacil_resultado_num_frequencia [uA] = -1) AND
         (lotofacil_resultado_num_atual [uA] = 0)
      THEN
        qt_de_deixou_pra_ainda := qt_de_deixou_pra_ainda + 1;
      END IF;

      -- De repetindo pra deixou
      IF (lotofacil_resultado_num_frequencia [uA] > 1) AND
         (lotofacil_resultado_num_atual [uA] = 0)
      THEN
        qt_de_repetindo_pra_deixou := qt_de_repetindo_pra_deixou + 1;
      END IF;

      -- De repetindo pra repetindo
      IF (lotofacil_resultado_num_frequencia [uA] > 1) AND
         (lotofacil_resultado_num_atual [uA] = 1)
      THEN
        qt_de_repetindo_pra_repetindo := qt_de_repetindo_pra_repetindo + 1;
      END IF;

      -- Se a bola saiu, incrementar, senão decrementar.
      IF lotofacil_resultado_num_atual [uA] = 1
      THEN
        lotofacil_resultado_num_sobe_desce [uA] := lotofacil_resultado_num_sobe_desce [uA] + 1;
      ELSE
        lotofacil_resultado_num_sobe_desce [uA] := lotofacil_resultado_num_sobe_desce [uA] - 1;
      END IF;

      -- Bola saiu no concurso atual.
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
      lotofacil_resultado_num_frequencia_total [uA] := lotofacil_resultado_num_frequencia_total [uA] +
                                                       lotofacil_resultado_num_frequencia [uA];

      -- Incrementa a variável
      uA := uA + 1;
    END LOOP;

    --Insere 1 registro por bola, nas tabelas lotofacil_resultado_bolas_frequencia e
    -- lotofacil_resultado_bolas_frequencia_total.
    FOR uA IN 1..25 LOOP
      INSERT INTO lotofacil.lotofacil_resultado_bolas_frequencia (concurso, bola, frequencia) VALUES
        (reg_lotofacil_resultado_num.concurso, uA, lotofacil_resultado_num_frequencia [uA]);

      INSERT INTO lotofacil.lotofacil_resultado_bolas_frequencia_total (concurso, bola, frequencia) VALUES
        (reg_lotofacil_resultado_num.concurso, uA, lotofacil_resultado_num_frequencia_total [uA]);

      INSERT INTO Lotofacil.lotofacil_resultado_bolas_sobe_desce (concurso, bola, sobe_desce) VALUES
        (reg_lotofacil_resultado_num.concurso, uA, lotofacil_resultado_num_sobe_desce [uA]);

    END LOOP;

    INSERT INTO lotofacil.lotofacil_resultado_passagem_de_status
    (concurso,
     de_ainda_pra_novo,
     de_ainda_pra_ainda,
     de_novo_pra_deixou,
     de_novo_pra_repetindo,
     de_deixou_pra_novo,
     de_deixou_pra_ainda,
     de_repetindo_pra_repetindo,
     de_repetindo_pra_deixou) VALUES
      (reg_lotofacil_resultado_num.concurso,
       qt_de_ainda_pra_novo,
       qt_de_ainda_pra_ainda,
       qt_de_novo_pra_deixou,
       qt_de_novo_pra_repetindo,
       qt_de_deixou_pra_novo,
       qt_de_deixou_pra_ainda,
       qt_de_repetindo_pra_repetindo,
       qt_de_repetindo_pra_deixou
      );

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
      lotofacil_resultado_num_frequencia [1],
      lotofacil_resultado_num_frequencia [2],
      lotofacil_resultado_num_frequencia [3],
      lotofacil_resultado_num_frequencia [4],
      lotofacil_resultado_num_frequencia [5],
      lotofacil_resultado_num_frequencia [6],
      lotofacil_resultado_num_frequencia [7],
      lotofacil_resultado_num_frequencia [8],
      lotofacil_resultado_num_frequencia [9],
      lotofacil_resultado_num_frequencia [10],
      lotofacil_resultado_num_frequencia [11],
      lotofacil_resultado_num_frequencia [12],
      lotofacil_resultado_num_frequencia [13],
      lotofacil_resultado_num_frequencia [14],
      lotofacil_resultado_num_frequencia [15],
      lotofacil_resultado_num_frequencia [16],
      lotofacil_resultado_num_frequencia [17],
      lotofacil_resultado_num_frequencia [18],
      lotofacil_resultado_num_frequencia [19],
      lotofacil_resultado_num_frequencia [20],
            lotofacil_resultado_num_frequencia [21],
            lotofacil_resultado_num_frequencia [22],
            lotofacil_resultado_num_frequencia [23],
            lotofacil_resultado_num_frequencia [24],
            lotofacil_resultado_num_frequencia [25]);

    INSERT INTO lotofacil.lotofacil_resultado_num_frequencia_total (
      concurso, num_1, num_2, num_3, num_4, num_5,
      num_6, num_7, num_8, num_9, num_10,
      num_11, num_12, num_13, num_14, num_15,
      num_16, num_17, num_18, num_19, num_20,
      num_21, num_22, num_23, num_24, num_25)
    VALUES (reg_lotofacil_resultado_num.concurso,
      lotofacil_resultado_num_frequencia_total [1],
      lotofacil_resultado_num_frequencia_total [2],
      lotofacil_resultado_num_frequencia_total [3],
      lotofacil_resultado_num_frequencia_total [4],
      lotofacil_resultado_num_frequencia_total [5],
      lotofacil_resultado_num_frequencia_total [6],
      lotofacil_resultado_num_frequencia_total [7],
      lotofacil_resultado_num_frequencia_total [8],
      lotofacil_resultado_num_frequencia_total [9],
      lotofacil_resultado_num_frequencia_total [10],
      lotofacil_resultado_num_frequencia_total [11],
      lotofacil_resultado_num_frequencia_total [12],
      lotofacil_resultado_num_frequencia_total [13],
      lotofacil_resultado_num_frequencia_total [14],
      lotofacil_resultado_num_frequencia_total [15],
      lotofacil_resultado_num_frequencia_total [16],
      lotofacil_resultado_num_frequencia_total [17],
      lotofacil_resultado_num_frequencia_total [18],
      lotofacil_resultado_num_frequencia_total [19],
      lotofacil_resultado_num_frequencia_total [20],
            lotofacil_resultado_num_frequencia_total [21],
            lotofacil_resultado_num_frequencia_total [22],
            lotofacil_resultado_num_frequencia_total [23],
            lotofacil_resultado_num_frequencia_total [24],
            lotofacil_resultado_num_frequencia_total [25]);

    INSERT INTO lotofacil.lotofacil_resultado_num_sobe_desce (
      concurso, num_1, num_2, num_3, num_4, num_5,
      num_6, num_7, num_8, num_9, num_10,
      num_11, num_12, num_13, num_14, num_15,
      num_16, num_17, num_18, num_19, num_20,
      num_21, num_22, num_23, num_24, num_25)
    VALUES (reg_lotofacil_resultado_num.concurso,
      lotofacil_resultado_num_sobe_desce [1],
      lotofacil_resultado_num_sobe_desce [2],
      lotofacil_resultado_num_sobe_desce [3],
      lotofacil_resultado_num_sobe_desce [4],
      lotofacil_resultado_num_sobe_desce [5],
      lotofacil_resultado_num_sobe_desce [6],
      lotofacil_resultado_num_sobe_desce [7],
      lotofacil_resultado_num_sobe_desce [8],
      lotofacil_resultado_num_sobe_desce [9],
      lotofacil_resultado_num_sobe_desce [10],
      lotofacil_resultado_num_sobe_desce [11],
      lotofacil_resultado_num_sobe_desce [12],
      lotofacil_resultado_num_sobe_desce [13],
      lotofacil_resultado_num_sobe_desce [14],
      lotofacil_resultado_num_sobe_desce [15],
      lotofacil_resultado_num_sobe_desce [16],
      lotofacil_resultado_num_sobe_desce [17],
      lotofacil_resultado_num_sobe_desce [18],
      lotofacil_resultado_num_sobe_desce [19],
      lotofacil_resultado_num_sobe_desce [20],
            lotofacil_resultado_num_sobe_desce [21],
            lotofacil_resultado_num_sobe_desce [22],
            lotofacil_resultado_num_sobe_desce [23],
            lotofacil_resultado_num_sobe_desce [24],
            lotofacil_resultado_num_sobe_desce [25]);


    RAISE NOTICE 'qt_novos: %, qt_repetidos: %, qt_ainda_nao_saiu: %, qt_deixou_de_sair: %',
    qt_novos, qt_repetidos, qt_ainda_nao_saiu, qt_deixou_de_sair;

    IF qt_novos > 10 AND reg_lotofacil_resultado_num.concurso <> 1
    THEN
      RAISE EXCEPTION 'Erro, lotofacil %, qt de novos: %, a quantidade máxima de ítens novos é 10:',
      reg_lotofacil_resultado_num.concurso, qt_novos;
    END IF;

    IF (reg_lotofacil_resultado_num.concurso <> 1) AND (qt_repetidos < 5 OR qt_repetidos > 15)
    THEN
      RAISE EXCEPTION 'Na lotofacil, a quantidade mínima de ítens repetidos é 5, e a quantidade máxima é 15,'
      'foi informado %', qt_repetidos;
    END IF;

    /*
    if (reg_lotofacil_resultado_num.concurso <> 1) and (qt_novos <> qt_deixou_de_sair) then
      Raise Exception 'Na lotofacil de 15 números, sempre a quantidade de novos é igual à quantidade de números '
        'que deixaram de sair, erro, quantidade de novos diferentes de quantidade de números que deixou de sair.';
    END IF;
    */

    RAISE NOTICE 'Concurso: %, qtNovos: %, qtRepetidos: %, qtAindaNaoSaiu %', reg_lotofacil_resultado_num.concurso,
    qt_novos, qt_repetidos, qt_ainda_nao_saiu;


    /*

    -- ######################## NOVOS ##################################
    uA := 1;
    sql_bolas_coluna := '';
    sql_num_valor_1 := '';
    WHILE uA <= qt_novos LOOP
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


    RAISE NOTICE '%', sql_novos_num;
    EXECUTE sql_novos_bolas;
    EXECUTE sql_novos_num;

    -- ######################## REPETIDOS ##################################
    uA := 1;
    sql_bolas_coluna := '';
    sql_num_valor_1 := '';
    WHILE uA <= qt_repetidos LOOP
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


    RAISE NOTICE '%', sql_repetidos_num;
    EXECUTE sql_repetidos_bolas;
    EXECUTE sql_repetidos_num;

    -- ######################## AINDA NÃO SAIU ##################################
    uA := 1;
    sql_bolas_coluna := '';
    sql_num_valor_1 := '';
    WHILE uA <= qt_ainda_nao_saiu LOOP
      sql_bolas_coluna := sql_bolas_coluna || ', b_' || uA;
      sql_num_valor_1 := sql_num_valor_1 || ', 1';
      uA := uA + 1;
    END LOOP;

    sql_ainda_nao_saiu_bolas :=
    'Insert into lotofacil.lotofacil_resultado_ainda_nao_saiu_bolas (concurso, qt_ainda_nao_saiu ' ||
    sql_bolas_coluna || ') values (' || reg_lotofacil_resultado_num.concurso ||
    ', ' || qt_ainda_nao_saiu || sql_ainda_nao_saiu_bolas || ')';

    sql_ainda_nao_saiu_num :=
    'Insert into lotofacil.lotofacil_resultado_ainda_nao_saiu_num (concurso, qt_ainda_nao_saiu ' ||
    sql_ainda_nao_saiu_num || ') values (' || reg_lotofacil_resultado_num.concurso ||
    ', ' || qt_ainda_nao_saiu || sql_num_valor_1 || ')';


    RAISE NOTICE '%', sql_ainda_nao_saiu_num;
    EXECUTE sql_ainda_nao_saiu_bolas;
    EXECUTE sql_ainda_nao_saiu_num;

    -- ######################## DEIXOU DE SAIR ##################################
    uA := 1;
    sql_bolas_coluna := '';
    sql_num_valor_1 := '';
    WHILE uA <= qt_deixou_de_sair LOOP
      sql_bolas_coluna := sql_bolas_coluna || ', b_' || uA;
      sql_num_valor_1 := sql_num_valor_1 || ', 1';
      uA := uA + 1;
    END LOOP;

    sql_deixou_de_sair_bolas :=
    'Insert into lotofacil.lotofacil_resultado_deixou_de_sair_bolas (concurso, qt_deixou_de_sair ' ||
    sql_bolas_coluna || ') values (' || reg_lotofacil_resultado_num.concurso ||
    ', ' || qt_deixou_de_sair || sql_deixou_de_sair_bolas || ')';

    sql_deixou_de_sair_num :=
    'Insert into lotofacil.lotofacil_resultado_deixou_de_sair_num (concurso, qt_deixou_de_sair ' ||
    sql_deixou_de_sair_num || ') values (' || reg_lotofacil_resultado_num.concurso ||
    ', ' || qt_deixou_de_sair || sql_num_valor_1 || ')';


    RAISE NOTICE '%', sql_deixou_de_sair_num;
    EXECUTE sql_deixou_de_sair_bolas;
    EXECUTE sql_deixou_de_sair_num;
    */
  END LOOP;
END $$;

SELECT lotofacil.fn_lotofacil_resultado_frequencia_atualizar();
