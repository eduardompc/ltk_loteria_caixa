/**
  Autor: Fábio Moura de Oliveira
  Descrição: Neste arquivo irei implementar a comparação de bolas
  que está na mesma coluna em dois concursos.

  Por exemplo, dado dois concurso A e B:
  Concurso A: [1][2][3][4][5][6][7]
  Concurso B: [3][6][8][10][11][25][31]

  Iremos armazenar na tabela 'd_sorte_resultado_comparacao_de_bolas_na_mesma_coluna' isto:
  [2][4][5][6][6][19][24]

  Pois, comparamos o concurso B com o concurso A, assim:
  [Concurso: B]   -   [Concurso: A]   =>  [Comparação]
  [3]             -   [1]             =>  [2]
  [6]             -   [2]             =>  [4]
  [8]             -   [3]             =>  [5]
  [10]            -   [4]             =>  [6]
  [25]            -   [6]             =>  [19]
  [31]            -   [7]             =>  [24]

  A comparação pode ter valores entre -24 a 24.

  Esta tabela será usada pra verificar em que faixa de valores
  uma bola percorre uma mesma coluna, e também serve pra
  quando formos realizar um filtros, selecionar as faixa de valores
  que mais sai em cada coluna.

  Então, por exemplo, vamos supor que na coluna b_1, as faixas
  de valores que mais sai é: -5, 0, 2, 3, 7, então,
  no programa analisador de loteria, devemos selecionar um concurso
  pra saber quais bolas serão selecionadas desta coluna, por exemplo,
  no nosso exemplo, o concurso B, a bola 3, então,
  iremos selecionar as bolas:
  3 - 5 = -2
  3 + 0 = 3
  3 + 2 = 5
  3 + 3 = 6
  3 + 4 = 7

  Então, no filtro, iríamos selecionar as bolas: 3, 5, 6 e 7 pra
  ser as bolas que podem aparecer na coluna b_1.

 */
/**
  Tabela pra armazenar todas os valores que uma comparação entre duas bolas da mesma colunas de duas
  combinações pode ter.
  Pra identificar qual é o menor e o maior valor, é bem simples, segue-se explicação:
  A primeira combinação com 7 bolas é:
  1, 2, 3, 4, 5, 6, 7
  e a última combinação com 7 bolas é:
  25, 26, 27, 28, 29, 30, 31
  Se subtraírmos a última da primeira fica:
  24, 24, 24, 24, 24, 24, 24.
  Então, quando estamos comparando combinações, tais combinações são do concurso sorteada, então, no
  nosso exemplo, tanto, a primeira ou a última combinação podem ser sorteadas, por exemplo, vamos
  supor que o último concurso foi a combinação: 25, 26, 27, 28, 29, 30, 31
  e a próxima combinação sorteada foi: 1, 2, 3, 4, 5, 6, 7.
  Neste caso a diferença do concurso atual menos o concurso anterior é: -24, -24, -24, -24, -24, -24.
  Da explicação acima, conclue-se que a comparação entre bolas da mesma coluna de duas combinações
  pode gerar um número no intervalo de -24 a 24.
  Eu utilizei a primeira combinação e a última combinação de 7 bolas, pois, em cada coluna pode haver
  a menor e a maior bola que pode estar naquela posição, por exemplo, na coluna b_1, a menor bola
  que pode estar é 1 e a maior bola é 25.
  O mesmo vale pra combinação que tem mais de 7 bolas, neste caso, a maior bola vai diminuindo
  a medida que a quantidade de bolas vai aumentando, por exemplo, em uma combinação de 8 bolas,
  a maior bola na coluna b_1 seria 24 e não 25 que seria na combinação de 7 bolas.
  Esta tabela foi criada pois ao utilizar o analisador de jogos, eu preciso identificar todas
  as diferenças possível pra uma coluna específica.
 */
DROP TABLE IF EXISTS d_sorte.d_sorte_id_comparacao_de_bolas_na_mesma_coluna;
CREATE TABLE d_sorte.d_sorte_id_comparacao_de_bolas_na_mesma_coluna (
  cmp_id NUMERIC NOT NULL PRIMARY KEY CHECK (cmp_id BETWEEN -24 AND 24)
);

DROP FUNCTION IF EXISTS d_sorte.fn_d_sorte_id_comparacao_de_bolas_na_mesma_coluna();
CREATE FUNCTION d_sorte.fn_d_sorte_id_comparacao_de_bolas_na_mesma_coluna()
  RETURNS VOID
LANGUAGE plpgsql AS
$$
DECLARE
  uA NUMERIC;
BEGIN
  DELETE FROM d_sorte.d_sorte_id_comparacao_de_bolas_na_mesma_coluna;
  FOR uA IN -24 .. 24 LOOP
    INSERT INTO d_sorte.d_sorte_id_comparacao_de_bolas_na_mesma_coluna (cmp_id) VALUES (ua);
  END LOOP;
END;
$$;

SELECT d_sorte.fn_d_sorte_id_comparacao_de_bolas_na_mesma_coluna();

DROP TABLE IF EXISTS d_sorte.d_sorte_resultado_comparacao_de_bolas_na_mesma_coluna;
CREATE TABLE d_sorte.d_sorte_resultado_comparacao_de_bolas_na_mesma_coluna (
  concurso_anterior             NUMERIC  NOT NULL,
  concurso_atual                NUMERIC  NOT NULL,
  cmp_b1                        SMALLINT NOT NULL CHECK (cmp_b1 BETWEEN -24 AND 24),
  cmp_b2                        SMALLINT NOT NULL CHECK (cmp_b2 BETWEEN -24 AND 24),
  cmp_b3                        SMALLINT NOT NULL CHECK (cmp_b3 BETWEEN -24 AND 24),
  cmp_b4                        SMALLINT NOT NULL CHECK (cmp_b4 BETWEEN -24 AND 24),
  cmp_b5                        SMALLINT NOT NULL CHECK (cmp_b5 BETWEEN -24 AND 24),
  cmp_b6                        SMALLINT NOT NULL CHECK (cmp_b6 BETWEEN -24 AND 24),
  cmp_b7                        SMALLINT NOT NULL CHECK (cmp_b7 BETWEEN -24 AND 24),
  cmp_soma                      NUMERIC  NOT NULL,
  cmp_negativa_zero_positiva_id NUMERIC  NOT NULL,

  CONSTRAINT d_sorte_resultado_comparacao_de_bolas_na_mesma_coluna_fk_1 FOREIGN KEY (cmp_b1) REFERENCES d_sorte.d_sorte_id_comparacao_de_bolas_na_mesma_coluna (cmp_id),
  CONSTRAINT d_sorte_resultado_comparacao_de_bolas_na_mesma_coluna_fk_2 FOREIGN KEY (cmp_b2) REFERENCES d_sorte.d_sorte_id_comparacao_de_bolas_na_mesma_coluna (cmp_id),
  CONSTRAINT d_sorte_resultado_comparacao_de_bolas_na_mesma_coluna_fk_3 FOREIGN KEY (cmp_b3) REFERENCES d_sorte.d_sorte_id_comparacao_de_bolas_na_mesma_coluna (cmp_id),
  CONSTRAINT d_sorte_resultado_comparacao_de_bolas_na_mesma_coluna_fk_4 FOREIGN KEY (cmp_b4) REFERENCES d_sorte.d_sorte_id_comparacao_de_bolas_na_mesma_coluna (cmp_id),
  CONSTRAINT d_sorte_resultado_comparacao_de_bolas_na_mesma_coluna_fk_5 FOREIGN KEY (cmp_b5) REFERENCES d_sorte.d_sorte_id_comparacao_de_bolas_na_mesma_coluna (cmp_id),
  CONSTRAINT d_sorte_resultado_comparacao_de_bolas_na_mesma_coluna_fk_6 FOREIGN KEY (cmp_b6) REFERENCES d_sorte.d_sorte_id_comparacao_de_bolas_na_mesma_coluna (cmp_id),
  CONSTRAINT d_sorte_resultado_comparacao_de_bolas_na_mesma_coluna_fk_7 FOREIGN KEY (cmp_b7) REFERENCES d_sorte.d_sorte_id_comparacao_de_bolas_na_mesma_coluna (cmp_id)

);

/**
  Esta tabela armazena os ids pra cada combinação possível de comparação
  negativa, zerada e positiva de uma combinação.
  As comparações são baseadas nas coluna b_1 até b_7 de um concurso específico,
  não faz sentido comparar colunas b_8 até b_15.
 */
DROP TABLE IF EXISTS d_sorte.d_sorte_id_comparacao_negativa_zerada_positiva;
CREATE TABLE d_sorte.d_sorte_id_comparacao_negativa_zerada_positiva (
  cmp_negativa_zero_positiva_id NUMERIC NOT NULL PRIMARY KEY,
  d_sorte_qt                    NUMERIC NOT NULL CHECK (d_sorte_qt BETWEEN 7 AND 15),
  qt_cmp_negativa               NUMERIC NOT NULL CHECK (qt_cmp_negativa BETWEEN 0 AND 7),
  qt_cmp_zero                   NUMERIC NOT NULL CHECK (qt_cmp_zero BETWEEN 0 AND 7),
  qt_cmp_positiva               NUMERIC NOT NULL CHECK (qt_cmp_positiva BETWEEN 0 AND 7)
);

/**
  Criando função pra popular os dados da tabela criada acima, isto,
  será em breve implementado no gerador 'ltk_d_sorte_csv'.
 */
DROP FUNCTION IF EXISTS d_sorte.fn_d_sorte_id_comparacao_negativa_zerada_positiva();
CREATE FUNCTION d_sorte.fn_d_sorte_id_comparacao_negativa_zerada_positiva()
  RETURNS VOID
LANGUAGE plpgsql AS
$$
DECLARE

  qt_negativa                   NUMERIC;
  qt_zero                       NUMERIC;
  qt_positiva                   NUMERIC;

  id_cmp_negativa_zero_positiva NUMERIC;
  qt_soma                       NUMERIC;
  d_sorte_qt                    NUMERIC;

BEGIN

  DELETE FROM d_sorte.d_sorte_id_comparacao_negativa_zerada_positiva;

  id_cmp_negativa_zero_positiva := 0;
  FOR d_sorte_qt IN 7 .. 15 LOOP
    FOR qt_negativa IN 0 .. 7 LOOP
      FOR qt_zero IN 0 .. 7 LOOP
        FOR qt_positiva IN 0 .. 7 LOOP
          qt_soma := qt_negativa + qt_zero + qt_positiva;
          IF qt_soma = d_sorte_qt
          THEN
            id_cmp_negativa_zero_positiva := id_cmp_negativa_zero_positiva + 1;
            INSERT INTO d_sorte.d_sorte_id_comparacao_negativa_zerada_positiva (cmp_negativa_zero_positiva_id, d_sorte_qt, qt_cmp_negativa, qt_cmp_zero, qt_cmp_positiva)
            VALUES (id_cmp_negativa_zero_positiva, d_sorte_qt, qt_negativa, qt_zero, qt_positiva);
          END IF;
        END LOOP;
      END LOOP;
    END LOOP;
  END LOOP;

END;
$$;

SELECT
FROM d_sorte.fn_d_sorte_id_comparacao_negativa_zerada_positiva();


/**
  Percorre todas as combinações do concursos já sorteados.
  A partir da segunda combinação, compara a bola de uma coluna da combinação
  atual com a bola da mesma coluna da combinação do concurso anterior.
  Armazena na coluna corresponde o valor -1, 0, ou 1, se respectivamente,
  a bola do concurso atual for menor, igual ou maior que a bola
  na mesma coluna do concurso anterior.
 */
DROP FUNCTION IF EXISTS d_sorte.fn_d_sorte_resultado_comparacao_de_bolas_na_mesma_coluna();
CREATE FUNCTION d_sorte.fn_d_sorte_resultado_comparacao_de_bolas_na_mesma_coluna()
  RETURNS VOID
LANGUAGE plpgsql
AS
$$
DECLARE
  bolas_concurso_anterior       SMALLINT [8];
  bolas_concurso_atual          SMALLINT [8];
  comparacao_entre_concursos    SMALLINT [8];
  soma_das_diferencas           NUMERIC;

  concurso_atual                d_sorte.d_sorte_resultado_bolas%ROWTYPE;
  primeiro_iteracao_loop        BOOLEAN;

  sinal_do_numero               NUMERIC;
  uA                            NUMERIC;

  qt_comparacao_negativa        NUMERIC;
  qt_comparacao_zero            NUMERIC;
  qt_comparacao_positiva        NUMERIC;
  id_cmp_negativa_zero_positiva NUMERIC;

BEGIN
  -- Devemos atualizar todos os registros, por isto, iremos deletar todos os dados.
  DELETE FROM d_sorte.d_sorte_resultado_comparacao_de_bolas_na_mesma_coluna;

  -- Esta variável serve pra indicar que é a primeira vez
  -- que a iteração do loop será executada, nisto, iremos
  -- armazenar alguns valores no arranjo bolas_concurso_anterior.
  primeiro_iteracao_loop := TRUE;

  FOR concurso_atual IN SELECT *
                        FROM d_sorte.d_sorte_resultado_bolas
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

    soma_das_diferencas = comparacao_entre_concursos [1] + comparacao_entre_concursos [2] +
                          comparacao_entre_concursos [3] + comparacao_entre_concursos [4] +
                          comparacao_entre_concursos [5] +
                          comparacao_entre_concursos [6] + comparacao_entre_concursos [7];

    /**
      Vamos percorrer todos os campos do registros atual e contabiliza
      a quantidade de comparação negativa, positiva e com valor zero.
     */
    qt_comparacao_negativa := 0;
    qt_comparacao_zero := 0;
    qt_comparacao_positiva := 0;
    FOR uA IN 1 .. 7 LOOP
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
      d_sorte_resultado_comparacao_de_bolas_na_mesma_coluna.
     */
    SELECT cmp_negativa_zero_positiva_id
    INTO id_cmp_negativa_zero_positiva
    FROM d_sorte.d_sorte_id_comparacao_negativa_zerada_positiva
    WHERE qt_cmp_negativa = qt_comparacao_negativa AND
          qt_cmp_zero = qt_comparacao_zero AND
          qt_cmp_positiva = qt_comparacao_positiva;

    IF id_cmp_negativa_zero_positiva IS NULL
    THEN
      RAISE 'id_cmp_negativa_zero_positiva não pode ser null.';
      RETURN;
    END IF;

    INSERT INTO d_sorte.d_sorte_resultado_comparacao_de_bolas_na_mesma_coluna (concurso_anterior,
                                                                               concurso_atual,
                                                                               cmp_b1,
                                                                               cmp_b2,
                                                                               cmp_b3,
                                                                               cmp_b4,
                                                                               cmp_b5,
                                                                               cmp_b6,
                                                                               cmp_b7,
                                                                               cmp_soma,
                                                                               cmp_negativa_zero_positiva_id

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
  END LOOP;
END;
$$;

SELECT
FROM d_sorte.fn_d_sorte_resultado_comparacao_de_bolas_na_mesma_coluna();

/**
  Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas.
 */
DROP VIEW IF EXISTS d_sorte.v_d_sorte_resultado_cmp_b1_qt_vz;
CREATE VIEW d_sorte.v_d_sorte_resultado_cmp_b1_qt_vz AS
  SELECT
    cmp_id,
    CASE WHEN qt_vz IS NULL
      THEN 0
    ELSE qt_vz END qt_vz
  FROM
    d_sorte.d_sorte_id_comparacao_de_bolas_na_mesma_coluna tabela_1
    LEFT JOIN (SELECT
                 cmp_b1,
                 count(*) AS qt_vz
               FROM d_sorte.d_sorte_resultado_comparacao_de_bolas_na_mesma_coluna
               GROUP BY cmp_b1) tabela_2
      ON tabela_1.cmp_id = tabela_2.cmp_b1
  ORDER BY qt_vz DESC, cmp_id ASC;

/**
    Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas, considerando
  um intervalo de concursos.
 */
DROP FUNCTION IF EXISTS d_sorte.fn_d_sorte_resultado_cmp_b1_qt_vz_por_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION d_sorte.fn_d_sorte_resultado_cmp_b1_qt_vz_por_concurso(concurso_inicial NUMERIC, concurso_final NUMERIC)
  RETURNs table (comparacao_id NUMERIC, qt_vezes NUMERIC)
LANGUAGE plpgsql
AS
$$
BEGIN
  RETURN QUERY SELECT
                 cmp_id::numeric ,
                 CASE WHEN qt_vz IS NULL
                   THEN 0
                 ELSE qt_vz::numeric END qt_vz
               FROM
                 d_sorte.d_sorte_id_comparacao_de_bolas_na_mesma_coluna tabela_1
                 LEFT JOIN (SELECT
                              cmp_b1,
                              count(*) AS qt_vz
                            FROM d_sorte.d_sorte_resultado_comparacao_de_bolas_na_mesma_coluna
                            WHERE concurso_atual >= concurso_inicial AND concurso_anterior <= concurso_final
                            GROUP BY cmp_b1) tabela_2
                   ON tabela_1.cmp_id = tabela_2.cmp_b1
               ORDER BY qt_vz DESC, tabela_1.cmp_id ASC;
END;
$$;

/**
  Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas.
 */
DROP VIEW IF EXISTS d_sorte.v_d_sorte_resultado_cmp_b2_qt_vz;
CREATE VIEW d_sorte.v_d_sorte_resultado_cmp_b2_qt_vz AS
  SELECT
    cmp_id,
    CASE WHEN qt_vz IS NULL
      THEN 0
    ELSE qt_vz END qt_vz
  FROM
    d_sorte.d_sorte_id_comparacao_de_bolas_na_mesma_coluna tabela_1
    LEFT JOIN (SELECT
                 cmp_b2,
                 count(*) AS qt_vz
               FROM d_sorte.d_sorte_resultado_comparacao_de_bolas_na_mesma_coluna
               GROUP BY cmp_b2) tabela_2
      ON tabela_1.cmp_id = tabela_2.cmp_b2
  ORDER BY qt_vz DESC, cmp_id ASC;

/**
    Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas, considerando
  um intervalo de concursos.
 */
DROP FUNCTION IF EXISTS d_sorte.fn_d_sorte_resultado_cmp_b2_qt_vz_por_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION d_sorte.fn_d_sorte_resultado_cmp_b2_qt_vz_por_concurso(concurso_inicial NUMERIC, concurso_final NUMERIC)
  RETURNs table (comparacao_id NUMERIC, qt_vezes NUMERIC)
LANGUAGE plpgsql
AS
$$
BEGIN
  RETURN QUERY SELECT
                 cmp_id::numeric ,
                 CASE WHEN qt_vz IS NULL
                   THEN 0
                 ELSE qt_vz::numeric END qt_vz
               FROM
                 d_sorte.d_sorte_id_comparacao_de_bolas_na_mesma_coluna tabela_1
                 LEFT JOIN (SELECT
                              cmp_b2,
                              count(*) AS qt_vz
                            FROM d_sorte.d_sorte_resultado_comparacao_de_bolas_na_mesma_coluna
                            WHERE concurso_atual >= concurso_inicial AND concurso_anterior <= concurso_final
                            GROUP BY cmp_b2) tabela_2
                   ON tabela_1.cmp_id = tabela_2.cmp_b2
               ORDER BY qt_vz DESC, tabela_1.cmp_id ASC;
END;
$$;

/**
  Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas.
 */
DROP VIEW IF EXISTS d_sorte.v_d_sorte_resultado_cmp_b3_qt_vz;
CREATE VIEW d_sorte.v_d_sorte_resultado_cmp_b3_qt_vz AS
  SELECT
    cmp_id,
    CASE WHEN qt_vz IS NULL
      THEN 0
    ELSE qt_vz END qt_vz
  FROM
    d_sorte.d_sorte_id_comparacao_de_bolas_na_mesma_coluna tabela_1
    LEFT JOIN (SELECT
                 cmp_b3,
                 count(*) AS qt_vz
               FROM d_sorte.d_sorte_resultado_comparacao_de_bolas_na_mesma_coluna
               GROUP BY cmp_b3) tabela_2
      ON tabela_1.cmp_id = tabela_2.cmp_b3
  ORDER BY qt_vz DESC, cmp_id ASC;

/**
    Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas, considerando
  um intervalo de concursos.
 */
DROP FUNCTION IF EXISTS d_sorte.fn_d_sorte_resultado_cmp_b3_qt_vz_por_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION d_sorte.fn_d_sorte_resultado_cmp_b3_qt_vz_por_concurso(concurso_inicial NUMERIC, concurso_final NUMERIC)
  RETURNs table (comparacao_id NUMERIC, qt_vezes NUMERIC)
LANGUAGE plpgsql
AS
$$
BEGIN
  RETURN QUERY SELECT
                 cmp_id::numeric ,
                 CASE WHEN qt_vz IS NULL
                   THEN 0
                 ELSE qt_vz::numeric END qt_vz
               FROM
                 d_sorte.d_sorte_id_comparacao_de_bolas_na_mesma_coluna tabela_1
                 LEFT JOIN (SELECT
                              cmp_b3,
                              count(*) AS qt_vz
                            FROM d_sorte.d_sorte_resultado_comparacao_de_bolas_na_mesma_coluna
                            WHERE concurso_atual >= concurso_inicial AND concurso_anterior <= concurso_final
                            GROUP BY cmp_b3) tabela_2
                   ON tabela_1.cmp_id = tabela_2.cmp_b3
               ORDER BY qt_vz DESC, tabela_1.cmp_id ASC;
END;
$$;

/**
  Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas.
 */
DROP VIEW IF EXISTS d_sorte.v_d_sorte_resultado_cmp_b4_qt_vz;
CREATE VIEW d_sorte.v_d_sorte_resultado_cmp_b4_qt_vz AS
  SELECT
    cmp_id,
    CASE WHEN qt_vz IS NULL
      THEN 0
    ELSE qt_vz END qt_vz
  FROM
    d_sorte.d_sorte_id_comparacao_de_bolas_na_mesma_coluna tabela_1
    LEFT JOIN (SELECT
                 cmp_b4,
                 count(*) AS qt_vz
               FROM d_sorte.d_sorte_resultado_comparacao_de_bolas_na_mesma_coluna
               GROUP BY cmp_b4) tabela_2
      ON tabela_1.cmp_id = tabela_2.cmp_b4
  ORDER BY qt_vz DESC, cmp_id ASC;

/**
    Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas, considerando
  um intervalo de concursos.
 */
DROP FUNCTION IF EXISTS d_sorte.fn_d_sorte_resultado_cmp_b4_qt_vz_por_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION d_sorte.fn_d_sorte_resultado_cmp_b4_qt_vz_por_concurso(concurso_inicial NUMERIC, concurso_final NUMERIC)
  RETURNs table (comparacao_id NUMERIC, qt_vezes NUMERIC)
LANGUAGE plpgsql
AS
$$
BEGIN
  RETURN QUERY SELECT
                 cmp_id::numeric ,
                 CASE WHEN qt_vz IS NULL
                   THEN 0
                 ELSE qt_vz::numeric END qt_vz
               FROM
                 d_sorte.d_sorte_id_comparacao_de_bolas_na_mesma_coluna tabela_1
                 LEFT JOIN (SELECT
                              cmp_b4,
                              count(*) AS qt_vz
                            FROM d_sorte.d_sorte_resultado_comparacao_de_bolas_na_mesma_coluna
                            WHERE concurso_atual >= concurso_inicial AND concurso_anterior <= concurso_final
                            GROUP BY cmp_b4) tabela_2
                   ON tabela_1.cmp_id = tabela_2.cmp_b4
               ORDER BY qt_vz DESC, tabela_1.cmp_id ASC;
END;
$$;

/**
  Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas.
 */
DROP VIEW IF EXISTS d_sorte.v_d_sorte_resultado_cmp_b5_qt_vz;
CREATE VIEW d_sorte.v_d_sorte_resultado_cmp_b5_qt_vz AS
  SELECT
    cmp_id,
    CASE WHEN qt_vz IS NULL
      THEN 0
    ELSE qt_vz END qt_vz
  FROM
    d_sorte.d_sorte_id_comparacao_de_bolas_na_mesma_coluna tabela_1
    LEFT JOIN (SELECT
                 cmp_b5,
                 count(*) AS qt_vz
               FROM d_sorte.d_sorte_resultado_comparacao_de_bolas_na_mesma_coluna
               GROUP BY cmp_b5) tabela_2
      ON tabela_1.cmp_id = tabela_2.cmp_b5
  ORDER BY qt_vz DESC, cmp_id ASC;

/**
    Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas, considerando
  um intervalo de concursos.
 */
DROP FUNCTION IF EXISTS d_sorte.fn_d_sorte_resultado_cmp_b5_qt_vz_por_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION d_sorte.fn_d_sorte_resultado_cmp_b5_qt_vz_por_concurso(concurso_inicial NUMERIC, concurso_final NUMERIC)
  RETURNs table (comparacao_id NUMERIC, qt_vezes NUMERIC)
LANGUAGE plpgsql
AS
$$
BEGIN
  RETURN QUERY SELECT
                 cmp_id::numeric ,
                 CASE WHEN qt_vz IS NULL
                   THEN 0
                 ELSE qt_vz::numeric END qt_vz
               FROM
                 d_sorte.d_sorte_id_comparacao_de_bolas_na_mesma_coluna tabela_1
                 LEFT JOIN (SELECT
                              cmp_b5,
                              count(*) AS qt_vz
                            FROM d_sorte.d_sorte_resultado_comparacao_de_bolas_na_mesma_coluna
                            WHERE concurso_atual >= concurso_inicial AND concurso_anterior <= concurso_final
                            GROUP BY cmp_b5) tabela_2
                   ON tabela_1.cmp_id = tabela_2.cmp_b5
               ORDER BY qt_vz DESC, tabela_1.cmp_id ASC;
END;
$$;

/**
  Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas.
 */
DROP VIEW IF EXISTS d_sorte.v_d_sorte_resultado_cmp_b6_qt_vz;
CREATE VIEW d_sorte.v_d_sorte_resultado_cmp_b6_qt_vz AS
  SELECT
    cmp_id,
    CASE WHEN qt_vz IS NULL
      THEN 0
    ELSE qt_vz END qt_vz
  FROM
    d_sorte.d_sorte_id_comparacao_de_bolas_na_mesma_coluna tabela_1
    LEFT JOIN (SELECT
                 cmp_b6,
                 count(*) AS qt_vz
               FROM d_sorte.d_sorte_resultado_comparacao_de_bolas_na_mesma_coluna
               GROUP BY cmp_b6) tabela_2
      ON tabela_1.cmp_id = tabela_2.cmp_b6
  ORDER BY qt_vz DESC, cmp_id ASC;

/**
    Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas, considerando
  um intervalo de concursos.
 */
DROP FUNCTION IF EXISTS d_sorte.fn_d_sorte_resultado_cmp_b6_qt_vz_por_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION d_sorte.fn_d_sorte_resultado_cmp_b6_qt_vz_por_concurso(concurso_inicial NUMERIC, concurso_final NUMERIC)
  RETURNs table (comparacao_id NUMERIC, qt_vezes NUMERIC)
LANGUAGE plpgsql
AS
$$
BEGIN
  RETURN QUERY SELECT
                 cmp_id::numeric ,
                 CASE WHEN qt_vz IS NULL
                   THEN 0
                 ELSE qt_vz::numeric END qt_vz
               FROM
                 d_sorte.d_sorte_id_comparacao_de_bolas_na_mesma_coluna tabela_1
                 LEFT JOIN (SELECT
                              cmp_b6,
                              count(*) AS qt_vz
                            FROM d_sorte.d_sorte_resultado_comparacao_de_bolas_na_mesma_coluna
                            WHERE concurso_atual >= concurso_inicial AND concurso_anterior <= concurso_final
                            GROUP BY cmp_b6) tabela_2
                   ON tabela_1.cmp_id = tabela_2.cmp_b6
               ORDER BY qt_vz DESC, tabela_1.cmp_id ASC;
END;
$$;

/**
  Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas.
 */
DROP VIEW IF EXISTS d_sorte.v_d_sorte_resultado_cmp_b7_qt_vz;
CREATE VIEW d_sorte.v_d_sorte_resultado_cmp_b7_qt_vz AS
  SELECT
    cmp_id,
    CASE WHEN qt_vz IS NULL
      THEN 0
    ELSE qt_vz END qt_vz
  FROM
    d_sorte.d_sorte_id_comparacao_de_bolas_na_mesma_coluna tabela_1
    LEFT JOIN (SELECT
                 cmp_b7,
                 count(*) AS qt_vz
               FROM d_sorte.d_sorte_resultado_comparacao_de_bolas_na_mesma_coluna
               GROUP BY cmp_b7) tabela_2
      ON tabela_1.cmp_id = tabela_2.cmp_b7
  ORDER BY qt_vz DESC, cmp_id ASC;

/**
    Retorna a quantidade de vezes que o valor da comparação entre duas bolas
  da mesma coluna ocorre em todas as combinações já sorteadas, considerando
  um intervalo de concursos.
 */
DROP FUNCTION IF EXISTS d_sorte.fn_d_sorte_resultado_cmp_b7_qt_vz_por_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION d_sorte.fn_d_sorte_resultado_cmp_b7_qt_vz_por_concurso(concurso_inicial NUMERIC, concurso_final NUMERIC)
  RETURNs table (comparacao_id NUMERIC, qt_vezes NUMERIC)
LANGUAGE plpgsql
AS
$$
BEGIN
  RETURN QUERY SELECT
                 cmp_id::numeric ,
                 CASE WHEN qt_vz IS NULL
                   THEN 0
                 ELSE qt_vz::numeric END qt_vz
               FROM
                 d_sorte.d_sorte_id_comparacao_de_bolas_na_mesma_coluna tabela_1
                 LEFT JOIN (SELECT
                              cmp_b7,
                              count(*) AS qt_vz
                            FROM d_sorte.d_sorte_resultado_comparacao_de_bolas_na_mesma_coluna
                            WHERE concurso_atual >= concurso_inicial AND concurso_anterior <= concurso_final
                            GROUP BY cmp_b7) tabela_2
                   ON tabela_1.cmp_id = tabela_2.cmp_b7
               ORDER BY qt_vz DESC, tabela_1.cmp_id ASC;
END;
$$;

Select * from d_sorte.fn_d_sorte_resultado_cmp_b7_qt_vz_por_concurso(1, 42)
order by qt_vezes desc, comparacao_id asc;;


Select * from d_sorte.fn_d_sorte_resultado_cmp_b1_qt_vz_por_concurso(1, 42)
order by qt_vezes desc, comparacao_id asc;
