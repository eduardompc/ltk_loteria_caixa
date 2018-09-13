/**
  Autor:  Fábio Moura de Oliveira
  Data:   30/7/2018

  Descrição:
  Aqui, neste arquivo, irei implementar a lógica de novos x repetidos.
  Aqui, escolher um qualquer qualquer, geralmente, o último concurso
  sorteado, pois queremos jogar no próximo concurso.
  Em seguida, comparamos todas as bolas deste concurso com todas as
  bolas de todas as combinações do jogo dia_de_sorte, e contabilizamos
  quantas bolas se repetem, pode haver neste caso, de 0 a 7 bolas
  repetidas.
  Não precisaremos neste caso, uma tabela de id pra armazenar
  todas as combinações possíveis, pois o próprio número indica
  isto, então, as combinações possíveis é:

  0 novos   x   7 repetidos;
  1 novo    x   6 repetidos;
  2 novos   x   5 repetidos;
  3 novos   x   4 repetidos;
  4 novos   x   3 repetidos;
  5 novos   x   2 repetidos;
  6 novos   x   1 repetidos;
  7 novos   x   0 repetidos;

  Se vc observar, podemos armazenar somente um dos campos
  novos ou repetidos.
 */
/**
  Armazena o id de novos x repetidos, observe que
  a quantidade de novos é igual ao próprio id de novos x repetidos.
 */
DROP TABLE IF EXISTS d_sorte.d_sorte_id_novos_repetidos;
CREATE TABLE d_sorte.d_sorte_id_novos_repetidos (
  novos_repetidos_id NUMERIC NOT NULL,
  qt_novos           NUMERIC NOT NULL CHECK (qt_novos BETWEEN 0 AND 7),
  qt_repetidos       NUMERIC NOT NULL CHECK (qt_repetidos BETWEEN 0 AND 7)
    CONSTRAINT d_sorte_id_novos_repetidos_chk CHECK (qt_novos + qt_repetidos = 7),
  CONSTRAINT d_sorte_id_novos_repetidos_chk_2 CHECK (qt_novos = novos_repetidos_id)
);

/**
  Popula os dados da tabela.
 */
DROP FUNCTION IF EXISTS d_sorte.fn_d_sorte_id_novos_repetidos();
CREATE FUNCTION d_sorte.fn_d_sorte_id_novos_repetidos()
  RETURNS VOID
LANGUAGE plpgsql AS
$$
DECLARE
  uA NUMERIC;
BEGIN
  TRUNCATE d_sorte.d_sorte_id_novos_repetidos;
  FOR uA IN 0..7 LOOP
    INSERT INTO d_sorte.d_sorte_id_novos_repetidos (novos_repetidos_id, qt_novos, qt_repetidos)
    VALUES (uA, uA, 7 - uA);
  END LOOP;
END;
$$;

SELECT d_sorte.fn_d_sorte_id_novos_repetidos();


/**
  Nesta tabela, iremos armazena a quantidade de bolas novas e repetidas
  de todas as combinações do jogo dia_de_sorte em relação a uma combinação
  sorteada.
 */
DROP TABLE IF EXISTS d_sorte.d_sorte_novos_repetidos;
CREATE TABLE d_sorte.d_sorte_novos_repetidos (
  d_sorte_id                    NUMERIC NOT NULL,
  d_sorte_qt                    NUMERIC NOT NULL,
  concurso                      NUMERIC NOT NULL,
  novos_repetidos_id            NUMERIC NOT NULL,
  id_seq_exc_novos_repetidos_id NUMERIC NOT NULL,

  CONSTRAINT d_sorte_novos_repetidos_pk PRIMARY KEY (d_sorte_id),
  CONSTRAINT d_sorte_novos_repetidos_fk FOREIGN KEY (d_sorte_id) REFERENCES d_sorte.d_sorte_num (d_sorte_id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT d_sorte_novos_repetidos_fk_2 FOREIGN KEY (concurso) REFERENCES d_sorte.d_sorte_resultado_bolas (concurso)
);
COMMENT ON COLUMN d_sorte.d_sorte_novos_repetidos.id_seq_exc_novos_repetidos_id IS
'Pra cada valor de novos x repetidos, haverá um identificador sequencial'
' exclusivo, isto facilitará na ora de ordenar ';


/**
  Na tabela, iremos armazena pra cada concurso, a quantidade de bolas
  novas x repetidas em relação ao concurso anterior sorteado.
  Por exemplo, vamos supor que os concursos 1, 2, 3, 4, e 5 foram
  sorteados, então iremos comparar:
  quantas bolas do concurso 2 são novas e repetidas em relação ao concurso 1;
  quantas bolas do concurso 3 são novas e repetidas em relação ao concurso 2;
  quantas bolas do concurso 4 são novas e repetidas em relação ao concurso 3;
  e assim por diante.
  O objetivo disto é analisar estatísticamente a quantidade de bolas
  e novas em relação ao último concurso sorteado.
 */
DROP TABLE IF EXISTS d_sorte.d_sorte_resultado_novos_repetidos;
CREATE TABLE d_sorte.d_sorte_resultado_novos_repetidos (
  concurso_anterior  NUMERIC NOT NULL,
  concurso           NUMERIC NOT NULL,
  novos_repetidos_id NUMERIC NOT NULL,

  CONSTRAINT d_sorte_resultado_novos_repetidos_pk PRIMARY KEY (concurso),
  CONSTRAINT d_sorte_resultado_novos_repetidos_fk FOREIGN KEY (concurso_anterior)
  REFERENCES d_sorte.d_sorte_resultado_bolas (concurso),
  CONSTRAINT d_sorte_resultado_novos_repetidos_fk_2 FOREIGN KEY (concurso)
  REFERENCES d_sorte.d_sorte_resultado_bolas (concurso)
);

/**
  Nesta function, iremos ordenar os concursos em ordem crescente de sorteio
  e em seguida, a partir do segundo, iremos comparar as bolas do segundo sorteio
  com as bolas do primeiro sorteio, contabilizando as quantidade de bolas
  que está no segundo concurso e não está no primeiro, ou seja, as bolas novas,
  e depois, iremos comparar o terceiro com o segundo, o quarto com o terceiro,
  até chegar no último.
 */
DROP FUNCTION IF EXISTS d_sorte.fn_d_sorte_resultado_novos_repetidos();
CREATE FUNCTION d_sorte.fn_d_sorte_resultado_novos_repetidos()
  RETURNS VOID
LANGUAGE plpgsql
AS
$$
DECLARE
  d_sorte_resultado_num          d_sorte.d_sorte_resultado_num%ROWTYPE;
  d_sorte_resultado_num_anterior NUMERIC [32];
  d_sorte_resultado_num_atual    NUMERIC [32];
  b_primeira_vez                 BOOLEAN;
  qt_bolas_novas                 NUMERIC;
  qt_bolas_repetidas             NUMERIC;
  uA                             NUMERIC;

  /**
    Na variável abaixo, ela é um vetor, ela armazenará pra cada quantidade
    um identificador exclusivo sequencial.
    Por exemplo, ao ordenar por quantidade de bolas novas x repetidas,
    teríamos um grupo de 8 combinações, onde haveria uma combinação
    que pra cada tipo:
    0 bolas repetidas,
    1 bola repetida,
    2 bolas repetidas, e assim por diante.
   */
  id_sequencial_exclusivo_por_qt NUMERIC [8];
BEGIN
  -- Iremos deletar a tabela pois iremos inserir dados nela.
  DELETE FROM d_sorte.d_sorte_resultado_novos_repetidos;


  b_primeira_vez := TRUE;

  FOR d_sorte_resultado_num IN SELECT *
                               FROM d_sorte.d_sorte_resultado_num
                               ORDER BY concurso ASC LOOP

    -- Na primeira iteração, iremos armazenar os dados do concurso
    -- atual que será o concurso anterior na próxima iteração.
    IF b_primeira_vez
    THEN

      b_primeira_vez := FALSE;

      -- No índice 0, iremos armazenar o número do concurso.
      d_sorte_resultado_num_anterior [0] := d_sorte_resultado_num.concurso;
      d_sorte_resultado_num_anterior [1] := d_sorte_resultado_num.num_1;
      d_sorte_resultado_num_anterior [2] := d_sorte_resultado_num.num_2;
      d_sorte_resultado_num_anterior [3] := d_sorte_resultado_num.num_3;
      d_sorte_resultado_num_anterior [4] := d_sorte_resultado_num.num_4;
      d_sorte_resultado_num_anterior [5] := d_sorte_resultado_num.num_5;
      d_sorte_resultado_num_anterior [6] := d_sorte_resultado_num.num_6;
      d_sorte_resultado_num_anterior [7] := d_sorte_resultado_num.num_7;
      d_sorte_resultado_num_anterior [8] := d_sorte_resultado_num.num_8;
      d_sorte_resultado_num_anterior [9] := d_sorte_resultado_num.num_9;
      d_sorte_resultado_num_anterior [10] := d_sorte_resultado_num.num_10;
      d_sorte_resultado_num_anterior [11] := d_sorte_resultado_num.num_11;
      d_sorte_resultado_num_anterior [12] := d_sorte_resultado_num.num_12;
      d_sorte_resultado_num_anterior [13] := d_sorte_resultado_num.num_13;
      d_sorte_resultado_num_anterior [14] := d_sorte_resultado_num.num_14;
      d_sorte_resultado_num_anterior [15] := d_sorte_resultado_num.num_15;
      d_sorte_resultado_num_anterior [16] := d_sorte_resultado_num.num_16;
      d_sorte_resultado_num_anterior [17] := d_sorte_resultado_num.num_17;
      d_sorte_resultado_num_anterior [18] := d_sorte_resultado_num.num_18;
      d_sorte_resultado_num_anterior [19] := d_sorte_resultado_num.num_19;
      d_sorte_resultado_num_anterior [20] := d_sorte_resultado_num.num_20;
      d_sorte_resultado_num_anterior [21] := d_sorte_resultado_num.num_21;
      d_sorte_resultado_num_anterior [22] := d_sorte_resultado_num.num_22;
      d_sorte_resultado_num_anterior [23] := d_sorte_resultado_num.num_23;
      d_sorte_resultado_num_anterior [24] := d_sorte_resultado_num.num_24;
      d_sorte_resultado_num_anterior [25] := d_sorte_resultado_num.num_25;
      d_sorte_resultado_num_anterior [26] := d_sorte_resultado_num.num_26;
      d_sorte_resultado_num_anterior [27] := d_sorte_resultado_num.num_27;
      d_sorte_resultado_num_anterior [28] := d_sorte_resultado_num.num_28;
      d_sorte_resultado_num_anterior [29] := d_sorte_resultado_num.num_29;
      d_sorte_resultado_num_anterior [30] := d_sorte_resultado_num.num_30;
      d_sorte_resultado_num_anterior [31] := d_sorte_resultado_num.num_31;

      INSERT INTO d_sorte.d_sorte_resultado_novos_repetidos (concurso_anterior, concurso, novos_repetidos_id)
      VALUES (d_sorte_resultado_num_anterior [0],
              d_sorte_resultado_num_anterior [0],
              7);


      CONTINUE;
    END IF;

    -- Obtém informações do concurso atual.
    d_sorte_resultado_num_atual [0] := d_sorte_resultado_num.concurso;
    d_sorte_resultado_num_atual [1] := d_sorte_resultado_num.num_1;
    d_sorte_resultado_num_atual [2] := d_sorte_resultado_num.num_2;
    d_sorte_resultado_num_atual [3] := d_sorte_resultado_num.num_3;
    d_sorte_resultado_num_atual [4] := d_sorte_resultado_num.num_4;
    d_sorte_resultado_num_atual [5] := d_sorte_resultado_num.num_5;
    d_sorte_resultado_num_atual [6] := d_sorte_resultado_num.num_6;
    d_sorte_resultado_num_atual [7] := d_sorte_resultado_num.num_7;
    d_sorte_resultado_num_atual [8] := d_sorte_resultado_num.num_8;
    d_sorte_resultado_num_atual [9] := d_sorte_resultado_num.num_9;
    d_sorte_resultado_num_atual [10] := d_sorte_resultado_num.num_10;
    d_sorte_resultado_num_atual [11] := d_sorte_resultado_num.num_11;
    d_sorte_resultado_num_atual [12] := d_sorte_resultado_num.num_12;
    d_sorte_resultado_num_atual [13] := d_sorte_resultado_num.num_13;
    d_sorte_resultado_num_atual [14] := d_sorte_resultado_num.num_14;
    d_sorte_resultado_num_atual [15] := d_sorte_resultado_num.num_15;
    d_sorte_resultado_num_atual [16] := d_sorte_resultado_num.num_16;
    d_sorte_resultado_num_atual [17] := d_sorte_resultado_num.num_17;
    d_sorte_resultado_num_atual [18] := d_sorte_resultado_num.num_18;
    d_sorte_resultado_num_atual [19] := d_sorte_resultado_num.num_19;
    d_sorte_resultado_num_atual [20] := d_sorte_resultado_num.num_20;
    d_sorte_resultado_num_atual [21] := d_sorte_resultado_num.num_21;
    d_sorte_resultado_num_atual [22] := d_sorte_resultado_num.num_22;
    d_sorte_resultado_num_atual [23] := d_sorte_resultado_num.num_23;
    d_sorte_resultado_num_atual [24] := d_sorte_resultado_num.num_24;
    d_sorte_resultado_num_atual [25] := d_sorte_resultado_num.num_25;
    d_sorte_resultado_num_atual [26] := d_sorte_resultado_num.num_26;
    d_sorte_resultado_num_atual [27] := d_sorte_resultado_num.num_27;
    d_sorte_resultado_num_atual [28] := d_sorte_resultado_num.num_28;
    d_sorte_resultado_num_atual [29] := d_sorte_resultado_num.num_29;
    d_sorte_resultado_num_atual [30] := d_sorte_resultado_num.num_30;
    d_sorte_resultado_num_atual [31] := d_sorte_resultado_num.num_31;

    -- No loop abaixo, iremos comparar o concurso atual com o concurso anterior
    -- e iremos contabilizar a quantidade de bolas novas ou repetidas.
    qt_bolas_novas := 0;
    qt_bolas_repetidas := 0;

    FOR uA IN 1..31 LOOP
      IF d_sorte_resultado_num_atual [uA] = 1 AND d_sorte_resultado_num_anterior [uA] = 0
      THEN
        qt_bolas_novas := qt_bolas_novas + 1;
      ELSEIF d_sorte_resultado_num_atual [uA] = 1 AND d_sorte_resultado_num_anterior [uA] = 1
        THEN
          qt_bolas_repetidas := qt_bolas_repetidas + 1;
      END IF;
    END LOOP;

    -- Verifica se está dentro da faixa válida.
    IF qt_bolas_repetidas < 0 OR qt_bolas_repetidas > 7
    THEN
      RAISE 'Erro, concurso: %, qt_bolas_repetidas inválida: %', d_sorte_resultado_num.concurso, qt_bolas_repetidas;
      RETURN;
    END IF;

    -- No código abaixo, a quantidade de bolas novas é igual ao identificador de novos x repetidos.
    INSERT INTO d_sorte.d_sorte_resultado_novos_repetidos (concurso_anterior, concurso, novos_repetidos_id)
    VALUES (d_sorte_resultado_num_anterior [0],
            d_sorte_resultado_num_atual [0],
            qt_bolas_novas);

    -- Copia o concurso atual pra o vetor d_sorte_resultado_num_anterior
    -- Então, na próxima iteração este concurso atual será o anterior.
    d_sorte_resultado_num_anterior [0] := d_sorte_resultado_num.concurso;
    d_sorte_resultado_num_anterior [1] := d_sorte_resultado_num.num_1;
    d_sorte_resultado_num_anterior [2] := d_sorte_resultado_num.num_2;
    d_sorte_resultado_num_anterior [3] := d_sorte_resultado_num.num_3;
    d_sorte_resultado_num_anterior [4] := d_sorte_resultado_num.num_4;
    d_sorte_resultado_num_anterior [5] := d_sorte_resultado_num.num_5;
    d_sorte_resultado_num_anterior [6] := d_sorte_resultado_num.num_6;
    d_sorte_resultado_num_anterior [7] := d_sorte_resultado_num.num_7;
    d_sorte_resultado_num_anterior [8] := d_sorte_resultado_num.num_8;
    d_sorte_resultado_num_anterior [9] := d_sorte_resultado_num.num_9;
    d_sorte_resultado_num_anterior [10] := d_sorte_resultado_num.num_10;
    d_sorte_resultado_num_anterior [11] := d_sorte_resultado_num.num_11;
    d_sorte_resultado_num_anterior [12] := d_sorte_resultado_num.num_12;
    d_sorte_resultado_num_anterior [13] := d_sorte_resultado_num.num_13;
    d_sorte_resultado_num_anterior [14] := d_sorte_resultado_num.num_14;
    d_sorte_resultado_num_anterior [15] := d_sorte_resultado_num.num_15;
    d_sorte_resultado_num_anterior [16] := d_sorte_resultado_num.num_16;
    d_sorte_resultado_num_anterior [17] := d_sorte_resultado_num.num_17;
    d_sorte_resultado_num_anterior [18] := d_sorte_resultado_num.num_18;
    d_sorte_resultado_num_anterior [19] := d_sorte_resultado_num.num_19;
    d_sorte_resultado_num_anterior [20] := d_sorte_resultado_num.num_20;
    d_sorte_resultado_num_anterior [21] := d_sorte_resultado_num.num_21;
    d_sorte_resultado_num_anterior [22] := d_sorte_resultado_num.num_22;
    d_sorte_resultado_num_anterior [23] := d_sorte_resultado_num.num_23;
    d_sorte_resultado_num_anterior [24] := d_sorte_resultado_num.num_24;
    d_sorte_resultado_num_anterior [25] := d_sorte_resultado_num.num_25;
    d_sorte_resultado_num_anterior [26] := d_sorte_resultado_num.num_26;
    d_sorte_resultado_num_anterior [27] := d_sorte_resultado_num.num_27;
    d_sorte_resultado_num_anterior [28] := d_sorte_resultado_num.num_28;
    d_sorte_resultado_num_anterior [29] := d_sorte_resultado_num.num_29;
    d_sorte_resultado_num_anterior [30] := d_sorte_resultado_num.num_30;
    d_sorte_resultado_num_anterior [31] := d_sorte_resultado_num.num_31;

  END LOOP;

END;
$$;


DROP FUNCTION IF EXISTS d_sorte.fn_d_sorte_resultado_novos_repetidos_2( NUMERIC );
CREATE FUNCTION d_sorte.fn_d_sorte_resultado_novos_repetidos_2(concurso_final NUMERIC)
  RETURNS VOID
LANGUAGE plpgsql
AS
$$
DECLARE
  d_sorte_resultado_num          d_sorte.d_sorte_resultado_num%ROWTYPE;
  d_sorte_resultado_num_anterior NUMERIC [32];
  d_sorte_resultado_num_atual    NUMERIC [32];
  b_primeira_vez                 BOOLEAN;
  qt_bolas_novas                 NUMERIC;
  qt_bolas_repetidas             NUMERIC;
  uA                             NUMERIC;

  /**
    Na variável abaixo, ela é um vetor, ela armazenará pra cada quantidade
    um identificador exclusivo sequencial.
    Por exemplo, ao ordenar por quantidade de bolas novas x repetidas,
    teríamos um grupo de 8 combinações, onde haveria uma combinação
    que pra cada tipo:
    0 bolas repetidas,
    1 bola repetida,
    2 bolas repetidas, e assim por diante.
   */
  id_sequencial_exclusivo_por_qt NUMERIC [8];
BEGIN
  -- Iremos deletar a tabela pois iremos inserir dados nela.
  DELETE FROM d_sorte.d_sorte_resultado_novos_repetidos;


  b_primeira_vez := TRUE;

  FOR d_sorte_resultado_num IN SELECT *
                               FROM d_sorte.d_sorte_resultado_num
                               WHERE concurso <= concurso_final
                               ORDER BY concurso ASC LOOP

    -- Na primeira iteração, iremos armazenar os dados do concurso
    -- atual que será o concurso anterior na próxima iteração.
    IF b_primeira_vez
    THEN

      b_primeira_vez := FALSE;

      -- No índice 0, iremos armazenar o número do concurso.
      d_sorte_resultado_num_anterior [0] := d_sorte_resultado_num.concurso;
      d_sorte_resultado_num_anterior [1] := d_sorte_resultado_num.num_1;
      d_sorte_resultado_num_anterior [2] := d_sorte_resultado_num.num_2;
      d_sorte_resultado_num_anterior [3] := d_sorte_resultado_num.num_3;
      d_sorte_resultado_num_anterior [4] := d_sorte_resultado_num.num_4;
      d_sorte_resultado_num_anterior [5] := d_sorte_resultado_num.num_5;
      d_sorte_resultado_num_anterior [6] := d_sorte_resultado_num.num_6;
      d_sorte_resultado_num_anterior [7] := d_sorte_resultado_num.num_7;
      d_sorte_resultado_num_anterior [8] := d_sorte_resultado_num.num_8;
      d_sorte_resultado_num_anterior [9] := d_sorte_resultado_num.num_9;
      d_sorte_resultado_num_anterior [10] := d_sorte_resultado_num.num_10;
      d_sorte_resultado_num_anterior [11] := d_sorte_resultado_num.num_11;
      d_sorte_resultado_num_anterior [12] := d_sorte_resultado_num.num_12;
      d_sorte_resultado_num_anterior [13] := d_sorte_resultado_num.num_13;
      d_sorte_resultado_num_anterior [14] := d_sorte_resultado_num.num_14;
      d_sorte_resultado_num_anterior [15] := d_sorte_resultado_num.num_15;
      d_sorte_resultado_num_anterior [16] := d_sorte_resultado_num.num_16;
      d_sorte_resultado_num_anterior [17] := d_sorte_resultado_num.num_17;
      d_sorte_resultado_num_anterior [18] := d_sorte_resultado_num.num_18;
      d_sorte_resultado_num_anterior [19] := d_sorte_resultado_num.num_19;
      d_sorte_resultado_num_anterior [20] := d_sorte_resultado_num.num_20;
      d_sorte_resultado_num_anterior [21] := d_sorte_resultado_num.num_21;
      d_sorte_resultado_num_anterior [22] := d_sorte_resultado_num.num_22;
      d_sorte_resultado_num_anterior [23] := d_sorte_resultado_num.num_23;
      d_sorte_resultado_num_anterior [24] := d_sorte_resultado_num.num_24;
      d_sorte_resultado_num_anterior [25] := d_sorte_resultado_num.num_25;
      d_sorte_resultado_num_anterior [26] := d_sorte_resultado_num.num_26;
      d_sorte_resultado_num_anterior [27] := d_sorte_resultado_num.num_27;
      d_sorte_resultado_num_anterior [28] := d_sorte_resultado_num.num_28;
      d_sorte_resultado_num_anterior [29] := d_sorte_resultado_num.num_29;
      d_sorte_resultado_num_anterior [30] := d_sorte_resultado_num.num_30;
      d_sorte_resultado_num_anterior [31] := d_sorte_resultado_num.num_31;

      INSERT INTO d_sorte.d_sorte_resultado_novos_repetidos (concurso_anterior, concurso, novos_repetidos_id)
      VALUES (d_sorte_resultado_num_anterior [0],
              d_sorte_resultado_num_anterior [0],
              7);


      CONTINUE;
    END IF;

    -- Obtém informações do concurso atual.
    d_sorte_resultado_num_atual [0] := d_sorte_resultado_num.concurso;
    d_sorte_resultado_num_atual [1] := d_sorte_resultado_num.num_1;
    d_sorte_resultado_num_atual [2] := d_sorte_resultado_num.num_2;
    d_sorte_resultado_num_atual [3] := d_sorte_resultado_num.num_3;
    d_sorte_resultado_num_atual [4] := d_sorte_resultado_num.num_4;
    d_sorte_resultado_num_atual [5] := d_sorte_resultado_num.num_5;
    d_sorte_resultado_num_atual [6] := d_sorte_resultado_num.num_6;
    d_sorte_resultado_num_atual [7] := d_sorte_resultado_num.num_7;
    d_sorte_resultado_num_atual [8] := d_sorte_resultado_num.num_8;
    d_sorte_resultado_num_atual [9] := d_sorte_resultado_num.num_9;
    d_sorte_resultado_num_atual [10] := d_sorte_resultado_num.num_10;
    d_sorte_resultado_num_atual [11] := d_sorte_resultado_num.num_11;
    d_sorte_resultado_num_atual [12] := d_sorte_resultado_num.num_12;
    d_sorte_resultado_num_atual [13] := d_sorte_resultado_num.num_13;
    d_sorte_resultado_num_atual [14] := d_sorte_resultado_num.num_14;
    d_sorte_resultado_num_atual [15] := d_sorte_resultado_num.num_15;
    d_sorte_resultado_num_atual [16] := d_sorte_resultado_num.num_16;
    d_sorte_resultado_num_atual [17] := d_sorte_resultado_num.num_17;
    d_sorte_resultado_num_atual [18] := d_sorte_resultado_num.num_18;
    d_sorte_resultado_num_atual [19] := d_sorte_resultado_num.num_19;
    d_sorte_resultado_num_atual [20] := d_sorte_resultado_num.num_20;
    d_sorte_resultado_num_atual [21] := d_sorte_resultado_num.num_21;
    d_sorte_resultado_num_atual [22] := d_sorte_resultado_num.num_22;
    d_sorte_resultado_num_atual [23] := d_sorte_resultado_num.num_23;
    d_sorte_resultado_num_atual [24] := d_sorte_resultado_num.num_24;
    d_sorte_resultado_num_atual [25] := d_sorte_resultado_num.num_25;
    d_sorte_resultado_num_atual [26] := d_sorte_resultado_num.num_26;
    d_sorte_resultado_num_atual [27] := d_sorte_resultado_num.num_27;
    d_sorte_resultado_num_atual [28] := d_sorte_resultado_num.num_28;
    d_sorte_resultado_num_atual [29] := d_sorte_resultado_num.num_29;
    d_sorte_resultado_num_atual [30] := d_sorte_resultado_num.num_30;
    d_sorte_resultado_num_atual [31] := d_sorte_resultado_num.num_31;

    -- No loop abaixo, iremos comparar o concurso atual com o concurso anterior
    -- e iremos contabilizar a quantidade de bolas novas ou repetidas.
    qt_bolas_novas := 0;
    qt_bolas_repetidas := 0;

    FOR uA IN 1..31 LOOP
      IF d_sorte_resultado_num_atual [uA] = 1 AND d_sorte_resultado_num_anterior [uA] = 0
      THEN
        qt_bolas_novas := qt_bolas_novas + 1;
      ELSEIF d_sorte_resultado_num_atual [uA] = 1 AND d_sorte_resultado_num_anterior [uA] = 1
        THEN
          qt_bolas_repetidas := qt_bolas_repetidas + 1;
      END IF;
    END LOOP;

    -- Verifica se está dentro da faixa válida.
    IF qt_bolas_repetidas < 0 OR qt_bolas_repetidas > 7
    THEN
      RAISE 'Erro, concurso: %, qt_bolas_repetidas inválida: %', d_sorte_resultado_num.concurso, qt_bolas_repetidas;
      RETURN;
    END IF;

    -- No código abaixo, a quantidade de bolas novas é igual ao identificador de novos x repetidos.
    INSERT INTO d_sorte.d_sorte_resultado_novos_repetidos (concurso_anterior, concurso, novos_repetidos_id)
    VALUES (d_sorte_resultado_num_anterior [0],
            d_sorte_resultado_num_atual [0],
            qt_bolas_novas);

    -- Copia o concurso atual pra o vetor d_sorte_resultado_num_anterior
    -- Então, na próxima iteração este concurso atual será o anterior.
    d_sorte_resultado_num_anterior [0] := d_sorte_resultado_num.concurso;
    d_sorte_resultado_num_anterior [1] := d_sorte_resultado_num.num_1;
    d_sorte_resultado_num_anterior [2] := d_sorte_resultado_num.num_2;
    d_sorte_resultado_num_anterior [3] := d_sorte_resultado_num.num_3;
    d_sorte_resultado_num_anterior [4] := d_sorte_resultado_num.num_4;
    d_sorte_resultado_num_anterior [5] := d_sorte_resultado_num.num_5;
    d_sorte_resultado_num_anterior [6] := d_sorte_resultado_num.num_6;
    d_sorte_resultado_num_anterior [7] := d_sorte_resultado_num.num_7;
    d_sorte_resultado_num_anterior [8] := d_sorte_resultado_num.num_8;
    d_sorte_resultado_num_anterior [9] := d_sorte_resultado_num.num_9;
    d_sorte_resultado_num_anterior [10] := d_sorte_resultado_num.num_10;
    d_sorte_resultado_num_anterior [11] := d_sorte_resultado_num.num_11;
    d_sorte_resultado_num_anterior [12] := d_sorte_resultado_num.num_12;
    d_sorte_resultado_num_anterior [13] := d_sorte_resultado_num.num_13;
    d_sorte_resultado_num_anterior [14] := d_sorte_resultado_num.num_14;
    d_sorte_resultado_num_anterior [15] := d_sorte_resultado_num.num_15;
    d_sorte_resultado_num_anterior [16] := d_sorte_resultado_num.num_16;
    d_sorte_resultado_num_anterior [17] := d_sorte_resultado_num.num_17;
    d_sorte_resultado_num_anterior [18] := d_sorte_resultado_num.num_18;
    d_sorte_resultado_num_anterior [19] := d_sorte_resultado_num.num_19;
    d_sorte_resultado_num_anterior [20] := d_sorte_resultado_num.num_20;
    d_sorte_resultado_num_anterior [21] := d_sorte_resultado_num.num_21;
    d_sorte_resultado_num_anterior [22] := d_sorte_resultado_num.num_22;
    d_sorte_resultado_num_anterior [23] := d_sorte_resultado_num.num_23;
    d_sorte_resultado_num_anterior [24] := d_sorte_resultado_num.num_24;
    d_sorte_resultado_num_anterior [25] := d_sorte_resultado_num.num_25;
    d_sorte_resultado_num_anterior [26] := d_sorte_resultado_num.num_26;
    d_sorte_resultado_num_anterior [27] := d_sorte_resultado_num.num_27;
    d_sorte_resultado_num_anterior [28] := d_sorte_resultado_num.num_28;
    d_sorte_resultado_num_anterior [29] := d_sorte_resultado_num.num_29;
    d_sorte_resultado_num_anterior [30] := d_sorte_resultado_num.num_30;
    d_sorte_resultado_num_anterior [31] := d_sorte_resultado_num.num_31;

  END LOOP;

END;
$$;


/**
  Nesta function, irei atualizar todas as combinações do jogo dia_de_sorte,
  contabiliza a quantidade de bolas novas x repetidas em relação à combinação
  do concurso escolhido.
 */
DROP FUNCTION IF EXISTS d_sorte.fn_d_sorte_novos_repetidos( NUMERIC );
CREATE FUNCTION d_sorte.fn_d_sorte_novos_repetidos(concurso_escolhido NUMERIC)
  RETURNS VOID
LANGUAGE plpgsql
AS
$$
DECLARE
  d_sorte_resultado_num          d_sorte.d_sorte_resultado_num%ROWTYPE;
  d_sorte_num                    d_sorte.d_sorte_num%ROWTYPE;
  bolas_resultado_num            NUMERIC [32];
  bolas_num                      NUMERIC [32];
  uA                             NUMERIC;
  id_sequencial_exclusivo_por_qt NUMERIC [8];
  qt_bolas_novas                 NUMERIC;
  qt_bolas_repetidas             NUMERIC;
  qt_registros_lidos             NUMERIC;
BEGIN

  TRUNCATE d_sorte.d_sorte_novos_repetidos;

  -- Zera o identificador sequencial exclusivo por qt.
  FOR uA IN 0..7 LOOP
    id_sequencial_exclusivo_por_qt [uA] := 0;
  END LOOP;

  SELECT *
  INTO d_sorte_resultado_num
  FROM d_sorte.d_sorte_resultado_num
  WHERE concurso = concurso_escolhido;

  IF d_sorte_resultado_num IS NULL
  THEN
    RAISE NOTICE 'Nenhum registro localizado pra o concurso: %', concurso_escolhido;
    RETURN;
  END IF;

  -- Copia as bolas do concurso escolhido pra um vetor, ficará bem mais fácil,
  -- percorrer cada bola.
  bolas_resultado_num [1] := d_sorte_resultado_num.num_1;
  bolas_resultado_num [2] := d_sorte_resultado_num.num_2;
  bolas_resultado_num [3] := d_sorte_resultado_num.num_3;
  bolas_resultado_num [4] := d_sorte_resultado_num.num_4;
  bolas_resultado_num [5] := d_sorte_resultado_num.num_5;
  bolas_resultado_num [6] := d_sorte_resultado_num.num_6;
  bolas_resultado_num [7] := d_sorte_resultado_num.num_7;
  bolas_resultado_num [8] := d_sorte_resultado_num.num_8;
  bolas_resultado_num [9] := d_sorte_resultado_num.num_9;
  bolas_resultado_num [10] := d_sorte_resultado_num.num_10;
  bolas_resultado_num [11] := d_sorte_resultado_num.num_11;
  bolas_resultado_num [12] := d_sorte_resultado_num.num_12;
  bolas_resultado_num [13] := d_sorte_resultado_num.num_13;
  bolas_resultado_num [14] := d_sorte_resultado_num.num_14;
  bolas_resultado_num [15] := d_sorte_resultado_num.num_15;
  bolas_resultado_num [16] := d_sorte_resultado_num.num_16;
  bolas_resultado_num [17] := d_sorte_resultado_num.num_17;
  bolas_resultado_num [18] := d_sorte_resultado_num.num_18;
  bolas_resultado_num [19] := d_sorte_resultado_num.num_19;
  bolas_resultado_num [20] := d_sorte_resultado_num.num_20;
  bolas_resultado_num [21] := d_sorte_resultado_num.num_21;
  bolas_resultado_num [22] := d_sorte_resultado_num.num_22;
  bolas_resultado_num [23] := d_sorte_resultado_num.num_23;
  bolas_resultado_num [24] := d_sorte_resultado_num.num_24;
  bolas_resultado_num [25] := d_sorte_resultado_num.num_25;
  bolas_resultado_num [26] := d_sorte_resultado_num.num_26;
  bolas_resultado_num [27] := d_sorte_resultado_num.num_27;
  bolas_resultado_num [28] := d_sorte_resultado_num.num_28;
  bolas_resultado_num [29] := d_sorte_resultado_num.num_29;
  bolas_resultado_num [30] := d_sorte_resultado_num.num_30;
  bolas_resultado_num [31] := d_sorte_resultado_num.num_31;

  qt_registros_lidos := 0;
  FOR d_sorte_num IN SELECT *
                     FROM d_sorte.d_sorte_num
                     ORDER BY d_sorte_id
  LOOP
    -- Copia as bolas da combinação atual.
    bolas_num [1] := d_sorte_num.num_1;
    bolas_num [2] := d_sorte_num.num_2;
    bolas_num [3] := d_sorte_num.num_3;
    bolas_num [4] := d_sorte_num.num_4;
    bolas_num [5] := d_sorte_num.num_5;
    bolas_num [6] := d_sorte_num.num_6;
    bolas_num [7] := d_sorte_num.num_7;
    bolas_num [8] := d_sorte_num.num_8;
    bolas_num [9] := d_sorte_num.num_9;
    bolas_num [10] := d_sorte_num.num_10;
    bolas_num [11] := d_sorte_num.num_11;
    bolas_num [12] := d_sorte_num.num_12;
    bolas_num [13] := d_sorte_num.num_13;
    bolas_num [14] := d_sorte_num.num_14;
    bolas_num [15] := d_sorte_num.num_15;
    bolas_num [16] := d_sorte_num.num_16;
    bolas_num [17] := d_sorte_num.num_17;
    bolas_num [18] := d_sorte_num.num_18;
    bolas_num [19] := d_sorte_num.num_19;
    bolas_num [20] := d_sorte_num.num_20;
    bolas_num [21] := d_sorte_num.num_21;
    bolas_num [22] := d_sorte_num.num_22;
    bolas_num [23] := d_sorte_num.num_23;
    bolas_num [24] := d_sorte_num.num_24;
    bolas_num [25] := d_sorte_num.num_25;
    bolas_num [26] := d_sorte_num.num_26;
    bolas_num [27] := d_sorte_num.num_27;
    bolas_num [28] := d_sorte_num.num_28;
    bolas_num [29] := d_sorte_num.num_29;
    bolas_num [30] := d_sorte_num.num_30;
    bolas_num [31] := d_sorte_num.num_31;

    -- Compara as bolas da combinação atual com as bolas
    -- do concurso escolhido.
    qt_bolas_repetidas := 0;
    qt_bolas_novas := 0;
    FOR uA IN 1..31 LOOP
      IF bolas_num [uA] = 1 AND bolas_resultado_num [uA] = 0
      THEN
        qt_bolas_novas := qt_bolas_novas + 1;
      ELSEIF bolas_num [uA] = 1 AND bolas_resultado_num [uA] = 1
        THEN
          qt_bolas_repetidas := qt_bolas_repetidas + 1;
      END IF;
    END LOOP;

    -- Verifica se está dentro da faixa válida:
    IF (qt_bolas_repetidas < 0) OR (qt_bolas_repetidas > 7) OR
       (qt_bolas_repetidas < 0) OR (qt_bolas_repetidas > 7)
    THEN

      IF (qt_bolas_repetidas < 0) OR (qt_bolas_repetidas > 7) AND
                                     (qt_bolas_repetidas < 0) OR (qt_bolas_repetidas > 7)
      THEN
        RAISE 'Erro, concurso: %, qt_bolas_novas e qt_bolas_repetidas deve estar na faixa de 0 a 7', d_sorte_resultado_num.concurso;
        RETURN;
      END IF;

      IF (qt_bolas_repetidas < 0) OR (qt_bolas_repetidas > 7)
      THEN
        RAISE 'Erro, concurso: %, qt_bolas_novas não está no intervalo de 0 a 7 ', d_sorte_resultado_num.concurso;
        RETURN;
      END IF;

      IF (qt_bolas_repetidas < 0 OR qt_bolas_repetidas > 7)
      THEN
        RAISE 'Erro, concurso: %, qt_bolas_repetidas não está no intervalo de 0 a 7 ', d_sorte_resultado_num.concurso;
        RETURN;
      END IF;

    END IF;

    -- Incrementa o identificador sequencial exclusiva pra cada valor.
    id_sequencial_exclusivo_por_qt [qt_bolas_repetidas] := id_sequencial_exclusivo_por_qt [qt_bolas_repetidas] + 1;

    -- Observe abaixo que novos_repetidos_id é igual à quantidade de bolas novas.
    INSERT INTO d_sorte.d_sorte_novos_repetidos (d_sorte_id, d_sorte_qt, concurso, novos_repetidos_id, id_seq_exc_novos_repetidos_id)
    VALUES (d_sorte_num.d_sorte_id, d_sorte_num.d_sorte_qt, concurso_escolhido,
            qt_bolas_novas, id_sequencial_exclusivo_por_qt [qt_bolas_repetidas]);

    qt_registros_lidos := qt_registros_lidos + 1;
    RAISE NOTICE 'Registros lidos: %, Insert d_sorte_id: %, id_seq_exclusivo_por_qt: %', qt_registros_lidos, d_sorte_num.d_sorte_id,
    id_sequencial_exclusivo_por_qt [qt_bolas_repetidas];

  END LOOP;


END;
$$;


/**
  Uma view que retorna a quantidade de vezes
 */
DROP VIEW IF EXISTS d_sorte.v_d_sorte_resultado_novos_repetidos;
CREATE VIEW d_sorte.v_d_sorte_resultado_novos_repetidos AS
  SELECT
    ltf_a.novos_repetidos_id,
    qt_novos,
    qt_repetidos,
    CASE WHEN qt_vz IS NULL
      THEN 0
    ELSE qt_vz END res_qt
  FROM d_sorte.d_sorte_id_novos_repetidos ltf_a LEFT JOIN
    (SELECT
       novos_repetidos_id,
       count(*) AS qt_vz
     FROM d_sorte.d_sorte_resultado_novos_repetidos
     GROUP BY novos_repetidos_id
     ORDER BY qt_vz DESC) ltf_b
      ON ltf_a.novos_repetidos_id = ltf_b.novos_repetidos_id
  ORDER BY qt_vz DESC;


SELECT
FROM d_sorte.fn_d_sorte_resultado_novos_repetidos();

Select from d_sorte.fn_d_sorte_resultado_novos_repetidos_2(48);


SELECT
FROM d_sorte.fn_d_sorte_novos_repetidos(48);
