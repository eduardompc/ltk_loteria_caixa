/**
  Neste arquivo, está armazena as tabelas que armazena os resultados de cada concurso da lotofacil.
  Autor:  Fábio Moura de Oliveira.
 */

/**
  Apaga as views, pois ela depende das tabelas deste arquivo.
 */

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_par_impar;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_par_impar_detalhado;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_externo_interno;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_externo_interno_detalhado;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_primo;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_primo_detalhado;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_horizontal;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_horizontal_detalhado;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_vertical;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_vertical_detalhado;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_diagonal;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_diagonal_detalhado;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_cruzeta;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_cruzeta_detalhado;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_externo_interno;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_externo_interno_detalhado;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_quarteto;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_quarteto_detalhado;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_trio;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_trio_detalhado;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_b1;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_b1_b15;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_b1_b8_b15;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_b1_b4_b8_b12_b15;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_grupo2bolas;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_grupo3bolas;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_grupo4bolas;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_grupo5bolas;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_grupo_2bolas;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_grupo_3bolas;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_grupo_4bolas;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_grupo_5bolas;

DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_grupo_2bolas;
DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_grupo_3bolas;
DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_grupo_4bolas;
DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_grupo_5bolas;




/**
  Apaga as tabelas de colunas b.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_bolas;
DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_num;

/**
  Esta tabela é semelhante à tabela lotofacil_num.
  Aqui, se a bola saiu, o campo corresponde áquela bola terá o valor 1, senão terá
  o valor zero.
  É nesta tabela que o usuário deve utilizar pra inserir um novo concurso.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_num;
CREATE TABLE lotofacil.lotofacil_resultado_num (
  concurso NUMERIC NOT NULL,
  data     DATE    NOT NULL,

  num_1    NUMERIC DEFAULT 0 CHECK (num_1 IN (0, 1)),
  num_2    NUMERIC DEFAULT 0 CHECK (num_2 IN (0, 1)),
  num_3    NUMERIC DEFAULT 0 CHECK (num_3 IN (0, 1)),
  num_4    NUMERIC DEFAULT 0 CHECK (num_4 IN (0, 1)),
  num_5    NUMERIC DEFAULT 0 CHECK (num_5 IN (0, 1)),
  num_6    NUMERIC DEFAULT 0 CHECK (num_6 IN (0, 1)),
  num_7    NUMERIC DEFAULT 0 CHECK (num_7 IN (0, 1)),
  num_8    NUMERIC DEFAULT 0 CHECK (num_8 IN (0, 1)),
  num_9    NUMERIC DEFAULT 0 CHECK (num_9 IN (0, 1)),
  num_10   NUMERIC DEFAULT 0 CHECK (num_10 IN (0, 1)),
  num_11   NUMERIC DEFAULT 0 CHECK (num_11 IN (0, 1)),
  num_12   NUMERIC DEFAULT 0 CHECK (num_12 IN (0, 1)),
  num_13   NUMERIC DEFAULT 0 CHECK (num_13 IN (0, 1)),
  num_14   NUMERIC DEFAULT 0 CHECK (num_14 IN (0, 1)),
  num_15   NUMERIC DEFAULT 0 CHECK (num_15 IN (0, 1)),
  num_16   NUMERIC DEFAULT 0 CHECK (num_16 IN (0, 1)),
  num_17   NUMERIC DEFAULT 0 CHECK (num_17 IN (0, 1)),
  num_18   NUMERIC DEFAULT 0 CHECK (num_18 IN (0, 1)),
  num_19   NUMERIC DEFAULT 0 CHECK (num_19 IN (0, 1)),
  num_20   NUMERIC DEFAULT 0 CHECK (num_20 IN (0, 1)),
  num_21   NUMERIC DEFAULT 0 CHECK (num_21 IN (0, 1)),
  num_22   NUMERIC DEFAULT 0 CHECK (num_22 IN (0, 1)),
  num_23   NUMERIC DEFAULT 0 CHECK (num_23 IN (0, 1)),
  num_24   NUMERIC DEFAULT 0 CHECK (num_24 IN (0, 1)),
  num_25   NUMERIC DEFAULT 0 CHECK (num_25 IN (0, 1)),

  CONSTRAINT lotofacil_resultado_num_chk CHECK (
    (num_1 + num_2 + num_3 + num_4 + num_5 + num_6 + num_7 + num_8 + num_9 + num_10 +
     num_11 + num_12 + num_13 + num_14 + num_15 + num_16 + num_17 + num_18 + num_19 + num_20 +
     num_21 + num_22 + num_23 + num_24 + num_25) = 15),

  CONSTRAINT lotofacil_resultado_pk PRIMARY KEY (concurso)

);
COMMENT ON TABLE lotofacil.lotofacil_resultado_num IS
'Esta é a tabela inicial, que são armazenados os resultados da lotofacil, '
'os campos num_0 a num_99 corresponde respectivamentes às bolas 0 a 99 do lotofacil,'
'o campo terá o valor 1, se a bola foi sorteada, 0 (zero) caso contrário.'
'Tem que ser sorteado 20 números, senão a restrição de verificação não irá deixar inserir o registro.';

CREATE INDEX lotofacil_resultado_num_idx_1
  ON lotofacil.lotofacil_resultado_num (num_1);
CREATE INDEX lotofacil_resultado_num_idx_2
  ON lotofacil.lotofacil_resultado_num (num_2);
CREATE INDEX lotofacil_resultado_num_idx_3
  ON lotofacil.lotofacil_resultado_num (num_3);
CREATE INDEX lotofacil_resultado_num_idx_4
  ON lotofacil.lotofacil_resultado_num (num_4);
CREATE INDEX lotofacil_resultado_num_idx_5
  ON lotofacil.lotofacil_resultado_num (num_5);
CREATE INDEX lotofacil_resultado_num_idx_6
  ON lotofacil.lotofacil_resultado_num (num_6);
CREATE INDEX lotofacil_resultado_num_idx_7
  ON lotofacil.lotofacil_resultado_num (num_7);
CREATE INDEX lotofacil_resultado_num_idx_8
  ON lotofacil.lotofacil_resultado_num (num_8);
CREATE INDEX lotofacil_resultado_num_idx_9
  ON lotofacil.lotofacil_resultado_num (num_9);
CREATE INDEX lotofacil_resultado_num_idx_10
  ON lotofacil.lotofacil_resultado_num (num_10);
CREATE INDEX lotofacil_resultado_num_idx_11
  ON lotofacil.lotofacil_resultado_num (num_11);
CREATE INDEX lotofacil_resultado_num_idx_12
  ON lotofacil.lotofacil_resultado_num (num_12);
CREATE INDEX lotofacil_resultado_num_idx_13
  ON lotofacil.lotofacil_resultado_num (num_13);
CREATE INDEX lotofacil_resultado_num_idx_14
  ON lotofacil.lotofacil_resultado_num (num_14);
CREATE INDEX lotofacil_resultado_num_idx_15
  ON lotofacil.lotofacil_resultado_num (num_15);
CREATE INDEX lotofacil_resultado_num_idx_16
  ON lotofacil.lotofacil_resultado_num (num_16);
CREATE INDEX lotofacil_resultado_num_idx_17
  ON lotofacil.lotofacil_resultado_num (num_17);
CREATE INDEX lotofacil_resultado_num_idx_18
  ON lotofacil.lotofacil_resultado_num (num_18);
CREATE INDEX lotofacil_resultado_num_idx_19
  ON lotofacil.lotofacil_resultado_num (num_19);
CREATE INDEX lotofacil_resultado_num_idx_20
  ON lotofacil.lotofacil_resultado_num (num_20);
CREATE INDEX lotofacil_resultado_num_idx_21
  ON lotofacil.lotofacil_resultado_num (num_21);
CREATE INDEX lotofacil_resultado_num_idx_22
  ON lotofacil.lotofacil_resultado_num (num_22);
CREATE INDEX lotofacil_resultado_num_idx_23
  ON lotofacil.lotofacil_resultado_num (num_23);
CREATE INDEX lotofacil_resultado_num_idx_24
  ON lotofacil.lotofacil_resultado_num (num_24);
CREATE INDEX lotofacil_resultado_num_idx_25
  ON lotofacil.lotofacil_resultado_num (num_25);
CREATE INDEX lotofacil_resultado_num_idx_26
  ON lotofacil.lotofacil_resultado_num (
    num_1, num_2, num_3, num_4, num_5, num_6, num_7, num_8, num_9, num_10,
    num_11, num_12, num_13, num_14, num_15, num_16, num_17, num_18, num_19, num_20,
    num_21, num_22, num_23, num_24, num_25
  );


/*
  Nesta tabela, será armazenada, todos os concursos já realizados.
  O usuário não deve inserir dados nesta tabela, ela é populado através de um trigger
  que toda vez que a tabela lotofacil_resultado_num for inserida, os dados são
  inseridos automaticamente neste tabela, o mesmo ocorrendo no caso de atualização ou
  exclusão de registros.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_bolas;
CREATE TABLE lotofacil.lotofacil_resultado_bolas (
  concurso NUMERIC NOT NULL,

  b_1      NUMERIC DEFAULT 0,
  b_2      NUMERIC DEFAULT 0,
  b_3      NUMERIC DEFAULT 0,
  b_4      NUMERIC DEFAULT 0,
  b_5      NUMERIC DEFAULT 0,
  b_6      NUMERIC DEFAULT 0,
  b_7      NUMERIC DEFAULT 0,
  b_8      NUMERIC DEFAULT 0,
  b_9      NUMERIC DEFAULT 0,
  b_10     NUMERIC DEFAULT 0,
  b_11     NUMERIC DEFAULT 0,
  b_12     NUMERIC DEFAULT 0,
  b_13     NUMERIC DEFAULT 0,
  b_14     NUMERIC DEFAULT 0,
  b_15     NUMERIC DEFAULT 0,

  CONSTRAINT lotofacil_resultado_bolas_pk PRIMARY KEY (concurso),
  CONSTRAINT lotofacil_resultado_bolas_fk FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num (concurso)
  ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT lotofacil_resultado_bolas_chk CHECK (
    (b_1 < b_2) AND
    (b_2 < b_3) AND
    (b_3 < b_4) AND
    (b_4 < b_5) AND
    (b_5 < b_6) AND
    (b_6 < b_7) AND
    (b_7 < b_8) AND
    (b_8 < b_9) AND
    (b_9 < b_10) AND
    (b_10 < b_11) AND
    (b_11 < b_12) AND
    (b_12 < b_13) AND
    (b_13 < b_14) AND
    (b_14 < b_15)
  )
);

/**
  Ao invés de ter uma tabela de resultado pra cada tipo de combinação, por exemplo,
  lotofacil_resultado_par_impar
  lotofacil_resultado_primo.
  Achei, mais lógico, ter uma única tabela, com um campo pra cada tipo de combinação,
  este campo armazenará o id da combinação.
  Fica bem mais rápido, pois, iremos recuperar todos os dados
  da tabela lotofacil_id, que contém 
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_id CASCADE;
CREATE TABLE lotofacil.lotofacil_resultado_id (
  concurso            NUMERIC NOT NULL PRIMARY KEY,
  
  ltf_id integer not null,
  
  par_impar_id smallint not null,
  prm_id smallint not null,
  ext_int_id smallint not null,

  hrz_id smallint not null,
  vrt_id smallint not null,

  dge_id smallint not null,
  dgd_id smallint not null,

  esq_dir_id smallint not null,
  sup_inf_id smallint not null,

  sup_esq_inf_dir_id smallint not null,
  sup_dir_inf_esq_id smallint not null,

  crz_id smallint not null,
  lsng_id smallint not null,
  qnt_id smallint not null,

  trng_id smallint not null,
  trio_id integer not null,

  x1_x2_id smallint not null,

  dz_id smallint not null,
  un_id integer not null,
  alg_id integer not null,

  sm_bolas_id smallint not null,
  sm_alg_id smallint not NULL,

  lc_id integer not null,

  -- Há 4096 combinações de 0 e 1, usando 12 posições.
  bin_par_id integer default 0 check (bin_par_id between 0 and 4095),

  -- Há 8196 combinações de 0 e 1, usando 13 posições.
  bin_impar_id integer default 0 check (bin_impar_id between 0 and 8195),

  -- Há 512 combinações de 0 e 1, usando 9 posições.
  bin_primo_id smallint default 0 check (bin_primo_id between 0 and 511),

  -- Há 65536 combinações de 0 e 1, usando 16 posições.
  bin_externo_id integer default 0 check (bin_externo_id between 0 and 65535),

  -- Há 512 combinações de 0 e 1, usando 9 posições.
  bin_interno_id integer default 0 check (bin_interno_id between 0 and 511),

  -- Há 32 combinações de 0 e 1, usando 5 posições.
  bin_hrz_1_id smallint default 0 check (bin_hrz_1_id between 0 and 31),
  bin_hrz_2_id smallint default 0 check (bin_hrz_2_id between 0 and 31),
  bin_hrz_3_id smallint default 0 check (bin_hrz_3_id between 0 and 31),
  bin_hrz_4_id smallint default 0 check (bin_hrz_4_id between 0 and 31),
  bin_hrz_5_id smallint default 0 check (bin_hrz_5_id between 0 and 31),

  -- Há 32 combinações de 0 e 1, usando 5 posições.
  bin_vrt_1_id smallint default 0 check (bin_vrt_1_id between 0 and 31),
  bin_vrt_2_id smallint default 0 check (bin_vrt_2_id between 0 and 31),
  bin_vrt_3_id smallint default 0 check (bin_vrt_3_id between 0 and 31),
  bin_vrt_4_id smallint default 0 check (bin_vrt_4_id between 0 and 31),
  bin_vrt_5_id smallint default 0 check (bin_vrt_5_id between 0 and 31),

  -- Há 32 combinações de 0 e 1, usando 5 posições.
  bin_dge_1_id smallint default 0 check (bin_dge_1_id between 0 and 31),
  bin_dge_2_id smallint default 0 check (bin_dge_2_id between 0 and 31),
  bin_dge_3_id smallint default 0 check (bin_dge_3_id between 0 and 31),
  bin_dge_4_id smallint default 0 check (bin_dge_4_id between 0 and 31),
  bin_dge_5_id smallint default 0 check (bin_dge_5_id between 0 and 31),

  -- Há 32 combinações de 0 e 1, usando 5 posições.
  bin_dgd_1_id smallint default 0 check (bin_dgd_1_id between 0 and 31),
  bin_dgd_2_id smallint default 0 check (bin_dgd_2_id between 0 and 31),
  bin_dgd_3_id smallint default 0 check (bin_dgd_3_id between 0 and 31),
  bin_dgd_4_id smallint default 0 check (bin_dgd_4_id between 0 and 31),
  bin_dgd_5_id smallint default 0 check (bin_dgd_5_id between 0 and 31),

  bin_esq_id integer DEFAULT 0 NULL,
  bin_dir_id integer DEFAULT 0 NULL,

  bin_sup_id integer DEFAULT 0 NULL,
  bin_inf_id integer DEFAULT 0 NULL,

  bin_sup_esq_id integer DEFAULT 0 NULL,
  bin_inf_dir_id integer DEFAULT 0 NULL,

  bin_sup_dir_id integer DEFAULT 0 NULL,
  bin_inf_esq_id integer DEFAULT 0 NULL,

  bin_crz_1_id SMALLINT DEFAULT 0 NULL,
  bin_crz_2_id SMALLINT DEFAULT 0 NULL,
  bin_crz_3_id SMALLINT DEFAULT 0 NULL,
  bin_crz_4_id SMALLINT DEFAULT 0 NULL,
  bin_crz_5_id SMALLINT DEFAULT 0 NULL,

  bin_lsng_1_id SMALLINT DEFAULT 0 NULL,
  bin_lsng_2_id SMALLINT DEFAULT 0 NULL,
  bin_lsng_3_id SMALLINT DEFAULT 0 NULL,
  bin_lsng_4_id SMALLINT DEFAULT 0 NULL,
  bin_lsng_5_id SMALLINT DEFAULT 0 NULL,

  bin_qnt_1_id SMALLINT DEFAULT 0 NULL,
  bin_qnt_2_id SMALLINT DEFAULT 0 NULL,
  bin_qnt_3_id SMALLINT DEFAULT 0 NULL,
  bin_qnt_4_id SMALLINT DEFAULT 0 NULL,
  bin_qnt_5_id SMALLINT DEFAULT 0 NULL,

  bin_trng_1_id SMALLINT DEFAULT 0 NULL,
  bin_trng_2_id SMALLINT DEFAULT 0 NULL,
  bin_trng_3_id SMALLINT DEFAULT 0 NULL,
  bin_trng_4_id SMALLINT DEFAULT 0 NULL,

  bin_trio_1_id SMALLINT DEFAULT 0 NULL,
  bin_trio_2_id SMALLINT DEFAULT 0 NULL,
  bin_trio_3_id SMALLINT DEFAULT 0 NULL,
  bin_trio_4_id SMALLINT DEFAULT 0 NULL,
  bin_trio_5_id SMALLINT DEFAULT 0 NULL,
  bin_trio_6_id SMALLINT DEFAULT 0 NULL,
  bin_trio_7_id SMALLINT DEFAULT 0 NULL,
  bin_trio_8_id SMALLINT DEFAULT 0 NULL,

  bin_x1_id SMALLINT DEFAULT 0 NULL,
  bin_x2_id integer DEFAULT 0 NULL,

  bin_dz_0_id SMALLINT DEFAULT 0 NULL,
  bin_dz_1_id SMALLINT DEFAULT 0 NULL,
  bin_dz_2_id SMALLINT DEFAULT 0 NULL,

  bin_lc_1_id SMALLINT DEFAULT 0 NULL,
  bin_lc_2_id SMALLINT DEFAULT 0 NULL,
  bin_lc_3_id SMALLINT DEFAULT 0 NULL,
  bin_lc_4_id SMALLINT DEFAULT 0 NULL,
  bin_lc_5_id SMALLINT DEFAULT 0 NULL,  

  CONSTRAINT lotofacil_resultado_id_fk_1 FOREIGN KEY (ltf_id) references lotofacil.lotofacil_num(ltf_id) on update cascade on delete cascade,

  CONSTRAINT lotofacil_resultado_id_fk_2 FOREIGN KEY (par_impar_id) references lotofacil.lotofacil_id_par_impar(par_impar_id) on update cascade on delete cascade,
  CONSTRAINT lotofacil_resultado_id_fk_3 FOREIGN KEY (ext_int_id) references lotofacil.lotofacil_id_externo_interno(ext_int_id) on update cascade on delete cascade,
  CONSTRAINT lotofacil_resultado_id_fk_4 FOREIGN KEY (prm_id) references lotofacil.lotofacil_id_primo(prm_id) on update cascade on delete cascade,

  CONSTRAINT lotofacil_resultado_id_fk_5 FOREIGN KEY (hrz_id) references lotofacil.lotofacil_id_horizontal(hrz_id) on update cascade on delete cascade,
  CONSTRAINT lotofacil_resultado_id_fk_6 FOREIGN KEY (vrt_id) references lotofacil.lotofacil_id_vertical(vrt_id) on update cascade on delete cascade,
  CONSTRAINT lotofacil_resultado_id_fk_7 FOREIGN KEY (dge_id) references lotofacil.lotofacil_id_diagonal_esquerda(dge_id) on update cascade on delete cascade,
  CONSTRAINT lotofacil_resultado_id_fk_8 FOREIGN KEY (dgd_id) references lotofacil.lotofacil_id_diagonal_direita(dgd_id) on update cascade on delete cascade,

  CONSTRAINT lotofacil_resultado_id_fk_9 FOREIGN KEY (esq_dir_id) references lotofacil.lotofacil_id_esquerda_direita(esq_dir_id) on update cascade on delete cascade,
  CONSTRAINT lotofacil_resultado_id_fk_10 FOREIGN KEY (sup_inf_id) references lotofacil.lotofacil_id_superior_inferior(sup_inf_id) on update cascade on delete cascade,

  CONSTRAINT lotofacil_resultado_id_fk_11 FOREIGN KEY (sup_esq_inf_dir_id) references lotofacil.lotofacil_id_superior_esquerda_inferior_direita(sup_esq_inf_dir_id) on update cascade on delete cascade,
  CONSTRAINT lotofacil_resultado_id_fk_12 FOREIGN KEY (sup_dir_inf_esq_id) references lotofacil.lotofacil_id_superior_direita_inferior_esquerda(sup_dir_inf_esq_id) on update cascade on delete cascade,

  CONSTRAINT lotofacil_resultado_id_fk_13 FOREIGN KEY (crz_id) references lotofacil.lotofacil_id_cruzeta (crz_id) on update cascade on delete cascade,
  CONSTRAINT lotofacil_resultado_id_fk_14 FOREIGN KEY (lsng_id) REFERENCES lotofacil.lotofacil_id_losango (lsng_id) on update cascade on delete cascade,
  constraint lotofacil_resultado_id_fk_15 FOREIGN KEY (qnt_id) REFERENCES lotofacil.lotofacil_id_quinteto (qnt_id) on update cascade on delete cascade,

  constraint lotofacil_resultado_id_fk_16 FOREIGN KEY (trng_id) REFERENCES lotofacil.lotofacil_id_triangulo (trng_id) on update cascade on delete cascade,
  constraint lotofacil_resultado_id_fk_17 FOREIGN KEY (trio_id) REFERENCES lotofacil.lotofacil_id_trio(trio_id) on update cascade on delete cascade,

  constraint lotofacil_resultado_id_fk_18 FOREIGN KEY (x1_x2_id) REFERENCES lotofacil.lotofacil_id_x1_x2 (x1_x2_id) on update cascade on delete cascade,

  constraint lotofacil_resultado_id_fk_19 FOREIGN KEY (dz_id) REFERENCES lotofacil.lotofacil_id_dezena (dz_id) on update cascade on delete cascade,
  constraint lotofacil_resultado_id_fk_20 FOREIGN KEY (un_id) REFERENCES lotofacil.lotofacil_id_unidade (un_id) on update cascade on delete cascade,
  constraint lotofacil_resultado_id_fk_21 FOREIGN KEY (alg_id) REFERENCES lotofacil.lotofacil_id_algarismo (alg_id) on update cascade on delete cascade,

  constraint lotofacil_resultado_id_fk_22 FOREIGN KEY (sm_bolas_id) REFERENCES lotofacil.lotofacil_id_soma_de_bolas (sm_bolas_id) on update cascade on delete cascade,
  constraint lotofacil_resultado_id_fk_23 FOREIGN KEY (sm_alg_id) REFERENCES lotofacil.lotofacil_id_soma_algarismo (sm_alg_id)  on update cascade on delete cascade,

  constraint lotofacil_resultado_id_fk_24 FOREIGN KEY (lc_id) REFERENCES lotofacil.lotofacil_id_linha_coluna (lc_id) on update cascade on delete cascade

);

ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_par_id INTEGER DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_impar_id INTEGER DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_primo_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_nao_primo_id INTEGER DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_ext_id INTEGER DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_int_id SMALLINT DEFAULT 0 NULL;

ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_hrz_1_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_hrz_2_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_hrz_3_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_hrz_4_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_hrz_5_id SMALLINT DEFAULT 0 NULL;

ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_vrt_1_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_vrt_2_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_vrt_3_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_vrt_4_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_vrt_5_id SMALLINT DEFAULT 0 NULL;

ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_dge_1_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_dge_2_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_dge_3_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_dge_4_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_dge_5_id SMALLINT DEFAULT 0 NULL;

ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_dgd_1_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_dgd_2_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_dgd_3_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_dgd_4_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_dgd_5_id SMALLINT DEFAULT 0 NULL;

ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_esq_id integer DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_dir_id integer DEFAULT 0 NULL;

ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_sup_id integer DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_inf_id integer DEFAULT 0 NULL;

ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_sup_esq_id integer DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_inf_dir_id integer DEFAULT 0 NULL;

ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_sup_dir_id integer DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_inf_esq_id integer DEFAULT 0 NULL;

ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_crz_1_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_crz_2_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_crz_3_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_crz_4_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_crz_5_id SMALLINT DEFAULT 0 NULL;

ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_lsng_1_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_lsng_2_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_lsng_3_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_lsng_4_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_lsng_5_id SMALLINT DEFAULT 0 NULL;

ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_qnt_1_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_qnt_2_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_qnt_3_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_qnt_4_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_qnt_5_id SMALLINT DEFAULT 0 NULL;

ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_trng_1_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_trng_2_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_trng_3_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_trng_4_id SMALLINT DEFAULT 0 NULL;

ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_trio_1_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_trio_2_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_trio_3_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_trio_4_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_trio_5_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_trio_6_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_trio_7_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_trio_8_id SMALLINT DEFAULT 0 NULL;

ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_x1_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_x2_id integer DEFAULT 0 NULL;

ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_dz_0_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_dz_1_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_dz_2_id SMALLINT DEFAULT 0 NULL;

ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_lc_1_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_lc_2_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_lc_3_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_lc_4_id SMALLINT DEFAULT 0 NULL;
ALTER TABLE lotofacil.lotofacil_resultado_id ADD bin_lc_5_id SMALLINT DEFAULT 0 NULL;

DROP INDEX IF EXISTS lotofacil_idx_1;
DROP INDEX IF EXISTS lotofacil_idx_2;
DROP INDEX IF EXISTS lotofacil_idx_3;
DROP INDEX IF EXISTS lotofacil_idx_4;
DROP INDEX IF EXISTS lotofacil_idx_5;
DROP INDEX IF EXISTS lotofacil_idx_6;
DROP INDEX IF EXISTS lotofacil_idx_7;
DROP INDEX IF EXISTS lotofacil_idx_8;
DROP INDEX IF EXISTS lotofacil_idx_9;
DROP INDEX IF EXISTS lotofacil_idx_10;
DROP INDEX IF EXISTS lotofacil_idx_11;
DROP INDEX IF EXISTS lotofacil_idx_12;
DROP INDEX IF EXISTS lotofacil_idx_13;
DROP INDEX IF EXISTS lotofacil_idx_14;
DROP INDEX IF EXISTS lotofacil_idx_15;
DROP INDEX IF EXISTS lotofacil_idx_16;
DROP INDEX IF EXISTS lotofacil_idx_17;
DROP INDEX IF EXISTS lotofacil_idx_18;
DROP INDEX IF EXISTS lotofacil_idx_19;
DROP INDEX IF EXISTS lotofacil_idx_20;
DROP INDEX IF EXISTS lotofacil_idx_21;
DROP INDEX IF EXISTS lotofacil_idx_22;
DROP INDEX IF EXISTS lotofacil_idx_23;
DROP INDEX IF EXISTS lotofacil_idx_24;
DROP INDEX IF EXISTS lotofacil_idx_25;
DROP INDEX IF EXISTS lotofacil_idx_26;
DROP INDEX IF EXISTS lotofacil_idx_27;
DROP INDEX IF EXISTS lotofacil_idx_28;
DROP INDEX IF EXISTS lotofacil_idx_29;
DROP INDEX IF EXISTS lotofacil_idx_30;
DROP INDEX IF EXISTS lotofacil_idx_31;
DROP INDEX IF EXISTS lotofacil_idx_32;
DROP INDEX IF EXISTS lotofacil_idx_33;
DROP INDEX IF EXISTS lotofacil_idx_34;
DROP INDEX IF EXISTS lotofacil_idx_35;
DROP INDEX IF EXISTS lotofacil_idx_36;
DROP INDEX IF EXISTS lotofacil_idx_37;
DROP INDEX IF EXISTS lotofacil_idx_38;
DROP INDEX IF EXISTS lotofacil_idx_39;
DROP INDEX IF EXISTS lotofacil_idx_40;
DROP INDEX IF EXISTS lotofacil_idx_41;
DROP INDEX IF EXISTS lotofacil_idx_42;
DROP INDEX IF EXISTS lotofacil_idx_43;
DROP INDEX IF EXISTS lotofacil_idx_44;
DROP INDEX IF EXISTS lotofacil_idx_45;
DROP INDEX IF EXISTS lotofacil_idx_46;
DROP INDEX IF EXISTS lotofacil_idx_47;
DROP INDEX IF EXISTS lotofacil_idx_48;
DROP INDEX IF EXISTS lotofacil_idx_49;
DROP INDEX IF EXISTS lotofacil_idx_50;
DROP INDEX IF EXISTS lotofacil_idx_51;
DROP INDEX IF EXISTS lotofacil_idx_52;
DROP INDEX IF EXISTS lotofacil_idx_53;
DROP INDEX IF EXISTS lotofacil_idx_54;
DROP INDEX IF EXISTS lotofacil_idx_55;
DROP INDEX IF EXISTS lotofacil_idx_56;
DROP INDEX IF EXISTS lotofacil_idx_57;
DROP INDEX IF EXISTS lotofacil_idx_58;
DROP INDEX IF EXISTS lotofacil_idx_59;
DROP INDEX IF EXISTS lotofacil_idx_60;
DROP INDEX IF EXISTS lotofacil_idx_61;
DROP INDEX IF EXISTS lotofacil_idx_62;
DROP INDEX IF EXISTS lotofacil_idx_63;
DROP INDEX IF EXISTS lotofacil_idx_64;
DROP INDEX IF EXISTS lotofacil_idx_65;
DROP INDEX IF EXISTS lotofacil_idx_66;
DROP INDEX IF EXISTS lotofacil_idx_67;
DROP INDEX IF EXISTS lotofacil_idx_68;
DROP INDEX IF EXISTS lotofacil_idx_69;
DROP INDEX IF EXISTS lotofacil_idx_70;
DROP INDEX IF EXISTS lotofacil_idx_71;
DROP INDEX IF EXISTS lotofacil_idx_72;
DROP INDEX IF EXISTS lotofacil_idx_73;
DROP INDEX IF EXISTS lotofacil_idx_74;
DROP INDEX IF EXISTS lotofacil_idx_75;
DROP INDEX IF EXISTS lotofacil_idx_76;
DROP INDEX IF EXISTS lotofacil_idx_77;
DROP INDEX IF EXISTS lotofacil_idx_78;
DROP INDEX IF EXISTS lotofacil_idx_79;
DROP INDEX IF EXISTS lotofacil_idx_80;
DROP INDEX IF EXISTS lotofacil_idx_81;
DROP INDEX IF EXISTS lotofacil_idx_82;
DROP INDEX IF EXISTS lotofacil_idx_83;
DROP INDEX IF EXISTS lotofacil_idx_84;
DROP INDEX IF EXISTS lotofacil_idx_85;
DROP INDEX IF EXISTS lotofacil_idx_86;
DROP INDEX IF EXISTS lotofacil_idx_87;
DROP INDEX IF EXISTS lotofacil_idx_88;
DROP INDEX IF EXISTS lotofacil_idx_89;
DROP INDEX IF EXISTS lotofacil_idx_90;
DROP INDEX IF EXISTS lotofacil_idx_91;
DROP INDEX IF EXISTS lotofacil_idx_92;
DROP INDEX IF EXISTS lotofacil_idx_93;
DROP INDEX IF EXISTS lotofacil_idx_94;
DROP INDEX IF EXISTS lotofacil_idx_95;
DROP INDEX IF EXISTS lotofacil_idx_96;

CREATE INDEX lotofacil_idx_1 ON lotofacil.lotofacil_id(ltf_id);
CREATE INDEX lotofacil_idx_2 ON lotofacil.lotofacil_id(ltf_qt);
CREATE INDEX lotofacil_idx_3 ON lotofacil.lotofacil_id(par_impar_id);
CREATE INDEX lotofacil_idx_4 ON lotofacil.lotofacil_id(prm_id);
CREATE INDEX lotofacil_idx_5 ON lotofacil.lotofacil_id(ext_int_id);
CREATE INDEX lotofacil_idx_6 ON lotofacil.lotofacil_id(hrz_id);
CREATE INDEX lotofacil_idx_7 ON lotofacil.lotofacil_id(vrt_id);
CREATE INDEX lotofacil_idx_8 ON lotofacil.lotofacil_id(dge_id);
CREATE INDEX lotofacil_idx_9 ON lotofacil.lotofacil_id(dgd_id);
CREATE INDEX lotofacil_idx_10 ON lotofacil.lotofacil_id(esq_dir_id);
CREATE INDEX lotofacil_idx_11 ON lotofacil.lotofacil_id(sup_inf_id);
CREATE INDEX lotofacil_idx_12 ON lotofacil.lotofacil_id(sup_esq_inf_dir_id);
CREATE INDEX lotofacil_idx_13 ON lotofacil.lotofacil_id(sup_dir_inf_esq_id);
CREATE INDEX lotofacil_idx_14 ON lotofacil.lotofacil_id(crz_id);
CREATE INDEX lotofacil_idx_15 ON lotofacil.lotofacil_id(lsng_id);
CREATE INDEX lotofacil_idx_16 ON lotofacil.lotofacil_id(qnt_id);
CREATE INDEX lotofacil_idx_17 ON lotofacil.lotofacil_id(trng_id);
CREATE INDEX lotofacil_idx_18 ON lotofacil.lotofacil_id(trio_id);
CREATE INDEX lotofacil_idx_19 ON lotofacil.lotofacil_id(x1_x2_id);
CREATE INDEX lotofacil_idx_20 ON lotofacil.lotofacil_id(dz_id);
CREATE INDEX lotofacil_idx_21 ON lotofacil.lotofacil_id(un_id);
CREATE INDEX lotofacil_idx_22 ON lotofacil.lotofacil_id(alg_id);
CREATE INDEX lotofacil_idx_23 ON lotofacil.lotofacil_id(sm_bolas_id);
CREATE INDEX lotofacil_idx_24 ON lotofacil.lotofacil_id(sm_alg_id);
CREATE INDEX lotofacil_idx_25 ON lotofacil.lotofacil_id(lc_id);
CREATE INDEX lotofacil_idx_26 ON lotofacil.lotofacil_id(bin_par_id);
CREATE INDEX lotofacil_idx_27 ON lotofacil.lotofacil_id(bin_impar_id);
CREATE INDEX lotofacil_idx_28 ON lotofacil.lotofacil_id(bin_primo_id);
CREATE INDEX lotofacil_idx_29 ON lotofacil.lotofacil_id(bin_nao_primo_id);
CREATE INDEX lotofacil_idx_30 ON lotofacil.lotofacil_id(bin_ext_id);
CREATE INDEX lotofacil_idx_31 ON lotofacil.lotofacil_id(bin_int_id);
CREATE INDEX lotofacil_idx_32 ON lotofacil.lotofacil_id(bin_hrz_1_id);
CREATE INDEX lotofacil_idx_33 ON lotofacil.lotofacil_id(bin_hrz_2_id);
CREATE INDEX lotofacil_idx_34 ON lotofacil.lotofacil_id(bin_hrz_3_id);
CREATE INDEX lotofacil_idx_35 ON lotofacil.lotofacil_id(bin_hrz_4_id);
CREATE INDEX lotofacil_idx_36 ON lotofacil.lotofacil_id(bin_hrz_5_id);
CREATE INDEX lotofacil_idx_37 ON lotofacil.lotofacil_id(bin_vrt_1_id);
CREATE INDEX lotofacil_idx_38 ON lotofacil.lotofacil_id(bin_vrt_2_id);
CREATE INDEX lotofacil_idx_39 ON lotofacil.lotofacil_id(bin_vrt_3_id);
CREATE INDEX lotofacil_idx_40 ON lotofacil.lotofacil_id(bin_vrt_4_id);
CREATE INDEX lotofacil_idx_41 ON lotofacil.lotofacil_id(bin_vrt_5_id);
CREATE INDEX lotofacil_idx_42 ON lotofacil.lotofacil_id(bin_dge_1_id);
CREATE INDEX lotofacil_idx_43 ON lotofacil.lotofacil_id(bin_dge_2_id);
CREATE INDEX lotofacil_idx_44 ON lotofacil.lotofacil_id(bin_dge_3_id);
CREATE INDEX lotofacil_idx_45 ON lotofacil.lotofacil_id(bin_dge_4_id);
CREATE INDEX lotofacil_idx_46 ON lotofacil.lotofacil_id(bin_dge_5_id);
CREATE INDEX lotofacil_idx_47 ON lotofacil.lotofacil_id(bin_dgd_1_id);
CREATE INDEX lotofacil_idx_48 ON lotofacil.lotofacil_id(bin_dgd_2_id);
CREATE INDEX lotofacil_idx_49 ON lotofacil.lotofacil_id(bin_dgd_3_id);
CREATE INDEX lotofacil_idx_50 ON lotofacil.lotofacil_id(bin_dgd_4_id);
CREATE INDEX lotofacil_idx_51 ON lotofacil.lotofacil_id(bin_dgd_5_id);
CREATE INDEX lotofacil_idx_52 ON lotofacil.lotofacil_id(bin_esq_id);
CREATE INDEX lotofacil_idx_53 ON lotofacil.lotofacil_id(bin_dir_id);
CREATE INDEX lotofacil_idx_54 ON lotofacil.lotofacil_id(bin_sup_id);
CREATE INDEX lotofacil_idx_55 ON lotofacil.lotofacil_id(bin_inf_id);
CREATE INDEX lotofacil_idx_56 ON lotofacil.lotofacil_id(bin_sup_esq_id);
CREATE INDEX lotofacil_idx_57 ON lotofacil.lotofacil_id(bin_inf_dir_id);
CREATE INDEX lotofacil_idx_58 ON lotofacil.lotofacil_id(bin_sup_dir_id);
CREATE INDEX lotofacil_idx_59 ON lotofacil.lotofacil_id(bin_inf_esq_id);
CREATE INDEX lotofacil_idx_60 ON lotofacil.lotofacil_id(bin_crz_1_id);
CREATE INDEX lotofacil_idx_61 ON lotofacil.lotofacil_id(bin_crz_2_id);
CREATE INDEX lotofacil_idx_62 ON lotofacil.lotofacil_id(bin_crz_3_id);
CREATE INDEX lotofacil_idx_63 ON lotofacil.lotofacil_id(bin_crz_4_id);
CREATE INDEX lotofacil_idx_64 ON lotofacil.lotofacil_id(bin_crz_5_id);
CREATE INDEX lotofacil_idx_65 ON lotofacil.lotofacil_id(bin_lsng_1_id);
CREATE INDEX lotofacil_idx_66 ON lotofacil.lotofacil_id(bin_lsng_2_id);
CREATE INDEX lotofacil_idx_67 ON lotofacil.lotofacil_id(bin_lsng_3_id);
CREATE INDEX lotofacil_idx_68 ON lotofacil.lotofacil_id(bin_lsng_4_id);
CREATE INDEX lotofacil_idx_69 ON lotofacil.lotofacil_id(bin_lsng_5_id);
CREATE INDEX lotofacil_idx_70 ON lotofacil.lotofacil_id(bin_qnt_1_id);
CREATE INDEX lotofacil_idx_71 ON lotofacil.lotofacil_id(bin_qnt_2_id);
CREATE INDEX lotofacil_idx_72 ON lotofacil.lotofacil_id(bin_qnt_3_id);
CREATE INDEX lotofacil_idx_73 ON lotofacil.lotofacil_id(bin_qnt_4_id);
CREATE INDEX lotofacil_idx_74 ON lotofacil.lotofacil_id(bin_qnt_5_id);
CREATE INDEX lotofacil_idx_75 ON lotofacil.lotofacil_id(bin_trng_1_id);
CREATE INDEX lotofacil_idx_76 ON lotofacil.lotofacil_id(bin_trng_2_id);
CREATE INDEX lotofacil_idx_77 ON lotofacil.lotofacil_id(bin_trng_3_id);
CREATE INDEX lotofacil_idx_78 ON lotofacil.lotofacil_id(bin_trng_4_id);
CREATE INDEX lotofacil_idx_79 ON lotofacil.lotofacil_id(bin_trio_1_id);
CREATE INDEX lotofacil_idx_80 ON lotofacil.lotofacil_id(bin_trio_2_id);
CREATE INDEX lotofacil_idx_81 ON lotofacil.lotofacil_id(bin_trio_3_id);
CREATE INDEX lotofacil_idx_82 ON lotofacil.lotofacil_id(bin_trio_4_id);
CREATE INDEX lotofacil_idx_83 ON lotofacil.lotofacil_id(bin_trio_5_id);
CREATE INDEX lotofacil_idx_84 ON lotofacil.lotofacil_id(bin_trio_6_id);
CREATE INDEX lotofacil_idx_85 ON lotofacil.lotofacil_id(bin_trio_7_id);
CREATE INDEX lotofacil_idx_86 ON lotofacil.lotofacil_id(bin_trio_8_id);
CREATE INDEX lotofacil_idx_87 ON lotofacil.lotofacil_id(bin_x1_id);
CREATE INDEX lotofacil_idx_88 ON lotofacil.lotofacil_id(bin_x2_id);
CREATE INDEX lotofacil_idx_89 ON lotofacil.lotofacil_id(bin_dz_0_id);
CREATE INDEX lotofacil_idx_90 ON lotofacil.lotofacil_id(bin_dz_1_id);
CREATE INDEX lotofacil_idx_91 ON lotofacil.lotofacil_id(bin_dz_2_id);
CREATE INDEX lotofacil_idx_92 ON lotofacil.lotofacil_id(bin_lc_1_id);
CREATE INDEX lotofacil_idx_93 ON lotofacil.lotofacil_id(bin_lc_2_id);
CREATE INDEX lotofacil_idx_94 ON lotofacil.lotofacil_id(bin_lc_3_id);
CREATE INDEX lotofacil_idx_95 ON lotofacil.lotofacil_id(bin_lc_4_id);
CREATE INDEX lotofacil_idx_96 ON lotofacil.lotofacil_id(bin_lc_5_id);




/**
  Novos, repetidos, ainda nao saiu, deixou de sair.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_novos_repetidos;
CREATE TABLE lotofacil.lotofacil_resultado_novos_repetidos (
  concurso           NUMERIC NOT NULL,
  novos_repetidos_id NUMERIC NOT NULL,
  CONSTRAINT lotofacil_resultado_novos_repetidos_pk PRIMARY KEY (concurso),
  CONSTRAINT lotofacil_resultado_novos_repetidos_unk UNIQUE (concurso, novos_repetidos_id)
);


/**
  Esta função atualiza a tabela lotofacil.lotofacil_resultado_novos_repetidos.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_atualizar_novos_repetidos();
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_atualizar_novos_repetidos()
  RETURNS VOID
LANGUAGE plpgsql
AS $$
DECLARE
  reg_lotofacil_resultado_num         lotofacil.lotofacil_resultado_num%ROWTYPE;

  total_registros_novos_repetidos     NUMERIC;

  total_registros_resultado_bolas_num NUMERIC;

  -- Conta cada registro.
  contador_registro                   NUMERIC;

  -- Conta a quantidade de bola encontrada, parando, quando atingir 15.
  contador_bolas                      NUMERIC;

  -- Arranjo que armazena cada bola.
  -- O índice 0, tem o número do concurso.
  ltf_num                             NUMERIC [26];
  ltf_num_anterior                    NUMERIC [26];
  ltf_frequencia                      NUMERIC [26];

  qt_novos                            NUMERIC;
  qt_repetidos                        NUMERIC;

  -- Arranjo que serve pra armazenar a cada concurso
  -- sorteado, a soma de toda as frequência de novos x repetidos.
  ltf_frequencia_total                NUMERIC [26];

BEGIN
  -- Verifica primeiro se há registro na tabela de resultados;
  SELECT count(*)
  INTO total_registros_resultado_bolas_num
  FROM lotofacil.lotofacil_resultado_num;

  IF total_registros_resultado_bolas_num = 0
  THEN
    RAISE NOTICE 'Nenhum registro na tabela lotofacil_resultado_bolas';
    RETURN;
  END IF;

  -- Devemos sempre deletar os dados da tabela lotofacil_resultado_novos_repetidos
  -- pois, não temos certeza se algum registro foi inserido fora da sequencia.
  DELETE FROM lotofacil.lotofacil_resultado_novos_repetidos;

  -- O loop abaixo é bem simples, ele compara cada campo de prefixo num_
  -- com o mesmo campo do registro anterior e realizar o seguinte procedimento:
  -- se o campo atual é 1
  contador_registro := 1;
  FOR reg_lotofacil_resultado_num IN
  SELECT *
  FROM lotofacil.lotofacil_resultado_num
  ORDER BY concurso
  LOOP
    IF contador_registro = 1
    THEN
      ltf_num_anterior [0] = reg_lotofacil_resultado_num.concurso;
      ltf_num_anterior [1] = reg_lotofacil_resultado_num.num_1;
      ltf_num_anterior [2] = reg_lotofacil_resultado_num.num_2;
      ltf_num_anterior [3] = reg_lotofacil_resultado_num.num_3;
      ltf_num_anterior [4] = reg_lotofacil_resultado_num.num_4;
      ltf_num_anterior [5] = reg_lotofacil_resultado_num.num_5;
      ltf_num_anterior [6] = reg_lotofacil_resultado_num.num_6;
      ltf_num_anterior [7] = reg_lotofacil_resultado_num.num_7;
      ltf_num_anterior [8] = reg_lotofacil_resultado_num.num_8;
      ltf_num_anterior [9] = reg_lotofacil_resultado_num.num_9;
      ltf_num_anterior [10] = reg_lotofacil_resultado_num.num_10;
      ltf_num_anterior [11] = reg_lotofacil_resultado_num.num_11;
      ltf_num_anterior [12] = reg_lotofacil_resultado_num.num_12;
      ltf_num_anterior [13] = reg_lotofacil_resultado_num.num_13;
      ltf_num_anterior [14] = reg_lotofacil_resultado_num.num_14;
      ltf_num_anterior [15] = reg_lotofacil_resultado_num.num_15;
      ltf_num_anterior [16] = reg_lotofacil_resultado_num.num_16;
      ltf_num_anterior [17] = reg_lotofacil_resultado_num.num_17;
      ltf_num_anterior [18] = reg_lotofacil_resultado_num.num_18;
      ltf_num_anterior [19] = reg_lotofacil_resultado_num.num_19;
      ltf_num_anterior [20] = reg_lotofacil_resultado_num.num_20;
      ltf_num_anterior [21] = reg_lotofacil_resultado_num.num_21;
      ltf_num_anterior [22] = reg_lotofacil_resultado_num.num_22;
      ltf_num_anterior [23] = reg_lotofacil_resultado_num.num_23;
      ltf_num_anterior [24] = reg_lotofacil_resultado_num.num_24;
      ltf_num_anterior [25] = reg_lotofacil_resultado_num.num_25;

      INSERT INTO lotofacil.lotofacil_resultado_novos_repetidos (concurso, novos_repetidos_id)
        SELECT
          reg_lotofacil_resultado_num.concurso,
          novos_repetidos_id
        FROM lotofacil.lotofacil_id_novos_repetidos
        WHERE novos = 0 AND repetidos = 15;

      contador_registro := contador_registro + 1;
      CONTINUE;
    END IF;

    -- Armazena os novos registros pra realizar a comparação
    ltf_num [0] = reg_lotofacil_resultado_num.concurso;
    ltf_num [1] = reg_lotofacil_resultado_num.num_1;
    ltf_num [2] = reg_lotofacil_resultado_num.num_2;
    ltf_num [3] = reg_lotofacil_resultado_num.num_3;
    ltf_num [4] = reg_lotofacil_resultado_num.num_4;
    ltf_num [5] = reg_lotofacil_resultado_num.num_5;
    ltf_num [6] = reg_lotofacil_resultado_num.num_6;
    ltf_num [7] = reg_lotofacil_resultado_num.num_7;
    ltf_num [8] = reg_lotofacil_resultado_num.num_8;
    ltf_num [9] = reg_lotofacil_resultado_num.num_9;
    ltf_num [10] = reg_lotofacil_resultado_num.num_10;
    ltf_num [11] = reg_lotofacil_resultado_num.num_11;
    ltf_num [12] = reg_lotofacil_resultado_num.num_12;
    ltf_num [13] = reg_lotofacil_resultado_num.num_13;
    ltf_num [14] = reg_lotofacil_resultado_num.num_14;
    ltf_num [15] = reg_lotofacil_resultado_num.num_15;
    ltf_num [16] = reg_lotofacil_resultado_num.num_16;
    ltf_num [17] = reg_lotofacil_resultado_num.num_17;
    ltf_num [18] = reg_lotofacil_resultado_num.num_18;
    ltf_num [19] = reg_lotofacil_resultado_num.num_19;
    ltf_num [20] = reg_lotofacil_resultado_num.num_20;
    ltf_num [21] = reg_lotofacil_resultado_num.num_21;
    ltf_num [22] = reg_lotofacil_resultado_num.num_22;
    ltf_num [23] = reg_lotofacil_resultado_num.num_23;
    ltf_num [24] = reg_lotofacil_resultado_num.num_24;
    ltf_num [25] = reg_lotofacil_resultado_num.num_25;

    -- Agora, iremos realizar a comparação do registro atual com o anterior.
    qt_repetidos := 0;
    qt_novos := 0;
    contador_bolas := 0;

    -- No loop abaixo, iremos comparar cada campo de prefixo num_ do registro
    -- atual com cada campo de prefixo num_ do registro anterior.
    -- Se o campo atual tiver o valor 1, então:
    -- Se o campo anterior tiver o valor 0, quer dizer, que a bola que corresponde
    -- àquele campo é nova, senão, se o valor fo 1, quer dizer, que a bola está
    -- se repetindo.
    -- Resumindo, iremos contabilizar, a quantidade de novos e repetidos, comparando
    -- sempre com o registro anterior.

    FOR uA IN 1..25 LOOP


      IF ltf_num [uA] = 1 AND ltf_num_anterior [uA] = 1
      THEN
        contador_bolas := contador_bolas + 1;

        -- Se o campo atual da combinação da lotofacil que estamos analisando tem o valor 1
        -- e o campo atual do concurso tiver o valor 1, quer dizer, que se repetem.
        qt_repetidos := qt_repetidos + 1;
      END IF;

      ltf_num_anterior [uA] := ltf_num [uA];
    END LOOP;

    -- Vamos verificar se há no máximo 15 repetidos.
    IF qt_repetidos > 15
    THEN
      RAISE EXCEPTION 'Erro, há mais de 15 números repetidos.';
      RETURN;
    END IF;

    IF qt_repetidos < 5
    THEN
      RAISE EXCEPTION 'Erro, há menos de 5 números repetidos, na lotofacil, sempre haverá 5 números'
      ' repetidos do concurso anterior.';
      RETURN;
    END IF;

    qt_novos = 15 - qt_repetidos;

    -- Insere um novo registro.
    INSERT INTO lotofacil.lotofacil_resultado_novos_repetidos (concurso, novos_repetidos_id)
      SELECT
        reg_lotofacil_resultado_num.concurso,
        novos_repetidos_id
      FROM lotofacil.lotofacil_id_novos_repetidos
      WHERE novos = qt_novos AND repetidos = qt_repetidos;


  END LOOP;

END;
$$;


/**
  TODO: VERIFICAR POSTERIORMENTE.
 */
/**
  Pra maior desempenho, criei uma tabela separada pra diferença, pois antes,
  eu realizava um group by diretamente na tabela lotofacil_diferenca_entre_bolas
  juntamente com a tabela de resultado e a consulta demorava alguns segundos,
  então, agora, alterei a trigger pra a tabela lotofacil_resultado_num, pra
  que toda vez que houver uma nova inserção, realizar a inserção diretamente
  na tabela abaixo, então, ao executar a view várias vezes, os dados da tabela
  terão poucos registros pra fazer o relacionamento.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_diferenca_entre_bolas;
CREATE TABLE lotofacil.lotofacil_resultado_diferenca_entre_bolas (
  concurso  NUMERIC NOT NULL,
  qt_alt    NUMERIC NOT NULL,
  qt_dif_1  NUMERIC NOT NULL,
  qt_dif_2  NUMERIC NOT NULL,
  qt_dif_3  NUMERIC NOT NULL,
  qt_dif_4  NUMERIC NOT NULL,
  qt_dif_5  NUMERIC NOT NULL,
  qt_dif_6  NUMERIC NOT NULL,
  qt_dif_7  NUMERIC NOT NULL,
  qt_dif_8  NUMERIC NOT NULL,
  qt_dif_9  NUMERIC NOT NULL,
  qt_dif_10 NUMERIC NOT NULL,
  qt_dif_11 NUMERIC NOT NULL,

  CONSTRAINT lotofacil_resultado_diferenca_entre_bolas_FK FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num (concurso)
  ON UPDATE CASCADE ON DELETE CASCADE
);
DROP INDEX IF EXISTS lotofacil_resultado_diferenca_entre_bolas_idx_1;
DROP INDEX IF EXISTS lotofacil_resultado_diferenca_entre_bolas_idx_2;
DROP INDEX IF EXISTS lotofacil_resultado_diferenca_entre_bolas_idx_3;
DROP INDEX IF EXISTS lotofacil_resultado_diferenca_entre_bolas_idx_4;
DROP INDEX IF EXISTS lotofacil_resultado_diferenca_entre_bolas_idx_5;
DROP INDEX IF EXISTS lotofacil_resultado_diferenca_entre_bolas_idx_6;
DROP INDEX IF EXISTS lotofacil_resultado_diferenca_entre_bolas_idx_7;
DROP INDEX IF EXISTS lotofacil_resultado_diferenca_entre_bolas_idx_8;
DROP INDEX IF EXISTS lotofacil_resultado_diferenca_entre_bolas_idx_9;
DROP INDEX IF EXISTS lotofacil_resultado_diferenca_entre_bolas_idx_10;
DROP INDEX IF EXISTS lotofacil_resultado_diferenca_entre_bolas_idx_11;
DROP INDEX IF EXISTS lotofacil_resultado_diferenca_entre_bolas_idx_12;

CREATE INDEX lotofacil_resultado_diferenca_entre_bolas_idx_1
  ON lotofacil.lotofacil_resultado_diferenca_entre_bolas (qt_alt);
CREATE INDEX lotofacil_resultado_diferenca_entre_bolas_idx_2
  ON lotofacil.lotofacil_resultado_diferenca_entre_bolas (qt_dif_1);
CREATE INDEX lotofacil_resultado_diferenca_entre_bolas_idx_3
  ON lotofacil.lotofacil_resultado_diferenca_entre_bolas (qt_dif_2);
CREATE INDEX lotofacil_resultado_diferenca_entre_bolas_idx_4
  ON lotofacil.lotofacil_resultado_diferenca_entre_bolas (qt_dif_3);
CREATE INDEX lotofacil_resultado_diferenca_entre_bolas_idx_5
  ON lotofacil.lotofacil_resultado_diferenca_entre_bolas (qt_dif_4);
CREATE INDEX lotofacil_resultado_diferenca_entre_bolas_idx_6
  ON lotofacil.lotofacil_resultado_diferenca_entre_bolas (qt_dif_5);
CREATE INDEX lotofacil_resultado_diferenca_entre_bolas_idx_7
  ON lotofacil.lotofacil_resultado_diferenca_entre_bolas (qt_dif_6);
CREATE INDEX lotofacil_resultado_diferenca_entre_bolas_idx_8
  ON lotofacil.lotofacil_resultado_diferenca_entre_bolas (qt_dif_7);
CREATE INDEX lotofacil_resultado_diferenca_entre_bolas_idx_9
  ON lotofacil.lotofacil_resultado_diferenca_entre_bolas (qt_dif_8);
CREATE INDEX lotofacil_resultado_diferenca_entre_bolas_idx_10
  ON lotofacil.lotofacil_resultado_diferenca_entre_bolas (qt_dif_9);
CREATE INDEX lotofacil_resultado_diferenca_entre_bolas_idx_11
  ON lotofacil.lotofacil_resultado_diferenca_entre_bolas (qt_dif_10);
CREATE INDEX lotofacil_resultado_diferenca_entre_bolas_idx_12
  ON lotofacil.lotofacil_resultado_diferenca_entre_bolas (qt_dif_11);





