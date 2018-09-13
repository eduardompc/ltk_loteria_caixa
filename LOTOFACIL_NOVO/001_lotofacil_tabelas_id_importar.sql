DELETE FROM lotofacil.lotofacil_id_par_impar;
COPY lotofacil.lotofacil_id_par_impar (par_impar_id, par_impar_qt, par, impar) FROM '/tmp/lotofacil_id_par_impar.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );

DELETE FROM lotofacil.lotofacil_id_primo;
COPY lotofacil.lotofacil_id_primo (prm_id, prm_qt, primo, nao_primo) FROM '/tmp/lotofacil_id_primo_nao_primo.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );

DELETE FROM lotofacil.lotofacil_id_externo_interno;
COPY lotofacil.lotofacil_id_externo_interno (ext_int_id, ext_int_qt, externo, interno) FROM '/tmp/lotofacil_id_externo_interno.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );

DELETE FROM lotofacil.lotofacil_id_horizontal;
COPY lotofacil.lotofacil_id_horizontal (hrz_id, hrz_qt, hrz_1, hrz_2, hrz_3, hrz_4, hrz_5) FROM '/tmp/lotofacil_id_horizontal.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );

DELETE FROM lotofacil.lotofacil_id_vertical;
COPY lotofacil.lotofacil_id_vertical (vrt_id, vrt_qt, vrt_1, vrt_2, vrt_3, vrt_4, vrt_5) FROM '/tmp/lotofacil_id_vertical.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );

DELETE FROM lotofacil.lotofacil_id_diagonal_esquerda;
COPY lotofacil.lotofacil_id_diagonal_esquerda (dge_id, dge_qt, dge_1, dge_2, dge_3, dge_4, dge_5) FROM '/tmp/lotofacil_id_diagonal_esquerda.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );

DELETE FROM lotofacil.lotofacil_id_diagonal_direita;
COPY lotofacil.lotofacil_id_diagonal_direita (dgd_id, dgd_qt, dgd_1, dgd_2, dgd_3, dgd_4, dgd_5) FROM '/tmp/lotofacil_id_diagonal_direita.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );

DELETE FROM lotofacil.lotofacil_id_esquerda_direita;
COPY lotofacil.lotofacil_id_esquerda_direita (esq_dir_id, esq_dir_qt, esquerda, direita) FROM '/tmp/lotofacil_id_esquerda_direita.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );

DELETE FROM lotofacil.lotofacil_id_superior_inferior;
COPY lotofacil.lotofacil_id_superior_inferior (sup_inf_id, sup_inf_qt, superior, inferior) FROM '/tmp/lotofacil_id_superior_inferior.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );

DELETE FROM lotofacil.lotofacil_id_superior_esquerda_inferior_direita;
COPY lotofacil.lotofacil_id_superior_esquerda_inferior_direita (sup_esq_inf_dir_id, sup_esq_inf_dir_qt, superior_esquerda, inferior_direita) FROM '/tmp/lotofacil_id_superior_esquerda_inferior_direita.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );

DELETE FROM lotofacil.lotofacil_id_superior_direita_inferior_esquerda;
COPY lotofacil.lotofacil_id_superior_direita_inferior_esquerda (sup_dir_inf_esq_id, sup_dir_inf_esq_qt, superior_direita, inferior_esquerda) FROM '/tmp/lotofacil_id_superior_direita_inferior_esquerda.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );

DELETE FROM lotofacil.lotofacil_id_cruzeta;
COPY lotofacil.lotofacil_id_cruzeta (crz_id, crz_qt, crz_1, crz_2, crz_3, crz_4, crz_5) FROM '/tmp/lotofacil_id_cruzeta.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );

DELETE FROM lotofacil.lotofacil_id_losango;
COPY lotofacil.lotofacil_id_losango (lsng_id, lsng_qt, lsng_1, lsng_2, lsng_3, lsng_4, lsng_5) FROM '/tmp/lotofacil_id_losango.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );

DELETE FROM lotofacil.lotofacil_id_quinteto;
COPY lotofacil.lotofacil_id_quinteto (qnt_id, qnt_qt, qnt_1, qnt_2, qnt_3, qnt_4, qnt_5) FROM '/tmp/lotofacil_id_quinteto.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );

DELETE FROM lotofacil.lotofacil_id_triangulo;
COPY lotofacil.lotofacil_id_triangulo (trng_id, trng_qt, trng_1, trng_2, trng_3, trng_4) FROM '/tmp/lotofacil_id_triangulo.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );

DELETE FROM lotofacil.lotofacil_id_trio;
COPY lotofacil.lotofacil_id_trio (trio_id, tr_qt, tr_1, tr_2, tr_3, tr_4, tr_5, tr_6, tr_7, tr_8) FROM '/tmp/lotofacil_id_trio.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );

DELETE FROM lotofacil.lotofacil_id_x1_x2;
COPY lotofacil.lotofacil_id_x1_x2 (x1_x2_id, x1_x2_qt, x1_x2_1, x1_x2_2) FROM '/tmp/lotofacil_id_x1_x2.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );

DELETE FROM lotofacil.lotofacil_id_dezena;
COPY lotofacil.lotofacil_id_dezena (dz_id, dz_qt, dz_0, dz_1, dz_2) FROM '/tmp/lotofacil_id_dezena.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );

DELETE FROM lotofacil.lotofacil_id_unidade;
COPY lotofacil.lotofacil_id_unidade (un_id, un_qt, un_0, un_1, un_2, un_3, un_4, un_5, un_6, un_7, un_8, un_9) FROM '/tmp/lotofacil_id_unidade.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );

DELETE FROM lotofacil.lotofacil_id_algarismo;
COPY lotofacil.lotofacil_id_algarismo (alg_id, alg_0, alg_1, alg_2, alg_3, alg_4, alg_5, alg_6, alg_7, alg_8, alg_9) FROM '/tmp/lotofacil_id_algarismo.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );

DELETE FROM lotofacil.lotofacil_id_soma_de_bolas;
COPY lotofacil.lotofacil_id_soma_de_bolas (sm_bolas_id, soma_de_bolas) FROM '/tmp/lotofacil_id_soma_de_bolas.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );

DELETE FROM lotofacil.lotofacil_id_soma_algarismo;
COPY lotofacil.lotofacil_id_soma_algarismo (sm_alg_id, algarismo) FROM '/tmp/lotofacil_id_soma_de_algarismo.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );

DELETE FROM lotofacil.lotofacil_id_linha_coluna;
COPY lotofacil.lotofacil_id_linha_coluna (lc_id, lc_1, lc_2, lc_3, lc_4, lc_5) FROM '/tmp/lotofacil_id_linha_coluna.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );


DELETE FROM lotofacil.lotofacil_id;
ALTER TABLE lotofacil.lotofacil_id
  DROP CONSTRAINT lotofacil_id_fk_1;
ALTER TABLE lotofacil.lotofacil_id
  DROP CONSTRAINT lotofacil_id_fk_2;
ALTER TABLE lotofacil.lotofacil_id
  DROP CONSTRAINT lotofacil_id_fk_3;
ALTER TABLE lotofacil.lotofacil_id
  DROP CONSTRAINT lotofacil_id_fk_4;
ALTER TABLE lotofacil.lotofacil_id
  DROP CONSTRAINT lotofacil_id_fk_5;
ALTER TABLE lotofacil.lotofacil_id
  DROP CONSTRAINT lotofacil_id_fk_6;
ALTER TABLE lotofacil.lotofacil_id
  DROP CONSTRAINT lotofacil_id_fk_7;
ALTER TABLE lotofacil.lotofacil_id
  DROP CONSTRAINT lotofacil_id_fk_8;
ALTER TABLE lotofacil.lotofacil_id
  DROP CONSTRAINT lotofacil_id_fk_9;
ALTER TABLE lotofacil.lotofacil_id
  DROP CONSTRAINT lotofacil_id_fk_10;
ALTER TABLE lotofacil.lotofacil_id
  DROP CONSTRAINT lotofacil_id_fk_11;
ALTER TABLE lotofacil.lotofacil_id
  DROP CONSTRAINT lotofacil_id_fk_12;
ALTER TABLE lotofacil.lotofacil_id
  DROP CONSTRAINT lotofacil_id_fk_13;
ALTER TABLE lotofacil.lotofacil_id
  DROP CONSTRAINT lotofacil_id_fk_14;
ALTER TABLE lotofacil.lotofacil_id
  DROP CONSTRAINT lotofacil_id_fk_15;
ALTER TABLE lotofacil.lotofacil_id
  DROP CONSTRAINT lotofacil_id_fk_16;
ALTER TABLE lotofacil.lotofacil_id
  DROP CONSTRAINT lotofacil_id_fk_17;
ALTER TABLE lotofacil.lotofacil_id
  DROP CONSTRAINT lotofacil_id_fk_18;
ALTER TABLE lotofacil.lotofacil_id
  DROP CONSTRAINT lotofacil_id_fk_19;
ALTER TABLE lotofacil.lotofacil_id
  DROP CONSTRAINT lotofacil_id_fk_20;
ALTER TABLE lotofacil.lotofacil_id
  DROP CONSTRAINT lotofacil_id_fk_21;
ALTER TABLE lotofacil.lotofacil_id
  DROP CONSTRAINT lotofacil_id_fk_22;
ALTER TABLE lotofacil.lotofacil_id
  DROP CONSTRAINT lotofacil_id_fk_23;
ALTER TABLE lotofacil.lotofacil_id
  DROP CONSTRAINT lotofacil_id_fk_24;

DROP INDEX IF EXISTS lotofacil_id_idx_1;
DROP INDEX IF EXISTS lotofacil_id_idx_2;
DROP INDEX IF EXISTS lotofacil_id_idx_3;
DROP INDEX IF EXISTS lotofacil_id_idx_4;
DROP INDEX IF EXISTS lotofacil_id_idx_5;
DROP INDEX IF EXISTS lotofacil_id_idx_6;
DROP INDEX IF EXISTS lotofacil_id_idx_7;
DROP INDEX IF EXISTS lotofacil_id_idx_8;
DROP INDEX IF EXISTS lotofacil_id_idx_9;
DROP INDEX IF EXISTS lotofacil_id_idx_10;

DROP INDEX IF EXISTS lotofacil_id_idx_11;
DROP INDEX IF EXISTS lotofacil_id_idx_12;
DROP INDEX IF EXISTS lotofacil_id_idx_13;
DROP INDEX IF EXISTS lotofacil_id_idx_14;
DROP INDEX IF EXISTS lotofacil_id_idx_15;
DROP INDEX IF EXISTS lotofacil_id_idx_16;
DROP INDEX IF EXISTS lotofacil_id_idx_17;
DROP INDEX IF EXISTS lotofacil_id_idx_18;
DROP INDEX IF EXISTS lotofacil_id_idx_19;

DROP INDEX IF EXISTS lotofacil_id_idx_21;
DROP INDEX IF EXISTS lotofacil_id_idx_22;
DROP INDEX IF EXISTS lotofacil_id_idx_23;
DROP INDEX IF EXISTS lotofacil_id_idx_24;
DROP INDEX IF EXISTS lotofacil_id_idx_25;

COPY lotofacil.lotofacil_id (ltf_id, ltf_qt, par_impar_id, prm_id, ext_int_id, hrz_id, vrt_id, dge_id, dgd_id, esq_dir_id, sup_inf_id, sup_esq_inf_dir_id, sup_dir_inf_esq_id, crz_id, lsng_id, qnt_id, trng_id, trio_id, x1_x2_id, dz_id, un_id, alg_id, sm_bolas_id, sm_alg_id, lc_id)
FROM '/tmp/lotofacil_id.csv' WITH (
DELIMITER ';', FORMAT CSV, HEADER TRUE );

ALTER TABLE lotofacil.lotofacil_id
  ADD CONSTRAINT lotofacil_id_fk_1 FOREIGN KEY (ltf_id) REFERENCES lotofacil.lotofacil_num (ltf_id) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE lotofacil.lotofacil_id
  ADD CONSTRAINT lotofacil_id_fk_2 FOREIGN KEY (par_impar_id) REFERENCES lotofacil.lotofacil_id_par_impar (par_impar_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE lotofacil.lotofacil_id
  ADD CONSTRAINT lotofacil_id_fk_3 FOREIGN KEY (ext_int_id) REFERENCES lotofacil.lotofacil_id_externo_interno (ext_int_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE lotofacil.lotofacil_id
  ADD CONSTRAINT lotofacil_id_fk_4 FOREIGN KEY (prm_id) REFERENCES lotofacil.lotofacil_id_primo (prm_id) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE lotofacil.lotofacil_id
  ADD CONSTRAINT lotofacil_id_fk_5 FOREIGN KEY (hrz_id) REFERENCES lotofacil.lotofacil_id_horizontal (hrz_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE lotofacil.lotofacil_id
  ADD CONSTRAINT lotofacil_id_fk_6 FOREIGN KEY (vrt_id) REFERENCES lotofacil.lotofacil_id_vertical (vrt_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE lotofacil.lotofacil_id
  ADD CONSTRAINT lotofacil_id_fk_7 FOREIGN KEY (dge_id) REFERENCES lotofacil.lotofacil_id_diagonal_esquerda (dge_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE lotofacil.lotofacil_id
  ADD CONSTRAINT lotofacil_id_fk_8 FOREIGN KEY (dgd_id) REFERENCES lotofacil.lotofacil_id_diagonal_direita (dgd_id) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE lotofacil.lotofacil_id
  ADD CONSTRAINT lotofacil_id_fk_9 FOREIGN KEY (esq_dir_id) REFERENCES lotofacil.lotofacil_id_esquerda_direita (esq_dir_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE lotofacil.lotofacil_id
  ADD CONSTRAINT lotofacil_id_fk_10 FOREIGN KEY (sup_inf_id) REFERENCES lotofacil.lotofacil_id_superior_inferior (sup_inf_id) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE lotofacil.lotofacil_id
  ADD CONSTRAINT lotofacil_id_fk_11 FOREIGN KEY (sup_esq_inf_dir_id) REFERENCES lotofacil.lotofacil_id_superior_esquerda_inferior_direita (sup_esq_inf_dir_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE lotofacil.lotofacil_id
  ADD CONSTRAINT lotofacil_id_fk_12 FOREIGN KEY (sup_dir_inf_esq_id) REFERENCES lotofacil.lotofacil_id_superior_direita_inferior_esquerda (sup_dir_inf_esq_id) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE lotofacil.lotofacil_id
  ADD CONSTRAINT lotofacil_id_fk_13 FOREIGN KEY (crz_id) REFERENCES lotofacil.lotofacil_id_cruzeta (crz_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE lotofacil.lotofacil_id
  ADD CONSTRAINT lotofacil_id_fk_14 FOREIGN KEY (lsng_id) REFERENCES lotofacil.lotofacil_id_losango (lsng_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE lotofacil.lotofacil_id
  ADD CONSTRAINT lotofacil_id_fk_15 FOREIGN KEY (qnt_id) REFERENCES lotofacil.lotofacil_id_quinteto (qnt_id) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE lotofacil.lotofacil_id
  ADD CONSTRAINT lotofacil_id_fk_16 FOREIGN KEY (trng_id) REFERENCES lotofacil.lotofacil_id_triangulo (trng_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE lotofacil.lotofacil_id
  ADD CONSTRAINT lotofacil_id_fk_17 FOREIGN KEY (trio_id) REFERENCES lotofacil.lotofacil_id_trio (trio_id) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE lotofacil.lotofacil_id
  ADD CONSTRAINT lotofacil_id_fk_18 FOREIGN KEY (x1_x2_id) REFERENCES lotofacil.lotofacil_id_x1_x2 (x1_x2_id) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE lotofacil.lotofacil_id
  ADD CONSTRAINT lotofacil_id_fk_19 FOREIGN KEY (dz_id) REFERENCES lotofacil.lotofacil_id_dezena (dz_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE lotofacil.lotofacil_id
  ADD CONSTRAINT lotofacil_id_fk_20 FOREIGN KEY (un_id) REFERENCES lotofacil.lotofacil_id_unidade (un_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE lotofacil.lotofacil_id
  ADD CONSTRAINT lotofacil_id_fk_21 FOREIGN KEY (alg_id) REFERENCES lotofacil.lotofacil_id_algarismo (alg_id) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE lotofacil.lotofacil_id
  ADD CONSTRAINT lotofacil_id_fk_22 FOREIGN KEY (sm_bolas_id) REFERENCES lotofacil.lotofacil_id_soma_de_bolas (sm_bolas_id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE lotofacil.lotofacil_id
  ADD CONSTRAINT lotofacil_id_fk_23 FOREIGN KEY (sm_alg_id) REFERENCES lotofacil.lotofacil_id_soma_algarismo (sm_alg_id) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE lotofacil.lotofacil_id
  ADD CONSTRAINT lotofacil_id_fk_24 FOREIGN KEY (lc_id) REFERENCES lotofacil.lotofacil_id_linha_coluna (lc_id) ON UPDATE CASCADE ON DELETE CASCADE;


CREATE INDEX lotofacil_id_idx_1
  ON lotofacil.lotofacil_id (ltf_id);
CREATE INDEX lotofacil_id_idx_2
  ON lotofacil.lotofacil_id (ltf_qt);
CREATE INDEX lotofacil_id_idx_3
  ON lotofacil.lotofacil_id (par_impar_id);
CREATE INDEX lotofacil_id_idx_4
  ON lotofacil.lotofacil_id (prm_id);
CREATE INDEX lotofacil_id_idx_5
  ON lotofacil.lotofacil_id (ext_int_id);
CREATE INDEX lotofacil_id_idx_6
  ON lotofacil.lotofacil_id (hrz_id);
CREATE INDEX lotofacil_id_idx_7
  ON lotofacil.lotofacil_id (vrt_id);
CREATE INDEX lotofacil_id_idx_8
  ON lotofacil.lotofacil_id (dge_id);
CREATE INDEX lotofacil_id_idx_9
  ON lotofacil.lotofacil_id (dgd_id);
CREATE INDEX lotofacil_id_idx_10
  ON lotofacil.lotofacil_id (esq_dir_id);
CREATE INDEX lotofacil_id_idx_11
  ON lotofacil.lotofacil_id (sup_inf_id);
CREATE INDEX lotofacil_id_idx_12
  ON lotofacil.lotofacil_id (sup_esq_inf_dir_id);
CREATE INDEX lotofacil_id_idx_13
  ON lotofacil.lotofacil_id (sup_dir_inf_esq_id);
CREATE INDEX lotofacil_id_idx_14
  ON lotofacil.lotofacil_id (crz_id);
CREATE INDEX lotofacil_id_idx_15
  ON lotofacil.lotofacil_id (lsng_id);
CREATE INDEX lotofacil_id_idx_16
  ON lotofacil.lotofacil_id (qnt_id);
CREATE INDEX lotofacil_id_idx_17
  ON lotofacil.lotofacil_id (trng_id);
CREATE INDEX lotofacil_id_idx_18
  ON lotofacil.lotofacil_id (trio_id);
CREATE INDEX lotofacil_id_idx_19
  ON lotofacil.lotofacil_id (x1_x2_id);
CREATE INDEX lotofacil_id_idx_20
  ON lotofacil.lotofacil_id (dz_id);
CREATE INDEX lotofacil_id_idx_21
  ON lotofacil.lotofacil_id (un_id);
CREATE INDEX lotofacil_id_idx_22
  ON lotofacil.lotofacil_id (alg_id);
CREATE INDEX lotofacil_id_idx_23
  ON lotofacil.lotofacil_id (sm_bolas_id);
CREATE INDEX lotofacil_id_idx_24
  ON lotofacil.lotofacil_id (sm_alg_id);
CREATE INDEX lotofacil_id_idx_25
  ON lotofacil.lotofacil_id (lc_id);


/**
  No caso da tabela lotofacil_id_novos_repetidos, devemos criar uma function pra popular
  os dados, há no jogo
 */
Drop function if exists lotofacil.fn_lotofacil_id_novos_repetidos();
Create function lotofacil.fn_lotofacil_id_novos_repetidos() returns void
  language plpgsql
  as $$
  declare
    qt_novos numeric;
    qt_repetios numeric;
  begin
    Delete from lotofacil.lotofacil_id_novos_repetidos;
    for qt_novos in 0..10 LOOP
      for qt_repetidos in 0..15 LOOP
        if qt_novos + qt_repetidos = 15 THEN
          Insert into lotofacil.lotofacil_id_novos_repetidos (novos_repetidos_id, novos, repetidos)
            values(qt_novos, qt_novos, qt_repetidos);
        END IF;
      END LOOP;
    END LOOP;

  end;
  $$;
Select from lotofacil.fn_lotofacil_id_novos_repetidos();


