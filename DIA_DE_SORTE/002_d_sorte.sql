/**
  Autor: Fábio Moura de Oliveira:
  Data:
  Tabela:
    Tabela d_sorte_num
  Descrição:

  Descrição:
    Na tabela abaixo, cada bola, tem um campo com a nomenclatura: num_<x>, onde
    <x> representa a bola correspondente, o valor deste campo pra cada combinação
    será o valor 1, se aquela bola existe naquela combinação ou 0 caso contrário.
 */

drop table if exists d_sorte.d_sorte_num cascade;
CREATE TABLE d_sorte.d_sorte_num (
  d_sorte_id         NUMERIC      NOT NULL,
  d_sorte_qt         smallint         NOT NULL check (d_sorte_qt in (7, 8, 9, 10, 11, 12, 13, 14, 15)),

  num_1                    smallint DEFAULT 0 check (num_1 in (0, 1)),
  num_2                    smallint DEFAULT 0 check (num_2 in (0, 1)),
  num_3                    smallint DEFAULT 0 check (num_3 in (0, 1)),
  num_4                    smallint DEFAULT 0 check (num_4 in (0, 1)),
  num_5                    smallint DEFAULT 0 check (num_5 in (0, 1)),
  num_6                    smallint DEFAULT 0 check (num_6 in (0, 1)),
  num_7                    smallint DEFAULT 0 check (num_7 in (0, 1)),
  num_8                    smallint DEFAULT 0 check (num_8 in (0, 1)),
  num_9                    smallint DEFAULT 0 check (num_9 in (0, 1)),
  num_10                   smallint DEFAULT 0 check (num_10 in (0, 1)),
  num_11                   smallint DEFAULT 0 check (num_11 in (0, 1)),
  num_12                   smallint DEFAULT 0 check (num_12 in (0, 1)),
  num_13                   smallint DEFAULT 0 check (num_13 in (0, 1)),
  num_14                   smallint DEFAULT 0 check (num_14 in (0, 1)),
  num_15                   smallint DEFAULT 0 check (num_15 in (0, 1)),
  num_16                   smallint DEFAULT 0 check (num_16 in (0, 1)),
  num_17                   smallint DEFAULT 0 check (num_17 in (0, 1)),
  num_18                   smallint DEFAULT 0 check (num_18 in (0, 1)),
  num_19                   smallint DEFAULT 0 check (num_19 in (0, 1)),
  num_20                   smallint DEFAULT 0 check (num_20 in (0, 1)),
  num_21                   smallint DEFAULT 0 check (num_21 in (0, 1)),
  num_22                   smallint DEFAULT 0 check (num_22 in (0, 1)),
  num_23                   smallint DEFAULT 0 check (num_23 in (0, 1)),
  num_24                   smallint DEFAULT 0 check (num_24 in (0, 1)),
  num_25                   smallint DEFAULT 0 check (num_25 in (0, 1)),
  num_26                   smallint DEFAULT 0 check (num_26 in (0, 1)),
  num_27                   smallint DEFAULT 0 check (num_27 in (0, 1)),
  num_28                   smallint DEFAULT 0 check (num_28 in (0, 1)),
  num_29                   smallint DEFAULT 0 check (num_29 in (0, 1)),
  num_30                   smallint DEFAULT 0 check (num_30 in (0, 1)),
  num_31                   smallint DEFAULT 0 check (num_31 in (0, 1)),

  CONSTRAINT d_sorte_num_chk check (
    (num_1 + num_2  + num_3  + num_4  + num_5  + num_6  + num_7  + num_8  + num_9  + num_10 +
    num_11 + num_12 + num_13 + num_14 + num_15 + num_16 + num_17 + num_18 + num_19 + num_20 +
    num_21 + num_22 + num_23 + num_24 + num_25 + num_26 + num_27 + num_28 + num_29 + num_30 + 
    num_31) = d_sorte_qt
  ),

  CONSTRAINT lotofacil_unk unique (num_1, num_2 , num_3 , num_4 , num_5 , num_6 , num_7 , num_8 , num_9 , num_10,
    num_11, num_12, num_13, num_14, num_15, num_16, num_17, num_18, num_19, num_20,
    num_21, num_22, num_23, num_24, num_25 , num_26, num_27, num_28, num_29, num_30,
    num_31),

  CONSTRAINT d_sorte_pk PRIMARY KEY (d_sorte_id)
);
comment on table d_sorte.d_sorte_num is 'Armazena 1, se a bola saiu na combinação ou 0, caso contrário.';
comment on column d_sorte.d_sorte_num.d_sorte_id is 'Identificador exclusivo pra cada combinação possível no jogo dia_de_sorte'
comment on column d_sorte.d_sorte_num.d_sorte_qt is 'Quantidade de bolas naquela combinação, no jogo dia de sorte,'
'é possível ter de 7 a 15 bolas, inicialmente, iremos somente implementar quantidade iguais a 7 bolas';


drop table if exists d_sorte.d_sorte_bolas;
CREATE TABLE d_sorte.d_sorte_bolas (
  d_sorte_id         NUMERIC      NOT NULL,
  d_sorte_qt         smallint         NOT NULL check (d_sorte_qt in (7, 8, 9, 10, 11, 12, 13, 14, 15)),

  b_1                    smallint not null check (b_1 between 1 and 25),
  b_2                    smallint not null check (b_2 between 2 and 26),
  b_3                    smallint not null check (b_3 between 3 and 27),
  b_4                    smallint not null check (b_4 between 4 and 28),
  b_5                    smallint not null check (b_5 between 5 and 29),
  b_6                    smallint not null check (b_6 between 6 and 30),
  b_7                    smallint not null check (b_7 between 7 and 31),
  b_8                    smallint default null,
  b_9                    smallint default null,
  b_10                   smallint default null,
  b_11                   smallint default null,
  b_12                   smallint default null,
  b_13                   smallint default null,
  b_14                   smallint default null,
  b_15                   smallint default null



  CONSTRAINT d_sorte_bolas_chk check (
    (b_1 + b_2  + b_3  + b_4  + b_5  + b_6  + b_7  + b_8  + b_9  + b_10 +
    b_11 + b_12 + b_13 + b_14 + b_15 ) = d_sorte_qt
  ),

  CONSTRAINT d_sorte_bolas_unk unique (b_1, b_2 , b_3 , b_4 , b_5 , b_6 , b_7 , b_8 , b_9 , b_10,
    b_11, b_12, b_13, b_14, b_15),

  CONSTRAINT d_sorte_bolas_pk PRIMARY KEY (d_sorte_id),

  CONSTRAINT d_sorte_bolas_fk FOREIGN KEY (d_sorte_id) REFERENCES d_sorte.d_sorte_num(d_sorte_id) on update cascade on delete cascade
);
comment on table d_sorte.d_sorte_num is 'Armazena 1, se a bola saiu na combinação ou 0, caso contrário.';
comment on column d_sorte.d_sorte_num.d_sorte_id is 'Identificador exclusivo pra cada combinação possível no jogo dia_de_sorte'
comment on column d_sorte.d_sorte_num.d_sorte_qt is 'Quantidade de bolas naquela combinação, no jogo dia de sorte,'
'é possível ter de 7 a 15 bolas, inicialmente, iremos somente implementar quantidade iguais a 7 bolas';

drop table if exists d_sorte.d_sorte_num_bolas;
create table d_sorte.d_sorte_num_bolas(
  d_sorte_seq numeric not null,
  d_sorte_id         NUMERIC      NOT NULL,
  d_sorte_qt         smallint         NOT NULL check (d_sorte_qt in (5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15)),
  bola               smallint not null check (bola BETWEEN 1 and 31),

  constraint d_sorte_num_bolas_pk PRIMARY KEY (d_sorte_seq),
  CONSTRAINT d_sorte_num_bolas_unk UNIQUE (d_sorte_id, d_sorte_qt, bola)
);

drop table if exists d_sorte.d_sorte_id cascade;
create table d_sorte.d_sorte_id(
  d_sorte_id numeric not null,
  d_sorte_qt numeric not null,

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

  dz_id numeric not null,
  un_id numeric not null,
  alg_id numeric not null,

  sm_bolas_id numeric not null,
  sm_alg_id numeric not null,

  CONSTRAINT d_sorte_id_fk_1 FOREIGN KEY (d_sorte_id) references d_sorte.d_sorte_num(d_sorte_id) on update cascade on delete cascade,

  CONSTRAINT d_sorte_id_fk_2 FOREIGN KEY (par_impar_id) references d_sorte.d_sorte_id_par_impar(par_impar_id) on update cascade on delete cascade,
  CONSTRAINT d_sorte_id_fk_3 FOREIGN KEY (ext_int_id) references d_sorte.d_sorte_id_externo_interno(ext_int_id) on update cascade on delete cascade,
  CONSTRAINT d_sorte_id_fk_4 FOREIGN KEY (prm_id) references d_sorte.d_sorte_id_primo_nao_primo(prm_id) on update cascade on delete cascade,

  CONSTRAINT d_sorte_id_fk_5 FOREIGN KEY (hrz_id) references d_sorte.d_sorte_id_horizontal(hrz_id) on update cascade on delete cascade,
  CONSTRAINT d_sorte_id_fk_6 FOREIGN KEY (vrt_id) references d_sorte.d_sorte_id_vertical(vrt_id) on update cascade on delete cascade,
  
  CONSTRAINT d_sorte_id_fk_7 FOREIGN KEY (dge_id) references d_sorte.d_sorte_id_diagonal_esquerda(dge_id) on update cascade on delete cascade,
  CONSTRAINT d_sorte_id_fk_8 FOREIGN KEY (dgd_id) references d_sorte.d_sorte_id_diagonal_direita(dgd_id) on update cascade on delete cascade,

  CONSTRAINT d_sorte_id_fk_9 FOREIGN KEY (esq_dir_id) references d_sorte.d_sorte_id_esquerda_direita (esq_dir_id) on update cascade on delete cascade,
  CONSTRAINT d_sorte_id_fk_10 FOREIGN KEY (sup_inf_id) REFERENCES d_sorte.d_sorte_id_superior_inferior (sup_inf_id) on update cascade on delete cascade,

  constraint d_sorte_id_fk_11 FOREIGN KEY (qd_id) REFERENCES d_sorte.d_sorte_id_quadrante (qd_id) on update cascade on delete cascade,
    
  CONSTRAINT d_sorte_id_fk_12 FOREIGN KEY (un_id) REFERENCES d_sorte.d_sorte_id_unidade(un_id) on UPDATE cascade on delete cascade,
  
  CONSTRAINT d_sorte_id_fk_13 FOREIGN KEY (dz_id) REFERENCES d_sorte.d_sorte_id_dezena(dz_id) on UPDATE cascade on delete cascade,
  CONSTRAINT d_sorte_id_fk_14 FOREIGN KEY (alg_id) REFERENCES d_sorte.d_sorte_id_algarismo(alg_id) on UPDATE cascade on delete cascade
  );
