/**
  Neste arquivo estão as tabelas que armazenam os resultados do jogo dia de sorte.
 */

DROP TABLE IF EXISTS d_sorte.d_sorte_resultado_num cascade;
CREATE TABLE d_sorte.d_sorte_resultado_num (
  concurso NUMERIC NOT NULL,
  data     DATE    NOT NULL,

  num_1    smallint DEFAULT 0 CHECK (num_1 IN (0, 1)),
  num_2    smallint DEFAULT 0 CHECK (num_2 IN (0, 1)),
  num_3    smallint DEFAULT 0 CHECK (num_3 IN (0, 1)),
  num_4    smallint DEFAULT 0 CHECK (num_4 IN (0, 1)),
  num_5    smallint DEFAULT 0 CHECK (num_5 IN (0, 1)),
  num_6    smallint DEFAULT 0 CHECK (num_6 IN (0, 1)),
  num_7    smallint DEFAULT 0 CHECK (num_7 IN (0, 1)),
  num_8    smallint DEFAULT 0 CHECK (num_8 IN (0, 1)),
  num_9    smallint DEFAULT 0 CHECK (num_9 IN (0, 1)),
  num_10   smallint DEFAULT 0 CHECK (num_10 IN (0, 1)),
  num_11   smallint DEFAULT 0 CHECK (num_11 IN (0, 1)),
  num_12   smallint DEFAULT 0 CHECK (num_12 IN (0, 1)),
  num_13   smallint DEFAULT 0 CHECK (num_13 IN (0, 1)),
  num_14   smallint DEFAULT 0 CHECK (num_14 IN (0, 1)),
  num_15   smallint DEFAULT 0 CHECK (num_15 IN (0, 1)),
  num_16   smallint DEFAULT 0 CHECK (num_16 IN (0, 1)),
  num_17   smallint DEFAULT 0 CHECK (num_17 IN (0, 1)),
  num_18   smallint DEFAULT 0 CHECK (num_18 IN (0, 1)),
  num_19   smallint DEFAULT 0 CHECK (num_19 IN (0, 1)),
  num_20   smallint DEFAULT 0 CHECK (num_20 IN (0, 1)),
  num_21   smallint DEFAULT 0 CHECK (num_21 IN (0, 1)),
  num_22   smallint DEFAULT 0 CHECK (num_22 IN (0, 1)),
  num_23   smallint DEFAULT 0 CHECK (num_23 IN (0, 1)),
  num_24   smallint DEFAULT 0 CHECK (num_24 IN (0, 1)),
  num_25   smallint DEFAULT 0 CHECK (num_25 IN (0, 1)),
  num_26   smallint DEFAULT 0 CHECK (num_26 IN (0, 1)),
  num_27   smallint DEFAULT 0 CHECK (num_27 IN (0, 1)),
  num_28   smallint DEFAULT 0 CHECK (num_28 IN (0, 1)),
  num_29   smallint DEFAULT 0 CHECK (num_29 IN (0, 1)),
  num_30   smallint DEFAULT 0 CHECK (num_30 IN (0, 1)),
  num_31   smallint DEFAULT 0 CHECK (num_31 IN (0, 1)),


  CONSTRAINT d_sorte_resultado_num_chk CHECK (
    (num_1 + num_2 + num_3 + num_4 + num_5 + num_6 + num_7 + num_8 + num_9 + num_10 +
     num_11 + num_12 + num_13 + num_14 + num_15 + num_16 + num_17 + num_18 + num_19 + num_20 +
     num_21 + num_22 + num_23 + num_24 + num_25 + num_26 + num_27 + num_28 + num_29 + num_30 +
    num_31) = 7),

  CONSTRAINT d_sorte_resultado_pk PRIMARY KEY (concurso)

);
COMMENT ON TABLE d_sorte.d_sorte_resultado_num IS
'Esta é a tabela inicial, que são armazenados os resultados da d_sorte, '
'os campos num_0 a num_99 corresponde respectivamentes às bolas 0 a 99 do d_sorte,'
'o campo terá o valor 1, se a bola foi sorteada, 0 (zero) caso contrário.'
'Tem que ser sorteado 20 números, senão a restrição de verificação não irá deixar inserir o registro.';

CREATE INDEX d_sorte_resultado_num_idx_1
  ON d_sorte.d_sorte_resultado_num (num_1);
CREATE INDEX d_sorte_resultado_num_idx_2
  ON d_sorte.d_sorte_resultado_num (num_2);
CREATE INDEX d_sorte_resultado_num_idx_3
  ON d_sorte.d_sorte_resultado_num (num_3);
CREATE INDEX d_sorte_resultado_num_idx_4
  ON d_sorte.d_sorte_resultado_num (num_4);
CREATE INDEX d_sorte_resultado_num_idx_5
  ON d_sorte.d_sorte_resultado_num (num_5);
CREATE INDEX d_sorte_resultado_num_idx_6
  ON d_sorte.d_sorte_resultado_num (num_6);
CREATE INDEX d_sorte_resultado_num_idx_7
  ON d_sorte.d_sorte_resultado_num (num_7);
CREATE INDEX d_sorte_resultado_num_idx_8
  ON d_sorte.d_sorte_resultado_num (num_8);
CREATE INDEX d_sorte_resultado_num_idx_9
  ON d_sorte.d_sorte_resultado_num (num_9);
CREATE INDEX d_sorte_resultado_num_idx_10
  ON d_sorte.d_sorte_resultado_num (num_10);
CREATE INDEX d_sorte_resultado_num_idx_11
  ON d_sorte.d_sorte_resultado_num (num_11);
CREATE INDEX d_sorte_resultado_num_idx_12
  ON d_sorte.d_sorte_resultado_num (num_12);
CREATE INDEX d_sorte_resultado_num_idx_13
  ON d_sorte.d_sorte_resultado_num (num_13);
CREATE INDEX d_sorte_resultado_num_idx_14
  ON d_sorte.d_sorte_resultado_num (num_14);
CREATE INDEX d_sorte_resultado_num_idx_15
  ON d_sorte.d_sorte_resultado_num (num_15);
CREATE INDEX d_sorte_resultado_num_idx_16
  ON d_sorte.d_sorte_resultado_num (num_16);
CREATE INDEX d_sorte_resultado_num_idx_17
  ON d_sorte.d_sorte_resultado_num (num_17);
CREATE INDEX d_sorte_resultado_num_idx_18
  ON d_sorte.d_sorte_resultado_num (num_18);
CREATE INDEX d_sorte_resultado_num_idx_19
  ON d_sorte.d_sorte_resultado_num (num_19);
CREATE INDEX d_sorte_resultado_num_idx_20
  ON d_sorte.d_sorte_resultado_num (num_20);
CREATE INDEX d_sorte_resultado_num_idx_21
  ON d_sorte.d_sorte_resultado_num (num_21);
CREATE INDEX d_sorte_resultado_num_idx_22
  ON d_sorte.d_sorte_resultado_num (num_22);
CREATE INDEX d_sorte_resultado_num_idx_23
  ON d_sorte.d_sorte_resultado_num (num_23);
CREATE INDEX d_sorte_resultado_num_idx_24
  ON d_sorte.d_sorte_resultado_num (num_24);
CREATE INDEX d_sorte_resultado_num_idx_25
  ON d_sorte.d_sorte_resultado_num (num_25);
CREATE INDEX d_sorte_resultado_num_idx_26
  ON d_sorte.d_sorte_resultado_num (num_26);
CREATE INDEX d_sorte_resultado_num_idx_27
  ON d_sorte.d_sorte_resultado_num (num_27);
CREATE INDEX d_sorte_resultado_num_idx_28
  ON d_sorte.d_sorte_resultado_num (num_28);
CREATE INDEX d_sorte_resultado_num_idx_29
  ON d_sorte.d_sorte_resultado_num (num_29);
CREATE INDEX d_sorte_resultado_num_idx_30
  ON d_sorte.d_sorte_resultado_num (num_30);
CREATE INDEX d_sorte_resultado_num_idx_31
  ON d_sorte.d_sorte_resultado_num (num_31);
CREATE INDEX d_sorte_resultado_num_idx_32
  ON d_sorte.d_sorte_resultado_num (
    num_1, num_2, num_3, num_4, num_5, num_6, num_7, num_8, num_9, num_10,
    num_11, num_12, num_13, num_14, num_15, num_16, num_17, num_18, num_19, num_20,
    num_21, num_22, num_23, num_24, num_25, num_26, num_27, num_28, num_29, num_30,
    num_31
  );


/*
  Nesta tabela, será armazenada, todos os concursos já realizados.
  O usuário não deve inserir dados nesta tabela, ela é populado através de um trigger
  que toda vez que a tabela d_sorte_resultado_num for inserida, os dados são
  inseridos automaticamente neste tabela, o mesmo ocorrendo no caso de atualização ou
  exclusão de registros.
 */
DROP TABLE IF EXISTS d_sorte.d_sorte_resultado_bolas;
CREATE TABLE d_sorte.d_sorte_resultado_bolas (
  concurso NUMERIC NOT NULL,

  b_1      NUMERIC DEFAULT 0,
  b_2      NUMERIC DEFAULT 0,
  b_3      NUMERIC DEFAULT 0,
  b_4      NUMERIC DEFAULT 0,
  b_5      NUMERIC DEFAULT 0,
  b_6      NUMERIC DEFAULT 0,
  b_7      NUMERIC DEFAULT 0,

  CONSTRAINT d_sorte_resultado_bolas_pk PRIMARY KEY (concurso),
  CONSTRAINT d_sorte_resultado_bolas_fk FOREIGN KEY (concurso) REFERENCES d_sorte.d_sorte_resultado_num (concurso)
  ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT d_sorte_resultado_bolas_chk CHECK (
    (b_1 < b_2) AND
    (b_2 < b_3) AND
    (b_3 < b_4) AND
    (b_4 < b_5) AND
    (b_5 < b_6) AND
    (b_6 < b_7)
  )
);

/**
  Ao invés de ter uma tabela de resultado pra cada tipo de combinação, por exemplo,
  d_sorte_resultado_par_impar
  d_sorte_resultado_primo.
  Achei, mais lógico, ter uma única tabela, com um campo pra cada tipo de combinação,
  este campo armazenará o id da combinação.
  Fica bem mais rápido, pois, iremos recuperar todos os dados
  da tabela d_sorte_id, que contém 
 */
DROP TABLE IF EXISTS d_sorte.d_sorte_resultado_id CASCADE;
CREATE TABLE d_sorte.d_sorte_resultado_id (
  concurso            NUMERIC NOT NULL PRIMARY KEY,
  d_sorte_id              NUMERIC NOT NULL,

  par_impar_id numeric not null,
  prm_id numeric not null,

  ext_int_id numeric not null,

  hrz_id numeric not null,
  vrt_id numeric not null,

  dge_id numeric not null,
  dgd_id numeric not null,

  qd_id numeric not null,

  esq_dir_id numeric not null,
  sup_inf_id numeric not null,

  un_id numeric not null,
  dz_id numeric not null,
  alg_id numeric not null,

  sm_bolas numeric not null,
  sm_alg numeric not null,

  CONSTRAINT d_sorte_resultado_fk1 FOREIGN KEY (d_sorte_id) REFERENCES d_sorte.d_sorte_num (d_sorte_id) ON UPDATE CASCADE ON DELETE CASCADE,
  -- CONSTRAINT d_sorte_resultado_fk2 FOREIGN KEY (ltf_qt) references d_sorte.d_sorte_num(ltf_id) on update cascade on delete cascade,
  CONSTRAINT d_sorte_resultado_fk3 FOREIGN KEY (par_impar_id) REFERENCES d_sorte.d_sorte_id_par_impar (par_impar_id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT d_sorte_resultado_fk4 FOREIGN KEY (ext_int_id) REFERENCES d_sorte.d_sorte_id_externo_interno (ext_int_id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT d_sorte_resultado_fk5 FOREIGN KEY (prm_id) REFERENCES d_sorte.d_sorte_id_primo_nao_primo (prm_id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT d_sorte_resultado_fk6 FOREIGN KEY (hrz_id) REFERENCES d_sorte.d_sorte_id_horizontal (hrz_id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT d_sorte_resultado_fk7 FOREIGN KEY (vrt_id) REFERENCES d_sorte.d_sorte_id_vertical (vrt_id) ON UPDATE CASCADE ON DELETE CASCADE,

  CONSTRAINT d_sorte_resultado_fk9 FOREIGN KEY (dge_id) REFERENCES d_sorte.d_sorte_id_diagonal_esquerda (dge_id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT d_sorte_resultado_fk10 FOREIGN KEY (dgd_id) REFERENCES d_sorte.d_sorte_id_diagonal_direita (dgd_id) ON UPDATE CASCADE ON DELETE CASCADE,

  CONSTRAINT d_sorte_resultado_fk11 FOREIGN KEY (esq_dir_id) REFERENCES d_sorte.d_sorte_id_esquerda_direita (esq_dir_id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT d_sorte_resultado_fk12 FOREIGN KEY (sup_inf_id) REFERENCES d_sorte.d_sorte_id_superior_inferior (sup_inf_id) ON UPDATE CASCADE ON DELETE CASCADE,

  CONSTRAINT d_sorte_resultado_fk13 FOREIGN KEY (un_id) REFERENCES d_sorte.d_sorte_id_unidade (un_id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT d_sorte_resultado_fk14 FOREIGN KEY (dz_id) REFERENCES d_sorte.d_sorte_id_dezena (dz_id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT d_sorte_resultado_fk15 FOREIGN KEY (alg_id) REFERENCES d_sorte.d_sorte_id_algarismo (alg_id) ON UPDATE CASCADE ON DELETE CASCADE
);

