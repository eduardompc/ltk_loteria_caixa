/**
  Tabela que armazena os ids pra cada grupo.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_combinacoes_em_grupos;
CREATE TABLE lotofacil.lotofacil_combinacoes_em_grupos (
  ltf_id    NUMERIC  NOT NULL PRIMARY KEY,
  ltf_qt    SMALLINT NOT NULL CHECK (ltf_qt BETWEEN 7 AND 7),
  id_grupo      NUMERIC DEFAULT -1,
  id_seq_cmb_em_grupos NUMERIC DEFAULT 0
);

/**
  Cria os índices pra aumentar o desempenho.
 */
drop index if exists lotofacil_combinacoes_em_grupos_idx_1;
drop index if exists lotofacil_combinacoes_em_grupos_idx_2;
drop index if exists lotofacil_combinacoes_em_grupos_idx_3;
create index lotofacil_combinacoes_em_grupos_idx_1 on lotofacil.lotofacil_combinacoes_em_grupos(ltf_id);
create index lotofacil_combinacoes_em_grupos_idx_2 on lotofacil.lotofacil_combinacoes_em_grupos(id_grupo);
create index lotofacil_combinacoes_em_grupos_idx_3 on lotofacil.lotofacil_combinacoes_em_grupos(id_seq_cmb_em_grupos);


copy lotofacil.lotofacil_combinacoes_em_grupos(ltf_id, ltf_qt, id_grupo, id_seq_cmb_em_grupos)
    from '/tmp/lotofacil_combinacoes_em_grupos.csv' with (DELIMITER ';', format csv, header true);


