/**
  Autor: Fábio Moura de Oliveira

  No jogo dia_de_sorte, há 31 bolas, onde são sorteadas 7 bolas.

  Quando utilizamos o programa analisador_ltk_dia_de_sorte, utilizando os
  filtros, acontece que pode retornar vários registros, onde em várias
  combinações há bolas repetidas.

  Pra evitar que isto ocorra, irei distribuir as bolas em grupos de 28 bolas
  de tal forma que cada bola de uma combinação do mesmo grupo não se repete
  na outra combinação do mesmo grupo e pra cada grupo de 28 bolas haverá
  um identificador 'id_grupo' pra identificar de qual combinação aquelas 7 bolas
  faz parte.

  Então, ao aplicar o filtro, tais combinações do mesmo grupo apareceram
  disposta uma sequencialmente à outra.

  Isto evita que muitas bolas repetidas estejam disposta em combinações sequencialmente.

  No jogo dia de sorte, há 2629575 combinações com 7 bolas, bolas que vai de 1 a 31.
  Se dividimos em grupos de 28 bolas, disposta em 4 combinações de 7 bolas, teremos:
  2629575 / 4 = 657393,75 => quociente: 657393, resto: 8 bolas (1 combinação + 1 bola).


  2629575
 */

/**
  Tabela que armazena os ids pra cada grupo.
 */
DROP TABLE IF EXISTS d_sorte.d_sorte_combinacoes_em_grupos;
CREATE TABLE d_sorte.d_sorte_combinacoes_em_grupos (
  d_sorte_id    NUMERIC  NOT NULL PRIMARY KEY,
  d_sorte_qt    SMALLINT NOT NULL CHECK (d_sorte_qt BETWEEN 7 AND 7),
  id_grupo      NUMERIC DEFAULT -1,
  id_seq_cmb_em_grupos NUMERIC DEFAULT 0
);

/**
  Cria os índices pra aumentar o desempenho.
 */
drop index if exists d_sorte_combinacoes_em_grupos_idx_1;
drop index if exists d_sorte_combinacoes_em_grupos_idx_2;
create index d_sorte_combinacoes_em_grupos_idx_1 on d_sorte.d_sorte_combinacoes_em_grupos(d_sorte_id);
create index d_sorte_combinacoes_em_grupos_idx_2 on d_sorte.d_sorte_combinacoes_em_grupos(id_grupo);

/**
  A função abaixo agrupa 4 combinações de tal forma que nenhuma das
  bolas se repita nas 4 combinações agrupadas, por exemplo, dad
 */
DROP FUNCTION IF EXISTS d_sorte.fn_d_sorte_distribuir_bolas_em_gruposs();
CREATE FUNCTION d_sorte.fn_d_sorte_distribuir_bolas_em_gruposs()
  RETURNS VOID
LANGUAGE plpgsql
AS $$
DECLARE
  sequencial_id           NUMERIC;
  combinacoes_pendente    d_sorte.d_sorte_num%ROWTYPE;
  combinacao_atual        d_sorte.d_sorte_num%ROWTYPE;
  combinacao_id           NUMERIC;
  grupo_id                NUMERIC;
  bolas_ja_sorteadas      NUMERIC [32];
  bolas_combinacao_atual  NUMERIC [32];
  qt_bolas_ja_encontradas NUMERIC;
  uA                      NUMERIC;
  sql_query               CHARACTER VARYING;
BEGIN


  -- A cada combinação atualizada, haverá um id sequencial.
  sequencial_id := 0;

  /**
    Há no jogo "dia_de_sorte" 2629575 combinações, se dividimos
    por 28, haverá 657393 grupos com 28 e ,
    provavelmente com bolas talvez se repetindo entre combinações.
    A lógica aqui, é bem simples, irei percorrer somente 93913 vezes
    o loop for.
   */
  FOR grupo_id IN 1..657393 LOOP
    -- Reseta o vetor de bolas_ja_sorteadas.
    bolas_ja_sorteadas [1] := 0;
    bolas_ja_sorteadas [2] := 0;
    bolas_ja_sorteadas [3] := 0;
    bolas_ja_sorteadas [4] := 0;
    bolas_ja_sorteadas [5] := 0;
    bolas_ja_sorteadas [6] := 0;
    bolas_ja_sorteadas [7] := 0;
    bolas_ja_sorteadas [8] := 0;
    bolas_ja_sorteadas [9] := 0;
    bolas_ja_sorteadas [10] := 0;
    bolas_ja_sorteadas [11] := 0;
    bolas_ja_sorteadas [12] := 0;
    bolas_ja_sorteadas [13] := 0;
    bolas_ja_sorteadas [14] := 0;
    bolas_ja_sorteadas [15] := 0;
    bolas_ja_sorteadas [16] := 0;
    bolas_ja_sorteadas [17] := 0;
    bolas_ja_sorteadas [18] := 0;
    bolas_ja_sorteadas [19] := 0;
    bolas_ja_sorteadas [20] := 0;
    bolas_ja_sorteadas [21] := 0;
    bolas_ja_sorteadas [22] := 0;
    bolas_ja_sorteadas [23] := 0;
    bolas_ja_sorteadas [24] := 0;
    bolas_ja_sorteadas [25] := 0;
    bolas_ja_sorteadas [26] := 0;
    bolas_ja_sorteadas [27] := 0;
    bolas_ja_sorteadas [28] := 0;
    bolas_ja_sorteadas [29] := 0;
    bolas_ja_sorteadas [30] := 0;
    bolas_ja_sorteadas [31] := 0;

    -- PASSO 1: Obter uma única combinação com 7 bolas que ainda não tem um grupo definido.
    SELECT d_sorte.d_sorte_num.*
    FROM d_sorte.d_sorte_combinacoes_em_grupos, d_sorte.d_sorte_num
    WHERE d_sorte.d_sorte_combinacoes_em_grupos.d_sorte_id = d_sorte.d_sorte_num.d_sorte_id
          AND d_sorte.d_sorte_num.d_sorte_qt = 7
          AND d_sorte.d_sorte_combinacoes_em_grupos.id_grupo = -1
    ORDER BY d_sorte_id
    LIMIT 1
    INTO combinacao_atual;

    -- Se não achou nenhum registro, ir pra o próximo.
    if combinacao_atual is null THEN
      continue;
    END IF;

    Raise Notice 'grupo_id: %', grupo_id;

    -- Como há 4 grupos de 7 bolas, iremos iterar 4 vezes.
    FOR uA IN 1 .. 4 LOOP

      Raise Notice '     d_sorte_id: %', combinacao_atual.d_sorte_id;

      sequencial_id := sequencial_id + 1;

      -- Passo 2: Atualizar a combinação obtida no passo 1 pra pertencer ao grupo atual.
      UPDATE d_sorte.d_sorte_combinacoes_em_grupos
      SET id_grupo = grupo_id, id_seq_cmb_em_grupos = sequencial_id
      WHERE d_sorte_id = combinacao_atual.d_sorte_id;

      -- Passo 3: Copia as bolas da combinação obtida no passo 1, pra um
      -- vetor.
      bolas_combinacao_atual [1] := combinacao_atual.num_1;
      bolas_combinacao_atual [2] := combinacao_atual.num_2;
      bolas_combinacao_atual [3] := combinacao_atual.num_3;
      bolas_combinacao_atual [4] := combinacao_atual.num_4;
      bolas_combinacao_atual [5] := combinacao_atual.num_5;
      bolas_combinacao_atual [6] := combinacao_atual.num_6;
      bolas_combinacao_atual [7] := combinacao_atual.num_7;
      bolas_combinacao_atual [8] := combinacao_atual.num_8;
      bolas_combinacao_atual [9] := combinacao_atual.num_9;
      bolas_combinacao_atual [10] := combinacao_atual.num_10;
      bolas_combinacao_atual [11] := combinacao_atual.num_11;
      bolas_combinacao_atual [12] := combinacao_atual.num_12;
      bolas_combinacao_atual [13] := combinacao_atual.num_13;
      bolas_combinacao_atual [14] := combinacao_atual.num_14;
      bolas_combinacao_atual [15] := combinacao_atual.num_15;
      bolas_combinacao_atual [16] := combinacao_atual.num_16;
      bolas_combinacao_atual [17] := combinacao_atual.num_17;
      bolas_combinacao_atual [18] := combinacao_atual.num_18;
      bolas_combinacao_atual [19] := combinacao_atual.num_19;
      bolas_combinacao_atual [20] := combinacao_atual.num_20;
      bolas_combinacao_atual [21] := combinacao_atual.num_21;
      bolas_combinacao_atual [22] := combinacao_atual.num_22;
      bolas_combinacao_atual [23] := combinacao_atual.num_23;
      bolas_combinacao_atual [24] := combinacao_atual.num_24;
      bolas_combinacao_atual [25] := combinacao_atual.num_25;
      bolas_combinacao_atual [26] := combinacao_atual.num_26;
      bolas_combinacao_atual [27] := combinacao_atual.num_27;
      bolas_combinacao_atual [28] := combinacao_atual.num_28;
      bolas_combinacao_atual [29] := combinacao_atual.num_29;
      bolas_combinacao_atual [30] := combinacao_atual.num_30;
      bolas_combinacao_atual [31] := combinacao_atual.num_31;

      -- Pois, iremos copiar pra o vetor bolas_ja_sorteadas,
      -- entretanto, pra fazermos isto, precisamos copiar
      -- pra um vetor temporário, e em seguida, devemos copiar
      -- somente do vetor somente a posição onde a bola foi
      -- sorteada, pois, se copiarmos o vetor inteiro, iremos
      -- sobrescrever o vetor bolas_ja_sorteadas.

      qt_bolas_ja_encontradas := 0;
      FOR uA IN 1..31 LOOP
        -- Vamos copiar pra o vetor bolas_ja_sorteadas,
        -- somente na posição do vetor o valor 1.
        IF bolas_combinacao_atual [uA] = 1
        THEN
          -- Nunca ambos vetores bolas_combinacao_atual e bolas_ja_sorteadas
          -- terão o mesmo valor 1, se houver algum erro lógico ocorreu no
          -- nosso algoritmo.
          IF bolas_ja_sorteadas [uA] = 1
          THEN
            RAISE '%,%,%', 'Erro, vetor bolas_ja_sorteada tem o valor 1 e o valor da posição' ||
                  ' do vetor bolas_combinacao_atual tem também o valor 1, verifique' ||
                  ' há um erro lógico no algoritmo.';
            RETURN;
          END IF;

          bolas_ja_sorteadas [uA] = 1;

          -- Contabiliza as bolas já encontradas, não faz sentido
          -- percorrermos 24 bolas restantes.
          qt_bolas_ja_encontradas := qt_bolas_ja_encontradas + 1;
          IF qt_bolas_ja_encontradas = 7
          THEN
            uA := 31 + 1;
          END IF;
        END IF;

      END LOOP;

      -- Em seguida, iremos gerar dinamicamente o sql dinamicamente
      -- das bolas que não devem aparecer na combinação.
      sql_query := '';
      qt_bolas_ja_encontradas := 0;
      FOR uA IN 1..31 LOOP
        IF bolas_ja_sorteadas [uA] = 0
        THEN
          CONTINUE;
        END IF;

        IF sql_query <> ''
        THEN
          sql_query := sql_query || ' and ';
        END IF;

        sql_query := sql_query || 'num_' || uA || ' = 0 ';

        -- A cada iteração do loop mais 7 bolas já sorteadas.
        qt_bolas_ja_encontradas := qt_bolas_ja_encontradas + 1;
        if qt_bolas_ja_encontradas = uA * 7 THEN
          uA := uA + 31;
        END IF;
      END LOOP;

      -- O sql é gerado dinamicamente, então, até onde eu sei não é possível
      EXECUTE 'Select d_sorte.d_sorte_num.* FROM d_sorte.d_sorte_combinacoes_em_grupos, d_sorte.d_sorte_num ' ||
              ' where d_sorte.d_sorte_combinacoes_em_grupos.d_sorte_id = d_sorte.d_sorte_num.d_sorte_id ' ||
              ' and d_sorte.d_sorte_combinacoes_em_grupos.id_grupo = -1 ' ||
    ' and d_sorte.d_sorte_num.d_sorte_qt = 7 and ' || sql_query ||
          --  ' order by random() '
              ' order by d_sorte_id ' ||
              ' limit 1 '
      INTO combinacao_atual;

    END LOOP;


  END LOOP;


END;
$$;


DROP FUNCTION IF EXISTS d_sorte.fn_d_sorte_atualizar_combinacoes_em_gruposs();
CREATE FUNCTION d_sorte.fn_d_sorte_atualizar_combinacoes_em_gruposs()
  RETURNS VOID
LANGUAGE plpgsql
AS $$
DECLARE
  -- Há 2629575 registros.
  numero_aleatorio         INTEGER [2629576];

  indice_aleatorio_destino NUMERIC;
  indice_aleatorio_origem  NUMERIC;
  numero_temporario        NUMERIC;

BEGIN

  FOR uA IN 1..100 LOOP
    numero_aleatorio [uA] := 0;
  END LOOP;


  FOR uA IN 1..100 LOOP
    indice_aleatorio_destino := uA + trunc(random() * (100 - uA));
    indice_aleatorio_destino := mod(indice_aleatorio_destino, 101) :: NUMERIC;

    indice_aleatorio_origem := 1 + trunc(random() * uA);
    indice_aleatorio_origem := mod(indice_aleatorio_origem, uA + 1) :: NUMERIC;

    IF numero_aleatorio [indice_aleatorio_origem] = 0
    THEN
      numero_aleatorio [indice_aleatorio_origem] := indice_aleatorio_origem;
    END IF;

    IF numero_aleatorio [indice_aleatorio_destino] = 0
    THEN
      numero_aleatorio [indice_aleatorio_destino] := indice_aleatorio_destino;
    END IF;

    numero_temporario := numero_aleatorio [indice_aleatorio_destino];
    numero_aleatorio [indice_aleatorio_destino] := numero_aleatorio [indice_aleatorio_origem];
    numero_aleatorio [indice_aleatorio_origem] := numero_temporario;

    RAISE NOTICE '%,%', uA, indice_aleatorio_destino;
  END LOOP;

  FOR uA IN 1..100 LOOP
    RAISE NOTICE '%,%', uA, numero_aleatorio [ua];
  END LOOP;

  -- Aqui, iremos distribuir os números aleatoriamente desta forma


END;
$$;


