/**
  Autor:      Fábio Moura de Oliveira
  Descrição:  Armazena a comparação de duas combinações, coluna por coluna.

  No banco de dados, todas as combinações, tem estas características.
  A bola da esquerda sempre é menor que a bola direita.
  A menor bola de uma combinação sempre está na coluna b_1,
  A maior bola de uma combinação sempre está na coluna b_15, b_16, b_17, ou b_18,
  conforme a quantidade de bolas daquela combinação.

  Com isto, conseguirmos comparar duas combinações, coluna por coluna.

  A comparação de combinações, sempre ocorre com as combinações do concurso
  sorteado, comparando os concursos sequencialmente e em ordem crescente.

  Na lotofacil, em cada coluna, a bola pode ser mover 10 posições pra cima
  ou 10 posições pra baixo, conforme o valor da bola.
  Por exemplo, ao comparar duas combinações, cada coluna pode ter os valores
  de -10 a 10, pra isto, segue exemplo:



 */

/**
  Armazena o identificador pra cada combinação possível.
  No caso da lotofacil, o íntervalo é de -10 a 10, segue-se abaixo,
  como cheguei este valor:
  A menor bola na posição b_1 é 1 e a maior, considera a quantidade de bolas
  de 15 a 18 números, é 11.
  Então, se há duas combinações, por exemplo:
  [A] 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15 => A primeira combinação com 15 bolas.
  [B] 11,12,13,14,15,16,17,18,19,20,21,22,23,24,25 => A última combinação com 15 bolas,
  Podemos comparar A com B ou B com A, fazendo:
  [A-B] -10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10,-10
  [B-A] 10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,

 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna;
CREATE TABLE lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna (
  cmp_b_id NUMERIC NOT NULL PRIMARY KEY CHECK (cmp_b_id BETWEEN -10 AND 10)
);

/**
  Serve pra popular a tabela com os valores dos ids.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_id_comparacao_de_bolas_na_mesma_coluna();
CREATE FUNCTION lotofacil.fn_lotofacil_id_comparacao_de_bolas_na_mesma_coluna()
  RETURNS VOID
LANGUAGE plpgsql AS
$$
DECLARE
  uA NUMERIC;
BEGIN
  DELETE FROM lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna;
  FOR uA IN -10 .. 10 LOOP
    INSERT INTO lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna (cmp_b_id) VALUES (uA);
  END LOOP;
END;
$$;

SELECT lotofacil.fn_lotofacil_id_comparacao_de_bolas_na_mesma_coluna();


DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna;
CREATE TABLE lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna (
  concurso_anterior                  NUMERIC  NOT NULL,
  concurso_atual                     NUMERIC  NOT NULL,
  cmp_b1                             SMALLINT NOT NULL CHECK (cmp_b1 BETWEEN -10 AND 10),
  cmp_b2                             SMALLINT NOT NULL CHECK (cmp_b2 BETWEEN -10 AND 10),
  cmp_b3                             SMALLINT NOT NULL CHECK (cmp_b3 BETWEEN -10 AND 10),
  cmp_b4                             SMALLINT NOT NULL CHECK (cmp_b4 BETWEEN -10 AND 10),
  cmp_b5                             SMALLINT NOT NULL CHECK (cmp_b5 BETWEEN -10 AND 10),
  cmp_b6                             SMALLINT NOT NULL CHECK (cmp_b6 BETWEEN -10 AND 10),
  cmp_b7                             SMALLINT NOT NULL CHECK (cmp_b7 BETWEEN -10 AND 10),
  cmp_b8                             SMALLINT NOT NULL CHECK (cmp_b8 BETWEEN -10 AND 10),
  cmp_b9                             SMALLINT NOT NULL CHECK (cmp_b9 BETWEEN -10 AND 10),
  cmp_b10                            SMALLINT NOT NULL CHECK (cmp_b10 BETWEEN -10 AND 10),
  cmp_b11                            SMALLINT NOT NULL CHECK (cmp_b11 BETWEEN -10 AND 10),
  cmp_b12                            SMALLINT NOT NULL CHECK (cmp_b12 BETWEEN -10 AND 10),
  cmp_b13                            SMALLINT NOT NULL CHECK (cmp_b13 BETWEEN -10 AND 10),
  cmp_b14                            SMALLINT NOT NULL CHECK (cmp_b14 BETWEEN -10 AND 10),
  cmp_b15                            SMALLINT NOT NULL CHECK (cmp_b15 BETWEEN -10 AND 10),

  cmp_soma                           NUMERIC  NOT NULL,
  cmp_menor_igual_ou_maior_q_zero_id NUMERIC  NOT NULL,

  CONSTRAINT lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna_fk_1 FOREIGN KEY (cmp_b1) REFERENCES lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna (cmp_b_id),
  CONSTRAINT lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna_fk_2 FOREIGN KEY (cmp_b2) REFERENCES lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna (cmp_b_id),
  CONSTRAINT lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna_fk_3 FOREIGN KEY (cmp_b3) REFERENCES lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna (cmp_b_id),
  CONSTRAINT lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna_fk_4 FOREIGN KEY (cmp_b4) REFERENCES lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna (cmp_b_id),
  CONSTRAINT lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna_fk_5 FOREIGN KEY (cmp_b5) REFERENCES lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna (cmp_b_id),
  CONSTRAINT lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna_fk_6 FOREIGN KEY (cmp_b6) REFERENCES lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna (cmp_b_id),
  CONSTRAINT lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna_fk_7 FOREIGN KEY (cmp_b7) REFERENCES lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna (cmp_b_id),
  CONSTRAINT lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna_fk_8 FOREIGN KEY (cmp_b8) REFERENCES lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna (cmp_b_id),
  CONSTRAINT lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna_fk_9 FOREIGN KEY (cmp_b9) REFERENCES lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna (cmp_b_id),
  CONSTRAINT lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna_fk_10 FOREIGN KEY (cmp_b10) REFERENCES lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna (cmp_b_id),
  CONSTRAINT lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna_fk_11 FOREIGN KEY (cmp_b11) REFERENCES lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna (cmp_b_id),
  CONSTRAINT lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna_fk_12 FOREIGN KEY (cmp_b12) REFERENCES lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna (cmp_b_id),
  CONSTRAINT lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna_fk_13 FOREIGN KEY (cmp_b13) REFERENCES lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna (cmp_b_id),
  CONSTRAINT lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna_fk_14 FOREIGN KEY (cmp_b14) REFERENCES lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna (cmp_b_id),
  CONSTRAINT lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna_fk_15 FOREIGN KEY (cmp_b15) REFERENCES lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna (cmp_b_id)
);

/**
  Cria uma view que comparar os concursos já inseridos com o concurso já comparados.
  Aqui, devemos pegar todos os concursos dos campos 'concurso_anterior' e 'concurso_atual'
  e em seguida comparar com os concursos já sorteados.
 */
DROP VIEW IF EXISTS lotofacil.v_ltf_res_comparacao_de_bolas_na_mesma_coluna_status;
CREATE VIEW lotofacil.v_ltf_res_comparacao_de_bolas_na_mesma_coluna_status
  AS
    SELECT
      ltf_a.concurso   concurso,
      CASE WHEN ltf_b.concurso IS NULL
        THEN
          'PENDENTE'
      ELSE 'OK' END AS status
    FROM lotofacil.lotofacil_resultado_bolas ltf_a LEFT JOIN (

                                                               SELECT concurso_atual AS concurso
                                                               FROM
                                                                 lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna
                                                               UNION
                                                               SELECT concurso_anterior AS concurso
                                                               FROM
                                                                 lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna
                                                               ORDER BY concurso DESC) ltf_b
        ON ltf_a.concurso = ltf_b.concurso
    ORDER BY status ASC, ltf_a.concurso DESC;


/**
  Esta tabela armazena pra cada combinação possível, um identificador único.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_cmp_menor_igual_ou_maior_q_zero;
CREATE TABLE lotofacil.lotofacil_id_cmp_menor_igual_ou_maior_q_zero (
  cmp_menor_igual_ou_maior_q_zero_id NUMERIC NOT NULL PRIMARY KEY,
  ltf_qt                             NUMERIC NOT NULL CHECK (ltf_qt BETWEEN 15 AND 18),
  qt_menor_q_zero                    NUMERIC NOT NULL CHECK (qt_menor_q_zero BETWEEN 0 AND 18),
  qt_igual_a_zero                    NUMERIC NOT NULL CHECK (qt_igual_a_zero BETWEEN 0 AND 18),
  qt_maior_q_zero                    NUMERIC NOT NULL CHECK (qt_maior_q_zero BETWEEN 0 AND 18),
  CONSTRAINT lotofacil_id_cmp_menor_igual_ou_maior_q_zero CHECK (qt_menor_q_zero + qt_igual_a_zero + qt_maior_q_zero =
                                                                 ltf_qt )
);

/**
  Criando função pra popular os dados da tabela criada acima, isto,
  será em breve implementado no gerador 'ltk_d_sorte_csv'.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_id_cmp_menor_igual_ou_maior_q_zero();
CREATE FUNCTION lotofacil.fn_lotofacil_id_cmp_menor_igual_ou_maior_q_zero()
  RETURNS VOID
LANGUAGE plpgsql AS
$$
DECLARE

  qt_negativa                   NUMERIC;
  qt_zero                       NUMERIC;
  qt_positiva                   NUMERIC;

  id_cmp_negativa_zero_positiva NUMERIC;
  qt_soma                       NUMERIC;
  lotofacil_qt                  NUMERIC;

BEGIN

  DELETE FROM lotofacil.lotofacil_id_cmp_menor_igual_ou_maior_q_zero;

  id_cmp_negativa_zero_positiva := 0;
  FOR lotofacil_qt IN 15 .. 18 LOOP
    FOR qt_negativa IN 0 .. 18 LOOP
      FOR qt_zero IN 0 .. 18 LOOP
        FOR qt_positiva IN 0 .. 18 LOOP
          qt_soma := qt_negativa + qt_zero + qt_positiva;
          IF qt_soma = lotofacil_qt
          THEN
            id_cmp_negativa_zero_positiva := id_cmp_negativa_zero_positiva + 1;
            INSERT INTO lotofacil.lotofacil_id_cmp_menor_igual_ou_maior_q_zero (cmp_menor_igual_ou_maior_q_zero_id,
                                                                                ltf_qt, qt_menor_q_zero, qt_igual_a_zero, qt_maior_q_zero)
            VALUES (id_cmp_negativa_zero_positiva, lotofacil_qt, qt_negativa, qt_zero, qt_positiva);
          END IF;
        END LOOP;
      END LOOP;
    END LOOP;
  END LOOP;

END;
$$;

SELECT
FROM lotofacil.fn_lotofacil_id_cmp_menor_igual_ou_maior_q_zero();


DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_cmp_menor_igual_ou_maior_q_zero;
CREATE VIEW lotofacil.v_lotofacil_resultado_cmp_menor_igual_ou_maior_q_zero AS
  SELECT
    tabela_a.cmp_menor_igual_ou_maior_q_zero_id,
    qt_menor_q_zero,
    qt_igual_a_zero,
    qt_maior_q_zero,
    count(tabela_b.cmp_menor_igual_ou_maior_q_zero_id) AS qt_vezes
  FROM lotofacil.lotofacil_id_cmp_menor_igual_ou_maior_q_zero tabela_a
    LEFT JOIN lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna tabela_b
      ON tabela_a.cmp_menor_igual_ou_maior_q_zero_id =
         tabela_b.cmp_menor_igual_ou_maior_q_zero_id
  WHERE tabela_a.ltf_qt = 15
  GROUP BY
    qt_menor_q_zero,
    qt_igual_a_zero,
    qt_maior_q_zero,
    tabela_a.cmp_menor_igual_ou_maior_q_zero_id
  ORDER BY qt_vezes DESC;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_cmp_menor_igual_ou_maior_q_zero( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_cmp_menor_igual_ou_maior_q_zero(NUMERIC, NUMERIC)
  RETURNS
    TABLE(
      cmp_b_id                   NUMERIC,
      qt_bolas_descendo_b1_a_b15 NUMERIC,
      qt_bolas_comuns_b1_a_b15   NUMERIC
    ) LANGUAGE plpgsql
AS $$
DECLARE
BEGIN
  RETURN QUERY

  SELECT
    lotofacil_id_cmp_menor_igual_ou_maior_q_zero.cmp_menor_igual_ou_maior_q_zero_id,
    lotofacil_id_cmp_menor_igual_ou_maior_q_zero.qt_menor_q_zero,
    lotofacil_id_cmp_menor_igual_ou_maior_q_zero.qt_igual_a_zero,
    lotofacil_id_cmp_menor_igual_ou_maior_q_zero.qt_maior_q_zero,
    count(*) AS qt_vezes
  FROM
    lotofacil.lotofacil_id_cmp_menor_igual_ou_maior_q_zero
    LEFT JOIN lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna
      ON lotofacil_id_cmp_menor_igual_ou_maior_q_zero.cmp_menor_igual_ou_maior_q_zero_id =
         lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna.cmp_menor_igual_ou_maior_q_zero_id
  WHERE lotofacil_id_cmp_menor_igual_ou_maior_q_zero.ltf_qt = 15
  GROUP BY
    lotofacil_id_cmp_menor_igual_ou_maior_q_zero.cmp_menor_igual_ou_maior_q_zero_id,
    lotofacil_id_cmp_menor_igual_ou_maior_q_zero.qt_menor_q_zero,
    lotofacil_id_cmp_menor_igual_ou_maior_q_zero.qt_igual_a_zero,
    lotofacil_id_cmp_menor_igual_ou_maior_q_zero.qt_maior_q_zero

  ORDER BY qt_vezes DESC;

END;
$$;


/**
  Percorre todos os concursos já sorteados, em ordem crescente, comparando a combinação do concurso
  atual com a combinação do concurso anterior, coluna por coluna.
  A cada comparação, o valor da comparação de cada coluna é armazenado em uma tabela
  de nome 'd_dorte_resultado_comparacao_de_bolas_na_mesma_coluna'.

 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna();
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna()
  RETURNS VOID
LANGUAGE plpgsql
AS
$$
DECLARE
  bolas_concurso_anterior       SMALLINT [16];
  bolas_concurso_atual          SMALLINT [16];
  comparacao_entre_concursos    SMALLINT [16];
  soma_das_diferencas           NUMERIC;

  concurso_atual                lotofacil.lotofacil_resultado_bolas%ROWTYPE;
  primeiro_iteracao_loop        BOOLEAN;

  sinal_do_numero               NUMERIC;
  uA                            NUMERIC;

  qt_comparacao_negativa        NUMERIC;
  qt_comparacao_zero            NUMERIC;
  qt_comparacao_positiva        NUMERIC;
  id_cmp_negativa_zero_positiva NUMERIC;

BEGIN
  -- Devemos atualizar todos os registros, por isto, iremos deletar todos os dados.
  DELETE FROM lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna;

  -- Esta variável serve pra indicar que é a primeira vez
  -- que a iteração do loop será executada, nisto, iremos
  -- armazenar alguns valores no arranjo bolas_concurso_anterior.
  primeiro_iteracao_loop := TRUE;

  FOR concurso_atual IN SELECT *
                        FROM lotofacil.lotofacil_resultado_bolas
                        ORDER BY concurso ASC
  LOOP
    IF primeiro_iteracao_loop = TRUE
    THEN
      primeiro_iteracao_loop = FALSE;
      /*
        Na primeira iteração, iremos armazenar os dados do concurso
        atual que será o concurso anterior na próxima iteração.
       */
      bolas_concurso_anterior [0] := concurso_atual.concurso;
      bolas_concurso_anterior [1] := concurso_atual.b_1;
      bolas_concurso_anterior [2] := concurso_atual.b_2;
      bolas_concurso_anterior [3] := concurso_atual.b_3;
      bolas_concurso_anterior [4] := concurso_atual.b_4;
      bolas_concurso_anterior [5] := concurso_atual.b_5;
      bolas_concurso_anterior [6] := concurso_atual.b_6;
      bolas_concurso_anterior [7] := concurso_atual.b_7;
      bolas_concurso_anterior [8] := concurso_atual.b_8;
      bolas_concurso_anterior [9] := concurso_atual.b_9;
      bolas_concurso_anterior [10] := concurso_atual.b_10;
      bolas_concurso_anterior [11] := concurso_atual.b_11;
      bolas_concurso_anterior [12] := concurso_atual.b_12;
      bolas_concurso_anterior [13] := concurso_atual.b_13;
      bolas_concurso_anterior [14] := concurso_atual.b_14;
      bolas_concurso_anterior [15] := concurso_atual.b_15;

      CONTINUE;
    END IF;
    /**
      Pega os dados do concurso atual.
     */
    bolas_concurso_atual [0] := concurso_atual.concurso;
    bolas_concurso_atual [1] := concurso_atual.b_1;
    bolas_concurso_atual [2] := concurso_atual.b_2;
    bolas_concurso_atual [3] := concurso_atual.b_3;
    bolas_concurso_atual [4] := concurso_atual.b_4;
    bolas_concurso_atual [5] := concurso_atual.b_5;
    bolas_concurso_atual [6] := concurso_atual.b_6;
    bolas_concurso_atual [7] := concurso_atual.b_7;
    bolas_concurso_atual [8] := concurso_atual.b_8;
    bolas_concurso_atual [9] := concurso_atual.b_9;
    bolas_concurso_atual [10] := concurso_atual.b_10;
    bolas_concurso_atual [11] := concurso_atual.b_11;
    bolas_concurso_atual [12] := concurso_atual.b_12;
    bolas_concurso_atual [13] := concurso_atual.b_13;
    bolas_concurso_atual [14] := concurso_atual.b_14;
    bolas_concurso_atual [15] := concurso_atual.b_15;

    /**
      Agora, iremos comparar cada bola da mesma coluna do concurso atual
      com o concurso anterior.
      Pra isto, o arranjo 'bolas_concurso_anterior' irá armazenar as bolas
      do concurso anterior e o arranjo 'bolas_concurso_atual' irá armazenar
      as bolas do concurso atual.
      A comparação é bem simples, iremos realizar a diferença entre o concurso
      atual menos o concurso anterior.
      O resultado da diferença será armazenada no arranjo 'comparacao_entre_concursos'.
      O resultado da diferença será negativa se a bola do concurso atual é menor que
      a bola do concurso anterior, considerando que a bola está na mesma coluna em ambos concursos.
      O resultado da diferença será um valor igual a zero, se a bola é igual na mesma coluna
      no concurso atual e concurso anterior.
      E o resultado da diferença será positivo se a bola do concurso atual é maior que a bola
      do concurso anterior e que tais bolas estejam na mesma coluna em que a comparação está sendo feita.
     */
    comparacao_entre_concursos [1] := bolas_concurso_atual [1] - bolas_concurso_anterior [1];
    comparacao_entre_concursos [2] := bolas_concurso_atual [2] - bolas_concurso_anterior [2];
    comparacao_entre_concursos [3] := bolas_concurso_atual [3] - bolas_concurso_anterior [3];
    comparacao_entre_concursos [4] := bolas_concurso_atual [4] - bolas_concurso_anterior [4];
    comparacao_entre_concursos [5] := bolas_concurso_atual [5] - bolas_concurso_anterior [5];
    comparacao_entre_concursos [6] := bolas_concurso_atual [6] - bolas_concurso_anterior [6];
    comparacao_entre_concursos [7] := bolas_concurso_atual [7] - bolas_concurso_anterior [7];
    comparacao_entre_concursos [8] := bolas_concurso_atual [8] - bolas_concurso_anterior [8];
    comparacao_entre_concursos [9] := bolas_concurso_atual [9] - bolas_concurso_anterior [9];
    comparacao_entre_concursos [10] := bolas_concurso_atual [10] - bolas_concurso_anterior [10];
    comparacao_entre_concursos [11] := bolas_concurso_atual [11] - bolas_concurso_anterior [11];
    comparacao_entre_concursos [12] := bolas_concurso_atual [12] - bolas_concurso_anterior [12];
    comparacao_entre_concursos [13] := bolas_concurso_atual [13] - bolas_concurso_anterior [13];
    comparacao_entre_concursos [14] := bolas_concurso_atual [14] - bolas_concurso_anterior [14];
    comparacao_entre_concursos [15] := bolas_concurso_atual [15] - bolas_concurso_anterior [15];

    soma_das_diferencas = comparacao_entre_concursos [1] + comparacao_entre_concursos [2] +
                          comparacao_entre_concursos [3] + comparacao_entre_concursos [4] +
                          comparacao_entre_concursos [5] +
                          comparacao_entre_concursos [6] + comparacao_entre_concursos [7] +
                          comparacao_entre_concursos [8] + comparacao_entre_concursos [9] +
                          comparacao_entre_concursos [10] + comparacao_entre_concursos [11] +
                          comparacao_entre_concursos [12] + comparacao_entre_concursos [13] +
                          comparacao_entre_concursos [14] + comparacao_entre_concursos [15];

    /**
      Vamos percorrer todos os campos do registros atual e contabiliza
      a quantidade de comparação negativa, positiva e com valor zero.
     */
    qt_comparacao_negativa := 0;
    qt_comparacao_zero := 0;
    qt_comparacao_positiva := 0;
    FOR uA IN 1 .. 15 LOOP
      sinal_do_numero := sign(comparacao_entre_concursos [uA]);

      CASE
        WHEN sinal_do_numero = -1
        THEN qt_comparacao_negativa := qt_comparacao_negativa + 1;
        WHEN sinal_do_numero = 0
        THEN qt_comparacao_zero := qt_comparacao_zero + 1;
        WHEN sinal_do_numero = 1
        THEN qt_comparacao_positiva := qt_comparacao_positiva + 1;
      END CASE;
    END LOOP;

    /**
      Pega o id referente à contabilização das comparações acima da tabela
      lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna.
     */
    SELECT cmp_menor_igual_ou_maior_q_zero_id
    INTO id_cmp_negativa_zero_positiva
    FROM lotofacil.lotofacil_id_cmp_menor_igual_ou_maior_q_zero
    WHERE qt_menor_q_zero = qt_comparacao_negativa AND
          qt_igual_a_zero = qt_comparacao_zero AND
          qt_maior_q_zero = qt_comparacao_positiva;

    IF id_cmp_negativa_zero_positiva IS NULL
    THEN
      RAISE 'id_cmp_negativa_zero_positiva não pode ser null.';
      RETURN;
    END IF;

    INSERT INTO lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna (concurso_anterior,
                                                                                   concurso_atual,
                                                                                   cmp_b1,
                                                                                   cmp_b2,
                                                                                   cmp_b3,
                                                                                   cmp_b4,
                                                                                   cmp_b5,
                                                                                   cmp_b6,
                                                                                   cmp_b7,
                                                                                   cmp_b8,
                                                                                   cmp_b9,
                                                                                   cmp_b10,
                                                                                   cmp_b11,
                                                                                   cmp_b12,
                                                                                   cmp_b13,
                                                                                   cmp_b14,
                                                                                   cmp_b15,
                                                                                   cmp_soma,
                                                                                   cmp_menor_igual_ou_maior_q_zero_id

    )
    VALUES (bolas_concurso_anterior [0],
      bolas_concurso_atual [0],
      comparacao_entre_concursos [1],
      comparacao_entre_concursos [2],
      comparacao_entre_concursos [3],
      comparacao_entre_concursos [4],
      comparacao_entre_concursos [5],
      comparacao_entre_concursos [6],
      comparacao_entre_concursos [7],
      comparacao_entre_concursos [8],
      comparacao_entre_concursos [9],
            comparacao_entre_concursos [10],
            comparacao_entre_concursos [11],
            comparacao_entre_concursos [12],
            comparacao_entre_concursos [13],
            comparacao_entre_concursos [14],
            comparacao_entre_concursos [15],

            soma_das_diferencas,
            id_cmp_negativa_zero_positiva
    );

    /**
      Após inserir os dados, devemos mover as bolas do concurso atual pra o arranjo
      bolas_concurso_anterior.
     */
    bolas_concurso_anterior [0] := concurso_atual.concurso;
    bolas_concurso_anterior [1] := concurso_atual.b_1;
    bolas_concurso_anterior [2] := concurso_atual.b_2;
    bolas_concurso_anterior [3] := concurso_atual.b_3;
    bolas_concurso_anterior [4] := concurso_atual.b_4;
    bolas_concurso_anterior [5] := concurso_atual.b_5;
    bolas_concurso_anterior [6] := concurso_atual.b_6;
    bolas_concurso_anterior [7] := concurso_atual.b_7;
    bolas_concurso_anterior [8] := concurso_atual.b_8;
    bolas_concurso_anterior [9] := concurso_atual.b_9;
    bolas_concurso_anterior [10] := concurso_atual.b_10;
    bolas_concurso_anterior [11] := concurso_atual.b_11;
    bolas_concurso_anterior [12] := concurso_atual.b_12;
    bolas_concurso_anterior [13] := concurso_atual.b_13;
    bolas_concurso_anterior [14] := concurso_atual.b_14;
    bolas_concurso_anterior [15] := concurso_atual.b_15;


  END LOOP;
END;
$$;

SELECT
FROM lotofacil.fn_lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna();


/**
  Esta function é semelhante a function:
  fn_lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna_2, a diferença está
  que vc deve fornecer um intervalo ínicial e final.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna_2(concurso_inicial NUMERIC, concurso_final NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna_2(concurso_inicial NUMERIC,
                                                                                       concurso_final   NUMERIC)
  RETURNS VOID
LANGUAGE plpgsql
AS
$$
DECLARE
  bolas_concurso_anterior       SMALLINT [16];
  bolas_concurso_atual          SMALLINT [16];
  comparacao_entre_concursos    SMALLINT [16];
  soma_das_diferencas           NUMERIC;

  concurso_atual                lotofacil.lotofacil_resultado_bolas%ROWTYPE;
  primeiro_iteracao_loop        BOOLEAN;

  sinal_do_numero               NUMERIC;
  uA                            NUMERIC;

  qt_comparacao_negativa        NUMERIC;
  qt_comparacao_zero            NUMERIC;
  qt_comparacao_positiva        NUMERIC;
  id_cmp_negativa_zero_positiva NUMERIC;

BEGIN
  -- Devemos atualizar todos os registros, por isto, iremos deletar todos os dados.
  DELETE FROM lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna;

  -- Esta variável serve pra indicar que é a primeira vez
  -- que a iteração do loop será executada, nisto, iremos
  -- armazenar alguns valores no arranjo bolas_concurso_anterior.
  primeiro_iteracao_loop := TRUE;

  FOR concurso_atual IN SELECT *
                        FROM lotofacil.lotofacil_resultado_bolas
                        WHERE concurso BETWEEN concurso_inicial AND concurso_final
                        ORDER BY concurso ASC
  LOOP
    IF primeiro_iteracao_loop = TRUE
    THEN
      primeiro_iteracao_loop = FALSE;
      /*
        Na primeira iteração, iremos armazenar os dados do concurso
        atual que será o concurso anterior na próxima iteração.
       */
      bolas_concurso_anterior [0] := concurso_atual.concurso;
      bolas_concurso_anterior [1] := concurso_atual.b_1;
      bolas_concurso_anterior [2] := concurso_atual.b_2;
      bolas_concurso_anterior [3] := concurso_atual.b_3;
      bolas_concurso_anterior [4] := concurso_atual.b_4;
      bolas_concurso_anterior [5] := concurso_atual.b_5;
      bolas_concurso_anterior [6] := concurso_atual.b_6;
      bolas_concurso_anterior [7] := concurso_atual.b_7;
      bolas_concurso_anterior [8] := concurso_atual.b_8;
      bolas_concurso_anterior [9] := concurso_atual.b_9;
      bolas_concurso_anterior [10] := concurso_atual.b_10;
      bolas_concurso_anterior [11] := concurso_atual.b_11;
      bolas_concurso_anterior [12] := concurso_atual.b_12;
      bolas_concurso_anterior [13] := concurso_atual.b_13;
      bolas_concurso_anterior [14] := concurso_atual.b_14;
      bolas_concurso_anterior [15] := concurso_atual.b_15;

      CONTINUE;
    END IF;
    /**
      Pega os dados do concurso atual.
     */
    bolas_concurso_atual [0] := concurso_atual.concurso;
    bolas_concurso_atual [1] := concurso_atual.b_1;
    bolas_concurso_atual [2] := concurso_atual.b_2;
    bolas_concurso_atual [3] := concurso_atual.b_3;
    bolas_concurso_atual [4] := concurso_atual.b_4;
    bolas_concurso_atual [5] := concurso_atual.b_5;
    bolas_concurso_atual [6] := concurso_atual.b_6;
    bolas_concurso_atual [7] := concurso_atual.b_7;
    bolas_concurso_atual [8] := concurso_atual.b_8;
    bolas_concurso_atual [9] := concurso_atual.b_9;
    bolas_concurso_atual [10] := concurso_atual.b_10;
    bolas_concurso_atual [11] := concurso_atual.b_11;
    bolas_concurso_atual [12] := concurso_atual.b_12;
    bolas_concurso_atual [13] := concurso_atual.b_13;
    bolas_concurso_atual [14] := concurso_atual.b_14;
    bolas_concurso_atual [15] := concurso_atual.b_15;

    /**
      Agora, iremos comparar cada bola da mesma coluna do concurso atual
      com o concurso anterior.
      Pra isto, o arranjo 'bolas_concurso_anterior' irá armazenar as bolas
      do concurso anterior e o arranjo 'bolas_concurso_atual' irá armazenar
      as bolas do concurso atual.
      A comparação é bem simples, iremos realizar a diferença entre o concurso
      atual menos o concurso anterior.
      O resultado da diferença será armazenada no arranjo 'comparacao_entre_concursos'.
      O resultado da diferença será negativa se a bola do concurso atual é menor que
      a bola do concurso anterior, considerando que a bola está na mesma coluna em ambos concursos.
      O resultado da diferença será um valor igual a zero, se a bola é igual na mesma coluna
      no concurso atual e concurso anterior.
      E o resultado da diferença será positivo se a bola do concurso atual é maior que a bola
      do concurso anterior e que tais bolas estejam na mesma coluna em que a comparação está sendo feita.
     */
    comparacao_entre_concursos [1] := bolas_concurso_atual [1] - bolas_concurso_anterior [1];
    comparacao_entre_concursos [2] := bolas_concurso_atual [2] - bolas_concurso_anterior [2];
    comparacao_entre_concursos [3] := bolas_concurso_atual [3] - bolas_concurso_anterior [3];
    comparacao_entre_concursos [4] := bolas_concurso_atual [4] - bolas_concurso_anterior [4];
    comparacao_entre_concursos [5] := bolas_concurso_atual [5] - bolas_concurso_anterior [5];
    comparacao_entre_concursos [6] := bolas_concurso_atual [6] - bolas_concurso_anterior [6];
    comparacao_entre_concursos [7] := bolas_concurso_atual [7] - bolas_concurso_anterior [7];
    comparacao_entre_concursos [8] := bolas_concurso_atual [8] - bolas_concurso_anterior [8];
    comparacao_entre_concursos [9] := bolas_concurso_atual [9] - bolas_concurso_anterior [9];
    comparacao_entre_concursos [10] := bolas_concurso_atual [10] - bolas_concurso_anterior [10];
    comparacao_entre_concursos [11] := bolas_concurso_atual [11] - bolas_concurso_anterior [11];
    comparacao_entre_concursos [12] := bolas_concurso_atual [12] - bolas_concurso_anterior [12];
    comparacao_entre_concursos [13] := bolas_concurso_atual [13] - bolas_concurso_anterior [13];
    comparacao_entre_concursos [14] := bolas_concurso_atual [14] - bolas_concurso_anterior [14];
    comparacao_entre_concursos [15] := bolas_concurso_atual [15] - bolas_concurso_anterior [15];

    soma_das_diferencas = comparacao_entre_concursos [1] + comparacao_entre_concursos [2] +
                          comparacao_entre_concursos [3] + comparacao_entre_concursos [4] +
                          comparacao_entre_concursos [5] +
                          comparacao_entre_concursos [6] + comparacao_entre_concursos [7] +
                          comparacao_entre_concursos [8] + comparacao_entre_concursos [9] +
                          comparacao_entre_concursos [10] + comparacao_entre_concursos [11] +
                          comparacao_entre_concursos [12] + comparacao_entre_concursos [13] +
                          comparacao_entre_concursos [14] + comparacao_entre_concursos [15];

    /**
      Vamos percorrer todos os campos do registros atual e contabiliza
      a quantidade de comparação negativa, positiva e com valor zero.
     */
    qt_comparacao_negativa := 0;
    qt_comparacao_zero := 0;
    qt_comparacao_positiva := 0;
    FOR uA IN 1 .. 15 LOOP
      sinal_do_numero := sign(comparacao_entre_concursos [uA]);

      CASE
        WHEN sinal_do_numero = -1
        THEN qt_comparacao_negativa := qt_comparacao_negativa + 1;
        WHEN sinal_do_numero = 0
        THEN qt_comparacao_zero := qt_comparacao_zero + 1;
        WHEN sinal_do_numero = 1
        THEN qt_comparacao_positiva := qt_comparacao_positiva + 1;
      END CASE;
    END LOOP;

    /**
      Pega o id referente à contabilização das comparações acima da tabela
      lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna.
     */
    SELECT cmp_menor_igual_ou_maior_q_zero_id
    INTO id_cmp_negativa_zero_positiva
    FROM lotofacil.lotofacil_id_cmp_menor_igual_ou_maior_q_zero
    WHERE qt_menor_q_zero = qt_comparacao_negativa AND
          qt_igual_a_zero = qt_comparacao_zero AND
          qt_maior_q_zero = qt_comparacao_positiva;

    IF id_cmp_negativa_zero_positiva IS NULL
    THEN
      RAISE 'id_cmp_negativa_zero_positiva não pode ser null.';
      RETURN;
    END IF;

    INSERT INTO lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna (concurso_anterior,
                                                                                   concurso_atual,
                                                                                   cmp_b1,
                                                                                   cmp_b2,
                                                                                   cmp_b3,
                                                                                   cmp_b4,
                                                                                   cmp_b5,
                                                                                   cmp_b6,
                                                                                   cmp_b7,
                                                                                   cmp_b8,
                                                                                   cmp_b9,
                                                                                   cmp_b10,
                                                                                   cmp_b11,
                                                                                   cmp_b12,
                                                                                   cmp_b13,
                                                                                   cmp_b14,
                                                                                   cmp_b15,
                                                                                   cmp_soma,
                                                                                   cmp_menor_igual_ou_maior_q_zero_id

    )
    VALUES (bolas_concurso_anterior [0],
      bolas_concurso_atual [0],
      comparacao_entre_concursos [1],
      comparacao_entre_concursos [2],
      comparacao_entre_concursos [3],
      comparacao_entre_concursos [4],
      comparacao_entre_concursos [5],
      comparacao_entre_concursos [6],
      comparacao_entre_concursos [7],
      comparacao_entre_concursos [8],
      comparacao_entre_concursos [9],
            comparacao_entre_concursos [10],
            comparacao_entre_concursos [11],
            comparacao_entre_concursos [12],
            comparacao_entre_concursos [13],
            comparacao_entre_concursos [14],
            comparacao_entre_concursos [15],

            soma_das_diferencas,
            id_cmp_negativa_zero_positiva
    );

    /**
      Após inserir os dados, devemos mover as bolas do concurso atual pra o arranjo
      bolas_concurso_anterior.
     */
    bolas_concurso_anterior [0] := concurso_atual.concurso;
    bolas_concurso_anterior [1] := concurso_atual.b_1;
    bolas_concurso_anterior [2] := concurso_atual.b_2;
    bolas_concurso_anterior [3] := concurso_atual.b_3;
    bolas_concurso_anterior [4] := concurso_atual.b_4;
    bolas_concurso_anterior [5] := concurso_atual.b_5;
    bolas_concurso_anterior [6] := concurso_atual.b_6;
    bolas_concurso_anterior [7] := concurso_atual.b_7;
    bolas_concurso_anterior [8] := concurso_atual.b_8;
    bolas_concurso_anterior [9] := concurso_atual.b_9;
    bolas_concurso_anterior [10] := concurso_atual.b_10;
    bolas_concurso_anterior [11] := concurso_atual.b_11;
    bolas_concurso_anterior [12] := concurso_atual.b_12;
    bolas_concurso_anterior [13] := concurso_atual.b_13;
    bolas_concurso_anterior [14] := concurso_atual.b_14;
    bolas_concurso_anterior [15] := concurso_atual.b_15;


  END LOOP;
END;
$$;


/**
  Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_cmp_b1_qt_vz;
CREATE VIEW lotofacil.v_lotofacil_resultado_cmp_b1_qt_vz AS
  SELECT
    cmp_b_id,
    CASE WHEN qt_vz IS NULL
      THEN 0
    ELSE qt_vz END qt_vz
  FROM
    lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna tabela_1
    LEFT JOIN (SELECT
                 cmp_b1,
                 count(*) AS qt_vz
               FROM lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna
               GROUP BY cmp_b1) tabela_2
      ON tabela_1.cmp_b_id = tabela_2.cmp_b1
  ORDER BY qt_vz DESC, cmp_b_id ASC;

/**
    Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas, considerando
  um intervalo de concursos.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_cmp_b1_qt_vz_por_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_cmp_b1_qt_vz_por_concurso(concurso_inicial NUMERIC,
                                                                           concurso_final   NUMERIC)
  RETURNS TABLE(comparacao_id NUMERIC, qt_vezes NUMERIC)
LANGUAGE plpgsql
AS
$$
BEGIN
  RETURN QUERY SELECT
                 cmp_b_id :: NUMERIC,
                 CASE WHEN qt_vz IS NULL
                   THEN 0
                 ELSE qt_vz :: NUMERIC END qt_vz
               FROM
                 lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna tabela_1
                 LEFT JOIN (SELECT
                              cmp_b1,
                              count(*) AS qt_vz
                            FROM lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna
                            WHERE concurso_atual >= concurso_inicial AND concurso_anterior <= concurso_final
                            GROUP BY cmp_b1) tabela_2
                   ON tabela_1.cmp_b_id = tabela_2.cmp_b1
               ORDER BY qt_vz DESC, tabela_1.cmp_b_id ASC;
END;
$$;

/**
  Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_cmp_b2_qt_vz;
CREATE VIEW lotofacil.v_lotofacil_resultado_cmp_b2_qt_vz AS
  SELECT
    cmp_b_id,
    CASE WHEN qt_vz IS NULL
      THEN 0
    ELSE qt_vz END qt_vz
  FROM
    lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna tabela_1
    LEFT JOIN (SELECT
                 cmp_b2,
                 count(*) AS qt_vz
               FROM lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna
               GROUP BY cmp_b2) tabela_2
      ON tabela_1.cmp_b_id = tabela_2.cmp_b2
  ORDER BY qt_vz DESC, cmp_b_id ASC;

/**
    Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas, considerando
  um intervalo de concursos.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_cmp_b2_qt_vz_por_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_cmp_b2_qt_vz_por_concurso(concurso_inicial NUMERIC,
                                                                           concurso_final   NUMERIC)
  RETURNS TABLE(comparacao_id NUMERIC, qt_vezes NUMERIC)
LANGUAGE plpgsql
AS
$$
BEGIN
  RETURN QUERY SELECT
                 cmp_b_id :: NUMERIC,
                 CASE WHEN qt_vz IS NULL
                   THEN 0
                 ELSE qt_vz :: NUMERIC END qt_vz
               FROM
                 lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna tabela_1
                 LEFT JOIN (SELECT
                              cmp_b2,
                              count(*) AS qt_vz
                            FROM lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna
                            WHERE concurso_atual >= concurso_inicial AND concurso_anterior <= concurso_final
                            GROUP BY cmp_b2) tabela_2
                   ON tabela_1.cmp_b_id = tabela_2.cmp_b2
               ORDER BY qt_vz DESC, tabela_1.cmp_b_id ASC;
END;
$$;

/**
  Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_cmp_b3_qt_vz;
CREATE VIEW lotofacil.v_lotofacil_resultado_cmp_b3_qt_vz AS
  SELECT
    cmp_b_id,
    CASE WHEN qt_vz IS NULL
      THEN 0
    ELSE qt_vz END qt_vz
  FROM
    lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna tabela_1
    LEFT JOIN (SELECT
                 cmp_b3,
                 count(*) AS qt_vz
               FROM lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna
               GROUP BY cmp_b3) tabela_2
      ON tabela_1.cmp_b_id = tabela_2.cmp_b3
  ORDER BY qt_vz DESC, cmp_b_id ASC;

/**
    Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas, considerando
  um intervalo de concursos.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_cmp_b3_qt_vz_por_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_cmp_b3_qt_vz_por_concurso(concurso_inicial NUMERIC,
                                                                           concurso_final   NUMERIC)
  RETURNS TABLE(comparacao_id NUMERIC, qt_vezes NUMERIC)
LANGUAGE plpgsql
AS
$$
BEGIN
  RETURN QUERY SELECT
                 cmp_b_id :: NUMERIC,
                 CASE WHEN qt_vz IS NULL
                   THEN 0
                 ELSE qt_vz :: NUMERIC END qt_vz
               FROM
                 lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna tabela_1
                 LEFT JOIN (SELECT
                              cmp_b3,
                              count(*) AS qt_vz
                            FROM lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna
                            WHERE concurso_atual >= concurso_inicial AND concurso_anterior <= concurso_final
                            GROUP BY cmp_b3) tabela_2
                   ON tabela_1.cmp_b_id = tabela_2.cmp_b3
               ORDER BY qt_vz DESC, tabela_1.cmp_b_id ASC;
END;
$$;

/**
  Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_cmp_b4_qt_vz;
CREATE VIEW lotofacil.v_lotofacil_resultado_cmp_b4_qt_vz AS
  SELECT
    cmp_b_id,
    CASE WHEN qt_vz IS NULL
      THEN 0
    ELSE qt_vz END qt_vz
  FROM
    lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna tabela_1
    LEFT JOIN (SELECT
                 cmp_b4,
                 count(*) AS qt_vz
               FROM lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna
               GROUP BY cmp_b4) tabela_2
      ON tabela_1.cmp_b_id = tabela_2.cmp_b4
  ORDER BY qt_vz DESC, cmp_b_id ASC;

/**
    Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas, considerando
  um intervalo de concursos.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_cmp_b4_qt_vz_por_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_cmp_b4_qt_vz_por_concurso(concurso_inicial NUMERIC,
                                                                           concurso_final   NUMERIC)
  RETURNS TABLE(comparacao_id NUMERIC, qt_vezes NUMERIC)
LANGUAGE plpgsql
AS
$$
BEGIN
  RETURN QUERY SELECT
                 cmp_b_id :: NUMERIC,
                 CASE WHEN qt_vz IS NULL
                   THEN 0
                 ELSE qt_vz :: NUMERIC END qt_vz
               FROM
                 lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna tabela_1
                 LEFT JOIN (SELECT
                              cmp_b4,
                              count(*) AS qt_vz
                            FROM lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna
                            WHERE concurso_atual >= concurso_inicial AND concurso_anterior <= concurso_final
                            GROUP BY cmp_b4) tabela_2
                   ON tabela_1.cmp_b_id = tabela_2.cmp_b4
               ORDER BY qt_vz DESC, tabela_1.cmp_b_id ASC;
END;
$$;

/**
  Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_cmp_b5_qt_vz;
CREATE VIEW lotofacil.v_lotofacil_resultado_cmp_b5_qt_vz AS
  SELECT
    cmp_b_id,
    CASE WHEN qt_vz IS NULL
      THEN 0
    ELSE qt_vz END qt_vz
  FROM
    lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna tabela_1
    LEFT JOIN (SELECT
                 cmp_b5,
                 count(*) AS qt_vz
               FROM lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna
               GROUP BY cmp_b5) tabela_2
      ON tabela_1.cmp_b_id = tabela_2.cmp_b5
  ORDER BY qt_vz DESC, cmp_b_id ASC;

/**
    Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas, considerando
  um intervalo de concursos.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_cmp_b5_qt_vz_por_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_cmp_b5_qt_vz_por_concurso(concurso_inicial NUMERIC,
                                                                           concurso_final   NUMERIC)
  RETURNS TABLE(comparacao_id NUMERIC, qt_vezes NUMERIC)
LANGUAGE plpgsql
AS
$$
BEGIN
  RETURN QUERY SELECT
                 cmp_b_id :: NUMERIC,
                 CASE WHEN qt_vz IS NULL
                   THEN 0
                 ELSE qt_vz :: NUMERIC END qt_vz
               FROM
                 lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna tabela_1
                 LEFT JOIN (SELECT
                              cmp_b5,
                              count(*) AS qt_vz
                            FROM lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna
                            WHERE concurso_atual >= concurso_inicial AND concurso_anterior <= concurso_final
                            GROUP BY cmp_b5) tabela_2
                   ON tabela_1.cmp_b_id = tabela_2.cmp_b5
               ORDER BY qt_vz DESC, tabela_1.cmp_b_id ASC;
END;
$$;

/**
  Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_cmp_b6_qt_vz;
CREATE VIEW lotofacil.v_lotofacil_resultado_cmp_b6_qt_vz AS
  SELECT
    cmp_b_id,
    CASE WHEN qt_vz IS NULL
      THEN 0
    ELSE qt_vz END qt_vz
  FROM
    lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna tabela_1
    LEFT JOIN (SELECT
                 cmp_b6,
                 count(*) AS qt_vz
               FROM lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna
               GROUP BY cmp_b6) tabela_2
      ON tabela_1.cmp_b_id = tabela_2.cmp_b6
  ORDER BY qt_vz DESC, cmp_b_id ASC;

/**
    Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas, considerando
  um intervalo de concursos.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_cmp_b6_qt_vz_por_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_cmp_b6_qt_vz_por_concurso(concurso_inicial NUMERIC,
                                                                           concurso_final   NUMERIC)
  RETURNS TABLE(comparacao_id NUMERIC, qt_vezes NUMERIC)
LANGUAGE plpgsql
AS
$$
BEGIN
  RETURN QUERY SELECT
                 cmp_b_id :: NUMERIC,
                 CASE WHEN qt_vz IS NULL
                   THEN 0
                 ELSE qt_vz :: NUMERIC END qt_vz
               FROM
                 lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna tabela_1
                 LEFT JOIN (SELECT
                              cmp_b6,
                              count(*) AS qt_vz
                            FROM lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna
                            WHERE concurso_atual >= concurso_inicial AND concurso_anterior <= concurso_final
                            GROUP BY cmp_b6) tabela_2
                   ON tabela_1.cmp_b_id = tabela_2.cmp_b6
               ORDER BY qt_vz DESC, tabela_1.cmp_b_id ASC;
END;
$$;

/**
  Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_cmp_b7_qt_vz;
CREATE VIEW lotofacil.v_lotofacil_resultado_cmp_b7_qt_vz AS
  SELECT
    cmp_b_id,
    CASE WHEN qt_vz IS NULL
      THEN 0
    ELSE qt_vz END qt_vz
  FROM
    lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna tabela_1
    LEFT JOIN (SELECT
                 cmp_b7,
                 count(*) AS qt_vz
               FROM lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna
               GROUP BY cmp_b7) tabela_2
      ON tabela_1.cmp_b_id = tabela_2.cmp_b7
  ORDER BY qt_vz DESC, cmp_b_id ASC;

/**
    Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas, considerando
  um intervalo de concursos.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_cmp_b7_qt_vz_por_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_cmp_b7_qt_vz_por_concurso(concurso_inicial NUMERIC,
                                                                           concurso_final   NUMERIC)
  RETURNS TABLE(comparacao_id NUMERIC, qt_vezes NUMERIC)
LANGUAGE plpgsql
AS
$$
BEGIN
  RETURN QUERY SELECT
                 cmp_b_id :: NUMERIC,
                 CASE WHEN qt_vz IS NULL
                   THEN 0
                 ELSE qt_vz :: NUMERIC END qt_vz
               FROM
                 lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna tabela_1
                 LEFT JOIN (SELECT
                              cmp_b7,
                              count(*) AS qt_vz
                            FROM lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna
                            WHERE concurso_atual >= concurso_inicial AND concurso_anterior <= concurso_final
                            GROUP BY cmp_b7) tabela_2
                   ON tabela_1.cmp_b_id = tabela_2.cmp_b7
               ORDER BY qt_vz DESC, tabela_1.cmp_b_id ASC;
END;
$$;

/**
  Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_cmp_b8_qt_vz;
CREATE VIEW lotofacil.v_lotofacil_resultado_cmp_b8_qt_vz AS
  SELECT
    cmp_b_id,
    CASE WHEN qt_vz IS NULL
      THEN 0
    ELSE qt_vz END qt_vz
  FROM
    lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna tabela_1
    LEFT JOIN (SELECT
                 cmp_b8,
                 count(*) AS qt_vz
               FROM lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna
               GROUP BY cmp_b8) tabela_2
      ON tabela_1.cmp_b_id = tabela_2.cmp_b8
  ORDER BY qt_vz DESC, cmp_b_id ASC;

/**
    Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas, considerando
  um intervalo de concursos.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_cmp_b8_qt_vz_por_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_cmp_b8_qt_vz_por_concurso(concurso_inicial NUMERIC,
                                                                           concurso_final   NUMERIC)
  RETURNS TABLE(comparacao_id NUMERIC, qt_vezes NUMERIC)
LANGUAGE plpgsql
AS
$$
BEGIN
  RETURN QUERY SELECT
                 cmp_b_id :: NUMERIC,
                 CASE WHEN qt_vz IS NULL
                   THEN 0
                 ELSE qt_vz :: NUMERIC END qt_vz
               FROM
                 lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna tabela_1
                 LEFT JOIN (SELECT
                              cmp_b8,
                              count(*) AS qt_vz
                            FROM lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna
                            WHERE concurso_atual >= concurso_inicial AND concurso_anterior <= concurso_final
                            GROUP BY cmp_b8) tabela_2
                   ON tabela_1.cmp_b_id = tabela_2.cmp_b8
               ORDER BY qt_vz DESC, tabela_1.cmp_b_id ASC;
END;
$$;


/**
  Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_cmp_b9_qt_vz;
CREATE VIEW lotofacil.v_lotofacil_resultado_cmp_b9_qt_vz AS
  SELECT
    cmp_b_id,
    CASE WHEN qt_vz IS NULL
      THEN 0
    ELSE qt_vz END qt_vz
  FROM
    lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna tabela_1
    LEFT JOIN (SELECT
                 cmp_b9,
                 count(*) AS qt_vz
               FROM lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna
               GROUP BY cmp_b9) tabela_2
      ON tabela_1.cmp_b_id = tabela_2.cmp_b9
  ORDER BY qt_vz DESC, cmp_b_id ASC;

/**
    Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas, considerando
  um intervalo de concursos.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_cmp_b9_qt_vz_por_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_cmp_b9_qt_vz_por_concurso(concurso_inicial NUMERIC,
                                                                           concurso_final   NUMERIC)
  RETURNS TABLE(comparacao_id NUMERIC, qt_vezes NUMERIC)
LANGUAGE plpgsql
AS
$$
BEGIN
  RETURN QUERY SELECT
                 cmp_b_id :: NUMERIC,
                 CASE WHEN qt_vz IS NULL
                   THEN 0
                 ELSE qt_vz :: NUMERIC END qt_vz
               FROM
                 lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna tabela_1
                 LEFT JOIN (SELECT
                              cmp_b9,
                              count(*) AS qt_vz
                            FROM lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna
                            WHERE concurso_atual >= concurso_inicial AND concurso_anterior <= concurso_final
                            GROUP BY cmp_b9) tabela_2
                   ON tabela_1.cmp_b_id = tabela_2.cmp_b9
               ORDER BY qt_vz DESC, tabela_1.cmp_b_id ASC;
END;
$$;

/**
  Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_cmp_b10_qt_vz;
CREATE VIEW lotofacil.v_lotofacil_resultado_cmp_b10_qt_vz AS
  SELECT
    cmp_b_id,
    CASE WHEN qt_vz IS NULL
      THEN 0
    ELSE qt_vz END qt_vz
  FROM
    lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna tabela_1
    LEFT JOIN (SELECT
                 cmp_b10,
                 count(*) AS qt_vz
               FROM lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna
               GROUP BY cmp_b10) tabela_2
      ON tabela_1.cmp_b_id = tabela_2.cmp_b10
  ORDER BY qt_vz DESC, cmp_b_id ASC;

/**
    Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas, considerando
  um intervalo de concursos.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_cmp_b10_qt_vz_por_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_cmp_b10_qt_vz_por_concurso(concurso_inicial NUMERIC,
                                                                            concurso_final   NUMERIC)
  RETURNS TABLE(comparacao_id NUMERIC, qt_vezes NUMERIC)
LANGUAGE plpgsql
AS
$$
BEGIN
  RETURN QUERY SELECT
                 cmp_b_id :: NUMERIC,
                 CASE WHEN qt_vz IS NULL
                   THEN 0
                 ELSE qt_vz :: NUMERIC END qt_vz
               FROM
                 lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna tabela_1
                 LEFT JOIN (SELECT
                              cmp_b10,
                              count(*) AS qt_vz
                            FROM lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna
                            WHERE concurso_atual >= concurso_inicial AND concurso_anterior <= concurso_final
                            GROUP BY cmp_b10) tabela_2
                   ON tabela_1.cmp_b_id = tabela_2.cmp_b10
               ORDER BY qt_vz DESC, tabela_1.cmp_b_id ASC;
END;
$$;

/**
  Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_cmp_b11_qt_vz;
CREATE VIEW lotofacil.v_lotofacil_resultado_cmp_b11_qt_vz AS
  SELECT
    cmp_b_id,
    CASE WHEN qt_vz IS NULL
      THEN 0
    ELSE qt_vz END qt_vz
  FROM
    lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna tabela_1
    LEFT JOIN (SELECT
                 cmp_b11,
                 count(*) AS qt_vz
               FROM lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna
               GROUP BY cmp_b11) tabela_2
      ON tabela_1.cmp_b_id = tabela_2.cmp_b11
  ORDER BY qt_vz DESC, cmp_b_id ASC;

/**
    Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas, considerando
  um intervalo de concursos.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_cmp_b11_qt_vz_por_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_cmp_b11_qt_vz_por_concurso(concurso_inicial NUMERIC,
                                                                            concurso_final   NUMERIC)
  RETURNS TABLE(comparacao_id NUMERIC, qt_vezes NUMERIC)
LANGUAGE plpgsql
AS
$$
BEGIN
  RETURN QUERY SELECT
                 cmp_b_id :: NUMERIC,
                 CASE WHEN qt_vz IS NULL
                   THEN 0
                 ELSE qt_vz :: NUMERIC END qt_vz
               FROM
                 lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna tabela_1
                 LEFT JOIN (SELECT
                              cmp_b11,
                              count(*) AS qt_vz
                            FROM lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna
                            WHERE concurso_atual >= concurso_inicial AND concurso_anterior <= concurso_final
                            GROUP BY cmp_b11) tabela_2
                   ON tabela_1.cmp_b_id = tabela_2.cmp_b11
               ORDER BY qt_vz DESC, tabela_1.cmp_b_id ASC;
END;
$$;

/**
  Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_cmp_b12_qt_vz;
CREATE VIEW lotofacil.v_lotofacil_resultado_cmp_b12_qt_vz AS
  SELECT
    cmp_b_id,
    CASE WHEN qt_vz IS NULL
      THEN 0
    ELSE qt_vz END qt_vz
  FROM
    lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna tabela_1
    LEFT JOIN (SELECT
                 cmp_b12,
                 count(*) AS qt_vz
               FROM lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna
               GROUP BY cmp_b12) tabela_2
      ON tabela_1.cmp_b_id = tabela_2.cmp_b12
  ORDER BY qt_vz DESC, cmp_b_id ASC;

/**
    Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas, considerando
  um intervalo de concursos.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_cmp_b12_qt_vz_por_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_cmp_b12_qt_vz_por_concurso(concurso_inicial NUMERIC,
                                                                            concurso_final   NUMERIC)
  RETURNS TABLE(comparacao_id NUMERIC, qt_vezes NUMERIC)
LANGUAGE plpgsql
AS
$$
BEGIN
  RETURN QUERY SELECT
                 cmp_b_id :: NUMERIC,
                 CASE WHEN qt_vz IS NULL
                   THEN 0
                 ELSE qt_vz :: NUMERIC END qt_vz
               FROM
                 lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna tabela_1
                 LEFT JOIN (SELECT
                              cmp_b12,
                              count(*) AS qt_vz
                            FROM lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna
                            WHERE concurso_atual >= concurso_inicial AND concurso_anterior <= concurso_final
                            GROUP BY cmp_b12) tabela_2
                   ON tabela_1.cmp_b_id = tabela_2.cmp_b12
               ORDER BY qt_vz DESC, tabela_1.cmp_b_id ASC;
END;
$$;

/**
  Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_cmp_b13_qt_vz;
CREATE VIEW lotofacil.v_lotofacil_resultado_cmp_b13_qt_vz AS
  SELECT
    cmp_b_id,
    CASE WHEN qt_vz IS NULL
      THEN 0
    ELSE qt_vz END qt_vz
  FROM
    lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna tabela_1
    LEFT JOIN (SELECT
                 cmp_b13,
                 count(*) AS qt_vz
               FROM lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna
               GROUP BY cmp_b13) tabela_2
      ON tabela_1.cmp_b_id = tabela_2.cmp_b13
  ORDER BY qt_vz DESC, cmp_b_id ASC;

/**
    Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas, considerando
  um intervalo de concursos.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_cmp_b13_qt_vz_por_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_cmp_b13_qt_vz_por_concurso(concurso_inicial NUMERIC,
                                                                            concurso_final   NUMERIC)
  RETURNS TABLE(comparacao_id NUMERIC, qt_vezes NUMERIC)
LANGUAGE plpgsql
AS
$$
BEGIN
  RETURN QUERY SELECT
                 cmp_b_id :: NUMERIC,
                 CASE WHEN qt_vz IS NULL
                   THEN 0
                 ELSE qt_vz :: NUMERIC END qt_vz
               FROM
                 lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna tabela_1
                 LEFT JOIN (SELECT
                              cmp_b13,
                              count(*) AS qt_vz
                            FROM lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna
                            WHERE concurso_atual >= concurso_inicial AND concurso_anterior <= concurso_final
                            GROUP BY cmp_b13) tabela_2
                   ON tabela_1.cmp_b_id = tabela_2.cmp_b13
               ORDER BY qt_vz DESC, tabela_1.cmp_b_id ASC;
END;
$$;

/**
  Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_cmp_b14_qt_vz;
CREATE VIEW lotofacil.v_lotofacil_resultado_cmp_b14_qt_vz AS
  SELECT
    cmp_b_id,
    CASE WHEN qt_vz IS NULL
      THEN 0
    ELSE qt_vz END qt_vz
  FROM
    lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna tabela_1
    LEFT JOIN (SELECT
                 cmp_b14,
                 count(*) AS qt_vz
               FROM lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna
               GROUP BY cmp_b14) tabela_2
      ON tabela_1.cmp_b_id = tabela_2.cmp_b14
  ORDER BY qt_vz DESC, cmp_b_id ASC;

/**
    Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas, considerando
  um intervalo de concursos.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_cmp_b14_qt_vz_por_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_cmp_b14_qt_vz_por_concurso(concurso_inicial NUMERIC,
                                                                            concurso_final   NUMERIC)
  RETURNS TABLE(comparacao_id NUMERIC, qt_vezes NUMERIC)
LANGUAGE plpgsql
AS
$$
BEGIN
  RETURN QUERY SELECT
                 cmp_b_id :: NUMERIC,
                 CASE WHEN qt_vz IS NULL
                   THEN 0
                 ELSE qt_vz :: NUMERIC END qt_vz
               FROM
                 lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna tabela_1
                 LEFT JOIN (SELECT
                              cmp_b14,
                              count(*) AS qt_vz
                            FROM lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna
                            WHERE concurso_atual >= concurso_inicial AND concurso_anterior <= concurso_final
                            GROUP BY cmp_b14) tabela_2
                   ON tabela_1.cmp_b_id = tabela_2.cmp_b14
               ORDER BY qt_vz DESC, tabela_1.cmp_b_id ASC;
END;
$$;

/**
  Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_cmp_b15_qt_vz;
CREATE VIEW lotofacil.v_lotofacil_resultado_cmp_b15_qt_vz AS
  SELECT
    cmp_b_id,
    CASE WHEN qt_vz IS NULL
      THEN 0
    ELSE qt_vz END qt_vz
  FROM
    lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna tabela_1
    LEFT JOIN (SELECT
                 cmp_b15,
                 count(*) AS qt_vz
               FROM lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna
               GROUP BY cmp_b15) tabela_2
      ON tabela_1.cmp_b_id = tabela_2.cmp_b15
  ORDER BY qt_vz DESC, cmp_b_id ASC;

/**
    Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas, considerando
  um intervalo de concursos.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_cmp_b15_qt_vz_por_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_cmp_b15_qt_vz_por_concurso(concurso_inicial NUMERIC,
                                                                            concurso_final   NUMERIC)
  RETURNS TABLE(comparacao_id NUMERIC, qt_vezes NUMERIC)
LANGUAGE plpgsql
AS
$$
BEGIN
  RETURN QUERY SELECT
                 cmp_b_id :: NUMERIC,
                 CASE WHEN qt_vz IS NULL
                   THEN 0
                 ELSE qt_vz :: NUMERIC END qt_vz
               FROM
                 lotofacil.lotofacil_id_comparacao_de_bolas_na_mesma_coluna tabela_1
                 LEFT JOIN (SELECT
                              cmp_b15,
                              count(*) AS qt_vz
                            FROM lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna
                            WHERE concurso_atual >= concurso_inicial AND concurso_anterior <= concurso_final
                            GROUP BY cmp_b15) tabela_2
                   ON tabela_1.cmp_b_id = tabela_2.cmp_b15
               ORDER BY qt_vz DESC, tabela_1.cmp_b_id ASC;
END;
$$;


