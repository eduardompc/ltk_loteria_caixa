/**
  TODO: Não será usado pois, algarismo na dezena
  foi enviador pra a tabela lotofacil_id.
 */


DROP TABLE IF EXISTS lotofacil.lotofacil_id_algarismo_na_dezena;
DROP TABLE IF EXISTS lotofacil.lotofacil_id_algarismo_na_dezena;
CREATE TABLE lotofacil.lotofacil_id_algarismo_na_dezena (
  dz_id  NUMERIC NOT NULL PRIMARY KEY,
  ltf_qt NUMERIC NOT NULL,
  dz_0   NUMERIC NOT NULL,
  dz_1   NUMERIC NOT NULL,
  dz_2   NUMERIC NOT NULL
    CONSTRAINT lotofacil_id_algarismo_na_dezena_chk CHECK ((dz_0 + dz_1 + dz_2) IN (15, 16, 17, 18)),
  CONSTRAINT lotofacil_id_algarismo_na_dezena_unk UNIQUE (dz_0, dz_1, dz_2),
  CONSTRAINT lotofacil_id_algarismo_na_dezena_chk_2 CHECK (ltf_qt IN (15, 16, 17, 18)),
  CONSTRAINT lotofacil_id_algarismo_na_dezena_chk_3 CHECK (ltf_qt = (dz_0 + dz_1 + dz_2))
);

DROP TABLE IF EXISTS lotofacil.lotofacil_id_algarismo_na_dezena_comum;
CREATE TABLE lotofacil.lotofacil_id_algarismo_na_dezena_comum (
  id_comum    NUMERIC NOT NULL PRIMARY KEY,
  dz_id       NUMERIC NOT NULL,
  dz_id_comum NUMERIC NOT NULL,
  CONSTRAINT lotofacil_id_algarismo_na_dezena_comum FOREIGN KEY (dz_id)
  REFERENCES lotofacil.lotofacil_id_algarismo_na_dezena (dz_id) ON UPDATE CASCADE ON DELETE CASCADE
);


DROP TABLE IF EXISTS lotofacil.lotofacil_algarismo_na_dezena;
CREATE TABLE lotofacil.lotofacil_algarismo_na_dezena (
  ltf_id NUMERIC NOT NULL PRIMARY KEY,
  ltf_qt NUMERIC NOT NULL,
  dz_id  NUMERIC NOT NULL,
  CONSTRAINT lotofacil_algarismo_na_dezena_fk FOREIGN KEY (dz_id) REFERENCES lotofacil.lotofacil_id_algarismo_na_dezena (dz_id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT lotofacil_id_algarismo_na_dezena_chk CHECK (ltf_qt IN (15, 16, 17, 18))
);

DROP INDEX IF EXISTS lotofacil_algarismo_na_dezena_idx;
CREATE INDEX lotofacil_algarismo_na_dezena_idx
  ON lotofacil.lotofacil_algarismo_na_dezena (ltf_id);
DROP INDEX IF EXISTS lotofacil_algarismo_na_dezena_idx_2;
CREATE INDEX lotofacil_algarismo_na_dezena_idx_2
  ON lotofacil.lotofacil_algarismo_na_dezena (dz_id);



INSERT INTO lotofacil.lotofacil_filtros (
  data, ltf_id, ltf_qt, concurso, acertos, id_seq_cmb_em_grupos, novos_repetidos_id_alternado, novos_repetidos_id, concurso_soma_frequencia_bolas
)
  SELECT
    Now(),
    lotofacil.lotofacil_num.ltf_id,
    lotofacil.lotofacil_num.ltf_qt,
    2,
    0,
    id_seq_cmb_em_grupos,
    novos_repetidos_id_alternado,
    novos_repetidos_id,
    concurso_soma_frequencia_bolas
  FROM
    lotofacil.lotofacil_num,
    lotofacil.lotofacil_bolas,
    lotofacil.lotofacil_novos_repetidos,
    lotofacil.lotofacil_num_bolas_concurso,
    lotofacil.lotofacil_diferenca_entre_bolas,
    lotofacil.lotofacil_id,
    lotofacil.v_lotofacil_num_nao_sorteado,
    lotofacil.lotofacil_coluna_b,
    lotofacil.lotofacil_combinacoes_em_grupos,
    lotofacil.lotofacil_algarismo_na_dezena
  WHERE
    lotofacil.lotofacil_num.ltf_id = lotofacil.lotofacil_bolas.ltf_id
    AND
    lotofacil.lotofacil_num.ltf_id = lotofacil.lotofacil_novos_repetidos.ltf_id
    AND
    lotofacil.lotofacil_num.ltf_id = lotofacil.lotofacil_num_bolas_concurso.ltf_id
    AND
    lotofacil.lotofacil_num.ltf_id = lotofacil.lotofacil_diferenca_entre_bolas.ltf_id
    AND
    lotofacil.lotofacil_num.ltf_id = lotofacil.lotofacil_id.ltf_id
    AND
    lotofacil.lotofacil_num.ltf_id = lotofacil.v_lotofacil_num_nao_sorteado.ltf_id
    AND
    lotofacil.lotofacil_num.ltf_id = lotofacil.lotofacil_coluna_b.ltf_id
    AND
    lotofacil.lotofacil_num.ltf_id = lotofacil.lotofacil_combinacoes_em_grupos.ltf_id
    AND
    lotofacil.lotofacil_num.ltf_id = lotofacil.lotofacil_algarismo_na_dezena.ltf_id
    AND
    lotofacil.lotofacil_bolas.ltf_id = lotofacil.lotofacil_novos_repetidos.ltf_id
    AND
    lotofacil.lotofacil_bolas.ltf_id = lotofacil.lotofacil_num_bolas_concurso.ltf_id
    AND
    lotofacil.lotofacil_bolas.ltf_id = lotofacil.lotofacil_diferenca_entre_bolas.ltf_id
    AND
    lotofacil.lotofacil_bolas.ltf_id = lotofacil.lotofacil_id.ltf_id
    AND
    lotofacil.lotofacil_bolas.ltf_id = lotofacil.v_lotofacil_num_nao_sorteado.ltf_id
    AND
    lotofacil.lotofacil_bolas.ltf_id = lotofacil.lotofacil_coluna_b.ltf_id
    AND
    lotofacil.lotofacil_bolas.ltf_id = lotofacil.lotofacil_combinacoes_em_grupos.ltf_id
    AND
    lotofacil.lotofacil_bolas.ltf_id = lotofacil.lotofacil_algarismo_na_dezena.ltf_id
    AND
    lotofacil.lotofacil_novos_repetidos.ltf_id = lotofacil.lotofacil_num_bolas_concurso.ltf_id
    AND
    lotofacil.lotofacil_novos_repetidos.ltf_id = lotofacil.lotofacil_diferenca_entre_bolas.ltf_id
    AND
    lotofacil.lotofacil_novos_repetidos.ltf_id = lotofacil.lotofacil_id.ltf_id
    AND
    lotofacil.lotofacil_novos_repetidos.ltf_id = lotofacil.v_lotofacil_num_nao_sorteado.ltf_id
    AND
    lotofacil.lotofacil_novos_repetidos.ltf_id = lotofacil.lotofacil_coluna_b.ltf_id
    AND
    lotofacil.lotofacil_novos_repetidos.ltf_id = lotofacil.lotofacil_combinacoes_em_grupos.ltf_id
    AND
    lotofacil.lotofacil_novos_repetidos.ltf_id = lotofacil.lotofacil_algarismo_na_dezena.ltf_id
    AND
    lotofacil.lotofacil_num_bolas_concurso.ltf_id = lotofacil.lotofacil_diferenca_entre_bolas.ltf_id
    AND
    lotofacil.lotofacil_num_bolas_concurso.ltf_id = lotofacil.lotofacil_id.ltf_id
    AND
    lotofacil.lotofacil_num_bolas_concurso.ltf_id = lotofacil.v_lotofacil_num_nao_sorteado.ltf_id
    AND
    lotofacil.lotofacil_num_bolas_concurso.ltf_id = lotofacil.lotofacil_coluna_b.ltf_id
    AND
    lotofacil.lotofacil_num_bolas_concurso.ltf_id = lotofacil.lotofacil_combinacoes_em_grupos.ltf_id
    AND
    lotofacil.lotofacil_num_bolas_concurso.ltf_id = lotofacil.lotofacil_algarismo_na_dezena.ltf_id
    AND
    lotofacil.lotofacil_diferenca_entre_bolas.ltf_id = lotofacil.lotofacil_id.ltf_id
    AND
    lotofacil.lotofacil_diferenca_entre_bolas.ltf_id = lotofacil.v_lotofacil_num_nao_sorteado.ltf_id
    AND
    lotofacil.lotofacil_diferenca_entre_bolas.ltf_id = lotofacil.lotofacil_coluna_b.ltf_id
    AND
    lotofacil.lotofacil_diferenca_entre_bolas.ltf_id = lotofacil.lotofacil_combinacoes_em_grupos.ltf_id
    AND
    lotofacil.lotofacil_diferenca_entre_bolas.ltf_id = lotofacil.lotofacil_algarismo_na_dezena.ltf_id
    AND
    lotofacil.lotofacil_id.ltf_id = lotofacil.v_lotofacil_num_nao_sorteado.ltf_id
    AND
    lotofacil.lotofacil_id.ltf_id = lotofacil.lotofacil_coluna_b.ltf_id
    AND
    lotofacil.lotofacil_id.ltf_id = lotofacil.lotofacil_combinacoes_em_grupos.ltf_id
    AND
    lotofacil.lotofacil_id.ltf_id = lotofacil.lotofacil_algarismo_na_dezena.ltf_id
    AND
    lotofacil.v_lotofacil_num_nao_sorteado.ltf_id = lotofacil.lotofacil_coluna_b.ltf_id
    AND
    lotofacil.v_lotofacil_num_nao_sorteado.ltf_id = lotofacil.lotofacil_combinacoes_em_grupos.ltf_id
    AND
    lotofacil.v_lotofacil_num_nao_sorteado.ltf_id = lotofacil.lotofacil_algarismo_na_dezena.ltf_id
    AND
    lotofacil.lotofacil_coluna_b.ltf_id = lotofacil.lotofacil_combinacoes_em_grupos.ltf_id
    AND
    lotofacil.lotofacil_coluna_b.ltf_id = lotofacil.lotofacil_algarismo_na_dezena.ltf_id
    AND
    lotofacil.lotofacil_combinacoes_em_grupos.ltf_id = lotofacil.lotofacil_algarismo_na_dezena.ltf_id

    AND
    ((lotofacil_novos_repetidos.novos_repetidos_id IN (6, 7, 5))
     AND (lotofacil_id.par_impar_id IN (15, 19, 11))
     AND (lotofacil_id.prm_id IN (18, 22))
     AND (lotofacil_id.ext_int_id IN (11, 7))
     AND (lotofacil.lotofacil_bolas.b_1 IN (1))
     AND (lotofacil.lotofacil_bolas.b_2 IN (2, 3, 4))
     AND (lotofacil.lotofacil_bolas.b_3 IN (4, 5, 3))
     AND (lotofacil.lotofacil_bolas.b_4 IN (5, 6, 7))
     AND (lotofacil.lotofacil_bolas.B_5 IN (8, 7, 9))
     AND (lotofacil.lotofacil_bolas.b_6 IN (10, 9, 11))
     AND (lotofacil.lotofacil_bolas.b_7 IN (11, 12, 13))
     AND (lotofacil.lotofacil_bolas.b_8 IN (14, 13, 12))
     AND (lotofacil.lotofacil_bolas.b_9 IN (15, 14, 16))
     AND (lotofacil.lotofacil_bolas.b_10 IN (16, 17, 18))
     AND (lotofacil.lotofacil_bolas.b_11 IN (19, 18, 17))
     AND (lotofacil.lotofacil_bolas.b_12 IN (20, 21, 19))
     AND (lotofacil.lotofacil_bolas.b_13 IN (22, 21, 23))
     AND (lotofacil.lotofacil_bolas.b_14 IN (24, 23))
     AND (lotofacil.lotofacil_bolas.b_15 IN (25))
    )
  ORDER BY concurso_soma_frequencia_bolas ASC




-- Devemos popular os dados do arquivo csv em tabelas.
-- Pra executar o comando abaixo, no terminal faça algo assim:
-- psql -D <banco> -U <usuario> -f <arquivo.sql>
COPY lotofacil.lotofacil_id_algarismo_na_dezena (dz_id, ltf_qt, dz_0, dz_1, dz_2) FROM './lotofacil_id_algarismo_na_dezena.csv'
WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );

COPY lotofacil.lotofacil_id_algarismo_na_dezena (dz_id, ltf_qt, dz_0, dz_1, dz_2) FROM './lotofacil_algarismo_na_dezena.csv'
WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );

/**
  Antes, eu criava dados agrupados através da view, entretanto, não faz sentido
  utilizar uma view, pois sempre esta tabela tem dados fixos nunca se alteram.
  Então, iremos armazenar os dados em uma tabela, tal qual outras tabelas
  que ocorre a mesma situação.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_algarismo_na_dezena_agrupado;
CREATE TABLE lotofacil.lotofacil_algarismo_na_dezena_agrupado (
  dz_id  NUMERIC NOT NULL,
  ltf_qt NUMERIC NOT NULL CHECK ( ltf_qt IN (15, 16, 17, 18)),
  qt_vz  NUMERIC NOT NULL,
  CONSTRAINT lotofacil_algarismo_na_dezena_agrupado_fk FOREIGN KEY (dz_id) REFERENCES lotofacil.lotofacil_id_algarismo_na_dezena (dz_id) ON UPDATE CASCADE ON DELETE CASCADE
);

/**
  Após as tabelas lotofacil.lotofacil_id e lotofacil_id_algarismo_na_horizontal ter dados populados
  iremos realizar o insert na tabela lotofacil.lotofacil_algarismo_na_dezena_agrupado.
 */
INSERT INTO lotofacil.lotofacil_algarismo_na_dezena_agrupado (dz_id, ltf_qt, qt_vz)
  SELECT
    dz_id,
    ltf_qt,
    count(*) qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY dz_id, ltf_qt
  ORDER BY dz_id;

/**
  Agora, criarei uma view pra verificar estatisticamente quais são as combinações
  que mais sai.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_algarismo_na_dezena;
CREATE VIEW lotofacil.v_lotofacil_resultado_algarismo_na_dezena(dz_id, ltf_qt_vz, dz_0, dz_1, dz_2, res_qt) AS
  SELECT
    ltf_agrupado.dz_id,
    ltf_agrupado.qt_vz   ltf_qt_vz,
    dz_0,
    dz_1,
    dz_2,
    count(ltf_res.dz_id) res_qt_vz
  FROM
    lotofacil.lotofacil_algarismo_na_dezena_agrupado ltf_agrupado
    LEFT JOIN lotofacil.lotofacil_id_algarismo_na_dezena ltf_alg
      ON ltf_agrupado.dz_id = ltf_alg.dz_id
    LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
      ON ltf_alg.dz_id = ltf_res.dz_id
  WHERE ltf_agrupado.ltf_qt = 15
  GROUP BY ltf_agrupado.dz_id, ltf_agrupado.qt_vz, dz_0, dz_1, dz_2
  ORDER BY res_qt_vz DESC;

/**
  Retorna a estatística de algarismo nas dezenas, em um intervalo de concursos.
  O nome da função original é:
  lotofacil.fn_lotofacil_resultado_algarismo_na_dezena_agrupado_intervalo_concurso
  Entretanto, o banco de dados ter um limite de nome de caractere em um tabela por isto foi reduzido pra:
  lotofacil.fn_ltf_res_algarismo_na_dezena_agrupado_intervalo_concurso
 */
DROP FUNCTION IF EXISTS lotofacil.fn_ltf_res_algarismo_na_dezena_agrupado_intervalo_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_ltf_res_algarismo_na_dezena_agrupado_intervalo_concurso(concursoInicial NUMERIC,
                                                                                     concursoFinal   NUMERIC)
  RETURNS TABLE(dz_id NUMERIC, ltf_qt_vz NUMERIC, dz_0 NUMERIC, dz_1 NUMERIC, dz_2 NUMERIC, res_qt NUMERIC)
AS
$$
BEGIN
  RETURN QUERY
  SELECT
    ltf_agrupado.dz_id,
    ltf_agrupado.qt_vz              ltf_qt_vz,
    ltf_alg.dz_0,
    ltf_alg.dz_1,
    ltf_alg.dz_2,
    count(ltf_res.dz_id) :: NUMERIC res_qt_vz
  FROM
    lotofacil.lotofacil_algarismo_na_dezena_agrupado ltf_agrupado
    LEFT JOIN lotofacil.lotofacil_id_algarismo_na_dezena ltf_alg
      ON ltf_agrupado.dz_id = ltf_alg.dz_id
    LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
      ON ltf_alg.dz_id = ltf_res.dz_id
         AND ltf_res.concurso >= concursoInicial
         AND ltf_res.concurso <= concursoFinal

  WHERE ltf_agrupado.ltf_qt = 15
  GROUP BY ltf_agrupado.dz_id, ltf_agrupado.qt_vz, ltf_alg.dz_0, ltf_alg.dz_1, ltf_alg.dz_2

  ORDER BY res_qt_vz DESC;
END;
$$ LANGUAGE plpgsql;

DROP VIEW IF EXISTS lotofacil.v_ltf_res_algarismo_na_dezena_por_concurso;
CREATE VIEW lotofacil.v_ltf_res_algarismo_na_dezena_por_concurso(concurso,
    dz_0,
    dz_1,
    dz_2)
  AS
    SELECT
      concurso,
      dz_0,
      dz_1,
      dz_2
    FROM lotofacil.lotofacil_resultado_id ltf_res_id,
      lotofacil.lotofacil_id_algarismo_na_dezena ltf_id_alg
    WHERE ltf_res_id.dz_id = ltf_id_alg.dz_id
    ORDER BY concurso ASC;

SELECT *
FROM lotofacil.fn_ltf_res_algarismo_na_dezena_agrupado_intervalo_concurso(1, 5);


SELECT
  ltf_id_alg.*,
  res_id.concurso
FROM lotofacil.lotofacil_id_algarismo_na_dezena ltf_id_alg
  LEFT JOIN lotofacil.lotofacil_resultado_id res_id
    ON ltf_id_alg.dz_id = res_id.dz_id
WHERE ltf_id_alg.ltf_qt = 15
      AND ltf_id_alg.dz_id IN (
  23,
  31,
  30,
  24,
  17
);

SELECT ltf_bolas.*
FROM lotofacil.lotofacil_id ltf_id, lotofacil.lotofacil_bolas ltf_bolas
WHERE ltf_id.ltf_id = ltf_bolas.ltf_id
      AND ltf_bolas.ltf_qt = 15
      AND ltf_id.dz_id IN (
  23,
  31,
  30,
  24,
  17)
