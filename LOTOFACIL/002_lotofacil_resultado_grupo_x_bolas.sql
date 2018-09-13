
/**
  A tabela de resultado de grupo 1 bola, praticamente, o id corresponde à própria bola.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_grupo_1_bola;
CREATE TABLE lotofacil.lotofacil_resultado_grupo_1_bola (
  concurso NUMERIC NOT NULL,
  grp_id   NUMERIC NOT NULL,
  CONSTRAINT lotofacil_resultado_grupo_1_bola_unk UNIQUE (concurso, grp_id),
  CONSTRAINT lotofacil_resultado_grupo_1_bola_FK
  FOREIGN KEY (grp_id) REFERENCES lotofacil.lotofacil_id_grupo_1_bola (grp_id) ON UPDATE CASCADE
);
COMMENT ON CONSTRAINT lotofacil_resultado_grupo_1_bola_FK
ON lotofacil.lotofacil_resultado_grupo_1_bola
IS 'Se o id do grupo na tabela lotofacil_id_grupo_1 atualizar, devemos atualizar as tabelas dependentes,'
'percebe-se que não é possível deletar um id de grupo da tabela lotofacil_id_grupo_1 enquanto houver '
'registros na tabela que depende dela';

/*
alter table lotofacil.lotofacil_resultado_grupo_1_bola drop constraint lotofacil_resultado_grupo_1_bola_FK;
alter table lotofacil.lotofacil_resultado_grupo_10_bolas add constraint lotofacil_resultado_grupo_10_bola_FK
  FOREIGN KEY (grp_id) REFERENCES lotofacil.lotofacil_id_grupo_10_bolas(grp_id) on update cascade;
  */

DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_grupo_2_bolas;
CREATE TABLE lotofacil.lotofacil_resultado_grupo_2_bolas (
  concurso NUMERIC NOT NULL,
  grp_id   NUMERIC NOT NULL,
  CONSTRAINT lotofacil_resultado_grupo_2_bolas_unk UNIQUE (concurso, grp_id),
  CONSTRAINT lotofacil_resultado_grupo_2_bolas_FK FOREIGN KEY (grp_id) REFERENCES lotofacil.lotofacil_id_grupo_2_bolas (grp_id) ON UPDATE CASCADE
);

DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_grupo_3_bolas;
CREATE TABLE lotofacil.lotofacil_resultado_grupo_3_bolas (
  concurso NUMERIC NOT NULL,
  grp_id   NUMERIC NOT NULL,
  CONSTRAINT lotofacil_resultado_grupo_3_bolas_unk UNIQUE (concurso, grp_id),
  CONSTRAINT lotofacil_resultado_grupo_3_bolas_FK FOREIGN KEY (grp_id) REFERENCES lotofacil.lotofacil_id_grupo_3_bolas (grp_id) ON UPDATE CASCADE

);

DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_grupo_4_bolas;
CREATE TABLE lotofacil.lotofacil_resultado_grupo_4_bolas (
  concurso NUMERIC NOT NULL,
  grp_id   NUMERIC NOT NULL,
  CONSTRAINT lotofacil_resultado_grupo_4_bolas_unk UNIQUE (concurso, grp_id),
  CONSTRAINT lotofacil_resultado_grupo_4_bolas_FK FOREIGN KEY (grp_id) REFERENCES lotofacil.lotofacil_id_grupo_4_bolas (grp_id) ON UPDATE CASCADE
);

DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_grupo_5_bolas;
CREATE TABLE lotofacil.lotofacil_resultado_grupo_5_bolas (
  concurso NUMERIC NOT NULL,
  grp_id   NUMERIC NOT NULL,
  CONSTRAINT lotofacil_resultado_grupo_5_bolas_unk UNIQUE (concurso, grp_id),
  CONSTRAINT lotofacil_resultado_grupo_5_bolas_FK FOREIGN KEY (grp_id) REFERENCES lotofacil.lotofacil_id_grupo_5_bolas (grp_id) ON UPDATE CASCADE
);


DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_grupo_6_bolas;
CREATE TABLE lotofacil.lotofacil_resultado_grupo_6_bolas (
  concurso NUMERIC NOT NULL,
  grp_id   NUMERIC NOT NULL,
  CONSTRAINT lotofacil_resultado_grupo_6_bolas_unk UNIQUE (concurso, grp_id),
  CONSTRAINT lotofacil_resultado_grupo_6_bolas_FK FOREIGN KEY (grp_id) REFERENCES lotofacil.lotofacil_id_grupo_6_bolas (grp_id) ON UPDATE CASCADE
);

DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_grupo_7_bolas;
CREATE TABLE lotofacil.lotofacil_resultado_grupo_7_bolas (
  concurso NUMERIC NOT NULL,
  grp_id   NUMERIC NOT NULL,
  CONSTRAINT lotofacil_resultado_grupo_7_bolas_unk UNIQUE (concurso, grp_id),
  CONSTRAINT lotofacil_resultado_grupo_7_bolas_FK FOREIGN KEY (grp_id) REFERENCES lotofacil.lotofacil_id_grupo_7_bolas (grp_id) ON UPDATE CASCADE
);

DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_grupo_8_bolas;
CREATE TABLE lotofacil.lotofacil_resultado_grupo_8_bolas (
  concurso NUMERIC NOT NULL,
  grp_id   NUMERIC NOT NULL,
  CONSTRAINT lotofacil_resultado_grupo_8_bolas_unk UNIQUE (concurso, grp_id),
  CONSTRAINT lotofacil_resultado_grupo_8_bolas_FK FOREIGN KEY (grp_id) REFERENCES lotofacil.lotofacil_id_grupo_8_bolas (grp_id) ON UPDATE CASCADE
);

DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_grupo_9_bolas;
CREATE TABLE lotofacil.lotofacil_resultado_grupo_9_bolas (
  concurso NUMERIC NOT NULL,
  grp_id   NUMERIC NOT NULL,
  CONSTRAINT lotofacil_resultado_grupo_9_bolas_unk UNIQUE (concurso, grp_id),
  CONSTRAINT lotofacil_resultado_grupo_9_bolas_FK FOREIGN KEY (grp_id) REFERENCES lotofacil.lotofacil_id_grupo_9_bolas (grp_id) ON UPDATE CASCADE
);

DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_grupo_10_bolas;
CREATE TABLE lotofacil.lotofacil_resultado_grupo_10_bolas (
  concurso NUMERIC NOT NULL,
  grp_id   NUMERIC NOT NULL,
  CONSTRAINT lotofacil_resultado_grupo_10_bolas_unk UNIQUE (concurso, grp_id),
  CONSTRAINT lotofacil_resultado_grupo_10_bolas_FK FOREIGN KEY (grp_id) REFERENCES lotofacil.lotofacil_id_grupo_10_bolas (grp_id) ON UPDATE CASCADE
);
