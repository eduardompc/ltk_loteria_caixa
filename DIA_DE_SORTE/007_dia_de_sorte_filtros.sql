/**
  Tabelas, view, functions, procedure e triggers referente a filtros.
 */

/**
  Toda vez que realizarmos os filtros das informações que queremos
  retornar, iremos inserir as informações filtradas nesta tabela.
 */
DROP VIEW IF EXISTS d_sorte.v_d_sorte_filtros_por_data;
DROP VIEW IF EXISTS d_sorte.v_d_sorte_filtros_por_data_hora;
DROP VIEW IF EXISTS d_sorte.v_d_sorte_filtros_acertos_por_data_hora;
DROP VIEW IF EXISTS d_sorte.v_d_sorte_filtros;

DROP TABLE IF EXISTS d_sorte.d_sorte_filtros;
CREATE TABLE d_sorte.d_sorte_filtros (
  filtros_id                    BIGSERIAL,
  data                          TIMESTAMP,
  d_sorte_id                    NUMERIC NOT NULL,
  d_sorte_qt                    NUMERIC NOT NULL,
  concurso                      NUMERIC NOT NULL,
  acertos                       NUMERIC NULL,
  id_seq_cmb_em_grupos          NUMERIC NULL,
  id_seq_exc_novos_repetidos_id NUMERIC NULL,
  id_ordenado_em_grupos         NUMERIC DEFAULT -1,

  --data_aleatorio TIMESTAMP not null,
  --aleatorio_sequencial numeric default 0,

  --concurso_soma_frequencia_bolas numeric null,

  CONSTRAINT d_sorte_filtros_fk FOREIGN KEY (d_sorte_id) REFERENCES d_sorte.d_sorte_num (d_sorte_id)
);
COMMENT ON COLUMN d_sorte.d_sorte_filtros.id_seq_cmb_em_grupos IS
'id sequencial referente à orde sequencial das combinações organizada '
'de tal forma que as bolas de duas combinaçoes não se repita.';
COMMENT ON COLUMN d_sorte.d_sorte_filtros.id_ordenado_em_grupos IS
'Aqui, iremos ordenar as combinações de tal forma que dada duas combinações em sequencia,'
'não haja nenhuma bola repetida.';


ALTER TABLE d_sorte.d_sorte_filtros
  DROP CONSTRAINT d_sorte_filtros_fk;
ALTER TABLE d_sorte.d_sorte_filtros
  ADD CONSTRAINT d_sorte_filtros_fk FOREIGN KEY (d_sorte_id) REFERENCES d_sorte.d_sorte_num (d_sorte_id) ON UPDATE CASCADE ON DELETE CASCADE;


SELECT
  data,
  to_char(data, 'dd-MM-YYYY HH24:MI:SS.US')
FROM d_sorte.d_sorte_filtros;

SELECT
  data,
  to_char(data, 'dd-MM-YYYY')
FROM d_sorte.d_sorte_filtros

SELECT
  data,
  to_char(d_sorte.d_sorte_filtros.data, 'HH24:MI:SS.US')
FROM d_sorte.d_sorte_filtros
GROUP BY data;


DROP VIEW IF EXISTS d_sorte.v_d_sorte_filtros_por_data;
CREATE VIEW d_sorte.v_d_sorte_filtros_por_data AS
  SELECT
    to_char(data, 'dd-MM-YYYY') AS data_1,
    to_char(data, 'YYYY-MM-dd') AS data_2
  FROM d_sorte.d_sorte_filtros
  GROUP BY to_char(data, 'dd-MM-YYYY'), to_char(data, 'YYYY-MM-dd')
  ORDER BY data_2 DESC;

DROP VIEW IF EXISTS d_sorte.v_d_sorte_filtros_por_data_hora;
CREATE VIEW d_sorte.v_d_sorte_filtros_por_data_hora AS
  SELECT
    data,
    to_char(data, 'dd-MM-YYYY')    data_1,
    to_char(data, 'HH24:MI:SS.US') hora_1
  FROM d_sorte.d_sorte_filtros
  GROUP BY data;

DROP VIEW IF EXISTS d_sorte.v_d_sorte_filtros_acertos_por_data_hora;
CREATE VIEW d_sorte.v_d_sorte_filtros_acertos_por_data_hora
  AS
    SELECT
      data,
      to_char(data, 'dd-MM-YYYY HH24:MI:SS.US' :: TEXT) data_brazil,
      to_char(data, 'YYYY-MM-dd HH24:MI:SS.US' :: TEXT) data_USA,
      acertos,
      count(*) AS                                       qt_vezes
    FROM d_sorte.d_sorte_filtros
    GROUP BY data, acertos
    ORDER BY data DESC, acertos DESC;

DROP VIEW IF EXISTS d_sorte.v_d_sorte_filtros;
CREATE VIEW d_sorte.v_d_sorte_filtros AS
  SELECT
    d_sorte.d_sorte_filtros.filtros_id,
    d_sorte.d_sorte_filtros.data,
    d_sorte.d_sorte_filtros.acertos,
    d_sorte.d_sorte_bolas.d_sorte_id,
    d_sorte.d_sorte_bolas.d_sorte_qt,
    d_sorte.d_sorte_bolas.b_1,
    d_sorte.d_sorte_bolas.b_2,
    d_sorte.d_sorte_bolas.b_3,
    d_sorte.d_sorte_bolas.b_4,
    d_sorte.d_sorte_bolas.b_5,
    d_sorte.d_sorte_bolas.b_6,
    d_sorte.d_sorte_bolas.b_7,
    d_sorte.d_sorte_bolas.b_8,
    d_sorte.d_sorte_bolas.b_9,
    d_sorte.d_sorte_bolas.b_10,
    d_sorte.d_sorte_bolas.b_11,
    d_sorte.d_sorte_bolas.b_12,
    d_sorte.d_sorte_bolas.b_13,
    d_sorte.d_sorte_bolas.b_14,
    d_sorte.d_sorte_bolas.b_15,
    d_sorte.d_sorte_combinacoes_em_grupos.id_seq_cmb_em_grupos,
    d_sorte.d_sorte_novos_repetidos.id_seq_exc_novos_repetidos_id,
    d_sorte.d_sorte_filtros.id_ordenado_em_grupos,
    d_sorte.d_sorte_filtros.concurso

  /*
  d_sorte.d_sorte_id_par_impar.par,
  d_sorte.d_sorte_id_par_impar.impar,

  d_sorte.d_sorte_id_primo_nao_primo.primo,
  d_sorte.d_sorte_id_primo_nao_primo.nao_primo,
  
  d_sorte.d_sorte_id_externo_interno.externo,
  d_sorte.d_sorte_id_externo_interno.interno,
  
  d_sorte.d_sorte_id_horizontal.hrz_1,
  d_sorte.d_sorte_id_horizontal.hrz_2,
  d_sorte.d_sorte_id_horizontal.hrz_3,
  d_sorte.d_sorte_id_horizontal.hrz_4,
  d_sorte.d_sorte_id_horizontal.hrz_5,
  
  d_sorte.d_sorte_id_vertical.vrt_1,
  d_sorte.d_sorte_id_vertical.vrt_2,
  d_sorte.d_sorte_id_vertical.vrt_3,
  d_sorte.d_sorte_id_vertical.vrt_4,
  d_sorte.d_sorte_id_vertical.vrt_5,
  d_sorte.d_sorte_id_vertical.vrt_6,
  d_sorte.d_sorte_id_vertical.vrt_7,  
  
  d_sorte.d_sorte_id_diagonal_esquerda.dge_1,
  d_sorte.d_sorte_id_diagonal_esquerda.dge_2,
  d_sorte.d_sorte_id_diagonal_esquerda.dge_3,
  d_sorte.d_sorte_id_diagonal_esquerda.dge_4,
  d_sorte.d_sorte_id_diagonal_esquerda.dge_5,
  d_sorte.d_sorte_id_diagonal_esquerda.dge_6,
  d_sorte.d_sorte_id_diagonal_esquerda.dge_7,
  
  d_sorte.d_sorte_id_diagonal_direita.dgd_1,
  d_sorte.d_sorte_id_diagonal_direita.dgd_2,
  d_sorte.d_sorte_id_diagonal_direita.dgd_3,
  d_sorte.d_sorte_id_diagonal_direita.dgd_4,
  d_sorte.d_sorte_id_diagonal_direita.dgd_5,
  d_sorte.d_sorte_id_diagonal_direita.dgd_6,
  d_sorte.d_sorte_id_diagonal_direita.dgd_7, 
  
  d_sorte.d_sorte_id_quadrante.qd_1,
  d_sorte.d_sorte_id_quadrante.qd_2,
  d_sorte.d_sorte_id_quadrante.qd_3,
  d_sorte.d_sorte_id_quadrante.qd_4,
  
  d_sorte.d_sorte_id_esquerda_direita.esq,
  d_sorte.d_sorte_id_esquerda_direita.dir,

  d_sorte.d_sorte_id_superior_inferior.sup,
  d_sorte.d_sorte_id_superior_inferior.inf,
  
  d_sorte.d_sorte_id_dezena.dz_0,
  d_sorte.d_sorte_id_dezena.dz_1,
  d_sorte.d_sorte_id_dezena.dz_2,
  d_sorte.d_sorte_id_dezena.dz_3,
  
  d_sorte.d_sorte_id_unidade.un_0,
  d_sorte.d_sorte_id_unidade.un_1,
  d_sorte.d_sorte_id_unidade.un_2,
  d_sorte.d_sorte_id_unidade.un_3,
  d_sorte.d_sorte_id_unidade.un_4,
  d_sorte.d_sorte_id_unidade.un_5,
  d_sorte.d_sorte_id_unidade.un_6,
  d_sorte.d_sorte_id_unidade.un_7, 
  d_sorte.d_sorte_id_unidade.un_8, 
  d_sorte.d_sorte_id_unidade.un_9, 
  
  d_sorte.d_sorte_id_algarismo.alg_0,
  d_sorte.d_sorte_id_algarismo.alg_1,
  d_sorte.d_sorte_id_algarismo.alg_2,
  d_sorte.d_sorte_id_algarismo.alg_3,
  d_sorte.d_sorte_id_algarismo.alg_4,
  d_sorte.d_sorte_id_algarismo.alg_5,
  d_sorte.d_sorte_id_algarismo.alg_6,
  d_sorte.d_sorte_id_algarismo.alg_7, 
  d_sorte.d_sorte_id_algarismo.alg_8, 
  d_sorte.d_sorte_id_algarismo.alg_9,

  d_sorte.d_sorte_id_soma_algarismo.sm_alg,
  d_sorte.d_sorte_id_soma_bolas.sm_bolas_id
  */
  FROM

    d_sorte.d_sorte_filtros,
    d_sorte.d_sorte_bolas,
    d_sorte.d_sorte_id,
    d_sorte.d_sorte_combinacoes_em_grupos,
    d_sorte.d_sorte_novos_repetidos

  /*
  d_sorte.d_sorte_id_par_impar,
  d_sorte.d_sorte_id_externo_interno,
  d_sorte.d_sorte_id_primo_nao_primo,
  d_sorte.d_sorte_id_horizontal,
  d_sorte.d_sorte_id_vertical,
  d_sorte.d_sorte_id_diagonal_esquerda,
  d_sorte.d_sorte_id_diagonal_direita,
  d_sorte.d_sorte_id_quadrante,
  d_sorte.d_sorte_id_esquerda_direita,
  d_sorte.d_sorte_id_superior_inferior,
  d_sorte.d_sorte_id_dezena,
  d_sorte.d_sorte_id_unidade,
  d_sorte.d_sorte_id_algarismo,
  d_sorte.d_sorte_id_soma_algarismo,
  d_sorte.d_sorte_id_soma_bolas
  */

  WHERE d_sorte.d_sorte_filtros.d_sorte_id = d_sorte.d_sorte_bolas.d_sorte_id AND
        d_sorte.d_sorte_filtros.d_sorte_id = d_sorte_id.d_sorte_id AND
        d_sorte.d_sorte_filtros.d_sorte_id = d_sorte_combinacoes_em_grupos.d_sorte_id AND
        d_sorte.d_sorte_filtros.d_sorte_id = d_sorte_novos_repetidos.d_sorte_id AND

        d_sorte.d_sorte_bolas.d_sorte_id = d_sorte_id.d_sorte_id AND
        d_sorte.d_sorte_bolas.d_sorte_id = d_sorte.d_sorte_combinacoes_em_grupos.d_sorte_id AND
        d_sorte.d_sorte_bolas.d_sorte_id = d_sorte.d_sorte_novos_repetidos.d_sorte_id AND

        d_sorte.d_sorte_id.d_sorte_id = d_sorte.d_sorte_combinacoes_em_grupos.d_sorte_id AND
        d_sorte.d_sorte_id.d_sorte_id = d_sorte.d_sorte_novos_repetidos.d_sorte_id AND

        d_sorte.d_sorte_combinacoes_em_grupos.d_sorte_id = d_sorte.d_sorte_novos_repetidos.d_sorte_id
  /*
  and
  d_sorte_id.par_impar_id = d_sorte.d_sorte_id_par_impar.par_impar_id AND
  d_sorte_id.ext_int_id = d_sorte.d_sorte_id_externo_interno.ext_int_id AND
  d_sorte_id.prm_id = d_sorte.d_sorte_id_primo_nao_primo.prm_id AND
  d_sorte_id.hrz_id = d_sorte.d_sorte_id_horizontal.hrz_id and
  d_sorte_id.vrt_id = d_sorte.d_sorte_id_vertical.vrt_id AND
  d_sorte_id.dge_id = d_sorte.d_sorte_id_diagonal_esquerda.dge_id and
  d_sorte_id.dgd_id = d_sorte.d_sorte_id_diagonal_direita.dgd_id and
  d_sorte_id.esq_dir_id = d_sorte.d_sorte_id_esquerda_direita.esq_dir_id and
  d_sorte_id.sup_inf_id = d_sorte.d_sorte_id_superior_inferior.sup_inf_id and
  d_sorte_id.dz_id = d_sorte.d_sorte_id_dezena.dz_id AND 
  d_sorte_id.un_id = d_sorte.d_sorte_id_unidade.un_id AND 
  d_sorte_id.alg_id = d_sorte.d_sorte_id_algarismo.alg_id AND 
  d_sorte_id.sm_alg_id = d_sorte.d_sorte_id_soma_algarismo.sm_alg_id AND 
  d_sorte_id.sm_bolas_id = d_sorte.d_sorte_id_soma_bolas.sm_bolas_id
  */
  ORDER BY filtros_id;


UPDATE d_sorte.d_sorte_filtros
SET acertos =
num_1 + num_2 + num_3 + num_4 + num_5 + num_6 + num_9 + num_12 + num_14 + num_15 + num_16 + num_19 + num_20 + num_22 +
num_25
FROM d_sorte.d_sorte_num
WHERE d_sorte.d_sorte_filtros.d_sorte_id =
      d_sorte.d_sorte_num.d_sorte_id
      AND to_char(data,
                  'dd-MM-YYYY HH24:MI:SS.US')
          = '01-12-2017 15:40:11.430697';


SELECT
  acertos,
  qt_vezes
FROM d_sorte.v_d_sorte_filtros_acertos_por_data_hora
WHERE to_char(data,
              'dd-MM-YYYY HH24:MI:SS.US')
      = '01-12-2017 15:40:11.430697'
ORDER BY acertos ASC;

INSERT INTO d_sorte.d_sorte_resultado_num (concurso, data, num_1, num_2, num_3, num_4, num_5, num_6, num_7, num_8, num_9, num_10, num_11, num_12, num_13, num_14, num_15, num_16, num_17, num_18, num_19, num_20, num_21, num_22, num_23, num_24, num_25, num_26, num_27, num_28, num_29, num_30, num_31)
VALUES (26, '2018-7-19', 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0);


/*
  Esta função ordenar as combinações dos filtros de tal forma que dada
  duas combinações ou mais até 4 combinações, de tal forma que as combinações
  envolvidas não tenha nenhuma bola repetida.

  TODO: Não usar este.
 */
DROP FUNCTION IF EXISTS d_sorte.fn_d_sorte_filtro_ordenar_combinacoes_em_grupos( CHARACTER VARYING );
CREATE FUNCTION d_sorte.fn_d_sorte_filtro_ordenar_combinacoes_em_grupos(data_hora_formato_usa CHARACTER VARYING)
  RETURNS VOID
LANGUAGE plpgsql
AS $$
DECLARE
  filtros_bolas          d_sorte.v_d_sorte_filtros%ROWTYPE;
  bolas_selecionadas     NUMERIC [32];
  bolas_combinacao_atual NUMERIC [32];

  b_sair_do_loop         BOOLEAN;
  id_sequencial          NUMERIC;

  refcursor_bolas        REFCURSOR;
  cursor_bolas           RECORD;
  str_sql                CHARACTER VARYING;

  record_bolas           RECORD;
  qt_bolas_repetidas     NUMERIC;

  contador_de_iteracao   NUMERIC;

BEGIN
  b_sair_do_loop = FALSE;
  id_sequencial = 0;

  -- Define tudo pra -1
  UPDATE d_sorte.d_sorte_filtros
  SET id_ordenado_em_grupos = -1
  WHERE to_char(data, 'YYYY-MM-dd HH24:MI:SS.US') = data_hora_formato_usa;


  WHILE TRUE LOOP

    FOR uA IN 1..31 LOOP
      bolas_selecionadas [uA] := 0;
    END LOOP;

    FOR uA IN 1..4 LOOP

      contador_de_iteracao := 0;
      FOR filtros_bolas IN
      SELECT *
      FROM d_sorte.v_d_sorte_filtros
      WHERE to_char(data, 'YYYY-MM-dd HH24:MI:SS.US') = data_hora_formato_usa
            AND id_ordenado_em_grupos = -1
      ORDER BY filtros_id ASC
      LOOP
        contador_de_iteracao := contador_de_iteracao + 1;
        RAISE NOTICE 'it:%,filtros_id: %, d_sorte_id: %, id_sequencial: %',
        contador_de_iteracao, filtros_bolas.filtros_id, filtros_bolas.d_sorte_id,
        id_sequencial;

        qt_bolas_repetidas := 0;

        IF bolas_selecionadas [filtros_bolas.b_1] = 1
        THEN qt_bolas_repetidas := qt_bolas_repetidas + 1; END IF;
        IF bolas_selecionadas [filtros_bolas.b_2] = 1
        THEN qt_bolas_repetidas := qt_bolas_repetidas + 1; END IF;
        IF bolas_selecionadas [filtros_bolas.b_3] = 1
        THEN qt_bolas_repetidas := qt_bolas_repetidas + 1; END IF;
        IF bolas_selecionadas [filtros_bolas.b_4] = 1
        THEN qt_bolas_repetidas := qt_bolas_repetidas + 1; END IF;
        IF bolas_selecionadas [filtros_bolas.b_5] = 1
        THEN qt_bolas_repetidas := qt_bolas_repetidas + 1; END IF;
        IF bolas_selecionadas [filtros_bolas.b_6] = 1
        THEN qt_bolas_repetidas := qt_bolas_repetidas + 1; END IF;
        IF bolas_selecionadas [filtros_bolas.b_7] = 1
        THEN qt_bolas_repetidas := qt_bolas_repetidas + 1; END IF;

        -- Se a quantidade de bolas repetidas é igual a 0, então, achamos uma combinação que não tem bolas
        -- repetidas.
        IF qt_bolas_repetidas = 0
        THEN
          bolas_selecionadas [filtros_bolas.b_1] := 1;
          bolas_selecionadas [filtros_bolas.b_2] := 1;
          bolas_selecionadas [filtros_bolas.b_3] := 1;
          bolas_selecionadas [filtros_bolas.b_4] := 1;
          bolas_selecionadas [filtros_bolas.b_5] := 1;
          bolas_selecionadas [filtros_bolas.b_6] := 1;
          bolas_selecionadas [filtros_bolas.b_7] := 1;

          id_sequencial := id_sequencial + 1;
          UPDATE d_sorte.d_sorte_filtros
          SET id_ordenado_em_grupos = id_sequencial
          WHERE filtros_id = filtros_bolas.filtros_id;

          EXIT WHEN TRUE;
        END IF;

      END LOOP;

    END LOOP;

    SELECT *
    FROM d_sorte.v_d_sorte_filtros
    WHERE to_char(data, 'YYYY-MM-dd HH24:MI:SS.US') = data_hora_formato_usa
          AND id_ordenado_em_grupos = -1
    INTO filtros_bolas;

    IF filtros_bolas IS NULL
    THEN
      RETURN;
    END IF;

  END LOOP;

END;
$$;

SELECT
FROM d_sorte.fn_d_sorte_filtro_ordenar_combinacoes_em_grupos('2018-08-09 15:06:17.879057');


/**
  Organiza as combinações que tal forma que dada 4 combinações organizadas sequencialmente,
  tais bolas não se repita entre as combinações.
  No jogo dia de sorte, pode haver 4 grupos de 7 bolas, restante 3 bolas.
  Neste caso, não iremos considerar as 3 bolas, entretanto, devemos garantir que após
  organizar tais combinações, dado duas combinações em sequência nenhuma bola ter bola
  repetida, pode acontecer, que se o usuário ao selecionar o filtro, quiser que alguma
  bola se repita em várias combinações, aí não tem jeito,
 */
DROP FUNCTION IF EXISTS d_sorte.fn_d_sorte_filtro_ordenar_combinacoes_em_grupos( CHARACTER VARYING );
CREATE FUNCTION d_sorte.fn_d_sorte_filtro_ordenar_combinacoes_em_grupos(data_hora_formato_usa CHARACTER VARYING)
  RETURNS VOID
LANGUAGE plpgsql
AS $$
DECLARE
  filtros_bolas                   d_sorte.v_d_sorte_filtros%ROWTYPE;
  bolas_selecionadas              NUMERIC [32];
  bolas_combinacao_atual          NUMERIC [32];

  b_sair_do_loop                  BOOLEAN;
  id_sequencial                   NUMERIC;

  qt_bolas_repetidas              NUMERIC;

  contador_de_iteracao            NUMERIC;

  ha_combinacao_sem_bola_repetida BOOLEAN;

  b_primeira_vez                  BOOLEAN;

  ultimo_filtros_id_sorteado      NUMERIC;

BEGIN
  b_sair_do_loop = FALSE;
  id_sequencial = 0;

  -- Define tudo pra -1
  UPDATE d_sorte.d_sorte_filtros
  SET id_ordenado_em_grupos = -1
  WHERE to_char(data, 'YYYY-MM-dd HH24:MI:SS.US') = data_hora_formato_usa;

  FOR uA IN 1..31 LOOP
    bolas_selecionadas [uA] := 0;
  END LOOP;

  -- Seleciona aleatoriamente, a primeira combinação.
  --   SELECT *
  --   FROM d_sorte.v_d_sorte_filtros
  --   WHERE id_ordenado_em_grupos = -1
  --         AND to_char(data, 'YYYY-MM-dd HH24:MI:SS.US') = data_hora_formato_usa
  --   ORDER BY random()
  --   INTO filtros_bolas;
  --
  --   IF filtros_bolas IS NULL
  --   THEN
  --     RAISE NOTICE 'Nenhum registro localizado';
  --     RETURN;
  --   END IF;
  --
  --   Raise Notice 'Atribuindo...';
  --   bolas_selecionadas [filtros_bolas.b_1] := 1;
  --   bolas_selecionadas [filtros_bolas.b_2] := 1;
  --   bolas_selecionadas [filtros_bolas.b_3] := 1;
  --   bolas_selecionadas [filtros_bolas.b_4] := 1;
  --   bolas_selecionadas [filtros_bolas.b_5] := 1;
  --   bolas_selecionadas [filtros_bolas.b_6] := 1;
  --   bolas_selecionadas [filtros_bolas.b_7] := 1;

  -- Raise Notice 'Atribuído...';

  --   id_sequencial := id_sequencial + 1;
  --   UPDATE d_sorte.d_sorte_filtros
  --   SET id_ordenado_em_grupos = id_sequencial
  --   WHERE filtros_id = filtros_bolas.filtros_id;

  b_primeira_vez = TRUE;

  ultimo_filtros_id_sorteado = 0;

  WHILE TRUE LOOP

    -- No jogo 'dia_de_sorte' há no máximo 4 grupos com 7 bolas de tal forma
    -- que tais bolas de um grupo não se repita com qualquer um dos outros 3 grupos.
    -- Antes de executar o loop, a primeira combinação já foi escolhida, antes
    -- de entrar no loop while.
    -- Agora, precisamos localizar as três outras combinações.

    ha_combinacao_sem_bola_repetida := FALSE;
    FOR uA IN 1..4 LOOP
      ha_combinacao_sem_bola_repetida := FALSE;

      IF b_primeira_vez = TRUE
      THEN
        b_primeira_vez := FALSE;
      ELSEIF uA = 1 AND b_primeira_vez = FALSE
        THEN
          CONTINUE;
      END IF;

      contador_de_iteracao := 0;
      FOR filtros_bolas IN
      SELECT *
      FROM d_sorte.v_d_sorte_filtros
      WHERE to_char(data, 'YYYY-MM-dd HH24:MI:SS.US') = data_hora_formato_usa
            AND id_ordenado_em_grupos = -1
      ORDER BY filtros_id ASC
      LOOP
        contador_de_iteracao := contador_de_iteracao + 1;
        RAISE NOTICE 'uA: %, it:%,filtros_id: %, d_sorte_id: %, id_sequencial: %',
        uA, contador_de_iteracao, filtros_bolas.filtros_id, filtros_bolas.d_sorte_id,
        id_sequencial;

        qt_bolas_repetidas := 0;

        IF bolas_selecionadas [filtros_bolas.b_1] = 1
        THEN qt_bolas_repetidas := qt_bolas_repetidas + 1; END IF;
        IF bolas_selecionadas [filtros_bolas.b_2] = 1
        THEN qt_bolas_repetidas := qt_bolas_repetidas + 1; END IF;
        IF bolas_selecionadas [filtros_bolas.b_3] = 1
        THEN qt_bolas_repetidas := qt_bolas_repetidas + 1; END IF;
        IF bolas_selecionadas [filtros_bolas.b_4] = 1
        THEN qt_bolas_repetidas := qt_bolas_repetidas + 1; END IF;
        IF bolas_selecionadas [filtros_bolas.b_5] = 1
        THEN qt_bolas_repetidas := qt_bolas_repetidas + 1; END IF;
        IF bolas_selecionadas [filtros_bolas.b_6] = 1
        THEN qt_bolas_repetidas := qt_bolas_repetidas + 1; END IF;
        IF bolas_selecionadas [filtros_bolas.b_7] = 1
        THEN qt_bolas_repetidas := qt_bolas_repetidas + 1; END IF;

        -- Se não há bolas repetidas, quer dizer, que a combinação atual
        -- não tem bolas repetidas, com a última combinação que encontramos.
        IF qt_bolas_repetidas = 0
        THEN

          -- Se estamos no último grupo, devemos, selecionar esta bola
          -- pra fazer parte do próximo grupo.
          IF uA = 4
          THEN
            FOR uB IN 1..31 LOOP
              bolas_selecionadas [uB] := 0;
            END LOOP;
          END IF;

          bolas_selecionadas [filtros_bolas.b_1] := 1;
          bolas_selecionadas [filtros_bolas.b_2] := 1;
          bolas_selecionadas [filtros_bolas.b_3] := 1;
          bolas_selecionadas [filtros_bolas.b_4] := 1;
          bolas_selecionadas [filtros_bolas.b_5] := 1;
          bolas_selecionadas [filtros_bolas.b_6] := 1;
          bolas_selecionadas [filtros_bolas.b_7] := 1;

          id_sequencial := id_sequencial + 1;
          UPDATE d_sorte.d_sorte_filtros
          SET id_ordenado_em_grupos = id_sequencial
          WHERE filtros_id = filtros_bolas.filtros_id;

          -- Aqui, iremos definir que ao sair do loop, tem uma combinação
          -- que não tem bola repetida.
          ha_combinacao_sem_bola_repetida := TRUE;

          ultimo_filtros_id_sorteado := filtros_bolas.filtros_id;

          EXIT WHEN TRUE;

        END IF;

      END LOOP;

    END LOOP;

    -- Se ao sair do loop não há combinação sem bola repetida, devemos
    -- resetar o vetor.
    IF ha_combinacao_sem_bola_repetida = FALSE
    THEN
      RAISE NOTICE 'Entrou no if de bolas repetidas';
      b_primeira_vez := TRUE;

      FOR uA IN 1..31 LOOP
        bolas_selecionadas [uA] := 0;
      END LOOP;

      --       SELECT *
      --       FROM d_sorte.v_d_sorte_filtros
      --       WHERE to_char(data, 'YYYY-MM-dd HH24:MI:SS.US') = data_hora_formato_usa
      --         and filtros_id = ultimo_filtros_id_sorteado
      --       ORDER BY filtros_id
      --       INTO filtros_bolas;
      --
      --       IF filtros_bolas IS NULL
      --       THEN
      --         RAISE NOTICE 'Nenhum registro localizado';
      --         RETURN;
      --       END IF;
      --
      --       bolas_selecionadas [filtros_bolas.b_1] := 1;
      --       bolas_selecionadas [filtros_bolas.b_2] := 1;
      --       bolas_selecionadas [filtros_bolas.b_3] := 1;
      --       bolas_selecionadas [filtros_bolas.b_4] := 1;
      --       bolas_selecionadas [filtros_bolas.b_5] := 1;
      --       bolas_selecionadas [filtros_bolas.b_6] := 1;
      --       bolas_selecionadas [filtros_bolas.b_7] := 1;
      --
      -- --       id_sequencial := id_sequencial + 1;
      -- --       UPDATE d_sorte.d_sorte_filtros
      -- --       SET id_ordenado_em_grupos = id_sequencial
      -- --       WHERE filtros_id = filtros_bolas.filtros_id;

    END IF;


    SELECT *
    FROM d_sorte.v_d_sorte_filtros
    WHERE to_char(data, 'YYYY-MM-dd HH24:MI:SS.US') = data_hora_formato_usa
          AND id_ordenado_em_grupos = -1
    INTO filtros_bolas;

    IF filtros_bolas IS NULL
    THEN
      RETURN;
    END IF;

  END LOOP;

END;
$$;

SELECT
FROM d_sorte.fn_d_sorte_filtro_ordenar_combinacoes_em_grupos_3('2018-08-09 21:40:03.550289');

/**
  Ordena as combinações de tal forma que dada 4 combinações, tais combinações entre si não
  tenha bolas repetidas.
  Se após ordenar ainda restar combinações entre sim que pode haver bolas repetidas, devemos
  organizar de tal forma que haja a menor quantidade de bolas repetidas, entre uma combinação
  a seguinte.
 */
DROP FUNCTION IF EXISTS d_sorte.fn_d_sorte_filtro_ordenar_combinacoes_em_grupos_3( CHARACTER VARYING );
CREATE FUNCTION d_sorte.fn_d_sorte_filtro_ordenar_combinacoes_em_grupos_3(data_hora_formato_usa CHARACTER VARYING)
  RETURNS VOID
LANGUAGE plpgsql
AS $$
DECLARE
  filtros_bolas                   d_sorte.v_d_sorte_filtros%ROWTYPE;

  -- Armazena as primeiras 7 bolas, nas primeiras 7 posições,
  -- armazenas as próximas 7 bolas, nas próximas 7 posições e
  -- assim por diante.
  bolas_ultimas_3_combinacoes     NUMERIC [32];


  bolas_selecionadas              NUMERIC [32];

  -- Armazena o id da primeira combinação, de cada quantidade de repetidas, que foi encontrada.
  primeira_combinacao_repetida    NUMERIC [8];


  b_sair_do_loop                  BOOLEAN;
  id_sequencial                   NUMERIC;

  qt_bolas_repetidas              NUMERIC;

  contador_de_iteracao            NUMERIC;

  ha_combinacao_sem_bola_repetida BOOLEAN;

  b_primeira_vez                  BOOLEAN;

  ultimo_filtro_id_sorteado       NUMERIC;

  filtros_id_temporario           NUMERIC;

  combinacoes_ja_encontradas      NUMERIC;

  bola_atual                      NUMERIC;

  ultima_combinacao_localizada    NUMERIC;

  texto                           CHARACTER VARYING;

  b_ua_1                          BOOLEAN;
  b_ua_2                          BOOLEAN;
  b_ua_3                          BOOLEAN;
  b_ua_4                          BOOLEAN;
  b_ua_5                          BOOLEAN;
  b_ua_6                          BOOLEAN;
  b_ua_7                          BOOLEAN;

  uA                              NUMERIC;

BEGIN
  b_sair_do_loop = FALSE;
  id_sequencial = 0;

  -- No campo id_ordenado_em_grupos, o valor -1, indica que a
  -- combinação ainda não foi ordenada.
  -- Por isto, antes de ordenar, devemos garantir que as combinações
  -- escolhidas pelo usuário tenha o valor -1.
  UPDATE d_sorte.d_sorte_filtros
  SET id_ordenado_em_grupos = -1
  WHERE to_char(data, 'YYYY-MM-dd HH24:MI:SS.US') = data_hora_formato_usa;

  -- Reseta todas as bolas.
  FOR uA IN 1..31 LOOP
    bolas_selecionadas [uA] := 0;
    bolas_ultimas_3_combinacoes [uA] := 0;
  END LOOP;

  b_primeira_vez = TRUE;

  ultimo_filtro_id_sorteado = 0;

  ultima_combinacao_localizada = -1;

  combinacoes_ja_encontradas := 0;

  b_ua_1 := FALSE;
  b_ua_2 := FALSE;
  b_ua_3 := FALSE;
  b_ua_4 := FALSE;
  b_ua_5 := FALSE;
  b_ua_6 := FALSE;
  b_ua_7 := FALSE;

  WHILE TRUE LOOP

    -- Armazena a primeira combinação repetida que for encontrada.
    -- Isto será utilizado caso, não encontremos uma combinação
    -- com bolas não-repetidas.
    primeira_combinacao_repetida [0] := -1;
    primeira_combinacao_repetida [1] := -1;
    primeira_combinacao_repetida [2] := -1;
    primeira_combinacao_repetida [3] := -1;
    primeira_combinacao_repetida [4] := -1;
    primeira_combinacao_repetida [5] := -1;
    primeira_combinacao_repetida [6] := -1;
    primeira_combinacao_repetida [7] := -1;

    -- No jogo 'dia_de_sorte' há no máximo 4 grupos com 7 bolas de tal forma
    -- que tais bolas de um grupo não se repita com qualquer um dos outros 3 grupos.
    -- Antes de executar o loop, a primeira combinação já foi escolhida, antes
    -- de entrar no loop while.
    -- Agora, precisamos localizar as três outras combinações.

    ha_combinacao_sem_bola_repetida := FALSE;
    qt_bolas_repetidas := 0;

    --FOR uA IN 1..5 LOOP

    uA := 1;
    WHILE uA <= 5 LOOP
      ha_combinacao_sem_bola_repetida := FALSE;

      IF b_primeira_vez = TRUE
      THEN
        b_primeira_vez := FALSE;
      ELSEIF uA = 1 AND b_primeira_vez = FALSE
        THEN
          CONTINUE;
      END IF;

      -- Armazena a primeira combinação repetida que for encontrada.
      -- Isto será utilizado caso, não encontremos uma combinação
      -- com bolas não-repetidas.
      primeira_combinacao_repetida [0] := -1;
      primeira_combinacao_repetida [1] := -1;
      primeira_combinacao_repetida [2] := -1;
      primeira_combinacao_repetida [3] := -1;
      primeira_combinacao_repetida [4] := -1;
      primeira_combinacao_repetida [5] := -1;
      primeira_combinacao_repetida [6] := -1;
      primeira_combinacao_repetida [7] := -1;

      -- Vamos percorrer todas as combinação ainda não ordenadas,
      -- e quando encontrarmos uma combinação que não tenha bolas repetidas,
      -- devemos registrar está combinação e atribuir um identificador sequencial
      -- pra esta combinação.

      contador_de_iteracao := 0;
      FOR filtros_bolas IN
      SELECT *
      FROM d_sorte.v_d_sorte_filtros
      WHERE to_char(data, 'YYYY-MM-dd HH24:MI:SS.US') = data_hora_formato_usa
            AND id_ordenado_em_grupos = -1
      ORDER BY filtros_id ASC
      LOOP
        contador_de_iteracao := contador_de_iteracao + 1;


        qt_bolas_repetidas := 0;

        IF bolas_selecionadas [filtros_bolas.b_1] = 1
        THEN qt_bolas_repetidas := qt_bolas_repetidas + 1; END IF;
        IF bolas_selecionadas [filtros_bolas.b_2] = 1
        THEN qt_bolas_repetidas := qt_bolas_repetidas + 1; END IF;
        IF bolas_selecionadas [filtros_bolas.b_3] = 1
        THEN qt_bolas_repetidas := qt_bolas_repetidas + 1; END IF;
        IF bolas_selecionadas [filtros_bolas.b_4] = 1
        THEN qt_bolas_repetidas := qt_bolas_repetidas + 1; END IF;
        IF bolas_selecionadas [filtros_bolas.b_5] = 1
        THEN qt_bolas_repetidas := qt_bolas_repetidas + 1; END IF;
        IF bolas_selecionadas [filtros_bolas.b_6] = 1
        THEN qt_bolas_repetidas := qt_bolas_repetidas + 1; END IF;
        IF bolas_selecionadas [filtros_bolas.b_7] = 1
        THEN qt_bolas_repetidas := qt_bolas_repetidas + 1; END IF;

        RAISE NOTICE 'bolas_repetidas: %', qt_bolas_repetidas;

        IF primeira_combinacao_repetida [qt_bolas_repetidas] = -1
        THEN
          primeira_combinacao_repetida [qt_bolas_repetidas] := filtros_bolas.filtros_id;
        END IF;

        RAISE NOTICE 'uA: %, it:%,filtros_id: %, d_sorte_id: %, id_sequencial: %, comb.:% e % tem % bolas repetidas.',
        uA, contador_de_iteracao, filtros_bolas.filtros_id, filtros_bolas.d_sorte_id,
        id_sequencial, ultima_combinacao_localizada,
        filtros_bolas.d_sorte_id, qt_bolas_repetidas;

        texto = '';
        FOR uC IN 1..21 LOOP
          IF uC IN (7, 14)
          THEN
            texto := texto || ' - ';
          END IF;

          texto := texto || '[' || bolas_ultimas_3_combinacoes [uC] || ']';
        END LOOP;
        RAISE NOTICE '%', texto;

        -- Se há zero bolas repetidas, devemos sair do loop e continuar.
        IF qt_bolas_repetidas = 0
        THEN
          ultima_combinacao_localizada := filtros_bolas.d_sorte_id;

          bolas_selecionadas [filtros_bolas.b_1] := 1;
          bolas_selecionadas [filtros_bolas.b_2] := 1;
          bolas_selecionadas [filtros_bolas.b_3] := 1;
          bolas_selecionadas [filtros_bolas.b_4] := 1;
          bolas_selecionadas [filtros_bolas.b_5] := 1;
          bolas_selecionadas [filtros_bolas.b_6] := 1;
          bolas_selecionadas [filtros_bolas.b_7] := 1;

          id_sequencial := id_sequencial + 1;
          UPDATE d_sorte.d_sorte_filtros
          SET id_ordenado_em_grupos = id_sequencial
          WHERE filtros_id = filtros_bolas.filtros_id;

          ultimo_filtro_id_sorteado := filtros_bolas.filtros_id;

          combinacoes_ja_encontradas := combinacoes_ja_encontradas + 1;
          -- Copia a nova combinação
          IF combinacoes_ja_encontradas = 1
          THEN
            bolas_ultimas_3_combinacoes [1] := filtros_bolas.b_1;
            bolas_ultimas_3_combinacoes [2] := filtros_bolas.b_2;
            bolas_ultimas_3_combinacoes [3] := filtros_bolas.b_3;
            bolas_ultimas_3_combinacoes [4] := filtros_bolas.b_4;
            bolas_ultimas_3_combinacoes [5] := filtros_bolas.b_5;
            bolas_ultimas_3_combinacoes [6] := filtros_bolas.b_6;
            bolas_ultimas_3_combinacoes [7] := filtros_bolas.b_7;
          ELSEIF combinacoes_ja_encontradas = 2
            THEN
              bolas_ultimas_3_combinacoes [8] := filtros_bolas.b_1;
              bolas_ultimas_3_combinacoes [9] := filtros_bolas.b_2;
              bolas_ultimas_3_combinacoes [10] := filtros_bolas.b_3;
              bolas_ultimas_3_combinacoes [11] := filtros_bolas.b_4;
              bolas_ultimas_3_combinacoes [12] := filtros_bolas.b_5;
              bolas_ultimas_3_combinacoes [13] := filtros_bolas.b_6;
              bolas_ultimas_3_combinacoes [14] := filtros_bolas.b_7;
          ELSEIF combinacoes_ja_encontradas = 3
            THEN
              bolas_ultimas_3_combinacoes [15] := filtros_bolas.b_1;
              bolas_ultimas_3_combinacoes [16] := filtros_bolas.b_2;
              bolas_ultimas_3_combinacoes [17] := filtros_bolas.b_3;
              bolas_ultimas_3_combinacoes [18] := filtros_bolas.b_4;
              bolas_ultimas_3_combinacoes [19] := filtros_bolas.b_5;
              bolas_ultimas_3_combinacoes [20] := filtros_bolas.b_6;
              bolas_ultimas_3_combinacoes [21] := filtros_bolas.b_7;
          ELSEIF combinacoes_ja_encontradas > 3
            THEN
              -- Copia a segunda combinação pra a primeira, a terceira
              -- pra a segunda e insere a combinação atual na última.
              FOR uC IN 8..21 LOOP
                bolas_ultimas_3_combinacoes [uC - 7] := bolas_ultimas_3_combinacoes [uC];
              END LOOP;

              bolas_ultimas_3_combinacoes [15] := filtros_bolas.b_1;
              bolas_ultimas_3_combinacoes [16] := filtros_bolas.b_2;
              bolas_ultimas_3_combinacoes [17] := filtros_bolas.b_3;
              bolas_ultimas_3_combinacoes [18] := filtros_bolas.b_4;
              bolas_ultimas_3_combinacoes [19] := filtros_bolas.b_5;
              bolas_ultimas_3_combinacoes [20] := filtros_bolas.b_6;
              bolas_ultimas_3_combinacoes [21] := filtros_bolas.b_7;

              EXIT WHEN TRUE;

          END IF;

        END IF;

        -- Há no jogo dia de sorte 31 bolas, dispostas em 4 grupos com 7 bolas
        -- e mais 1 grupo com 3 bolas restantes, se a combinação atual tem
        -- 4 bolas repetidas, quer dizer, que achamos mais uma combinação.

        IF uA = 5 AND qt_bolas_repetidas = 4
        THEN
          ultima_combinacao_localizada := filtros_bolas.d_sorte_id;
          ultimo_filtro_id_sorteado := filtros_bolas.filtros_id;
          b_primeira_vez := TRUE;

          FOR uB IN 1..31 LOOP
            bolas_selecionadas [uB] := 0;
          END LOOP;

          bolas_selecionadas [filtros_bolas.b_1] := 1;
          bolas_selecionadas [filtros_bolas.b_2] := 1;
          bolas_selecionadas [filtros_bolas.b_3] := 1;
          bolas_selecionadas [filtros_bolas.b_4] := 1;
          bolas_selecionadas [filtros_bolas.b_5] := 1;
          bolas_selecionadas [filtros_bolas.b_6] := 1;
          bolas_selecionadas [filtros_bolas.b_7] := 1;

          qt_bolas_repetidas := 0;

          combinacoes_ja_encontradas := combinacoes_ja_encontradas + 1;
          -- Copia a nova combinação
          IF combinacoes_ja_encontradas = 1
          THEN
            bolas_ultimas_3_combinacoes [1] := filtros_bolas.b_1;
            bolas_ultimas_3_combinacoes [2] := filtros_bolas.b_2;
            bolas_ultimas_3_combinacoes [3] := filtros_bolas.b_3;
            bolas_ultimas_3_combinacoes [4] := filtros_bolas.b_4;
            bolas_ultimas_3_combinacoes [5] := filtros_bolas.b_5;
            bolas_ultimas_3_combinacoes [6] := filtros_bolas.b_6;
            bolas_ultimas_3_combinacoes [7] := filtros_bolas.b_7;
          ELSEIF combinacoes_ja_encontradas = 2
            THEN
              bolas_ultimas_3_combinacoes [8] := filtros_bolas.b_1;
              bolas_ultimas_3_combinacoes [9] := filtros_bolas.b_2;
              bolas_ultimas_3_combinacoes [10] := filtros_bolas.b_3;
              bolas_ultimas_3_combinacoes [11] := filtros_bolas.b_4;
              bolas_ultimas_3_combinacoes [12] := filtros_bolas.b_5;
              bolas_ultimas_3_combinacoes [13] := filtros_bolas.b_6;
              bolas_ultimas_3_combinacoes [14] := filtros_bolas.b_7;
          ELSEIF combinacoes_ja_encontradas = 3
            THEN
              bolas_ultimas_3_combinacoes [15] := filtros_bolas.b_1;
              bolas_ultimas_3_combinacoes [16] := filtros_bolas.b_2;
              bolas_ultimas_3_combinacoes [17] := filtros_bolas.b_3;
              bolas_ultimas_3_combinacoes [18] := filtros_bolas.b_4;
              bolas_ultimas_3_combinacoes [19] := filtros_bolas.b_5;
              bolas_ultimas_3_combinacoes [20] := filtros_bolas.b_6;
              bolas_ultimas_3_combinacoes [21] := filtros_bolas.b_7;
          ELSEIF combinacoes_ja_encontradas > 3
            THEN
              -- Copia a segunda combinação pra a primeira, a terceira
              -- pra a segunda e insere a combinação atual na última.
              FOR uC IN 8..21 LOOP
                bolas_ultimas_3_combinacoes [uC - 7] := bolas_ultimas_3_combinacoes [uC];
              END LOOP;

              bolas_ultimas_3_combinacoes [15] := filtros_bolas.b_1;
              bolas_ultimas_3_combinacoes [16] := filtros_bolas.b_2;
              bolas_ultimas_3_combinacoes [17] := filtros_bolas.b_3;
              bolas_ultimas_3_combinacoes [18] := filtros_bolas.b_4;
              bolas_ultimas_3_combinacoes [19] := filtros_bolas.b_5;
              bolas_ultimas_3_combinacoes [20] := filtros_bolas.b_6;
              bolas_ultimas_3_combinacoes [21] := filtros_bolas.b_7;

              EXIT WHEN TRUE;

          END IF;

          EXIT WHEN TRUE;
        END IF;

      END LOOP;

      IF qt_bolas_repetidas = 0
      THEN
        uA := uA + 1;
        CONTINUE;
      END IF;

      -- Se após percorrer todas as combinações não encontrarmos nenhuma combinação
      -- que tenha bolas repetidas, iremos uma única vez, dependendo em qual iteração
      -- do loop está, retirar 7 bolas da primeira, 14 bolas, 21 bolas e repetir a iteração.

      IF qt_bolas_repetidas <> 0
      THEN
        -- Se é a primeira iteração, quer dizer, que todas as combinações, tem pelo menos
        -- uma bola repetida, neste caso, iremos pegar a combinação que tem a menor quantidade de
        -- de bolas.
        filtros_id_temporario := -1;
        IF uA = 1
        THEN
          CASE WHEN primeira_combinacao_repetida [1] <> -1
            THEN
              filtros_id_temporario := primeira_combinacao_repetida [1];
            WHEN primeira_combinacao_repetida [2] <> -1
            THEN
              filtros_id_temporario := primeira_combinacao_repetida [2];
            WHEN primeira_combinacao_repetida [3] <> -1
            THEN
              filtros_id_temporario := primeira_combinacao_repetida [3];
            WHEN primeira_combinacao_repetida [4] <> -1
            THEN
              filtros_id_temporario := primeira_combinacao_repetida [4];
            WHEN primeira_combinacao_repetida [5] <> -1
            THEN
              filtros_id_temporario := primeira_combinacao_repetida [5];
            WHEN primeira_combinacao_repetida [6] <> -1
            THEN
              filtros_id_temporario := primeira_combinacao_repetida [6];
            WHEN primeira_combinacao_repetida [7] <> -1
            THEN
              filtros_id_temporario := primeira_combinacao_repetida [7];
          END CASE;

          -- Atualiza a combinação que tem a menor quantidade de bolas repetidas.
          -- Isto serve pra evitar temos muitas bolas repetidas, entre duas combinações
          -- em sequência, quanto menor a quantidade de bolas repetidas, melhor.
          id_sequencial := id_sequencial + 1;
          UPDATE d_sorte.d_sorte_filtros
          SET id_ordenado_em_grupos = id_sequencial
          WHERE filtros_id = filtros_id_temporario;

          -- Reseta todas as bolas
          FOR uB IN 1..31 LOOP
            bolas_selecionadas [uB] := 0;
          END LOOP;

          -- Vamos pegar as bolas da combinação que tem a menor quantidade de bolas
          -- repetidas.
          SELECT *
          FROM d_sorte.v_d_sorte_filtros
          WHERE to_char(data, 'YYYY-MM-dd HH24:MI:SS.US') = data_hora_formato_usa
                AND filtros_id = filtros_id_temporario
          INTO filtros_bolas;

          IF filtros_bolas IS NULL
          THEN
            RAISE 'filtro_bolas is null.';
            RETURN;
          END IF;

          -- Pega as bolas da combinação atual.
          bolas_selecionadas [filtros_bolas.b_1] := 1;
          bolas_selecionadas [filtros_bolas.b_2] := 1;
          bolas_selecionadas [filtros_bolas.b_3] := 1;
          bolas_selecionadas [filtros_bolas.b_4] := 1;
          bolas_selecionadas [filtros_bolas.b_5] := 1;
          bolas_selecionadas [filtros_bolas.b_6] := 1;
          bolas_selecionadas [filtros_bolas.b_7] := 1;

          -- Copia a segunda combinação pra a primeira, a terceira
          -- pra a segunda e insere a combinação atual na última.
          FOR uC IN 8..21 LOOP
            bolas_ultimas_3_combinacoes [uC - 7] := bolas_ultimas_3_combinacoes [uC];
          END LOOP;

          bolas_ultimas_3_combinacoes [15] := filtros_bolas.b_1;
          bolas_ultimas_3_combinacoes [16] := filtros_bolas.b_2;
          bolas_ultimas_3_combinacoes [17] := filtros_bolas.b_3;
          bolas_ultimas_3_combinacoes [18] := filtros_bolas.b_4;
          bolas_ultimas_3_combinacoes [19] := filtros_bolas.b_5;
          bolas_ultimas_3_combinacoes [20] := filtros_bolas.b_6;
          bolas_ultimas_3_combinacoes [21] := filtros_bolas.b_7;

        ELSEIF uA = 2
          THEN
            -- Apaga a primeira combinação de um total de 3 combinações anteriores a esta.
            RAISE NOTICE 'Entrou aqui, uA: %', uA;
            FOR uC IN 1..7 LOOP
              bola_atual := bolas_ultimas_3_combinacoes [uC];
              RAISE NOTICE 'uC: %, bola_atual: %', uC, bola_atual;
              bolas_selecionadas [bola_atual] := 0;
            END LOOP;


            IF b_ua_2 = FALSE
            THEN
              b_ua_2 := TRUE;
              CONTINUE;
            END IF;

            -- Se é true quer dizer que todas as combinações estão se repetindo.
            IF b_ua_2 = TRUE
            THEN
              b_ua_2 = FALSE;
              CASE WHEN primeira_combinacao_repetida [1] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [1];
                WHEN primeira_combinacao_repetida [2] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [2];
                WHEN primeira_combinacao_repetida [3] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [3];
                WHEN primeira_combinacao_repetida [4] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [4];
                WHEN primeira_combinacao_repetida [5] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [5];
                WHEN primeira_combinacao_repetida [6] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [6];
                WHEN primeira_combinacao_repetida [7] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [7];
              END CASE;

              -- Atualiza a combinação que tem a menor quantidade de bolas repetidas.
              -- Isto serve pra evitar temos muitas bolas repetidas, entre duas combinações
              -- em sequência, quanto menor a quantidade de bolas repetidas, melhor.
              id_sequencial := id_sequencial + 1;
              UPDATE d_sorte.d_sorte_filtros
              SET id_ordenado_em_grupos = id_sequencial
              WHERE filtros_id = filtros_id_temporario;

              -- Reseta todas as bolas
              FOR uB IN 1..31 LOOP
                bolas_selecionadas [uB] := 0;
              END LOOP;

              -- Vamos pegar as bolas da combinação que tem a menor quantidade de bolas
              -- repetidas.
              SELECT *
              FROM d_sorte.v_d_sorte_filtros
              WHERE to_char(data, 'YYYY-MM-dd HH24:MI:SS.US') = data_hora_formato_usa
                    AND filtros_id = filtros_id_temporario
              INTO filtros_bolas;

              IF filtros_bolas IS NULL
              THEN
                RAISE 'filtro_bolas is null.';
                RETURN;
              END IF;

              -- Pega as bolas da combinação atual.
              bolas_selecionadas [filtros_bolas.b_1] := 1;
              bolas_selecionadas [filtros_bolas.b_2] := 1;
              bolas_selecionadas [filtros_bolas.b_3] := 1;
              bolas_selecionadas [filtros_bolas.b_4] := 1;
              bolas_selecionadas [filtros_bolas.b_5] := 1;
              bolas_selecionadas [filtros_bolas.b_6] := 1;
              bolas_selecionadas [filtros_bolas.b_7] := 1;

              -- Copia a segunda combinação pra a primeira, a terceira
              -- pra a segunda e insere a combinação atual na última.
              FOR uC IN 8..21 LOOP
                bolas_ultimas_3_combinacoes [uC - 7] := bolas_ultimas_3_combinacoes [uC];
              END LOOP;

              bolas_ultimas_3_combinacoes [15] := filtros_bolas.b_1;
              bolas_ultimas_3_combinacoes [16] := filtros_bolas.b_2;
              bolas_ultimas_3_combinacoes [17] := filtros_bolas.b_3;
              bolas_ultimas_3_combinacoes [18] := filtros_bolas.b_4;
              bolas_ultimas_3_combinacoes [19] := filtros_bolas.b_5;
              bolas_ultimas_3_combinacoes [20] := filtros_bolas.b_6;
              bolas_ultimas_3_combinacoes [21] := filtros_bolas.b_7;

            END IF;


            EXIT WHEN TRUE;

        ELSEIF uA = 3
          THEN
            RAISE NOTICE 'Entrou aqui, uA: %', uA;
            -- Apaga a primeira combinação de um total de 3 combinações anteriores a esta.
            FOR uC IN 1..14 LOOP
              bola_atual := bolas_ultimas_3_combinacoes [uC];
              RAISE NOTICE 'uC: %, bola_atual: %', uC, bola_atual;
              bolas_selecionadas [bola_atual] := 0;
            END LOOP;

            IF b_ua_3 = FALSE
            THEN
              b_ua_3 := TRUE;
              CONTINUE;
              --EXIT WHEN TRUE;
            END IF;

            -- Se é true quer dizer que todas as combinações estão se repetindo.
            IF b_ua_3 = TRUE
            THEN
              b_ua_3 = FALSE;
              CASE WHEN primeira_combinacao_repetida [1] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [1];
                WHEN primeira_combinacao_repetida [2] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [2];
                WHEN primeira_combinacao_repetida [3] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [3];
                WHEN primeira_combinacao_repetida [4] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [4];
                WHEN primeira_combinacao_repetida [5] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [5];
                WHEN primeira_combinacao_repetida [6] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [6];
                WHEN primeira_combinacao_repetida [7] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [7];
              END CASE;

              -- Atualiza a combinação que tem a menor quantidade de bolas repetidas.
              -- Isto serve pra evitar temos muitas bolas repetidas, entre duas combinações
              -- em sequência, quanto menor a quantidade de bolas repetidas, melhor.
              id_sequencial := id_sequencial + 1;
              UPDATE d_sorte.d_sorte_filtros
              SET id_ordenado_em_grupos = id_sequencial
              WHERE filtros_id = filtros_id_temporario;

              -- Reseta todas as bolas
              FOR uB IN 1..31 LOOP
                bolas_selecionadas [uB] := 0;
              END LOOP;

              -- Vamos pegar as bolas da combinação que tem a menor quantidade de bolas
              -- repetidas.
              SELECT *
              FROM d_sorte.v_d_sorte_filtros
              WHERE to_char(data, 'YYYY-MM-dd HH24:MI:SS.US') = data_hora_formato_usa
                    AND filtros_id = filtros_id_temporario
              INTO filtros_bolas;

              IF filtros_bolas IS NULL
              THEN
                RAISE 'filtro_bolas is null.';
                RETURN;
              END IF;

              -- Pega as bolas da combinação atual.
              bolas_selecionadas [filtros_bolas.b_1] := 1;
              bolas_selecionadas [filtros_bolas.b_2] := 1;
              bolas_selecionadas [filtros_bolas.b_3] := 1;
              bolas_selecionadas [filtros_bolas.b_4] := 1;
              bolas_selecionadas [filtros_bolas.b_5] := 1;
              bolas_selecionadas [filtros_bolas.b_6] := 1;
              bolas_selecionadas [filtros_bolas.b_7] := 1;

              -- Copia a segunda combinação pra a primeira, a terceira
              -- pra a segunda e insere a combinação atual na última.
              FOR uC IN 8..21 LOOP
                bolas_ultimas_3_combinacoes [uC - 7] := bolas_ultimas_3_combinacoes [uC];
              END LOOP;

              bolas_ultimas_3_combinacoes [15] := filtros_bolas.b_1;
              bolas_ultimas_3_combinacoes [16] := filtros_bolas.b_2;
              bolas_ultimas_3_combinacoes [17] := filtros_bolas.b_3;
              bolas_ultimas_3_combinacoes [18] := filtros_bolas.b_4;
              bolas_ultimas_3_combinacoes [19] := filtros_bolas.b_5;
              bolas_ultimas_3_combinacoes [20] := filtros_bolas.b_6;
              bolas_ultimas_3_combinacoes [21] := filtros_bolas.b_7;

            END IF;


            EXIT WHEN TRUE;

        ELSEIF uA = 4
          THEN

            RAISE NOTICE 'Entrou aqui: uA';

            -- Apaga a primeira combinação de um total de 3 combinações anteriores a esta.
            FOR uC IN 1..21 LOOP
              bola_atual := bolas_ultimas_3_combinacoes [uC];
              RAISE NOTICE 'uC: %, bola_atual: %', uC, bola_atual;
              bolas_selecionadas [bola_atual] := 0;
            END LOOP;

            IF b_ua_4 = FALSE
            THEN
              b_ua_4 := TRUE;
              CONTINUE;
              --EXIT WHEN TRUE;
            END IF;

            -- Se é true quer dizer que todas as combinações estão se repetindo.
            IF b_ua_4 = TRUE
            THEN
              b_ua_4 = FALSE;
              CASE WHEN primeira_combinacao_repetida [1] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [1];
                WHEN primeira_combinacao_repetida [2] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [2];
                WHEN primeira_combinacao_repetida [3] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [3];
                WHEN primeira_combinacao_repetida [4] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [4];
                WHEN primeira_combinacao_repetida [5] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [5];
                WHEN primeira_combinacao_repetida [6] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [6];
                WHEN primeira_combinacao_repetida [7] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [7];
              END CASE;

              -- Atualiza a combinação que tem a menor quantidade de bolas repetidas.
              -- Isto serve pra evitar temos muitas bolas repetidas, entre duas combinações
              -- em sequência, quanto menor a quantidade de bolas repetidas, melhor.
              id_sequencial := id_sequencial + 1;
              UPDATE d_sorte.d_sorte_filtros
              SET id_ordenado_em_grupos = id_sequencial
              WHERE filtros_id = filtros_id_temporario;

              -- Reseta todas as bolas
              FOR uB IN 1..31 LOOP
                bolas_selecionadas [uB] := 0;
              END LOOP;

              -- Vamos pegar as bolas da combinação que tem a menor quantidade de bolas
              -- repetidas.
              SELECT *
              FROM d_sorte.v_d_sorte_filtros
              WHERE to_char(data, 'YYYY-MM-dd HH24:MI:SS.US') = data_hora_formato_usa
                    AND filtros_id = filtros_id_temporario
              INTO filtros_bolas;

              IF filtros_bolas IS NULL
              THEN
                RAISE 'filtro_bolas is null.';
                RETURN;
              END IF;

              -- Pega as bolas da combinação atual.
              bolas_selecionadas [filtros_bolas.b_1] := 1;
              bolas_selecionadas [filtros_bolas.b_2] := 1;
              bolas_selecionadas [filtros_bolas.b_3] := 1;
              bolas_selecionadas [filtros_bolas.b_4] := 1;
              bolas_selecionadas [filtros_bolas.b_5] := 1;
              bolas_selecionadas [filtros_bolas.b_6] := 1;
              bolas_selecionadas [filtros_bolas.b_7] := 1;

              -- Copia a segunda combinação pra a primeira, a terceira
              -- pra a segunda e insere a combinação atual na última.
              FOR uC IN 8..21 LOOP
                bolas_ultimas_3_combinacoes [uC - 7] := bolas_ultimas_3_combinacoes [uC];
              END LOOP;

              bolas_ultimas_3_combinacoes [15] := filtros_bolas.b_1;
              bolas_ultimas_3_combinacoes [16] := filtros_bolas.b_2;
              bolas_ultimas_3_combinacoes [17] := filtros_bolas.b_3;
              bolas_ultimas_3_combinacoes [18] := filtros_bolas.b_4;
              bolas_ultimas_3_combinacoes [19] := filtros_bolas.b_5;
              bolas_ultimas_3_combinacoes [20] := filtros_bolas.b_6;
              bolas_ultimas_3_combinacoes [21] := filtros_bolas.b_7;
            END IF;


            EXIT WHEN TRUE;

        ELSEIF uA = 5
          THEN

            FOR uC IN 1..31 LOOP
              bolas_selecionadas [uC] := 0;
            END LOOP;

            b_ua_5 = TRUE;

            -- Se é true quer dizer que todas as combinações estão se repetindo.
            IF b_ua_5 = TRUE
            THEN
              b_ua_5 = FALSE;
              CASE WHEN primeira_combinacao_repetida [1] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [1];
                WHEN primeira_combinacao_repetida [2] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [2];
                WHEN primeira_combinacao_repetida [3] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [3];
                WHEN primeira_combinacao_repetida [4] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [4];
                WHEN primeira_combinacao_repetida [5] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [5];
                WHEN primeira_combinacao_repetida [6] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [6];
                WHEN primeira_combinacao_repetida [7] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [7];
              END CASE;

              -- Atualiza a combinação que tem a menor quantidade de bolas repetidas.
              -- Isto serve pra evitar temos muitas bolas repetidas, entre duas combinações
              -- em sequência, quanto menor a quantidade de bolas repetidas, melhor.
              id_sequencial := id_sequencial + 1;
              UPDATE d_sorte.d_sorte_filtros
              SET id_ordenado_em_grupos = id_sequencial
              WHERE filtros_id = filtros_id_temporario;

              -- Reseta todas as bolas
              FOR uB IN 1..31 LOOP
                bolas_selecionadas [uB] := 0;
              END LOOP;

              -- Vamos pegar as bolas da combinação que tem a menor quantidade de bolas
              -- repetidas.
              SELECT *
              FROM d_sorte.v_d_sorte_filtros
              WHERE to_char(data, 'YYYY-MM-dd HH24:MI:SS.US') = data_hora_formato_usa
                    AND filtros_id = filtros_id_temporario
              INTO filtros_bolas;

              IF filtros_bolas IS NULL
              THEN
                RAISE 'filtro_bolas is null.';
                RETURN;
              END IF;

              -- Pega as bolas da combinação atual.
              bolas_selecionadas [filtros_bolas.b_1] := 1;
              bolas_selecionadas [filtros_bolas.b_2] := 1;
              bolas_selecionadas [filtros_bolas.b_3] := 1;
              bolas_selecionadas [filtros_bolas.b_4] := 1;
              bolas_selecionadas [filtros_bolas.b_5] := 1;
              bolas_selecionadas [filtros_bolas.b_6] := 1;
              bolas_selecionadas [filtros_bolas.b_7] := 1;

              -- Copia a segunda combinação pra a primeira, a terceira
              -- pra a segunda e insere a combinação atual na última.
              FOR uC IN 8..21 LOOP
                bolas_ultimas_3_combinacoes [uC - 7] := bolas_ultimas_3_combinacoes [uC];
              END LOOP;

              bolas_ultimas_3_combinacoes [15] := filtros_bolas.b_1;
              bolas_ultimas_3_combinacoes [16] := filtros_bolas.b_2;
              bolas_ultimas_3_combinacoes [17] := filtros_bolas.b_3;
              bolas_ultimas_3_combinacoes [18] := filtros_bolas.b_4;
              bolas_ultimas_3_combinacoes [19] := filtros_bolas.b_5;
              bolas_ultimas_3_combinacoes [20] := filtros_bolas.b_6;
              bolas_ultimas_3_combinacoes [21] := filtros_bolas.b_7;
            END IF;


            SELECT *
            FROM d_sorte.v_d_sorte_filtros
            WHERE to_char(data, 'YYYY-MM-dd HH24:MI:SS.US') = data_hora_formato_usa
                  AND filtros_id = ultimo_filtro_id_sorteado
            INTO filtros_bolas;

            IF filtros_bolas IS NULL
            THEN
              RAISE 'filtros_id: % não existe.', ultimo_filtro_id_sorteado;
              RETURN;
            END IF;

            bolas_selecionadas [filtros_bolas.b_1] := 1;
            bolas_selecionadas [filtros_bolas.b_2] := 1;
            bolas_selecionadas [filtros_bolas.b_3] := 1;
            bolas_selecionadas [filtros_bolas.b_4] := 1;
            bolas_selecionadas [filtros_bolas.b_5] := 1;
            bolas_selecionadas [filtros_bolas.b_6] := 1;
            bolas_selecionadas [filtros_bolas.b_7] := 1;

            EXIT WHEN TRUE;

        END IF;

      END IF;

    END LOOP;

    SELECT *
    FROM d_sorte.v_d_sorte_filtros
    WHERE to_char(data, 'YYYY-MM-dd HH24:MI:SS.US') = data_hora_formato_usa
          AND id_ordenado_em_grupos = -1
    INTO filtros_bolas;

    IF filtros_bolas IS NULL
    THEN
      RETURN;
    END IF;

  END LOOP;

END
$$;


DROP FUNCTION IF EXISTS d_sorte.fn_d_sorte_filtro_ordenar_combinacoes_em_grupos_4( CHARACTER VARYING );
CREATE FUNCTION d_sorte.fn_d_sorte_filtro_ordenar_combinacoes_em_grupos_4(data_hora_formato_usa CHARACTER VARYING)
  RETURNS VOID
LANGUAGE plpgsql
AS $$
DECLARE
  filtros_bolas                   d_sorte.v_d_sorte_filtros%ROWTYPE;

  -- Armazena as primeiras 7 bolas, nas primeiras 7 posições,
  -- armazenas as próximas 7 bolas, nas próximas 7 posições e
  -- assim por diante.
  bolas_ultimas_3_combinacoes     NUMERIC [32];

  ultima_4_combinacoes            NUMERIC [5];


  bolas_selecionadas              NUMERIC [32];

  -- Armazena o id da primeira combinação, de cada quantidade de repetidas, que foi encontrada.
  primeira_combinacao_repetida    NUMERIC [8];


  b_sair_do_loop                  BOOLEAN;
  id_sequencial                   NUMERIC;

  qt_bolas_repetidas              NUMERIC;

  contador_de_iteracao            NUMERIC;

  ha_combinacao_sem_bola_repetida BOOLEAN;

  b_primeira_vez                  BOOLEAN;

  ultimo_filtro_id_sorteado       NUMERIC;

  filtros_id_temporario           NUMERIC;

  combinacoes_ja_encontradas      NUMERIC;

  bola_atual                      NUMERIC;

  ultima_combinacao_localizada    NUMERIC;

  texto                           CHARACTER VARYING;

  b_ua_1                          BOOLEAN;
  b_ua_2                          BOOLEAN;
  b_ua_3                          BOOLEAN;
  b_ua_4                          BOOLEAN;
  b_ua_5                          BOOLEAN;
  b_ua_6                          BOOLEAN;
  b_ua_7                          BOOLEAN;

  uA                              NUMERIC;

  ultima_4_combinacoes            NUMERIC [5];

BEGIN
  id_sequencial = 0;

  -- No campo id_ordenado_em_grupos, o valor -1, indica que a
  -- combinação ainda não foi ordenada.
  -- Por isto, antes de ordenar, devemos garantir que as combinações
  -- escolhidas pelo usuário tenha o valor -1.
  UPDATE d_sorte.d_sorte_filtros
  SET id_ordenado_em_grupos = -1
  WHERE to_char(data, 'YYYY-MM-dd HH24:MI:SS.US') = data_hora_formato_usa;

  -- Reseta todas as bolas.
  FOR uA IN 1..31 LOOP
    bolas_selecionadas [uA] := 0;
    bolas_ultimas_3_combinacoes [uA] := 0;
  END LOOP;

  b_primeira_vez = TRUE;

  ultimo_filtro_id_sorteado = 0;

  ultima_combinacao_localizada = -1;

  combinacoes_ja_encontradas := 0;

  b_ua_1 := FALSE;
  b_ua_2 := FALSE;
  b_ua_3 := FALSE;
  b_ua_4 := FALSE;
  b_ua_5 := FALSE;
  b_ua_6 := FALSE;
  b_ua_7 := FALSE;

  WHILE TRUE LOOP

    -- No jogo 'dia_de_sorte' há no máximo 4 grupos com 7 bolas de tal forma
    -- que tais bolas de um grupo não se repita com qualquer um dos outros 3 grupos.
    -- Antes de executar o loop, a primeira combinação já foi escolhida, antes
    -- de entrar no loop while.
    -- Agora, precisamos localizar as três outras combinações.

    ha_combinacao_sem_bola_repetida := FALSE;
    qt_bolas_repetidas := 0;

    --FOR uA IN 1..5 LOOP

    uA := 1;
    WHILE uA <= 4 LOOP
      ha_combinacao_sem_bola_repetida := FALSE;

      IF b_primeira_vez = TRUE
      THEN
        b_primeira_vez := FALSE;
      ELSEIF uA = 1 AND b_primeira_vez = FALSE
        THEN
          uA := uA + 1;
          CONTINUE;
      END IF;

      -- Armazena a primeira combinação repetida que for encontrada.
      -- Isto será utilizado caso, não encontremos uma combinação
      -- com bolas não-repetidas.
      primeira_combinacao_repetida [0] := -1;
      primeira_combinacao_repetida [1] := -1;
      primeira_combinacao_repetida [2] := -1;
      primeira_combinacao_repetida [3] := -1;
      primeira_combinacao_repetida [4] := -1;
      primeira_combinacao_repetida [5] := -1;
      primeira_combinacao_repetida [6] := -1;
      primeira_combinacao_repetida [7] := -1;

      -- Vamos percorrer todas as combinação ainda não ordenadas,
      -- e quando encontrarmos uma combinação que não tenha bolas repetidas,
      -- devemos registrar está combinação e atribuir um identificador sequencial
      -- pra esta combinação.

      contador_de_iteracao := 0;
      FOR filtros_bolas IN
      SELECT *
      FROM d_sorte.v_d_sorte_filtros
      WHERE to_char(data, 'YYYY-MM-dd HH24:MI:SS.US') = data_hora_formato_usa
            AND id_ordenado_em_grupos = -1
      ORDER BY filtros_id ASC
      LOOP
        contador_de_iteracao := contador_de_iteracao + 1;

        qt_bolas_repetidas := 0;

        IF bolas_selecionadas [filtros_bolas.b_1] = 1
        THEN qt_bolas_repetidas := qt_bolas_repetidas + 1; END IF;
        IF bolas_selecionadas [filtros_bolas.b_2] = 1
        THEN qt_bolas_repetidas := qt_bolas_repetidas + 1; END IF;
        IF bolas_selecionadas [filtros_bolas.b_3] = 1
        THEN qt_bolas_repetidas := qt_bolas_repetidas + 1; END IF;
        IF bolas_selecionadas [filtros_bolas.b_4] = 1
        THEN qt_bolas_repetidas := qt_bolas_repetidas + 1; END IF;
        IF bolas_selecionadas [filtros_bolas.b_5] = 1
        THEN qt_bolas_repetidas := qt_bolas_repetidas + 1; END IF;
        IF bolas_selecionadas [filtros_bolas.b_6] = 1
        THEN qt_bolas_repetidas := qt_bolas_repetidas + 1; END IF;
        IF bolas_selecionadas [filtros_bolas.b_7] = 1
        THEN qt_bolas_repetidas := qt_bolas_repetidas + 1; END IF;

        IF primeira_combinacao_repetida [qt_bolas_repetidas] = -1
        THEN
          primeira_combinacao_repetida [qt_bolas_repetidas] := filtros_bolas.filtros_id;
        END IF;

        RAISE NOTICE 'uA: %, it:%,filtros_id: %, d_sorte_id: %, id_sequencial: %, comb.:% e % tem % bolas repetidas.',
        uA, contador_de_iteracao, filtros_bolas.filtros_id, filtros_bolas.d_sorte_id,
        id_sequencial, ultima_combinacao_localizada,
        filtros_bolas.d_sorte_id, qt_bolas_repetidas;

        texto = '';
        FOR uC IN 1..21 LOOP
          IF uC IN (8, 21)
          THEN
            texto := texto || ' - ';
          END IF;

          texto := texto || '[' || bolas_ultimas_3_combinacoes [uC] || ']';
        END LOOP;
        RAISE NOTICE '%', texto;

        -- Se há zero bolas repetidas, devemos sair do loop e continuar.
        IF qt_bolas_repetidas = 0
        THEN
          ultima_combinacao_localizada := filtros_bolas.d_sorte_id;
          ultima_4_combinacoes [uA] := filtros_bolas.d_sorte_id;

          bolas_selecionadas [filtros_bolas.b_1] := 1;
          bolas_selecionadas [filtros_bolas.b_2] := 1;
          bolas_selecionadas [filtros_bolas.b_3] := 1;
          bolas_selecionadas [filtros_bolas.b_4] := 1;
          bolas_selecionadas [filtros_bolas.b_5] := 1;
          bolas_selecionadas [filtros_bolas.b_6] := 1;
          bolas_selecionadas [filtros_bolas.b_7] := 1;

          id_sequencial := id_sequencial + 1;
          UPDATE d_sorte.d_sorte_filtros
          SET id_ordenado_em_grupos = id_sequencial
          WHERE filtros_id = filtros_bolas.filtros_id;

          ultimo_filtro_id_sorteado := filtros_bolas.filtros_id;

          --combinacoes_ja_encontradas := combinacoes_ja_encontradas + 1;
          -- Copia a nova combinação
          -- Armazena as últimas 4 combinações localizadas.
          IF uA = 1
          THEN
            bolas_ultimas_3_combinacoes [1] := filtros_bolas.b_1;
            bolas_ultimas_3_combinacoes [2] := filtros_bolas.b_2;
            bolas_ultimas_3_combinacoes [3] := filtros_bolas.b_3;
            bolas_ultimas_3_combinacoes [4] := filtros_bolas.b_4;
            bolas_ultimas_3_combinacoes [5] := filtros_bolas.b_5;
            bolas_ultimas_3_combinacoes [6] := filtros_bolas.b_6;
            bolas_ultimas_3_combinacoes [7] := filtros_bolas.b_7;
          ELSEIF uA = 2
            THEN
              bolas_ultimas_3_combinacoes [8] := filtros_bolas.b_1;
              bolas_ultimas_3_combinacoes [9] := filtros_bolas.b_2;
              bolas_ultimas_3_combinacoes [10] := filtros_bolas.b_3;
              bolas_ultimas_3_combinacoes [11] := filtros_bolas.b_4;
              bolas_ultimas_3_combinacoes [12] := filtros_bolas.b_5;
              bolas_ultimas_3_combinacoes [13] := filtros_bolas.b_6;
              bolas_ultimas_3_combinacoes [14] := filtros_bolas.b_7;
          ELSEIF uA = 3
            THEN
              bolas_ultimas_3_combinacoes [15] := filtros_bolas.b_1;
              bolas_ultimas_3_combinacoes [16] := filtros_bolas.b_2;
              bolas_ultimas_3_combinacoes [17] := filtros_bolas.b_3;
              bolas_ultimas_3_combinacoes [18] := filtros_bolas.b_4;
              bolas_ultimas_3_combinacoes [19] := filtros_bolas.b_5;
              bolas_ultimas_3_combinacoes [20] := filtros_bolas.b_6;
              bolas_ultimas_3_combinacoes [21] := filtros_bolas.b_7;

              -- No jogo dia de sorte há 4 grupos de 7 bolas, então, no
              -- último grupo, iremos resetar tudo e deixar somente a última
              -- combinação encontrada.
          ELSEIF uA = 4
            THEN
              FOR uC IN 1..31 LOOP
                bolas_selecionadas [uC] := 0;
                bolas_ultimas_3_combinacoes [uC] := 0;
              END LOOP;


              bolas_ultimas_3_combinacoes [1] := filtros_bolas.b_1;
              bolas_ultimas_3_combinacoes [2] := filtros_bolas.b_2;
              bolas_ultimas_3_combinacoes [3] := filtros_bolas.b_3;
              bolas_ultimas_3_combinacoes [4] := filtros_bolas.b_4;
              bolas_ultimas_3_combinacoes [5] := filtros_bolas.b_5;
              bolas_ultimas_3_combinacoes [6] := filtros_bolas.b_6;
              bolas_ultimas_3_combinacoes [7] := filtros_bolas.b_7;

              bolas_selecionadas [filtros_bolas.b_1] := 1;
              bolas_selecionadas [filtros_bolas.b_2] := 1;
              bolas_selecionadas [filtros_bolas.b_3] := 1;
              bolas_selecionadas [filtros_bolas.b_4] := 1;
              bolas_selecionadas [filtros_bolas.b_5] := 1;
              bolas_selecionadas [filtros_bolas.b_6] := 1;
              bolas_selecionadas [filtros_bolas.b_7] := 1;

          END IF;

          EXIT WHEN TRUE;

        END IF;

      END LOOP;

      IF qt_bolas_repetidas = 0
      THEN
        uA := uA + 1;
        CONTINUE;
      END IF;

      -- Se após percorrer todas as combinações não encontrarmos nenhuma combinação
      -- que tenha bolas repetidas, iremos uma única vez, dependendo em qual iteração
      -- do loop está, retirar 7 bolas da primeira, 14 bolas, 21 bolas e repetir a iteração.

      IF qt_bolas_repetidas <> 0
      THEN
        -- Se é a primeira iteração, quer dizer, que todas as combinações, tem pelo menos
        -- uma bola repetida, neste caso, iremos pegar a combinação que tem a menor quantidade de
        -- de bolas.
        filtros_id_temporario := -1;
        IF uA = 1
        THEN
          CASE WHEN primeira_combinacao_repetida [1] <> -1
            THEN
              filtros_id_temporario := primeira_combinacao_repetida [1];
            WHEN primeira_combinacao_repetida [2] <> -1
            THEN
              filtros_id_temporario := primeira_combinacao_repetida [2];
            WHEN primeira_combinacao_repetida [3] <> -1
            THEN
              filtros_id_temporario := primeira_combinacao_repetida [3];
            WHEN primeira_combinacao_repetida [4] <> -1
            THEN
              filtros_id_temporario := primeira_combinacao_repetida [4];
            WHEN primeira_combinacao_repetida [5] <> -1
            THEN
              filtros_id_temporario := primeira_combinacao_repetida [5];
            WHEN primeira_combinacao_repetida [6] <> -1
            THEN
              filtros_id_temporario := primeira_combinacao_repetida [6];
            WHEN primeira_combinacao_repetida [7] <> -1
            THEN
              filtros_id_temporario := primeira_combinacao_repetida [7];
          END CASE;

          -- Atualiza a combinação que tem a menor quantidade de bolas repetidas.
          -- Isto serve pra evitar temos muitas bolas repetidas, entre duas combinações
          -- em sequência, quanto menor a quantidade de bolas repetidas, melhor.
          id_sequencial := id_sequencial + 1;
          UPDATE d_sorte.d_sorte_filtros
          SET id_ordenado_em_grupos = id_sequencial
          WHERE filtros_id = filtros_id_temporario;

          -- Reseta todas as bolas
          FOR uB IN 1..31 LOOP
            bolas_selecionadas [uB] := 0;
          END LOOP;

          -- Vamos pegar as bolas da combinação que tem a menor quantidade de bolas
          -- repetidas.
          SELECT *
          FROM d_sorte.v_d_sorte_filtros
          WHERE to_char(data, 'YYYY-MM-dd HH24:MI:SS.US') = data_hora_formato_usa
                AND filtros_id = filtros_id_temporario
          INTO filtros_bolas;

          IF filtros_bolas IS NULL
          THEN
            RAISE 'filtro_bolas is null.';
            RETURN;
          END IF;

          ultima_4_combinacoes [1] := filtros_bolas.d_sorte_id;
          ultima_4_combinacoes [2] := 0;
          ultima_4_combinacoes [3] := 0;
          ultima_4_combinacoes [4] := 0;

          -- Pega as bolas da combinação atual.
          bolas_selecionadas [filtros_bolas.b_1] := 1;
          bolas_selecionadas [filtros_bolas.b_2] := 1;
          bolas_selecionadas [filtros_bolas.b_3] := 1;
          bolas_selecionadas [filtros_bolas.b_4] := 1;
          bolas_selecionadas [filtros_bolas.b_5] := 1;
          bolas_selecionadas [filtros_bolas.b_6] := 1;
          bolas_selecionadas [filtros_bolas.b_7] := 1;

          -- Copia a segunda combinação pra a primeira, a terceira
          -- pra a segunda e insere a combinação atual na última.
          FOR uC IN 8..21 LOOP
            bolas_ultimas_3_combinacoes [uC - 7] := bolas_ultimas_3_combinacoes [uC];
            bolas_ultimas_3_combinacoes [uC] := 0;
          END LOOP;

          bolas_ultimas_3_combinacoes [1] := filtros_bolas.b_1;
          bolas_ultimas_3_combinacoes [2] := filtros_bolas.b_2;
          bolas_ultimas_3_combinacoes [3] := filtros_bolas.b_3;
          bolas_ultimas_3_combinacoes [4] := filtros_bolas.b_4;
          bolas_ultimas_3_combinacoes [5] := filtros_bolas.b_5;
          bolas_ultimas_3_combinacoes [6] := filtros_bolas.b_6;
          bolas_ultimas_3_combinacoes [7] := filtros_bolas.b_7;

        ELSEIF uA = 2
          THEN
            -- Na etapa 2, ainda só encontramos uma das combinações, neste caso,
            -- quer dizer que todas as combinações, pelo menos uma das bolas se repete
            -- neste caso, iremos pegar a combinação que tem a menor quantidade de bolas
            -- repetidas.
            FOR uC IN 1..7 LOOP
              bola_atual := bolas_ultimas_3_combinacoes [uC];
              bolas_selecionadas [bola_atual] := 0;
            END LOOP;

            -- Se é true, quer dizer que
            IF b_ua_2 = TRUE
            THEN
              b_ua_2 = FALSE;
              CASE WHEN primeira_combinacao_repetida [1] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [1];
                WHEN primeira_combinacao_repetida [2] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [2];
                WHEN primeira_combinacao_repetida [3] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [3];
                WHEN primeira_combinacao_repetida [4] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [4];
                WHEN primeira_combinacao_repetida [5] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [5];
                WHEN primeira_combinacao_repetida [6] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [6];
                WHEN primeira_combinacao_repetida [7] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [7];
              END CASE;

              -- Atualiza a combinação que tem a menor quantidade de bolas repetidas.
              -- Isto serve pra evitar temos muitas bolas repetidas, entre duas combinações
              -- em sequência, quanto menor a quantidade de bolas repetidas, melhor.
              id_sequencial := id_sequencial + 1;
              UPDATE d_sorte.d_sorte_filtros
              SET id_ordenado_em_grupos = id_sequencial
              WHERE filtros_id = filtros_id_temporario;

              -- Reseta todas as bolas
              FOR uB IN 1..31 LOOP
                bolas_selecionadas [uB] := 0;
                bolas_ultimas_3_combinacoes [uB] := 0;
              END LOOP;

              -- Vamos pegar as bolas da combinação que tem a menor quantidade de bolas
              -- repetidas.
              SELECT *
              FROM d_sorte.v_d_sorte_filtros
              WHERE to_char(data, 'YYYY-MM-dd HH24:MI:SS.US') = data_hora_formato_usa
                    AND filtros_id = filtros_id_temporario
              INTO filtros_bolas;

              IF filtros_bolas IS NULL
              THEN
                RAISE 'filtro_bolas is null.';
                RETURN;
              END IF;

              ultima_4_combinacoes [1] := filtros_bolas.d_sorte_id;
              ultima_4_combinacoes [2] := 0;
              ultima_4_combinacoes [3] := 0;
              ultima_4_combinacoes [4] := 0;

              -- Pega as bolas da combinação atual.
              bolas_selecionadas [filtros_bolas.b_1] := 1;
              bolas_selecionadas [filtros_bolas.b_2] := 1;
              bolas_selecionadas [filtros_bolas.b_3] := 1;
              bolas_selecionadas [filtros_bolas.b_4] := 1;
              bolas_selecionadas [filtros_bolas.b_5] := 1;
              bolas_selecionadas [filtros_bolas.b_6] := 1;
              bolas_selecionadas [filtros_bolas.b_7] := 1;

              -- Copia a segunda combinação pra a primeira, a terceira
              -- pra a segunda e insere a combinação atual na última.
              --               FOR uC IN 8..21 LOOP
              --                 bolas_ultimas_3_combinacoes [uC - 7] := bolas_ultimas_3_combinacoes [uC];
              --               END LOOP;

              bolas_ultimas_3_combinacoes [1] := filtros_bolas.b_1;
              bolas_ultimas_3_combinacoes [2] := filtros_bolas.b_2;
              bolas_ultimas_3_combinacoes [3] := filtros_bolas.b_3;
              bolas_ultimas_3_combinacoes [4] := filtros_bolas.b_4;
              bolas_ultimas_3_combinacoes [5] := filtros_bolas.b_5;
              bolas_ultimas_3_combinacoes [6] := filtros_bolas.b_6;
              bolas_ultimas_3_combinacoes [7] := filtros_bolas.b_7;

              uA := 2;
              CONTINUE;

            END IF;

        ELSEIF uA = 3
          THEN
            -- No passo 3, já encontramos duas combinações já encontradas, neste caso,
            -- iremos deixar marcada somente a última combinação e repetir o loop
            -- desta vez desconsiderando uma das combinações, a combinação que firá marcada
            -- será a última combinação encontrada.

            FOR uC IN 1..7 LOOP
              bola_atual := bolas_ultimas_3_combinacoes [uC];
              bolas_selecionadas [bola_atual] := 0;
              bolas_ultimas_3_combinacoes [uC] := 0;
            END LOOP;

            -- Aqui, se b_ua_3 é falso, quer dizer que é a primeira vez, que o passo 3,
            -- tem bolas repetidas, neste caso, iremos deixar somente a última combinação
            -- e verificar novamente, se duas combinações entre si tem bolas repetidas, se
            -- sim, ao passar no passo 3 novamente, b_ua_3 será true, então, iremos armazenar
            -- a combinação repetida.
            IF b_ua_3 = FALSE
            THEN
              b_ua_3 := TRUE;
              CONTINUE;
            END IF;

            -- Se é true quer dizer que todas as combinações estão se repetindo.
            IF b_ua_3 = TRUE
            THEN
              b_ua_3 = FALSE;
              CASE WHEN primeira_combinacao_repetida [1] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [1];
                WHEN primeira_combinacao_repetida [2] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [2];
                WHEN primeira_combinacao_repetida [3] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [3];
                WHEN primeira_combinacao_repetida [4] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [4];
                WHEN primeira_combinacao_repetida [5] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [5];
                WHEN primeira_combinacao_repetida [6] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [6];
                WHEN primeira_combinacao_repetida [7] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [7];
              END CASE;

              -- Atualiza a combinação que tem a menor quantidade de bolas repetidas.
              -- Isto serve pra evitar temos muitas bolas repetidas, entre duas combinações
              -- em sequência, quanto menor a quantidade de bolas repetidas, melhor.
              id_sequencial := id_sequencial + 1;
              UPDATE d_sorte.d_sorte_filtros
              SET id_ordenado_em_grupos = id_sequencial
              WHERE filtros_id = filtros_id_temporario;

              -- Reseta todas as bolas
              FOR uB IN 1..31 LOOP
                bolas_selecionadas [uB] := 0;
              END LOOP;

              -- Vamos pegar as bolas da combinação que tem a menor quantidade de bolas
              -- repetidas.
              SELECT *
              FROM d_sorte.v_d_sorte_filtros
              WHERE to_char(data, 'YYYY-MM-dd HH24:MI:SS.US') = data_hora_formato_usa
                    AND filtros_id = filtros_id_temporario
              INTO filtros_bolas;

              IF filtros_bolas IS NULL
              THEN
                RAISE 'filtro_bolas is null.';
                RETURN;
              END IF;

              ultima_4_combinacoes [1] := filtros_bolas.d_sorte_id;
              ultima_4_combinacoes [2] := 0;
              ultima_4_combinacoes [3] := 0;
              ultima_4_combinacoes [4] := 0;

              -- Pega as bolas da combinação atual.
              bolas_selecionadas [filtros_bolas.b_1] := 1;
              bolas_selecionadas [filtros_bolas.b_2] := 1;
              bolas_selecionadas [filtros_bolas.b_3] := 1;
              bolas_selecionadas [filtros_bolas.b_4] := 1;
              bolas_selecionadas [filtros_bolas.b_5] := 1;
              bolas_selecionadas [filtros_bolas.b_6] := 1;
              bolas_selecionadas [filtros_bolas.b_7] := 1;


              bolas_ultimas_3_combinacoes [1] := filtros_bolas.b_1;
              bolas_ultimas_3_combinacoes [2] := filtros_bolas.b_2;
              bolas_ultimas_3_combinacoes [3] := filtros_bolas.b_3;
              bolas_ultimas_3_combinacoes [4] := filtros_bolas.b_4;
              bolas_ultimas_3_combinacoes [5] := filtros_bolas.b_5;
              bolas_ultimas_3_combinacoes [6] := filtros_bolas.b_6;
              bolas_ultimas_3_combinacoes [7] := filtros_bolas.b_7;

              -- Começa no 2, pois, já encontramos o 1.
              uA := 2;
              CONTINUE;

            END IF;

        ELSEIF uA = 4
          THEN
            -- No passo 4, há 3 combinações encontradas, neste caso, iremos desconsideras as
            -- duas primeiras combinações, marcando só a última e repetiremos o loop desta
            -- vez considerando somente a última combinação.
            -- Na primeira iteração, a variável b_ua_4 terá o valor falso e será definido pra
            -- true, então, na segunda vez, quer dizer que ainda há bola repetida, neste caso,
            -- iremos armazenar a combinação encontrada.

            RAISE NOTICE 'Entrou aqui: uA';

            -- Apaga a primeira combinação de um total de 3 combinações anteriores a esta.
            FOR uC IN 1..14 LOOP
              bola_atual := bolas_ultimas_3_combinacoes [uC];
              bolas_selecionadas [bola_atual] := 0;
              bolas_ultimas_3_combinacoes [uC] := 0;
            END LOOP;

            IF b_ua_4 = FALSE
            THEN
              b_ua_4 := TRUE;
              CONTINUE;
            END IF;

            -- Se é true quer dizer que todas as combinações estão se repetindo.
            IF b_ua_4 = TRUE
            THEN
              b_ua_4 = FALSE;
              CASE WHEN primeira_combinacao_repetida [1] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [1];
                WHEN primeira_combinacao_repetida [2] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [2];
                WHEN primeira_combinacao_repetida [3] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [3];
                WHEN primeira_combinacao_repetida [4] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [4];
                WHEN primeira_combinacao_repetida [5] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [5];
                WHEN primeira_combinacao_repetida [6] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [6];
                WHEN primeira_combinacao_repetida [7] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [7];
              END CASE;

              -- Atualiza a combinação que tem a menor quantidade de bolas repetidas.
              -- Isto serve pra evitar temos muitas bolas repetidas, entre duas combinações
              -- em sequência, quanto menor a quantidade de bolas repetidas, melhor.
              id_sequencial := id_sequencial + 1;
              UPDATE d_sorte.d_sorte_filtros
              SET id_ordenado_em_grupos = id_sequencial
              WHERE filtros_id = filtros_id_temporario;

              -- Reseta todas as bolas
              FOR uB IN 1..31 LOOP
                bolas_selecionadas [uB] := 0;
              END LOOP;

              -- Vamos pegar as bolas da combinação que tem a menor quantidade de bolas
              -- repetidas.
              SELECT *
              FROM d_sorte.v_d_sorte_filtros
              WHERE to_char(data, 'YYYY-MM-dd HH24:MI:SS.US') = data_hora_formato_usa
                    AND filtros_id = filtros_id_temporario
              INTO filtros_bolas;

              IF filtros_bolas IS NULL
              THEN
                RAISE 'filtro_bolas is null.';
                RETURN;
              END IF;

              ultima_4_combinacoes [1] := filtros_bolas.d_sorte_id;
              ultima_4_combinacoes [2] := 0;
              ultima_4_combinacoes [3] := 0;
              ultima_4_combinacoes [4] := 0;

              -- Pega as bolas da combinação atual.
              bolas_selecionadas [filtros_bolas.b_1] := 1;
              bolas_selecionadas [filtros_bolas.b_2] := 1;
              bolas_selecionadas [filtros_bolas.b_3] := 1;
              bolas_selecionadas [filtros_bolas.b_4] := 1;
              bolas_selecionadas [filtros_bolas.b_5] := 1;
              bolas_selecionadas [filtros_bolas.b_6] := 1;
              bolas_selecionadas [filtros_bolas.b_7] := 1;

              -- Copia a segunda combinação pra a primeira, a terceira
              -- pra a segunda e insere a combinação atual na última.
              --               FOR uC IN 8..21 LOOP
              --                 bolas_ultimas_3_combinacoes [uC - 7] := bolas_ultimas_3_combinacoes [uC];
              --               END LOOP;

              bolas_ultimas_3_combinacoes [1] := filtros_bolas.b_1;
              bolas_ultimas_3_combinacoes [2] := filtros_bolas.b_2;
              bolas_ultimas_3_combinacoes [3] := filtros_bolas.b_3;
              bolas_ultimas_3_combinacoes [4] := filtros_bolas.b_4;
              bolas_ultimas_3_combinacoes [5] := filtros_bolas.b_5;
              bolas_ultimas_3_combinacoes [6] := filtros_bolas.b_6;
              bolas_ultimas_3_combinacoes [7] := filtros_bolas.b_7;

              -- Começa no 2 pois já encontrou o 1.
              uA := 2;
              CONTINUE;

            END IF;


        END IF;

      END IF;

    END LOOP;

    SELECT *
    FROM d_sorte.v_d_sorte_filtros
    WHERE to_char(data, 'YYYY-MM-dd HH24:MI:SS.US') = data_hora_formato_usa
          AND id_ordenado_em_grupos = -1
    INTO filtros_bolas;

    IF filtros_bolas IS NULL
    THEN
      RETURN;
    END IF;


  END LOOP;

END;
$$;
SELECT
FROM d_sorte.fn_d_sorte_filtro_ordenar_combinacoes_em_grupos_4('2018-08-26 23:05:22.118001');

DROP FUNCTION IF EXISTS d_sorte.fn_d_sorte_filtro_ordenar_combinacoes_em_grupos_4( CHARACTER VARYING );
CREATE FUNCTION d_sorte.fn_d_sorte_filtro_ordenar_combinacoes_em_grupos_4(data_hora_formato_usa CHARACTER VARYING)
  RETURNS VOID
LANGUAGE plpgsql
AS $$
DECLARE
  filtros_bolas                           d_sorte.v_d_sorte_filtros%ROWTYPE;

  -- Armazena as primeiras 7 bolas, nas primeiras 7 posições,
  -- armazenas as próximas 7 bolas, nas próximas 7 posições e
  -- assim por diante.
  bolas_ultimas_3_combinacoes             NUMERIC [32];

  ultima_4_combinacoes                    NUMERIC [5];

  -- Armazena 1 se a bola saiu, 0 caso contrário, cada índice entre 1 e 31, inclusive,
  -- representa um bola.
  bolas_selecionadas                      NUMERIC [32];

  -- Armazena as bolas da última combinação, o objetivo disto, é tentar
  -- fazer com que a próxima combinação tenha a menor quantidade de bolas repetidas,
  -- em relação à ultima combinação.
  bolas_selecionadas_da_ultima_combinacao NUMERIC [32];
  qt_bolas_repetidas_da_ultima_combinacao NUMERIC;

  -- Armazena o id da primeira combinação, de cada quantidade de repetidas, que foi encontrada.
  primeira_combinacao_repetida            NUMERIC [8];


  b_sair_do_loop                          BOOLEAN;
  id_sequencial                           NUMERIC;

  qt_bolas_repetidas                      NUMERIC;

  contador_de_iteracao                    NUMERIC;

  ha_combinacao_sem_bola_repetida         BOOLEAN;

  b_primeira_vez                          BOOLEAN;

  ultimo_filtro_id_sorteado               NUMERIC;

  filtros_id_temporario                   NUMERIC;

  combinacoes_ja_encontradas              NUMERIC;

  bola_atual                              NUMERIC;

  ultima_combinacao_localizada            NUMERIC;

  texto                                   CHARACTER VARYING;

  b_ua_1                                  BOOLEAN;
  b_ua_2                                  BOOLEAN;
  b_ua_3                                  BOOLEAN;
  b_ua_4                                  BOOLEAN;
  b_ua_5                                  BOOLEAN;
  b_ua_6                                  BOOLEAN;
  b_ua_7                                  BOOLEAN;

  uA                                      NUMERIC;

  total_de_iteracoes                      NUMERIC;

BEGIN
  id_sequencial = 0;
  total_de_iteracoes := 0;

  -- No campo id_ordenado_em_grupos, o valor -1, indica que a
  -- combinação ainda não foi ordenada.
  -- Por isto, antes de ordenar, devemos garantir que as combinações
  -- escolhidas pelo usuário tenha o valor -1.
  UPDATE d_sorte.d_sorte_filtros
  SET id_ordenado_em_grupos = -1
  WHERE to_char(data, 'YYYY-MM-dd HH24:MI:SS.US') = data_hora_formato_usa;

  -- Reseta todas as bolas.
  FOR uA IN 1..31 LOOP
    bolas_selecionadas [uA] := 0;
    bolas_ultimas_3_combinacoes [uA] := 0;
  END LOOP;

  b_primeira_vez = TRUE;

  ultimo_filtro_id_sorteado = 0;

  ultima_combinacao_localizada = -1;

  combinacoes_ja_encontradas := 0;

  b_ua_1 := FALSE;
  b_ua_2 := FALSE;
  b_ua_3 := FALSE;
  b_ua_4 := FALSE;
  b_ua_5 := FALSE;
  b_ua_6 := FALSE;
  b_ua_7 := FALSE;

  WHILE TRUE LOOP

    -- No jogo 'dia_de_sorte' há no máximo 4 grupos com 7 bolas de tal forma
    -- que tais bolas de um grupo não se repita com qualquer um dos outros 3 grupos.
    -- Antes de executar o loop, a primeira combinação já foi escolhida, antes
    -- de entrar no loop while.
    -- Agora, precisamos localizar as três outras combinações.

    ha_combinacao_sem_bola_repetida := FALSE;
    qt_bolas_repetidas := 0;

    uA := 1;
    WHILE uA <= 4 LOOP
      ha_combinacao_sem_bola_repetida := FALSE;

      IF b_primeira_vez = TRUE
      THEN
        b_primeira_vez := FALSE;
      ELSEIF uA = 1 AND b_primeira_vez = FALSE
        THEN
          uA := uA + 1;
          CONTINUE;
      END IF;

      -- Armazena a primeira combinação repetida que for encontrada.
      -- Isto será utilizado caso, não encontremos uma combinação
      -- com bolas não-repetidas.
      primeira_combinacao_repetida [0] := -1;
      primeira_combinacao_repetida [1] := -1;
      primeira_combinacao_repetida [2] := -1;
      primeira_combinacao_repetida [3] := -1;
      primeira_combinacao_repetida [4] := -1;
      primeira_combinacao_repetida [5] := -1;
      primeira_combinacao_repetida [6] := -1;
      primeira_combinacao_repetida [7] := -1;

      -- Vamos percorrer todas as combinação ainda não ordenadas,
      -- e quando encontrarmos uma combinação que não tenha bolas repetidas,
      -- devemos registrar está combinação e atribuir um identificador sequencial
      -- pra esta combinação.

      contador_de_iteracao := 0;
      FOR filtros_bolas IN
      SELECT *
      FROM d_sorte.v_d_sorte_filtros
      WHERE to_char(data, 'YYYY-MM-dd HH24:MI:SS.US') = data_hora_formato_usa
            AND id_ordenado_em_grupos = -1
      ORDER BY d_sorte.v_d_sorte_filtros.d_sorte_id asc, filtros_id ASC
      LOOP
        contador_de_iteracao := contador_de_iteracao + 1;
        total_de_iteracoes := total_de_iteracoes + 1;

        -- Aqui, iremos contabiliza a quantidade de bolas em relação ao grupo com 28 bolas.
        qt_bolas_repetidas := 0;

        IF bolas_selecionadas [filtros_bolas.b_1] = 1
        THEN qt_bolas_repetidas := qt_bolas_repetidas + 1; END IF;
        IF bolas_selecionadas [filtros_bolas.b_2] = 1
        THEN qt_bolas_repetidas := qt_bolas_repetidas + 1; END IF;
        IF bolas_selecionadas [filtros_bolas.b_3] = 1
        THEN qt_bolas_repetidas := qt_bolas_repetidas + 1; END IF;
        IF bolas_selecionadas [filtros_bolas.b_4] = 1
        THEN qt_bolas_repetidas := qt_bolas_repetidas + 1; END IF;
        IF bolas_selecionadas [filtros_bolas.b_5] = 1
        THEN qt_bolas_repetidas := qt_bolas_repetidas + 1; END IF;
        IF bolas_selecionadas [filtros_bolas.b_6] = 1
        THEN qt_bolas_repetidas := qt_bolas_repetidas + 1; END IF;
        IF bolas_selecionadas [filtros_bolas.b_7] = 1
        THEN qt_bolas_repetidas := qt_bolas_repetidas + 1; END IF;

        qt_bolas_repetidas_da_ultima_combinacao := 0;
        IF bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_1] = 1
        THEN qt_bolas_repetidas_da_ultima_combinacao := qt_bolas_repetidas_da_ultima_combinacao + 1; END IF;
        IF bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_2] = 1
        THEN qt_bolas_repetidas_da_ultima_combinacao := qt_bolas_repetidas_da_ultima_combinacao + 1; END IF;
        IF bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_3] = 1
        THEN qt_bolas_repetidas_da_ultima_combinacao := qt_bolas_repetidas_da_ultima_combinacao + 1; END IF;
        IF bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_4] = 1
        THEN qt_bolas_repetidas_da_ultima_combinacao := qt_bolas_repetidas_da_ultima_combinacao + 1; END IF;
        IF bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_5] = 1
        THEN qt_bolas_repetidas_da_ultima_combinacao := qt_bolas_repetidas_da_ultima_combinacao + 1; END IF;
        IF bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_6] = 1
        THEN qt_bolas_repetidas_da_ultima_combinacao := qt_bolas_repetidas_da_ultima_combinacao + 1; END IF;
        IF bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_7] = 1
        THEN qt_bolas_repetidas_da_ultima_combinacao := qt_bolas_repetidas_da_ultima_combinacao + 1; END IF;

        IF primeira_combinacao_repetida [qt_bolas_repetidas_da_ultima_combinacao] = -1
        THEN
          primeira_combinacao_repetida [qt_bolas_repetidas_da_ultima_combinacao] := filtros_bolas.filtros_id;
        END IF;

        RAISE NOTICE 'uA: %, it:%,filtros_id: %, d_sorte_id: %, id:seq: %, comb.:% e % tem % bolas repetidas,ult.cmb:%.',
        uA, contador_de_iteracao, filtros_bolas.filtros_id, filtros_bolas.d_sorte_id,
        id_sequencial, ultima_combinacao_localizada,
        filtros_bolas.d_sorte_id, qt_bolas_repetidas, qt_bolas_repetidas_da_ultima_combinacao;

--         texto = '';
--         FOR uC IN 1..21 LOOP
--           IF uC IN (8, 21)
--           THEN
--             texto := texto || ' - ';
--           END IF;
--
--           texto := texto || '[' || bolas_ultimas_3_combinacoes [uC] || ']';
--         END LOOP;
--         RAISE NOTICE '%', texto;

        -- Se há zero bolas repetidas, devemos sair do loop e continuar.
        IF qt_bolas_repetidas = 0
        THEN
          ultima_combinacao_localizada := filtros_bolas.d_sorte_id;
          ultima_4_combinacoes [uA] := filtros_bolas.d_sorte_id;

          FOR uD IN 1..31 LOOP
            bolas_selecionadas_da_ultima_combinacao [uD] := 0;
          END LOOP;

          bolas_selecionadas [filtros_bolas.b_1] := 1;
          bolas_selecionadas [filtros_bolas.b_2] := 1;
          bolas_selecionadas [filtros_bolas.b_3] := 1;
          bolas_selecionadas [filtros_bolas.b_4] := 1;
          bolas_selecionadas [filtros_bolas.b_5] := 1;
          bolas_selecionadas [filtros_bolas.b_6] := 1;
          bolas_selecionadas [filtros_bolas.b_7] := 1;

          bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_1] := 1;
          bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_2] := 1;
          bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_3] := 1;
          bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_4] := 1;
          bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_5] := 1;
          bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_6] := 1;
          bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_7] := 1;

          id_sequencial := id_sequencial + 1;
          UPDATE d_sorte.d_sorte_filtros
          SET id_ordenado_em_grupos = id_sequencial
          WHERE filtros_id = filtros_bolas.filtros_id;

          ultimo_filtro_id_sorteado := filtros_bolas.filtros_id;

          -- Armazena as últimas 4 combinações localizadas.
          IF uA = 1
          THEN
            bolas_ultimas_3_combinacoes [1] := filtros_bolas.b_1;
            bolas_ultimas_3_combinacoes [2] := filtros_bolas.b_2;
            bolas_ultimas_3_combinacoes [3] := filtros_bolas.b_3;
            bolas_ultimas_3_combinacoes [4] := filtros_bolas.b_4;
            bolas_ultimas_3_combinacoes [5] := filtros_bolas.b_5;
            bolas_ultimas_3_combinacoes [6] := filtros_bolas.b_6;
            bolas_ultimas_3_combinacoes [7] := filtros_bolas.b_7;

          ELSEIF uA = 2
            THEN
              bolas_ultimas_3_combinacoes [8] := filtros_bolas.b_1;
              bolas_ultimas_3_combinacoes [9] := filtros_bolas.b_2;
              bolas_ultimas_3_combinacoes [10] := filtros_bolas.b_3;
              bolas_ultimas_3_combinacoes [11] := filtros_bolas.b_4;
              bolas_ultimas_3_combinacoes [12] := filtros_bolas.b_5;
              bolas_ultimas_3_combinacoes [13] := filtros_bolas.b_6;
              bolas_ultimas_3_combinacoes [14] := filtros_bolas.b_7;
          ELSEIF uA = 3
            THEN
              bolas_ultimas_3_combinacoes [15] := filtros_bolas.b_1;
              bolas_ultimas_3_combinacoes [16] := filtros_bolas.b_2;
              bolas_ultimas_3_combinacoes [17] := filtros_bolas.b_3;
              bolas_ultimas_3_combinacoes [18] := filtros_bolas.b_4;
              bolas_ultimas_3_combinacoes [19] := filtros_bolas.b_5;
              bolas_ultimas_3_combinacoes [20] := filtros_bolas.b_6;
              bolas_ultimas_3_combinacoes [21] := filtros_bolas.b_7;

              -- No jogo dia de sorte há 4 grupos de 7 bolas, então, no
              -- último grupo, iremos resetar tudo e deixar somente a última
              -- combinação encontrada.
          ELSEIF uA = 4
            THEN
              FOR uC IN 1..31 LOOP
                bolas_selecionadas [uC] := 0;
                bolas_ultimas_3_combinacoes [uC] := 0;
              END LOOP;

              bolas_ultimas_3_combinacoes [1] := filtros_bolas.b_1;
              bolas_ultimas_3_combinacoes [2] := filtros_bolas.b_2;
              bolas_ultimas_3_combinacoes [3] := filtros_bolas.b_3;
              bolas_ultimas_3_combinacoes [4] := filtros_bolas.b_4;
              bolas_ultimas_3_combinacoes [5] := filtros_bolas.b_5;
              bolas_ultimas_3_combinacoes [6] := filtros_bolas.b_6;
              bolas_ultimas_3_combinacoes [7] := filtros_bolas.b_7;

              bolas_selecionadas [filtros_bolas.b_1] := 1;
              bolas_selecionadas [filtros_bolas.b_2] := 1;
              bolas_selecionadas [filtros_bolas.b_3] := 1;
              bolas_selecionadas [filtros_bolas.b_4] := 1;
              bolas_selecionadas [filtros_bolas.b_5] := 1;
              bolas_selecionadas [filtros_bolas.b_6] := 1;
              bolas_selecionadas [filtros_bolas.b_7] := 1;

              RAISE NOTICE 'cmbs:[%],[%],[%],[%]', ultima_4_combinacoes [1],
              ultima_4_combinacoes [2], ultima_4_combinacoes [3], ultima_4_combinacoes [4];

              -- Os grupos de combinação está conectados, a última combinação de um grupo
              -- é a primeira combinação do outro grupo.
              ultima_4_combinacoes [0] := ultima_combinacao_localizada;

          END IF;

          EXIT WHEN TRUE;

        END IF;

      END LOOP;

      -- Se não houve iteração quer dizer que terminamos.
      if contador_de_iteracao = 0 then
        Return;
      END IF;




      IF qt_bolas_repetidas = 0
      THEN
        uA := uA + 1;
        CONTINUE;
      END IF;

      -- Se após percorrer todas as combinações não encontrarmos nenhuma combinação
      -- que tenha bolas repetidas, iremos uma única vez, dependendo em qual iteração
      -- do loop está, retirar 7 bolas da primeira, 14 bolas, 21 bolas e repetir a iteração.

      IF qt_bolas_repetidas <> 0
      THEN

        -- Se é a primeira iteração, quer dizer, que todas as combinações, tem pelo menos
        -- uma bola repetida, neste caso, iremos pegar a combinação que tem a menor quantidade de
        -- de bolas.
        filtros_id_temporario := -1;
        IF uA = 1
        THEN
          CASE WHEN primeira_combinacao_repetida [0] <> -1
            THEN
              filtros_id_temporario := primeira_combinacao_repetida [0];
            WHEN primeira_combinacao_repetida [1] <> -1
            THEN
              filtros_id_temporario := primeira_combinacao_repetida [1];
            WHEN primeira_combinacao_repetida [2] <> -1
            THEN
              filtros_id_temporario := primeira_combinacao_repetida [2];
            WHEN primeira_combinacao_repetida [3] <> -1
            THEN
              filtros_id_temporario := primeira_combinacao_repetida [3];
            WHEN primeira_combinacao_repetida [4] <> -1
            THEN
              filtros_id_temporario := primeira_combinacao_repetida [4];
            WHEN primeira_combinacao_repetida [5] <> -1
            THEN
              filtros_id_temporario := primeira_combinacao_repetida [5];
            WHEN primeira_combinacao_repetida [6] <> -1
            THEN
              filtros_id_temporario := primeira_combinacao_repetida [6];
            WHEN primeira_combinacao_repetida [7] <> -1
            THEN
              filtros_id_temporario := primeira_combinacao_repetida [7];
          END CASE;

          -- Atualiza a combinação que tem a menor quantidade de bolas repetidas.
          -- Isto serve pra evitar temos muitas bolas repetidas, entre duas combinações
          -- em sequência, quanto menor a quantidade de bolas repetidas, melhor.
          id_sequencial := id_sequencial + 1;
          UPDATE d_sorte.d_sorte_filtros
          SET id_ordenado_em_grupos = id_sequencial
          WHERE filtros_id = filtros_id_temporario;

          -- Vamos pegar as bolas da combinação que tem a menor quantidade de bolas
          -- repetidas.
          SELECT *
          FROM d_sorte.v_d_sorte_filtros
          WHERE to_char(data, 'YYYY-MM-dd HH24:MI:SS.US') = data_hora_formato_usa
                AND filtros_id = filtros_id_temporario
          INTO filtros_bolas;

          IF filtros_bolas IS NULL
          THEN
            RAISE 'filtro_bolas is null.';
            RETURN;
          END IF;

          ultima_4_combinacoes [1] := filtros_bolas.d_sorte_id;
          ultima_4_combinacoes [2] := 0;
          ultima_4_combinacoes [3] := 0;
          ultima_4_combinacoes [4] := 0;

          -- Reseta todas as bolas
          FOR uB IN 1..31 LOOP
            bolas_selecionadas [uB] := 0;
            bolas_selecionadas_da_ultima_combinacao [uB] := 0;
            bolas_ultimas_3_combinacoes [uB] := 0;
          END LOOP;

          -- Pega as bolas da combinação atual.
          bolas_selecionadas [filtros_bolas.b_1] := 1;
          bolas_selecionadas [filtros_bolas.b_2] := 1;
          bolas_selecionadas [filtros_bolas.b_3] := 1;
          bolas_selecionadas [filtros_bolas.b_4] := 1;
          bolas_selecionadas [filtros_bolas.b_5] := 1;
          bolas_selecionadas [filtros_bolas.b_6] := 1;
          bolas_selecionadas [filtros_bolas.b_7] := 1;

          bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_1] := 1;
          bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_2] := 1;
          bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_3] := 1;
          bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_4] := 1;
          bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_5] := 1;
          bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_6] := 1;
          bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_7] := 1;

          bolas_ultimas_3_combinacoes [1] := filtros_bolas.b_1;
          bolas_ultimas_3_combinacoes [2] := filtros_bolas.b_2;
          bolas_ultimas_3_combinacoes [3] := filtros_bolas.b_3;
          bolas_ultimas_3_combinacoes [4] := filtros_bolas.b_4;
          bolas_ultimas_3_combinacoes [5] := filtros_bolas.b_5;
          bolas_ultimas_3_combinacoes [6] := filtros_bolas.b_6;
          bolas_ultimas_3_combinacoes [7] := filtros_bolas.b_7;


        ELSEIF uA = 2
          THEN

            b_ua_2 = TRUE;
            -- Se é true, quer dizer que
            IF b_ua_2 = TRUE
            THEN
              b_ua_2 = FALSE;
              CASE WHEN primeira_combinacao_repetida [0] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [0];
                WHEN primeira_combinacao_repetida [1] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [1];
                WHEN primeira_combinacao_repetida [2] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [2];
                WHEN primeira_combinacao_repetida [3] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [3];
                WHEN primeira_combinacao_repetida [4] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [4];
                WHEN primeira_combinacao_repetida [5] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [5];
                WHEN primeira_combinacao_repetida [6] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [6];
                WHEN primeira_combinacao_repetida [7] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [7];
              END CASE;

              -- Atualiza a combinação que tem a menor quantidade de bolas repetidas.
              -- Isto serve pra evitar temos muitas bolas repetidas, entre duas combinações
              -- em sequência, quanto menor a quantidade de bolas repetidas, melhor.
              id_sequencial := id_sequencial + 1;
              UPDATE d_sorte.d_sorte_filtros
              SET id_ordenado_em_grupos = id_sequencial
              WHERE filtros_id = filtros_id_temporario;

              -- Reseta todas as bolas
              FOR uB IN 1..31 LOOP
                bolas_selecionadas [uB] := 0;
                bolas_ultimas_3_combinacoes [uB] := 0;
                bolas_selecionadas_da_ultima_combinacao [uB] := 0;
              END LOOP;

              -- Vamos pegar as bolas da combinação que tem a menor quantidade de bolas
              -- repetidas.
              SELECT *
              FROM d_sorte.v_d_sorte_filtros
              WHERE to_char(data, 'YYYY-MM-dd HH24:MI:SS.US') = data_hora_formato_usa
                    AND filtros_id = filtros_id_temporario
              INTO filtros_bolas;

              IF filtros_bolas IS NULL
              THEN
                RAISE 'filtro_bolas is null.';
                RETURN;
              END IF;

              ultima_4_combinacoes [1] := filtros_bolas.d_sorte_id;
              ultima_4_combinacoes [2] := 0;
              ultima_4_combinacoes [3] := 0;
              ultima_4_combinacoes [4] := 0;

              -- Pega as bolas da combinação atual.
              bolas_selecionadas [filtros_bolas.b_1] := 1;
              bolas_selecionadas [filtros_bolas.b_2] := 1;
              bolas_selecionadas [filtros_bolas.b_3] := 1;
              bolas_selecionadas [filtros_bolas.b_4] := 1;
              bolas_selecionadas [filtros_bolas.b_5] := 1;
              bolas_selecionadas [filtros_bolas.b_6] := 1;
              bolas_selecionadas [filtros_bolas.b_7] := 1;

              bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_1] := 1;
              bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_2] := 1;
              bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_3] := 1;
              bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_4] := 1;
              bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_5] := 1;
              bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_6] := 1;
              bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_7] := 1;

              bolas_ultimas_3_combinacoes [1] := filtros_bolas.b_1;
              bolas_ultimas_3_combinacoes [2] := filtros_bolas.b_2;
              bolas_ultimas_3_combinacoes [3] := filtros_bolas.b_3;
              bolas_ultimas_3_combinacoes [4] := filtros_bolas.b_4;
              bolas_ultimas_3_combinacoes [5] := filtros_bolas.b_5;
              bolas_ultimas_3_combinacoes [6] := filtros_bolas.b_6;
              bolas_ultimas_3_combinacoes [7] := filtros_bolas.b_7;

              uA := 2;
              CONTINUE;

            END IF;

        ELSEIF uA = 3
          THEN

            -- Aqui, se b_ua_3 é falso, quer dizer que é a primeira vez, que o passo 3,
            -- tem bolas repetidas, neste caso, iremos deixar somente a última combinação
            -- e verificar novamente, se duas combinações entre si tem bolas repetidas, se
            -- sim, ao passar no passo 3 novamente, b_ua_3 será true, então, iremos armazenar
            -- a combinação repetida.
            b_ua_3 := TRUE;

            -- Se é true quer dizer que todas as combinações estão se repetindo.
            IF b_ua_3 = TRUE
            THEN
              b_ua_3 = FALSE;
              CASE WHEN primeira_combinacao_repetida [0] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [0];
                WHEN primeira_combinacao_repetida [1] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [1];
                WHEN primeira_combinacao_repetida [2] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [2];
                WHEN primeira_combinacao_repetida [3] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [3];
                WHEN primeira_combinacao_repetida [4] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [4];
                WHEN primeira_combinacao_repetida [5] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [5];
                WHEN primeira_combinacao_repetida [6] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [6];
                WHEN primeira_combinacao_repetida [7] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [7];
              END CASE;

              -- Atualiza a combinação que tem a menor quantidade de bolas repetidas.
              -- Isto serve pra evitar temos muitas bolas repetidas, entre duas combinações
              -- em sequência, quanto menor a quantidade de bolas repetidas, melhor.
              id_sequencial := id_sequencial + 1;
              UPDATE d_sorte.d_sorte_filtros
              SET id_ordenado_em_grupos = id_sequencial
              WHERE filtros_id = filtros_id_temporario;

              -- Vamos pegar as bolas da combinação que tem a menor quantidade de bolas
              -- repetidas.
              SELECT *
              FROM d_sorte.v_d_sorte_filtros
              WHERE to_char(data, 'YYYY-MM-dd HH24:MI:SS.US') = data_hora_formato_usa
                    AND filtros_id = filtros_id_temporario
              INTO filtros_bolas
              ;

              IF filtros_bolas IS NULL
              THEN
                RAISE 'filtro_bolas is null.';
                RETURN;
              END IF;

              ultima_4_combinacoes [1] := filtros_bolas.d_sorte_id;
              ultima_4_combinacoes [2] := 0;
              ultima_4_combinacoes [3] := 0;
              ultima_4_combinacoes [4] := 0;

              -- Reseta todas as bolas
              FOR uB IN 1..31 LOOP
                bolas_selecionadas [uB] := 0;
                bolas_selecionadas_da_ultima_combinacao [uB] := 0;
                bolas_ultimas_3_combinacoes [uB] := 0;
              END LOOP;

              -- Pega as bolas da combinação atual.
              bolas_selecionadas [filtros_bolas.b_1] := 1;
              bolas_selecionadas [filtros_bolas.b_2] := 1;
              bolas_selecionadas [filtros_bolas.b_3] := 1;
              bolas_selecionadas [filtros_bolas.b_4] := 1;
              bolas_selecionadas [filtros_bolas.b_5] := 1;
              bolas_selecionadas [filtros_bolas.b_6] := 1;
              bolas_selecionadas [filtros_bolas.b_7] := 1;

              bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_1] := 1;
              bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_2] := 1;
              bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_3] := 1;
              bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_4] := 1;
              bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_5] := 1;
              bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_6] := 1;
              bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_7] := 1;


              bolas_ultimas_3_combinacoes [1] := filtros_bolas.b_1;
              bolas_ultimas_3_combinacoes [2] := filtros_bolas.b_2;
              bolas_ultimas_3_combinacoes [3] := filtros_bolas.b_3;
              bolas_ultimas_3_combinacoes [4] := filtros_bolas.b_4;
              bolas_ultimas_3_combinacoes [5] := filtros_bolas.b_5;
              bolas_ultimas_3_combinacoes [6] := filtros_bolas.b_6;
              bolas_ultimas_3_combinacoes [7] := filtros_bolas.b_7;

              -- Começa no 2, pois, já encontramos o 1.
              uA := 2;
              CONTINUE;

            END IF;

        ELSEIF uA = 4
          THEN

            b_ua_4 = TRUE;
            -- Se é true quer dizer que todas as combinações estão se repetindo.
            IF b_ua_4 = TRUE
            THEN
              b_ua_4 = FALSE;
              CASE
                WHEN primeira_combinacao_repetida [0] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [0];

                WHEN primeira_combinacao_repetida [1] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [1];
                WHEN primeira_combinacao_repetida [2] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [2];
                WHEN primeira_combinacao_repetida [3] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [3];
                WHEN primeira_combinacao_repetida [4] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [4];
                WHEN primeira_combinacao_repetida [5] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [5];
                WHEN primeira_combinacao_repetida [6] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [6];
                WHEN primeira_combinacao_repetida [7] <> -1
                THEN
                  filtros_id_temporario := primeira_combinacao_repetida [7];
              END CASE;

              -- Atualiza a combinação que tem a menor quantidade de bolas repetidas.
              -- Isto serve pra evitar temos muitas bolas repetidas, entre duas combinações
              -- em sequência, quanto menor a quantidade de bolas repetidas, melhor.
              id_sequencial := id_sequencial + 1;
              UPDATE d_sorte.d_sorte_filtros
              SET id_ordenado_em_grupos = id_sequencial
              WHERE filtros_id = filtros_id_temporario;

              -- Vamos pegar as bolas da combinação que tem a menor quantidade de bolas
              -- repetidas.
              SELECT *
              FROM d_sorte.v_d_sorte_filtros
              WHERE to_char(data, 'YYYY-MM-dd HH24:MI:SS.US') = data_hora_formato_usa
                    AND filtros_id = filtros_id_temporario
              INTO filtros_bolas;

              IF filtros_bolas IS NULL
              THEN
                RAISE 'filtro_bolas is null.';
                RETURN;
              END IF;

              ultima_4_combinacoes [1] := filtros_bolas.d_sorte_id;
              ultima_4_combinacoes [2] := 0;
              ultima_4_combinacoes [3] := 0;
              ultima_4_combinacoes [4] := 0;

              -- Reseta todas as bolas
              FOR uB IN 1..31 LOOP
                bolas_selecionadas [uB] := 0;
                bolas_ultimas_3_combinacoes [uB] := 0;
                bolas_selecionadas_da_ultima_combinacao [uB]:= 0;
              END LOOP;

              -- Pega as bolas da combinação atual.
              bolas_selecionadas [filtros_bolas.b_1] := 1;
              bolas_selecionadas [filtros_bolas.b_2] := 1;
              bolas_selecionadas [filtros_bolas.b_3] := 1;
              bolas_selecionadas [filtros_bolas.b_4] := 1;
              bolas_selecionadas [filtros_bolas.b_5] := 1;
              bolas_selecionadas [filtros_bolas.b_6] := 1;
              bolas_selecionadas [filtros_bolas.b_7] := 1;

              bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_1] := 1;
              bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_2] := 1;
              bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_3] := 1;
              bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_4] := 1;
              bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_5] := 1;
              bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_6] := 1;
              bolas_selecionadas_da_ultima_combinacao [filtros_bolas.b_7] := 1;

              bolas_ultimas_3_combinacoes [1] := filtros_bolas.b_1;
              bolas_ultimas_3_combinacoes [2] := filtros_bolas.b_2;
              bolas_ultimas_3_combinacoes [3] := filtros_bolas.b_3;
              bolas_ultimas_3_combinacoes [4] := filtros_bolas.b_4;
              bolas_ultimas_3_combinacoes [5] := filtros_bolas.b_5;
              bolas_ultimas_3_combinacoes [6] := filtros_bolas.b_6;
              bolas_ultimas_3_combinacoes [7] := filtros_bolas.b_7;

              -- Começa no 2 pois já encontrou o 1.
              uA := 2;
              CONTINUE;

            END IF;


        END IF;

      END IF;

    END LOOP;

    SELECT *
    FROM d_sorte.v_d_sorte_filtros
    WHERE to_char(data, 'YYYY-MM-dd HH24:MI:SS.US') = data_hora_formato_usa
          AND id_ordenado_em_grupos = -1
    INTO filtros_bolas;

    IF filtros_bolas IS NULL
    THEN
      RETURN;
    END IF;


  END LOOP;

END;
$$;



'filtros_id','data','acertos','d_sorte_id','d_sorte_qt','b_1','b_2','b_3','b_4','b_5','b_6','b_7','b_8','b_9','b_10','b_11','b_12','b_13','b_14','b_15','id_seq_cmb_em_grupos','id_seq_exc_novos_repetidos_id','id_ordenado_em_grupos'


