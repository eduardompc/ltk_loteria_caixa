/*
  Script sql pra popular a tabela novos x repetidos.
 */
/**
  No caso da tabela novos e repetidos, os dados é pego de uma tabela separada,
  ao invés de ser lotofacil_id, será lotofacil_novos_repetidos.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_novos_repetidos_agrupado;
CREATE TABLE lotofacil.lotofacil_id_novos_repetidos_agrupado (
  novos_repetidos_id SMALLINT NOT NULL,
  qt_vezes           INTEGER  NOT NULL,

  CONSTRAINT novos_repetidos_agrupado_fk FOREIGN KEY (novos_repetidos_id) REFERENCES lotofacil.lotofacil_id_novos_repetidos (novos_repetidos_id)
);


/**
  novos_repetidos, agrupado, por id novos_repetidos e por quantidade de bolas.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_novos_repetidos_agrupado_por_qt;
CREATE TABLE lotofacil.lotofacil_id_novos_repetidos_agrupado_por_qt (
  novos_repetidos_id SMALLINT NOT NULL,
  ltf_qt             SMALLINT NOT NULL CHECK (ltf_qt IN (15, 16, 17, 18)),
  qt_vezes           INTEGER  NOT NULL,
  CONSTRAINT novos_repetidos_agrupado_por_qt_fk FOREIGN KEY (novos_repetidos_id) REFERENCES lotofacil.lotofacil_id_novos_repetidos (novos_repetidos_id)
);


/**
  Esta tabela lotofacil_resultado_novos_repetidos, terá um tabela separada.
 */

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_novos_repetidos_agrupado;
CREATE VIEW lotofacil.v_lotofacil_resultado_novos_repetidos_agrupado AS
  SELECT
    ltf_agrupado.novos_repetidos_id,
    novos,
    repetidos,
    ltf_agrupado.qt_vezes             AS ltf_qt,
    count(ltf_res.novos_repetidos_id) AS res_qt
  FROM lotofacil.lotofacil_id_novos_repetidos_agrupado_por_qt ltf_agrupado
    LEFT JOIN lotofacil.lotofacil_id_novos_repetidos ltf_id
      ON ltf_agrupado.novos_repetidos_id = ltf_id.novos_repetidos_id
    LEFT JOIN lotofacil.lotofacil_resultado_novos_repetidos ltf_res
      ON ltf_id.novos_repetidos_id = ltf_res.novos_repetidos_id
  WHERE ltf_agrupado.ltf_qt = 15
  GROUP BY ltf_agrupado.novos_repetidos_id, novos, repetidos, ltf_agrupado.qt_vezes
  ORDER BY res_qt DESC, ltf_qt DESC, novos, repetidos;

/**
  Tive que reduzir o nome pra não haver truncagem do nome
  Modifiquei lotofacil pra ltf.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_ltf_resultado_novos_repetidos_agrupado_intervalo_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_ltf_resultado_novos_repetidos_agrupado_intervalo_concurso(concursoInicial NUMERIC,
                                                                                       concursoFinal   NUMERIC)
  RETURNS TABLE(novos_repetidos_id NUMERIC, novos NUMERIC, repetidos NUMERIC, ltf_qt NUMERIC, res_qt NUMERIC)
AS
$$
BEGIN
  RETURN QUERY SELECT
                 ltf_agrupado.novos_repetidos_id :: NUMERIC,
                 ltf_id.novos :: NUMERIC,
                 ltf_id.repetidos :: NUMERIC,
                 ltf_agrupado.qt_vezes :: NUMERIC             AS ltf_qt,
                 count(ltf_res.novos_repetidos_id) :: NUMERIC AS res_qt
               FROM lotofacil.lotofacil_id_novos_repetidos_agrupado_por_qt ltf_agrupado
                 LEFT JOIN lotofacil.lotofacil_id_novos_repetidos ltf_id
                   ON ltf_agrupado.novos_repetidos_id = ltf_id.novos_repetidos_id
                 LEFT JOIN lotofacil.lotofacil_resultado_novos_repetidos ltf_res
                   ON (
                   ltf_id.novos_repetidos_id = ltf_res.novos_repetidos_id AND
                   ltf_res.concurso >= concursoInicial AND ltf_res.concurso <= concursoFinal
                   )
               WHERE ltf_agrupado.ltf_qt = 15
               GROUP BY ltf_agrupado.novos_repetidos_id, ltf_id.novos, ltf_id.repetidos, ltf_agrupado.qt_vezes
               ORDER BY res_qt DESC, ltf_qt DESC, novos, repetidos;
END;
$$ LANGUAGE plpgsql;

/**
  Esta function atualiza tabela lotofacil_id_novos_repetidos_agrupado e
  lotofacil_id_novos_repetidos_agrupado_por_qt.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_id_novos_repetidos_agrupado();
CREATE FUNCTION lotofacil.fn_lotofacil_id_novos_repetidos_agrupado()
  RETURNS VOID
LANGUAGE plpgsql AS $$
DECLARE

BEGIN
  DELETE FROM lotofacil.lotofacil_id_novos_repetidos_agrupado;
  INSERT INTO lotofacil.lotofacil_id_novos_repetidos_agrupado (novos_repetidos_id, qt_vezes)
    SELECT
      ltf_a.novos_repetidos_id,
      count(*) AS qt_vz
    FROM lotofacil.lotofacil_id_novos_repetidos ltf_a
      LEFT JOIN lotofacil.lotofacil_novos_repetidos ltf_b
        ON ltf_a.novos_repetidos_id = ltf_b.novos_repetidos_id
    GROUP BY ltf_a.novos_repetidos_id
    ORDER BY qt_vz DESC;
END;
$$;
SELECT
FROM lotofacil.fn_lotofacil_id_novos_repetidos_agrupado();


DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_id_novos_repetidos_agrupado_por_qt();
CREATE FUNCTION lotofacil.fn_lotofacil_id_novos_repetidos_agrupado_por_qt()
  RETURNS VOID
LANGUAGE plpgsql AS $$
DECLARE

BEGIN
  DELETE FROM lotofacil.lotofacil_id_novos_repetidos_agrupado_por_qt;
  INSERT INTO lotofacil.lotofacil_id_novos_repetidos_agrupado_por_qt (novos_repetidos_id, ltf_qt, qt_vezes)
    SELECT
      ltf_a.novos_repetidos_id,
      ltf_b.ltf_qt,
      count(*) AS qt_vz
    FROM lotofacil.lotofacil_id_novos_repetidos ltf_a
      LEFT JOIN lotofacil.lotofacil_novos_repetidos ltf_b
        ON ltf_a.novos_repetidos_id = ltf_b.novos_repetidos_id
    GROUP BY ltf_a.novos_repetidos_id, ltf_b.ltf_qt

    ORDER BY qt_vz DESC;
END;
$$;
SELECT
FROM lotofacil.fn_lotofacil_id_novos_repetidos_agrupado_por_qt();


DROP FUNCTION IF EXISTS lotofacil.fn_ltf_res_novos_repetidos_atualizar( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_ltf_res_novos_repetidos_atualizar(concurso_inicial NUMERIC, concurso_final NUMERIC)
  RETURNS VOID
LANGUAGE plpgsql AS
$$
DECLARE
  concurso_anterior NUMERIC [16];
  concurso_atual    NUMERIC [16];
  concurso_select   lotofacil.lotofacil_resultado_num%ROWTYPE;

  b_primeira_vez    BOOLEAN;
  qt_repetidos      NUMERIC;
  qt_novos          NUMERIC;
BEGIN
  IF concurso_inicial > concurso_final
  THEN
    RAISE 'Erro: Concurso inicial: % é maior que concurso final: %i', concurso_inicial, concurso_final;
    RETURN;
  END IF;
  IF concurso_inicial = concurso_final
  THEN
    RAISE 'Erro: Concurso inicial: % é igual a concurso final: %i', concurso_inicial, concurso_final;
  END IF;

  -- Zera as variáveis
  FOR uA IN 1..15 LOOP
    concurso_anterior [uA] := 0;
    concurso_atual [uA] := 0;
  END LOOP;

  b_primeira_vez := TRUE;

  DELETE FROM lotofacil.lotofacil_resultado_novos_repetidos;

  FOR concurso_select IN SELECT *
                         FROM lotofacil.lotofacil_resultado_num
                         WHERE concurso BETWEEN concurso_inicial AND concurso_final
                         ORDER BY concurso ASC LOOP

    IF b_primeira_vez = TRUE
    THEN
      b_primeira_vez := FALSE;

      concurso_anterior [0] := concurso_select.concurso;
      concurso_anterior [1] = concurso_select.num_1;
      concurso_anterior [2] = concurso_select.num_2;
      concurso_anterior [3] = concurso_select.num_3;
      concurso_anterior [4] = concurso_select.num_4;
      concurso_anterior [5] = concurso_select.num_5;
      concurso_anterior [6] = concurso_select.num_6;
      concurso_anterior [7] = concurso_select.num_7;
      concurso_anterior [8] = concurso_select.num_8;
      concurso_anterior [9] = concurso_select.num_9;
      concurso_anterior [10] = concurso_select.num_10;
      concurso_anterior [11] = concurso_select.num_11;
      concurso_anterior [12] = concurso_select.num_12;
      concurso_anterior [13] = concurso_select.num_13;
      concurso_anterior [14] = concurso_select.num_14;
      concurso_anterior [15] = concurso_select.num_15;
      concurso_anterior [16] = concurso_select.num_16;
      concurso_anterior [17] = concurso_select.num_17;
      concurso_anterior [18] = concurso_select.num_18;
      concurso_anterior [19] = concurso_select.num_19;
      concurso_anterior [20] = concurso_select.num_20;
      concurso_anterior [21] = concurso_select.num_21;
      concurso_anterior [22] = concurso_select.num_22;
      concurso_anterior [23] = concurso_select.num_23;
      concurso_anterior [24] = concurso_select.num_24;
      concurso_anterior [25] = concurso_select.num_25;

      INSERT INTO lotofacil.lotofacil_resultado_novos_repetidos (concurso, novos_repetidos_id)
      VALUES (concurso_anterior [0], 0);

      CONTINUE;


    END IF;

    concurso_atual [0] = concurso_select.concurso;
    concurso_atual [1] = concurso_select.num_1;
    concurso_atual [2] = concurso_select.num_2;
    concurso_atual [3] = concurso_select.num_3;
    concurso_atual [4] = concurso_select.num_4;
    concurso_atual [5] = concurso_select.num_5;
    concurso_atual [6] = concurso_select.num_6;
    concurso_atual [7] = concurso_select.num_7;
    concurso_atual [8] = concurso_select.num_8;
    concurso_atual [9] = concurso_select.num_9;
    concurso_atual [10] = concurso_select.num_10;
    concurso_atual [11] = concurso_select.num_11;
    concurso_atual [12] = concurso_select.num_12;
    concurso_atual [13] = concurso_select.num_13;
    concurso_atual [14] = concurso_select.num_14;
    concurso_atual [15] = concurso_select.num_15;
    concurso_atual [16] = concurso_select.num_16;
    concurso_atual [17] = concurso_select.num_17;
    concurso_atual [18] = concurso_select.num_18;
    concurso_atual [19] = concurso_select.num_19;
    concurso_atual [20] = concurso_select.num_20;
    concurso_atual [21] = concurso_select.num_21;
    concurso_atual [22] = concurso_select.num_22;
    concurso_atual [23] = concurso_select.num_23;
    concurso_atual [24] = concurso_select.num_24;
    concurso_atual [25] = concurso_select.num_25;

    qt_repetidos := 0;
    FOR uA IN 1..25 LOOP
      IF concurso_atual [uA] = 1 AND concurso_anterior [uA] = 1
      THEN
        qt_repetidos := qt_repetidos + 1;
      END IF;

      concurso_anterior [uA] := concurso_atual [uA];
    END LOOP;

    -- O identificador de novos x repetidos é igual à quantidade de novos.
    qt_novos := 15 - qt_repetidos;

    INSERT INTO lotofacil.lotofacil_resultado_novos_repetidos (concurso, novos_repetidos_id)
    VALUES (concurso_select.concurso, qt_novos);


  END LOOP;

END;
$$;


SELECT
FROM lotofacil.fn_ltf_res_novos_repetidos_atualizar(1, 2000);

