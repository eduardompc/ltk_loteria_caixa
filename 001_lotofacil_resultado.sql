/**
  Scripts sql de criação de tabelas pra análise do jogo da lotofacil da caixa.
  Eu já havia criado as tabelas, mas agora, está otimizada.

 */

/**
  Apaga as views, pois ela depende das tabelas deste arquivo.
 */

drop view if exists lotofacil.v_lotofacil_resultado_par_impar;
drop view if exists lotofacil.v_lotofacil_resultado_par_impar_detalhado;

drop view if exists lotofacil.v_lotofacil_resultado_externo_interno;
drop view if exists lotofacil.v_lotofacil_resultado_externo_interno_detalhado;

drop view if exists lotofacil.v_lotofacil_resultado_primo;
drop view if exists lotofacil.v_lotofacil_resultado_primo_detalhado;

drop view if exists lotofacil.v_lotofacil_resultado_horizontal;
drop view if exists lotofacil.v_lotofacil_resultado_horizontal_detalhado;

drop view if exists lotofacil.v_lotofacil_resultado_vertical;
drop view if exists lotofacil.v_lotofacil_resultado_vertical_detalhado;

drop view if exists lotofacil.v_lotofacil_resultado_diagonal;
drop view if exists lotofacil.v_lotofacil_resultado_diagonal_detalhado;

drop view if exists lotofacil.v_lotofacil_resultado_cruzeta;
drop view if exists lotofacil.v_lotofacil_resultado_cruzeta_detalhado;

drop view if exists lotofacil.v_lotofacil_resultado_externo_interno;
drop view if exists lotofacil.v_lotofacil_resultado_externo_interno_detalhado;

drop view if exists lotofacil.v_lotofacil_resultado_quarteto;
drop view if exists lotofacil.v_lotofacil_resultado_quarteto_detalhado;

drop view if exists lotofacil.v_lotofacil_resultado_trio;
drop view if exists lotofacil.v_lotofacil_resultado_trio_detalhado;

drop view if exists lotofacil.v_lotofacil_resultado_b1;
drop view if exists lotofacil.v_lotofacil_resultado_b1_b15;
drop view if exists lotofacil.v_lotofacil_resultado_b1_b8_b15;
drop view if exists lotofacil.v_lotofacil_resultado_b1_b4_b8_b12_b15;

drop view if exists lotofacil.v_lotofacil_resultado_grupo2bolas;
drop view if exists lotofacil.v_lotofacil_resultado_grupo3bolas;
drop view if exists lotofacil.v_lotofacil_resultado_grupo4bolas;
drop view if exists lotofacil.v_lotofacil_resultado_grupo5bolas;

drop view if exists lotofacil.v_lotofacil_grupo_2bolas;
drop view if exists lotofacil.v_lotofacil_grupo_3bolas;
drop view if exists lotofacil.v_lotofacil_grupo_4bolas;
drop view if exists lotofacil.v_lotofacil_grupo_5bolas;

drop table if exists lotofacil.lotofacil_resultado_grupo_2bolas;
drop table if exists lotofacil.lotofacil_resultado_grupo_3bolas;
drop table if exists lotofacil.lotofacil_resultado_grupo_4bolas;
drop table if exists lotofacil.lotofacil_resultado_grupo_5bolas;


/**
  Apaga as tabelas de colunas b.
 */
drop TABLE if exists lotofacil.lotofacil_resultado_bolas;
drop table if exists lotofacil.lotofacil_resultado_num;

/**
  Esta é a tabela, onde os dados serão inseridos na tabela, as demais tabelas
  serão inseridos conforme os dados são inseridas aqui.
 */
drop table if exists lotofacil.lotofacil_resultado_num;
CREATE TABLE lotofacil.lotofacil_resultado_num (
  concurso         NUMERIC      NOT NULL,
  data             DATE         NOT NULL,

  num_1                    NUMERIC DEFAULT 0 check (num_1 in (0, 1)),
  num_2                    NUMERIC DEFAULT 0 check (num_2 in (0, 1)),
  num_3                    NUMERIC DEFAULT 0 check (num_3 in (0, 1)),
  num_4                    NUMERIC DEFAULT 0 check (num_4 in (0, 1)),
  num_5                    NUMERIC DEFAULT 0 check (num_5 in (0, 1)),
  num_6                    NUMERIC DEFAULT 0 check (num_6 in (0, 1)),
  num_7                    NUMERIC DEFAULT 0 check (num_7 in (0, 1)),
  num_8                    NUMERIC DEFAULT 0 check (num_8 in (0, 1)),
  num_9                    NUMERIC DEFAULT 0 check (num_9 in (0, 1)),
  num_10                   NUMERIC DEFAULT 0 check (num_10 in (0, 1)),
  num_11                   NUMERIC DEFAULT 0 check (num_11 in (0, 1)),
  num_12                   NUMERIC DEFAULT 0 check (num_12 in (0, 1)),
  num_13                   NUMERIC DEFAULT 0 check (num_13 in (0, 1)),
  num_14                   NUMERIC DEFAULT 0 check (num_14 in (0, 1)),
  num_15                   NUMERIC DEFAULT 0 check (num_15 in (0, 1)),
  num_16                   NUMERIC DEFAULT 0 check (num_16 in (0, 1)),
  num_17                   NUMERIC DEFAULT 0 check (num_17 in (0, 1)),
  num_18                   NUMERIC DEFAULT 0 check (num_18 in (0, 1)),
  num_19                   NUMERIC DEFAULT 0 check (num_19 in (0, 1)),
  num_20                   NUMERIC DEFAULT 0 check (num_20 in (0, 1)),
  num_21                   NUMERIC DEFAULT 0 check (num_21 in (0, 1)),
  num_22                   NUMERIC DEFAULT 0 check (num_22 in (0, 1)),
  num_23                   NUMERIC DEFAULT 0 check (num_23 in (0, 1)),
  num_24                   NUMERIC DEFAULT 0 check (num_24 in (0, 1)),
  num_25                   NUMERIC DEFAULT 0 check (num_25 in (0, 1)),

  CONSTRAINT lotofacil_resultado_num_chk check (
    (num_1 + num_2  + num_3  + num_4  + num_5  + num_6  + num_7  + num_8  + num_9  + num_10 +
    num_11 + num_12 + num_13 + num_14 + num_15 + num_16 + num_17 + num_18 + num_19 + num_20 +
    num_21 + num_22 + num_23 + num_24 + num_25 ) = 15),

  CONSTRAINT lotofacil_resultado_pk PRIMARY KEY (concurso),

);
comment on table lotofacil.lotofacil_resultado_num is
'Esta é a tabela inicial, que são armazenados os resultados da lotofacil, '
'os campos num_0 a num_99 corresponde respectivamentes às bolas 0 a 99 do lotofacil,'
'o campo terá o valor 1, se a bola foi sorteada, 0 (zero) caso contrário.'
'Tem que ser sorteado 20 números, senão a restrição de verificação não irá deixar inserir o registro.';

create index lotofacil_resultado_num_idx_1 on lotofacil.lotofacil_resultado_num(num_1);
create index lotofacil_resultado_num_idx_2 on lotofacil.lotofacil_resultado_num(num_2);
create index lotofacil_resultado_num_idx_3 on lotofacil.lotofacil_resultado_num(num_3);
create index lotofacil_resultado_num_idx_4 on lotofacil.lotofacil_resultado_num(num_4);
create index lotofacil_resultado_num_idx_5 on lotofacil.lotofacil_resultado_num(num_5);
create index lotofacil_resultado_num_idx_6 on lotofacil.lotofacil_resultado_num(num_6);
create index lotofacil_resultado_num_idx_7 on lotofacil.lotofacil_resultado_num(num_7);
create index lotofacil_resultado_num_idx_8 on lotofacil.lotofacil_resultado_num(num_8);
create index lotofacil_resultado_num_idx_9 on lotofacil.lotofacil_resultado_num(num_9);
create index lotofacil_resultado_num_idx_10 on lotofacil.lotofacil_resultado_num(num_10);
create index lotofacil_resultado_num_idx_11 on lotofacil.lotofacil_resultado_num(num_11);
create index lotofacil_resultado_num_idx_12 on lotofacil.lotofacil_resultado_num(num_12);
create index lotofacil_resultado_num_idx_13 on lotofacil.lotofacil_resultado_num(num_13);
create index lotofacil_resultado_num_idx_14 on lotofacil.lotofacil_resultado_num(num_14);
create index lotofacil_resultado_num_idx_15 on lotofacil.lotofacil_resultado_num(num_15);
create index lotofacil_resultado_num_idx_16 on lotofacil.lotofacil_resultado_num(num_16);
create index lotofacil_resultado_num_idx_17 on lotofacil.lotofacil_resultado_num(num_17);
create index lotofacil_resultado_num_idx_18 on lotofacil.lotofacil_resultado_num(num_18);
create index lotofacil_resultado_num_idx_19 on lotofacil.lotofacil_resultado_num(num_19);
create index lotofacil_resultado_num_idx_20 on lotofacil.lotofacil_resultado_num(num_20);
create index lotofacil_resultado_num_idx_21 on lotofacil.lotofacil_resultado_num(num_21);
create index lotofacil_resultado_num_idx_22 on lotofacil.lotofacil_resultado_num(num_22);
create index lotofacil_resultado_num_idx_23 on lotofacil.lotofacil_resultado_num(num_23);
create index lotofacil_resultado_num_idx_24 on lotofacil.lotofacil_resultado_num(num_24);
create index lotofacil_resultado_num_idx_25 on lotofacil.lotofacil_resultado_num(num_25);
create index lotofacil_resultado_num_idx_26 on lotofacil.lotofacil_resultado_num(
  num_1, num_2, num_3, num_4, num_5, num_6, num_7, num_8, num_9, num_10,
  num_11, num_12, num_13, num_14, num_15, num_16, num_17, num_18, num_19, num_20,
  num_21, num_22, num_23, num_24, num_25
);
vacuum lotofacil.lotofacil_resultado_num;

drop TABLE if exists lotofacil.lotofacil_resultado_bolas;
create table lotofacil.lotofacil_resultado_bolas(
  concurso numeric not null,

  b_1                    NUMERIC DEFAULT 0 ,
  b_2                    NUMERIC DEFAULT 0 ,
  b_3                    NUMERIC DEFAULT 0 ,
  b_4                    NUMERIC DEFAULT 0 ,
  b_5                    NUMERIC DEFAULT 0 ,
  b_6                    NUMERIC DEFAULT 0 ,
  b_7                    NUMERIC DEFAULT 0 ,
  b_8                    NUMERIC DEFAULT 0 ,
  b_9                    NUMERIC DEFAULT 0 ,
  b_10                   NUMERIC DEFAULT 0 ,
  b_11                   NUMERIC DEFAULT 0 ,
  b_12                   NUMERIC DEFAULT 0 ,
  b_13                   NUMERIC DEFAULT 0 ,
  b_14                   NUMERIC DEFAULT 0 ,
  b_15                   NUMERIC DEFAULT 0 ,

  CONSTRAINT lotofacil_resultado_bolas_pk PRIMARY KEY (concurso),
  CONSTRAINT lotofacil_resultado_bolas_fk FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num(concurso)
  on UPDATE cascade on DELETE cascade,
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
drop table if exists lotofacil.lotofacil_resultado_id;
create table lotofacil.lotofacil_resultado_id(
  concurso numeric not null,
  ltf_id numeric not null,
  par_impar_id numeric not null,
  ext_int_id numeric not null,
  prm_id numeric not null,
  hrz_id numeric not null,
  vrt_id numeric not null,
  dg_id numeric not null,
  crz_id numeric not null,
  qrt_id numeric not null,
  trio_id numeric not null,
  b1_id numeric not null,
  b1_b15_id numeric not null,
  b1_b8_b15_id numeric not null,
  b1_b4_b8_b12_b15_id numeric not null,

  CONSTRAINT lotofacil_resultado_fk1 FOREIGN KEY (ltf_id) references lotofacil.lotofacil_num(ltf_id) on update cascade on delete cascade,
  -- CONSTRAINT lotofacil_resultado_fk2 FOREIGN KEY (ltf_qt) references lotofacil.lotofacil_num(ltf_id) on update cascade on delete cascade,
  CONSTRAINT lotofacil_resultado_fk3 FOREIGN KEY (par_impar_id) references lotofacil.lotofacil_id_par_impar(par_impar_id) on update cascade on delete cascade,
  CONSTRAINT lotofacil_resultado_fk4 FOREIGN KEY (ext_int_id) references lotofacil.lotofacil_id_externo_interno(ext_int_id) on update cascade on delete cascade,
  CONSTRAINT lotofacil_resultado_fk5 FOREIGN KEY (prm_id) references lotofacil.lotofacil_id_primo(prm_id) on update cascade on delete cascade,
  CONSTRAINT lotofacil_resultado_fk6 FOREIGN KEY (hrz_id) references lotofacil.lotofacil_id_horizontal(hrz_id) on update cascade on delete cascade,
  CONSTRAINT lotofacil_resultado_fk7 FOREIGN KEY (vrt_id) references lotofacil.lotofacil_id_vertical(vrt_id) on update cascade on delete cascade,
  CONSTRAINT lotofacil_resultado_fk8 FOREIGN KEY (dg_id) references lotofacil.lotofacil_id_diagonal(dg_id) on update cascade on delete cascade,
  CONSTRAINT lotofacil_resultado_fk9 FOREIGN KEY (crz_id) references lotofacil.lotofacil_id_cruzeta(crz_id) on update cascade on delete cascade,

  CONSTRAINT lotofacil_resultado_fk11 FOREIGN KEY (b1_id) REFERENCES lotofacil.lotofacil_id_b1(b1_id) on UPDATE cascade on delete cascade,
  CONSTRAINT lotofacil_resultado_fk12 FOREIGN KEY (b1_b15_id) REFERENCES lotofacil.lotofacil_id_b1_b15(b1_b15_id) on UPDATE cascade on delete cascade,
  CONSTRAINT lotofacil_resultado_fk13 FOREIGN KEY (b1_b8_b15_id) REFERENCES lotofacil.lotofacil_id_b1_b8_b15(b1_b8_b15_id) on UPDATE cascade on delete cascade,
  CONSTRAINT lotofacil_resultado_fk14 FOREIGN KEY (b1_b4_b8_b12_b15_id) REFERENCES lotofacil.lotofacil_id_b1_b4_b8_b12_b15(b1_b4_b8_b12_b15_id) on UPDATE cascade on delete cascade
);


/**
  Pra aumentar o desempenho, eu irei criar indices pra cada cada campo, afinal de contas, provavelmente, irei fazer
  select em um ou vários campos desta tabela.
 */
create index lotofacil_resultado_id_idx_1 on lotofacil.lotofacil_resultado_id(ltf_id);
create index lotofacil_resultado_id_idx_3 on lotofacil.lotofacil_resultado_id(par_impar_id);
create index lotofacil_resultado_id_idx_4 on lotofacil.lotofacil_resultado_id(ext_int_id);
create index lotofacil_resultado_id_idx_5 on lotofacil.lotofacil_resultado_id(prm_id);
create index lotofacil_resultado_id_idx_6 on lotofacil.lotofacil_resultado_id(hrz_id);
create index lotofacil_resultado_id_idx_7 on lotofacil.lotofacil_resultado_id(vrt_id);
create index lotofacil_resultado_id_idx_8 on lotofacil.lotofacil_resultado_id(dg_id);
create index lotofacil_resultado_id_idx_9 on lotofacil.lotofacil_resultado_id(crz_id);

create index lotofacil_resultado_id_idx_11 on lotofacil.lotofacil_resultado_id(b1_id);
create index lotofacil_resultado_id_idx_12 on lotofacil.lotofacil_resultado_id(b1_b15_id);
create index lotofacil_resultado_id_idx_13 on lotofacil.lotofacil_resultado_id(b1_b8_b15_id);
create index lotofacil_resultado_id_idx_14 on lotofacil.lotofacil_resultado_id(b1_b4_b8_b12_b15_id);

/**
  Novos, repetidos, ainda nao saiu, deixou de sair.
 */
drop table if exists lotofacil.lotofacil_resultado_novos_repetidos;
create table lotofacil.lotofacil_resultado_novos_repetidos(
  concurso numeric not null,
  novos_repetidos_id numeric not null,
  CONSTRAINT lotofacil_resultado_novos_repetidos_pk PRIMARY KEY (concurso),
  CONSTRAINT lotofacil_resultado_novos_repetidos_unk UNIQUE (concurso, novos_repetidos_id)
);

/**
  Pra maior desempenho, criei uma tabela separada pra diferença, pois antes,
  eu realizava um group by diretamente na tabela lotofacil_diferenca_entre_bolas
  juntamente com a tabela de resultado e a consulta demorava alguns segundos,
  então, agora, alterei a trigger pra a tabela lotofacil_resultado_num, pra
  que toda vez que houver uma nova inserção, realizar a inserção diretamente
  na tabela abaixo, então, ao executar a view várias vezes, os dados da tabela
  terão poucos registros pra fazer o relacionamento.
 */
drop table if exists lotofacil.lotofacil_resultado_diferenca_entre_bolas;
create table lotofacil.lotofacil_resultado_diferenca_entre_bolas(
  concurso numeric not null,
  qt_alt numeric not null,
  qt_dif_1 numeric not null,
  qt_dif_2 numeric not null,
  qt_dif_3 numeric not null,
  qt_dif_4 numeric not null,
  qt_dif_5 numeric not null,
  qt_dif_6 numeric not null,
  qt_dif_7 numeric not null,
  qt_dif_8 numeric not null,
  qt_dif_9 numeric not NULL,
  qt_dif_10 numeric not null,
  qt_dif_11 numeric not null,

  CONSTRAINT lotofacil_resultado_diferenca_entre_bolas_FK FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num(concurso)
  on update cascade on delete cascade
);
drop index if exists lotofacil_resultado_diferenca_entre_bolas_idx_1;
drop index if exists lotofacil_resultado_diferenca_entre_bolas_idx_2;
drop index if exists lotofacil_resultado_diferenca_entre_bolas_idx_3;
drop index if exists lotofacil_resultado_diferenca_entre_bolas_idx_4;
drop index if exists lotofacil_resultado_diferenca_entre_bolas_idx_5;
drop index if exists lotofacil_resultado_diferenca_entre_bolas_idx_6;
drop index if exists lotofacil_resultado_diferenca_entre_bolas_idx_7;
drop index if exists lotofacil_resultado_diferenca_entre_bolas_idx_8;
drop index if exists lotofacil_resultado_diferenca_entre_bolas_idx_9;
drop index if exists lotofacil_resultado_diferenca_entre_bolas_idx_10;
drop index if exists lotofacil_resultado_diferenca_entre_bolas_idx_11;
drop index if exists lotofacil_resultado_diferenca_entre_bolas_idx_12;

create index lotofacil_resultado_diferenca_entre_bolas_idx_1 on lotofacil.lotofacil_resultado_diferenca_entre_bolas(qt_alt);
create index lotofacil_resultado_diferenca_entre_bolas_idx_2 on lotofacil.lotofacil_resultado_diferenca_entre_bolas(qt_dif_1);
create index lotofacil_resultado_diferenca_entre_bolas_idx_3 on lotofacil.lotofacil_resultado_diferenca_entre_bolas(qt_dif_2);
create index lotofacil_resultado_diferenca_entre_bolas_idx_4 on lotofacil.lotofacil_resultado_diferenca_entre_bolas(qt_dif_3);
create index lotofacil_resultado_diferenca_entre_bolas_idx_5 on lotofacil.lotofacil_resultado_diferenca_entre_bolas(qt_dif_4);
create index lotofacil_resultado_diferenca_entre_bolas_idx_6 on lotofacil.lotofacil_resultado_diferenca_entre_bolas(qt_dif_5);
create index lotofacil_resultado_diferenca_entre_bolas_idx_7 on lotofacil.lotofacil_resultado_diferenca_entre_bolas(qt_dif_6);
create index lotofacil_resultado_diferenca_entre_bolas_idx_8 on lotofacil.lotofacil_resultado_diferenca_entre_bolas(qt_dif_7);
create index lotofacil_resultado_diferenca_entre_bolas_idx_9 on lotofacil.lotofacil_resultado_diferenca_entre_bolas(qt_dif_8);
create index lotofacil_resultado_diferenca_entre_bolas_idx_10 on lotofacil.lotofacil_resultado_diferenca_entre_bolas(qt_dif_9);
create index lotofacil_resultado_diferenca_entre_bolas_idx_11 on lotofacil.lotofacil_resultado_diferenca_entre_bolas(qt_dif_10);
create index lotofacil_resultado_diferenca_entre_bolas_idx_12 on lotofacil.lotofacil_resultado_diferenca_entre_bolas(qt_dif_11);









/**
  A tabela de resultado de grupo 1 bola, praticamente, o id corresponde à própria bola.
 */
drop table if exists lotofacil.lotofacil_resultado_grupo_1_bola;
create table lotofacil.lotofacil_resultado_grupo_1_bola(
  concurso numeric not null,
  grp_id numeric not null,
  CONSTRAINT lotofacil_resultado_grupo_1_bola_unk UNIQUE (concurso, grp_id),
  constraint lotofacil_resultado_grupo_1_bola_FK
  FOREIGN KEY (grp_id) REFERENCES lotofacil.lotofacil_id_grupo_1_bola(grp_id) on update cascade
);
comment on CONSTRAINT lotofacil_resultado_grupo_1_bola_FK on lotofacil.lotofacil_resultado_grupo_1_bola
is 'Se o id do grupo na tabela lotofacil_id_grupo_1 atualizar, devemos atualizar as tabelas dependentes,'
'percebe-se que não é possível deletar um id de grupo da tabela lotofacil_id_grupo_1 enquanto houver '
'registros na tabela que depende dela';

/*
alter table lotofacil.lotofacil_resultado_grupo_1_bola drop constraint lotofacil_resultado_grupo_1_bola_FK;
alter table lotofacil.lotofacil_resultado_grupo_10_bolas add constraint lotofacil_resultado_grupo_10_bola_FK
  FOREIGN KEY (grp_id) REFERENCES lotofacil.lotofacil_id_grupo_10_bolas(grp_id) on update cascade;
  */

drop table if exists lotofacil.lotofacil_resultado_grupo_2_bolas;
create table lotofacil.lotofacil_resultado_grupo_2_bolas(
  concurso numeric not null,
  grp_id numeric not null,
  CONSTRAINT lotofacil_resultado_grupo_2_bolas_unk UNIQUE (concurso, grp_id),
  constraint lotofacil_resultado_grupo_2_bolas_FK  FOREIGN KEY (grp_id) REFERENCES lotofacil.lotofacil_id_grupo_2_bolas(grp_id) on update cascade
);

drop table if exists lotofacil.lotofacil_resultado_grupo_3_bolas;
create table lotofacil.lotofacil_resultado_grupo_3_bolas(
  concurso numeric not null,
  grp_id numeric not null,
  CONSTRAINT lotofacil_resultado_grupo_3_bolas_unk UNIQUE (concurso, grp_id),
  constraint lotofacil_resultado_grupo_3_bolas_FK  FOREIGN KEY (grp_id) REFERENCES lotofacil.lotofacil_id_grupo_3_bolas(grp_id) on update cascade
  
);

drop table if exists lotofacil.lotofacil_resultado_grupo_4_bolas;
create table lotofacil.lotofacil_resultado_grupo_4_bolas(
  concurso numeric not null,
  grp_id numeric not null,
  CONSTRAINT lotofacil_resultado_grupo_4_bolas_unk UNIQUE (concurso, grp_id),
  constraint lotofacil_resultado_grupo_4_bolas_FK  FOREIGN KEY (grp_id) REFERENCES lotofacil.lotofacil_id_grupo_4_bolas(grp_id) on update cascade
);

drop table if exists lotofacil.lotofacil_resultado_grupo_5_bolas;
create table lotofacil.lotofacil_resultado_grupo_5_bolas(
  concurso numeric not null,
  grp_id numeric not null,
  CONSTRAINT lotofacil_resultado_grupo_5_bolas_unk UNIQUE (concurso, grp_id),
  constraint lotofacil_resultado_grupo_5_bolas_FK  FOREIGN KEY (grp_id) REFERENCES lotofacil.lotofacil_id_grupo_5_bolas(grp_id) on update cascade
);


drop table if exists lotofacil.lotofacil_resultado_grupo_6_bolas;
create table lotofacil.lotofacil_resultado_grupo_6_bolas(
  concurso numeric not null,
  grp_id numeric not null,
  CONSTRAINT lotofacil_resultado_grupo_6_bolas_unk UNIQUE (concurso, grp_id),
  constraint lotofacil_resultado_grupo_6_bolas_FK  FOREIGN KEY (grp_id) REFERENCES lotofacil.lotofacil_id_grupo_6_bolas(grp_id) on update cascade
);

drop table if exists lotofacil.lotofacil_resultado_grupo_7_bolas;
create table lotofacil.lotofacil_resultado_grupo_7_bolas(
  concurso numeric not null,
  grp_id numeric not null,
  CONSTRAINT lotofacil_resultado_grupo_7_bolas_unk UNIQUE (concurso, grp_id),
  constraint lotofacil_resultado_grupo_7_bolas_FK  FOREIGN KEY (grp_id) REFERENCES lotofacil.lotofacil_id_grupo_7_bolas(grp_id) on update cascade
);

drop table if exists lotofacil.lotofacil_resultado_grupo_8_bolas;
create table lotofacil.lotofacil_resultado_grupo_8_bolas(
  concurso numeric not null,
  grp_id numeric not null,
  CONSTRAINT lotofacil_resultado_grupo_8_bolas_unk UNIQUE (concurso, grp_id),
  constraint lotofacil_resultado_grupo_8_bolas_FK  FOREIGN KEY (grp_id) REFERENCES lotofacil.lotofacil_id_grupo_8_bolas(grp_id) on update cascade
);

drop table if exists lotofacil.lotofacil_resultado_grupo_9_bolas;
create table lotofacil.lotofacil_resultado_grupo_9_bolas(
  concurso numeric not null,
  grp_id numeric not null,
  CONSTRAINT lotofacil_resultado_grupo_9_bolas_unk UNIQUE (concurso, grp_id),
  constraint lotofacil_resultado_grupo_9_bolas_FK  FOREIGN KEY (grp_id) REFERENCES lotofacil.lotofacil_id_grupo_9_bolas(grp_id) on update cascade
);

drop table if exists lotofacil.lotofacil_resultado_grupo_10_bolas;
create table lotofacil.lotofacil_resultado_grupo_10_bolas(
  concurso numeric not null,
  grp_id numeric not null,
  CONSTRAINT lotofacil_resultado_grupo_10_bolas_unk UNIQUE (concurso, grp_id),
  constraint lotofacil_resultado_grupo_10_bolas_FK  FOREIGN KEY (grp_id) REFERENCES lotofacil.lotofacil_id_grupo_10_bolas(grp_id) on update cascade
);

drop table if exists lotofacil.lotofacil_resultado_soma;
create table lotofacil.lotofacil_resultado_soma(
  concurso numeric not null,
  bola_soma numeric not null,
  constraint lotofacil_resultado_soma_pk FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num(concurso) on update cascade on delete cascade
);



/**
  Esta função atualiza a tabela lotofacil.lotofacil_resultado_novos_repetidos.
 */
drop function if exists lotofacil.fn_lotofacil_resultado_atualizar_novos_repetidos();
create function lotofacil.fn_lotofacil_resultado_atualizar_novos_repetidos()
  returns void
  LANGUAGE plpgsql
  as $$
  DECLARE
    reg_lotofacil_resultado_num lotofacil.lotofacil_resultado_num%ROWTYPE;

    total_registros_novos_repetidos numeric;

    total_registros_resultado_bolas_num numeric;

    -- Conta cada registro.
    contador_registro numeric;
    
    -- Conta a quantidade de bola encontrada, parando, quando atingir 15.
    contador_bolas numeric;
    
    -- Arranjo que armazena cada bola.
    -- O índice 0, tem o número do concurso.
    ltf_num numeric[26];
    ltf_num_anterior numeric[26];
    ltf_frequencia numeric [26];

    qt_novos numeric;
    qt_repetidos numeric;
    
    -- Arranjo que serve pra armazenar a cada concurso 
    -- sorteado, a soma de toda as frequência de novos x repetidos.
    ltf_frequencia_total numeric[26];

  begin
    -- Verifica primeiro se há registro na tabela de resultados;
    Select count(*) into total_registros_resultado_bolas_num from lotofacil.lotofacil_resultado_num;

    if total_registros_resultado_bolas_num = 0 then
      Raise Notice 'Nenhum registro na tabela lotofacil_resultado_bolas';
      return;
    END IF;

    -- Devemos sempre deletar os dados da tabela lotofacil_resultado_novos_repetidos
    -- pois, não temos certeza se algum registro foi inserido fora da sequencia.
    delete from lotofacil.lotofacil_resultado_novos_repetidos;

    
    -- O loop abaixo é bem simples, ele compara cada campo de prefixo num_ 
    -- com o mesmo campo do registro anterior e realizar o seguinte procedimento:
    -- se o campo atual é 1
    contador_registro := 1;
    for reg_lotofacil_resultado_num in
      Select * from lotofacil.lotofacil_resultado_num
      order by concurso
    LOOP
      if contador_registro = 1 then
        ltf_num_anterior[0] = reg_lotofacil_resultado_num.concurso;
        ltf_num_anterior[1] = reg_lotofacil_resultado_num.num_1;
        ltf_num_anterior[2] = reg_lotofacil_resultado_num.num_2;
        ltf_num_anterior[3] = reg_lotofacil_resultado_num.num_3;
        ltf_num_anterior[4] = reg_lotofacil_resultado_num.num_4;
        ltf_num_anterior[5] = reg_lotofacil_resultado_num.num_5;
        ltf_num_anterior[6] = reg_lotofacil_resultado_num.num_6;
        ltf_num_anterior[7] = reg_lotofacil_resultado_num.num_7;
        ltf_num_anterior[8] = reg_lotofacil_resultado_num.num_8;
        ltf_num_anterior[9] = reg_lotofacil_resultado_num.num_9;
        ltf_num_anterior[10] = reg_lotofacil_resultado_num.num_10;
        ltf_num_anterior[11] = reg_lotofacil_resultado_num.num_11;
        ltf_num_anterior[12] = reg_lotofacil_resultado_num.num_12;
        ltf_num_anterior[13] = reg_lotofacil_resultado_num.num_13;
        ltf_num_anterior[14] = reg_lotofacil_resultado_num.num_14;
        ltf_num_anterior[15] = reg_lotofacil_resultado_num.num_15;
        ltf_num_anterior[16] = reg_lotofacil_resultado_num.num_16;
        ltf_num_anterior[17] = reg_lotofacil_resultado_num.num_17;
        ltf_num_anterior[18] = reg_lotofacil_resultado_num.num_18;
        ltf_num_anterior[19] = reg_lotofacil_resultado_num.num_19;
        ltf_num_anterior[20] = reg_lotofacil_resultado_num.num_20;
        ltf_num_anterior[21] = reg_lotofacil_resultado_num.num_21;
        ltf_num_anterior[22] = reg_lotofacil_resultado_num.num_22;
        ltf_num_anterior[23] = reg_lotofacil_resultado_num.num_23;
        ltf_num_anterior[24] = reg_lotofacil_resultado_num.num_24;
        ltf_num_anterior[25] = reg_lotofacil_resultado_num.num_25;
        
        Insert into lotofacil.lotofacil_resultado_novos_repetidos (concurso, novos_repetidos_id)
          SELECT reg_lotofacil_resultado_num.concurso, novos_repetidos_id FROM lotofacil.lotofacil_id_novos_repetidos
        where novos = 0 and repetidos = 15;

        contador_registro := contador_registro + 1;
        continue;
      END IF;
      
      -- Armazena os novos registros pra realizar a comparação
        ltf_num[0] = reg_lotofacil_resultado_num.concurso;
        ltf_num[1] = reg_lotofacil_resultado_num.num_1;
        ltf_num[2] = reg_lotofacil_resultado_num.num_2;
        ltf_num[3] = reg_lotofacil_resultado_num.num_3;
        ltf_num[4] = reg_lotofacil_resultado_num.num_4;
        ltf_num[5] = reg_lotofacil_resultado_num.num_5;
        ltf_num[6] = reg_lotofacil_resultado_num.num_6;
        ltf_num[7] = reg_lotofacil_resultado_num.num_7;
        ltf_num[8] = reg_lotofacil_resultado_num.num_8;
        ltf_num[9] = reg_lotofacil_resultado_num.num_9;
        ltf_num[10] = reg_lotofacil_resultado_num.num_10;
        ltf_num[11] = reg_lotofacil_resultado_num.num_11;
        ltf_num[12] = reg_lotofacil_resultado_num.num_12;
        ltf_num[13] = reg_lotofacil_resultado_num.num_13;
        ltf_num[14] = reg_lotofacil_resultado_num.num_14;
        ltf_num[15] = reg_lotofacil_resultado_num.num_15;
        ltf_num[16] = reg_lotofacil_resultado_num.num_16;
        ltf_num[17] = reg_lotofacil_resultado_num.num_17;
        ltf_num[18] = reg_lotofacil_resultado_num.num_18;
        ltf_num[19] = reg_lotofacil_resultado_num.num_19;
        ltf_num[20] = reg_lotofacil_resultado_num.num_20;
        ltf_num[21] = reg_lotofacil_resultado_num.num_21;
        ltf_num[22] = reg_lotofacil_resultado_num.num_22;
        ltf_num[23] = reg_lotofacil_resultado_num.num_23;
        ltf_num[24] = reg_lotofacil_resultado_num.num_24;
        ltf_num[25] = reg_lotofacil_resultado_num.num_25;

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

        for uA in 1..25 LOOP


          if ltf_num[uA] = 1  and ltf_num_anterior[uA] = 1 then
            contador_bolas := contador_bolas + 1;

            -- Se o campo atual da combinação da lotofacil que estamos analisando tem o valor 1
            -- e o campo atual do concurso tiver o valor 1, quer dizer, que se repetem.
            qt_repetidos := qt_repetidos + 1;
          end if;

          ltf_num_anterior[uA] := ltf_num[uA];
        END LOOP;

        -- Vamos verificar se há no máximo 15 repetidos.
        if qt_repetidos > 15 THEN
          Raise EXCEPTION 'Erro, há mais de 15 números repetidos.';
          return;
        END IF;

        if qt_repetidos < 5 THEN
          Raise Exception 'Erro, há menos de 5 números repetidos, na lotofacil, sempre haverá 5 números'
            ' repetidos do concurso anterior.';
          return;
        END IF;

        qt_novos = 15 - qt_repetidos;

        -- Insere um novo registro.
        Insert into lotofacil.lotofacil_resultado_novos_repetidos (concurso, novos_repetidos_id)
          SELECT reg_lotofacil_resultado_num.concurso, novos_repetidos_id FROM lotofacil.lotofacil_id_novos_repetidos
        where novos = qt_novos and repetidos = qt_repetidos;

      
    END LOOP;

  end;
  $$;

Select lotofacil.fn_lotofacil_resultado_atualizar_novos_repetidos();

/**
  Cria as tabelas que irão armazenados os seguintes dados:
  Novos
  Repetidos
  Ainda Nao saiu
  Deixou de Sair
 */

/**
  Tabela: lotofacil_resultado_novos_num:
  Nesta tabela, cada bola é representado por um campo, onde o nome do campo começa com o prefixo
  num_ e em seguida, vem o número da bola correspondente.
  Se a bola saiu naquele concurso, o valor do campo terá o valor 1.
  Há na lotofacil, no máximo 10 números novos, haverá validadores pra fazer com que esta condição
  seja satisfeita.
 */
drop table if exists lotofacil.lotofacil_resultado_novos_num;
CREATE TABLE lotofacil.lotofacil_resultado_novos_num (
  concurso NUMERIC NOT NULL,
  qt_novos NUMERIC NOT NULL,
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

  -- Na lotofacil pode haver no máximo 10 números novos.
  CONSTRAINT lotofacil_resultado_novos_num_CHK CHECK ((num_1 + num_2 + num_3 + num_4 + num_5 + num_6 + num_7 + num_8 + num_9 +
                                     num_10 + num_11 + num_12 + num_13 + num_14 + num_15 + num_16 + num_17 +
                                     num_18 + num_19 + num_20 + num_21 + num_22 + num_23 + num_24 +
                                     num_25) BETWEEN 0 AND 10),

  CONSTRAINT lotofacil_resultado_novos_num_FK FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num (concurso) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT lotofacil_resultado_novos_num_pk PRIMARY KEY (concurso)
);

/**
  Nesta tabela, armazena as bolas, em ordem crescente, que são novas em relação ao último concurso.
 */
drop table if exists lotofacil.lotofacil_resultado_novos_bolas;
CREATE TABLE lotofacil.lotofacil_resultado_novos_bolas (
  concurso NUMERIC NOT NULL,
  qt_novos    NUMERIC NOT NULL,

  b_1       NUMERIC DEFAULT NULL,
  b_2       NUMERIC DEFAULT NULL,
  b_3       NUMERIC DEFAULT NULL,
  b_4       NUMERIC DEFAULT NULL,
  b_5       NUMERIC DEFAULT NULL,
  b_6       NUMERIC DEFAULT NULL,
  b_7       NUMERIC DEFAULT NULL,
  b_8       NUMERIC DEFAULT NULL,
  b_9       NUMERIC DEFAULT NULL,
  b_10      NUMERIC DEFAULT NULL,
  b_11      NUMERIC DEFAULT NULL,
  b_12      NUMERIC DEFAULT NULL,
  b_13      NUMERIC DEFAULT NULL,
  b_14      NUMERIC DEFAULT NULL,
  b_15      NUMERIC DEFAULT NULL,

  CONSTRAINT lotofacil_resultado_novos_bolas_fk FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num (concurso) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT lotofacil_resultado_novos_bolas_pk PRIMARY KEY (concurso),

  CONSTRAINT lotofacil_resultado_novos_bolas_chk CHECK ((b_1 < b_2) AND (b_2 < b_3) AND (b_3 < b_4) AND (b_4 < b_5) AND
                                                  (b_5 < b_6) AND (b_6 < b_7) AND (b_7 < b_8) AND (b_8 < b_9) AND
                                                  (b_9 < b_10)),
  CONSTRAINT lotofacil_resultado_novos_bolas_chk2 CHECK (
    (qt_novos >= 0 AND qt_novos <= 15 AND concurso = 1) or (
        qt_novos >= 0 and qt_novos <= 10 and concurso <> 1
    ))
);

/**
  Um bola é considerada repetida, se a mesma bola saiu no concurso anterior e saiu no concurso atual.
  As bolas são representadas nos campos com prefixo num_, onde após o prefixo 'num_' há um número que
  corresponde a cada bola, por exemplo, num_1, corresponde a bola de número 1, num_2, corresponde a
  bola de número 2 e assim por diante.
  Tais campos terão 2 valores, 0 ou 1, será 0, se a bola não saiu no concurso ou 1 se tal bola saiu no concurso.
  Nesta tabela, há várias restrições que foram definidas pra evitar que inserções de dados inválidos ocorra.
  O campo 'qt_repetidos' corresponde a quantidade de bolas que foram repetidas, sempre haverá no mínimo 5
  bolas repetidas do último concurso.
 */
drop table if exists lotofacil.lotofacil_resultado_repetidos_num;
CREATE TABLE lotofacil.lotofacil_resultado_repetidos_num (
  concurso  NUMERIC NOT NULL,

  qt_repetidos NUMERIC NOT NULL check (qt_repetidos >= 5 and qt_repetidos <= 15),

  num_1     NUMERIC DEFAULT 0 CHECK (num_1 IN (0, 1)),
  num_2     NUMERIC DEFAULT 0 CHECK (num_2 IN (0, 1)),
  num_3     NUMERIC DEFAULT 0 CHECK (num_3 IN (0, 1)),
  num_4     NUMERIC DEFAULT 0 CHECK (num_4 IN (0, 1)),
  num_5     NUMERIC DEFAULT 0 CHECK (num_5 IN (0, 1)),
  num_6     NUMERIC DEFAULT 0 CHECK (num_6 IN (0, 1)),
  num_7     NUMERIC DEFAULT 0 CHECK (num_7 IN (0, 1)),
  num_8     NUMERIC DEFAULT 0 CHECK (num_8 IN (0, 1)),
  num_9     NUMERIC DEFAULT 0 CHECK (num_9 IN (0, 1)),
  num_10    NUMERIC DEFAULT 0 CHECK (num_10 IN (0, 1)),
  num_11    NUMERIC DEFAULT 0 CHECK (num_11 IN (0, 1)),
  num_12    NUMERIC DEFAULT 0 CHECK (num_12 IN (0, 1)),
  num_13    NUMERIC DEFAULT 0 CHECK (num_13 IN (0, 1)),
  num_14    NUMERIC DEFAULT 0 CHECK (num_14 IN (0, 1)),
  num_15    NUMERIC DEFAULT 0 CHECK (num_15 IN (0, 1)),
  num_16    NUMERIC DEFAULT 0 CHECK (num_16 IN (0, 1)),
  num_17    NUMERIC DEFAULT 0 CHECK (num_17 IN (0, 1)),
  num_18    NUMERIC DEFAULT 0 CHECK (num_18 IN (0, 1)),
  num_19    NUMERIC DEFAULT 0 CHECK (num_19 IN (0, 1)),
  num_20    NUMERIC DEFAULT 0 CHECK (num_20 IN (0, 1)),
  num_21    NUMERIC DEFAULT 0 CHECK (num_21 IN (0, 1)),
  num_22    NUMERIC DEFAULT 0 CHECK (num_22 IN (0, 1)),
  num_23    NUMERIC DEFAULT 0 CHECK (num_23 IN (0, 1)),
  num_24    NUMERIC DEFAULT 0 CHECK (num_24 IN (0, 1)),
  num_25    NUMERIC DEFAULT 0 CHECK (num_25 IN (0, 1)),

  -- Na lotofacil pode haver no máximo 15 números repetidos.
  CONSTRAINT lotofacil_resultado_repetidos_num_CHK CHECK ((num_1 + num_2 + num_3 + num_4 + num_5 + num_6 + num_7 + num_8 + num_9 +
                                     num_10 + num_11 + num_12 + num_13 + num_14 + num_15 + num_16 + num_17 +
                                     num_18 + num_19 + num_20 + num_21 + num_22 + num_23 + num_24 +
                                     num_25) BETWEEN 5 AND 15),

  CONSTRAINT lotofacil_resultado_repetidos_num_FK FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num (concurso) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT lotofacil_resultado_repetidos_num_PK PRIMARY KEY (concurso)
);

drop table if exists lotofacil.lotofacil_resultado_repetidos_bolas;
CREATE TABLE lotofacil.lotofacil_resultado_repetidos_bolas (
  concurso  NUMERIC NOT NULL,
  qt_repetidos NUMERIC NOT NULL,

  b_1       NUMERIC DEFAULT NULL,
  b_2       NUMERIC DEFAULT NULL,
  b_3       NUMERIC DEFAULT NULL,
  b_4       NUMERIC DEFAULT NULL,
  b_5       NUMERIC DEFAULT NULL,
  b_6       NUMERIC DEFAULT NULL,
  b_7       NUMERIC DEFAULT NULL,
  b_8       NUMERIC DEFAULT NULL,
  b_9       NUMERIC DEFAULT NULL,
  b_10      NUMERIC DEFAULT NULL,
  b_11      NUMERIC DEFAULT NULL,
  b_12      NUMERIC DEFAULT NULL,
  b_13      NUMERIC DEFAULT NULL,
  b_14      NUMERIC DEFAULT NULL,
  b_15      NUMERIC DEFAULT NULL,


  CONSTRAINT lotofacil_resultado_repetidos_fk FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num (concurso)
  ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT lotofacil_resultado_repetidos_pk PRIMARY KEY (concurso),

  CONSTRAINT lotofacil_resultado_repetidos_chk CHECK ((b_1 < b_2) AND (b_2 < b_3) AND (b_3 < b_4) AND (b_4 < b_5) AND
                                                      (b_5 < b_6) AND (b_6 < b_7) AND (b_7 < b_8) AND (b_8 < b_9) AND
                                                      (b_9 < b_10) AND (b_10 < b_11) AND (b_11 < b_12) AND (b_12 < b_13)
                                                      AND
                                                      (b_13 < b_14) AND (b_14 < b_15)),

  CONSTRAINT lotofacil_resultado_repetidos_chk_2 CHECK (qt_repetidos >= 0 AND qt_repetidos <= 15)
);

drop table if exists lotofacil.lotofacil_resultado_ainda_nao_saiu_num;
CREATE TABLE lotofacil.lotofacil_resultado_ainda_nao_saiu_num (
  concurso       NUMERIC NOT NULL,

  qt_ainda_nao_saiu NUMERIC NOT NULL,

  num_1          NUMERIC DEFAULT 0 CHECK (num_1 IN (0, 1)),
  num_2          NUMERIC DEFAULT 0 CHECK (num_2 IN (0, 1)),
  num_3          NUMERIC DEFAULT 0 CHECK (num_3 IN (0, 1)),
  num_4          NUMERIC DEFAULT 0 CHECK (num_4 IN (0, 1)),
  num_5          NUMERIC DEFAULT 0 CHECK (num_5 IN (0, 1)),
  num_6          NUMERIC DEFAULT 0 CHECK (num_6 IN (0, 1)),
  num_7          NUMERIC DEFAULT 0 CHECK (num_7 IN (0, 1)),
  num_8          NUMERIC DEFAULT 0 CHECK (num_8 IN (0, 1)),
  num_9          NUMERIC DEFAULT 0 CHECK (num_9 IN (0, 1)),
  num_10         NUMERIC DEFAULT 0 CHECK (num_10 IN (0, 1)),
  num_11         NUMERIC DEFAULT 0 CHECK (num_11 IN (0, 1)),
  num_12         NUMERIC DEFAULT 0 CHECK (num_12 IN (0, 1)),
  num_13         NUMERIC DEFAULT 0 CHECK (num_13 IN (0, 1)),
  num_14         NUMERIC DEFAULT 0 CHECK (num_14 IN (0, 1)),
  num_15         NUMERIC DEFAULT 0 CHECK (num_15 IN (0, 1)),
  num_16         NUMERIC DEFAULT 0 CHECK (num_16 IN (0, 1)),
  num_17         NUMERIC DEFAULT 0 CHECK (num_17 IN (0, 1)),
  num_18         NUMERIC DEFAULT 0 CHECK (num_18 IN (0, 1)),
  num_19         NUMERIC DEFAULT 0 CHECK (num_19 IN (0, 1)),
  num_20         NUMERIC DEFAULT 0 CHECK (num_20 IN (0, 1)),
  num_21         NUMERIC DEFAULT 0 CHECK (num_21 IN (0, 1)),
  num_22         NUMERIC DEFAULT 0 CHECK (num_22 IN (0, 1)),
  num_23         NUMERIC DEFAULT 0 CHECK (num_23 IN (0, 1)),
  num_24         NUMERIC DEFAULT 0 CHECK (num_24 IN (0, 1)),
  num_25         NUMERIC DEFAULT 0 CHECK (num_25 IN (0, 1)),

  -- Na lotofacil pode haver no máximo 10 números ainda_nao_saiu.
  CONSTRAINT soma_1_a_25_chk CHECK ((num_1 + num_2 + num_3 + num_4 + num_5 + num_6 + num_7 + num_8 + num_9 +
                                     num_10 + num_11 + num_12 + num_13 + num_14 + num_15 + num_16 + num_17 +
                                     num_18 + num_19 + num_20 + num_21 + num_22 + num_23 + num_24 +
                                     num_25) between 0 and 10),

  CONSTRAINT lotofacil_resultado_ainda_nao_saiu_num_fk FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num (concurso) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT lotofacil_resultado_ainda_nao_saiu_num_pk PRIMARY KEY (concurso)
);

drop table if exists lotofacil.lotofacil_resultado_ainda_nao_saiu_bolas;
CREATE TABLE lotofacil.lotofacil_resultado_ainda_nao_saiu_bolas (

  concurso       NUMERIC NOT NULL,

  qt_ainda_nao_saiu NUMERIC NOT NULL,

  b_1       NUMERIC DEFAULT NULL,
  b_2       NUMERIC DEFAULT NULL,
  b_3       NUMERIC DEFAULT NULL,
  b_4       NUMERIC DEFAULT NULL,
  b_5       NUMERIC DEFAULT NULL,
  b_6       NUMERIC DEFAULT NULL,
  b_7       NUMERIC DEFAULT NULL,
  b_8       NUMERIC DEFAULT NULL,
  b_9       NUMERIC DEFAULT NULL,
  b_10      NUMERIC DEFAULT NULL,

  CONSTRAINT lotofacil_resultado_ainda_nao_saiu_bolas_fk FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num (concurso) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT lotofacil_resultado_ainda_nao_saiu_bolas_pk PRIMARY KEY (concurso),

  CONSTRAINT lotofacil_resultado_ainda_nao_saiu_bolas_chk CHECK (
    (b_1 < b_2) AND (b_2 < b_3) AND (b_3 < b_4) AND (b_4 < b_5) AND
    (b_5 < b_6) AND (b_6 < b_7) AND (b_7 < b_8) AND (b_8 < b_9) AND
    (b_9 < b_10)),

  CONSTRAINT lotofacil_resultado_ainda_nao_saiu_intervalo_bolas_chk CHECK (qt_ainda_nao_saiu >= 0 AND qt_ainda_nao_saiu <= 10)
);

drop table if exists lotofacil.lotofacil_resultado_deixou_de_sair_num;
CREATE TABLE lotofacil.lotofacil_resultado_deixou_de_sair_num (
  concurso  NUMERIC NOT NULL,

  qt_deixou_de_sair NUMERIC NOT NULL,

  num_1     NUMERIC DEFAULT 0 CHECK (num_1 IN (0, 1)),
  num_2     NUMERIC DEFAULT 0 CHECK (num_2 IN (0, 1)),
  num_3     NUMERIC DEFAULT 0 CHECK (num_3 IN (0, 1)),
  num_4     NUMERIC DEFAULT 0 CHECK (num_4 IN (0, 1)),
  num_5     NUMERIC DEFAULT 0 CHECK (num_5 IN (0, 1)),
  num_6     NUMERIC DEFAULT 0 CHECK (num_6 IN (0, 1)),
  num_7     NUMERIC DEFAULT 0 CHECK (num_7 IN (0, 1)),
  num_8     NUMERIC DEFAULT 0 CHECK (num_8 IN (0, 1)),
  num_9     NUMERIC DEFAULT 0 CHECK (num_9 IN (0, 1)),
  num_10    NUMERIC DEFAULT 0 CHECK (num_10 IN (0, 1)),
  num_11    NUMERIC DEFAULT 0 CHECK (num_11 IN (0, 1)),
  num_12    NUMERIC DEFAULT 0 CHECK (num_12 IN (0, 1)),
  num_13    NUMERIC DEFAULT 0 CHECK (num_13 IN (0, 1)),
  num_14    NUMERIC DEFAULT 0 CHECK (num_14 IN (0, 1)),
  num_15    NUMERIC DEFAULT 0 CHECK (num_15 IN (0, 1)),
  num_16    NUMERIC DEFAULT 0 CHECK (num_16 IN (0, 1)),
  num_17    NUMERIC DEFAULT 0 CHECK (num_17 IN (0, 1)),
  num_18    NUMERIC DEFAULT 0 CHECK (num_18 IN (0, 1)),
  num_19    NUMERIC DEFAULT 0 CHECK (num_19 IN (0, 1)),
  num_20    NUMERIC DEFAULT 0 CHECK (num_20 IN (0, 1)),
  num_21    NUMERIC DEFAULT 0 CHECK (num_21 IN (0, 1)),
  num_22    NUMERIC DEFAULT 0 CHECK (num_22 IN (0, 1)),
  num_23    NUMERIC DEFAULT 0 CHECK (num_23 IN (0, 1)),
  num_24    NUMERIC DEFAULT 0 CHECK (num_24 IN (0, 1)),
  num_25    NUMERIC DEFAULT 0 CHECK (num_25 IN (0, 1)),

  -- Na lotofacil pode haver no máximo 15 números repetidos.
  CONSTRAINT soma_1_a_25_chk CHECK ((num_1 + num_2 + num_3 + num_4 + num_5 + num_6 + num_7 + num_8 + num_9 +
                                     num_10 + num_11 + num_12 + num_13 + num_14 + num_15 + num_16 + num_17 +
                                     num_18 + num_19 + num_20 + num_21 + num_22 + num_23 + num_24 +
                                     num_25) BETWEEN 1 AND 15),

  CONSTRAINT lotofacil_resultado_deixou_de_sair_num_fk FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num (concurso) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT lotofacil_resultado_deixou_de_sair_num_pk PRIMARY KEY (concurso)
);


drop table if exists lotofacil.lotofacil_resultado_deixou_de_sair_bolas;
CREATE TABLE lotofacil.lotofacil_resultado_deixou_de_sair_bolas (

  concurso  NUMERIC NOT NULL,

  qt_deixou_de_sair NUMERIC NOT NULL,

  b_1       NUMERIC DEFAULT NULL,
  b_2       NUMERIC DEFAULT NULL,
  b_3       NUMERIC DEFAULT NULL,
  b_4       NUMERIC DEFAULT NULL,
  b_5       NUMERIC DEFAULT NULL,
  b_6       NUMERIC DEFAULT NULL,
  b_7       NUMERIC DEFAULT NULL,
  b_8       NUMERIC DEFAULT NULL,
  b_9       NUMERIC DEFAULT NULL,
  b_10      NUMERIC DEFAULT NULL,
  b_11      NUMERIC DEFAULT NULL,
  b_12      NUMERIC DEFAULT NULL,
  b_13      NUMERIC DEFAULT NULL,
  b_14      NUMERIC DEFAULT NULL,
  b_15      NUMERIC DEFAULT NULL,


  CONSTRAINT lotofacil_resultado_deixou_de_sair_bolas_fk FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num (concurso)
  ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT lotofacil_resultado_deixou_de_sair_bolas_pk PRIMARY KEY (concurso),

  CONSTRAINT lotofacil_resultado_deixou_de_sair_bolas_chk CHECK ((b_1 < b_2) AND (b_2 < b_3) AND (b_3 < b_4) AND (b_4 < b_5) AND
                                                      (b_5 < b_6) AND (b_6 < b_7) AND (b_7 < b_8) AND (b_8 < b_9) AND
                                                      (b_9 < b_10) AND (b_10 < b_11) AND (b_11 < b_12) AND (b_12 < b_13)
                                                      AND
                                                      (b_13 < b_14) AND (b_14 < b_15)),

  CONSTRAINT lotofacil_resultado_deixou_de_sair_chk_2 CHECK (qt_deixou_de_sair >= 0 AND qt_deixou_de_sair <= 15)
);

/**
  Inserir depois disto.
 */

/**
  Tabela de frequência, onde o valor:
  >> negativo, indica que a bola não saiu, ou ainda não saiu.
  >> positivo, indica que a bola saiu, ou está se repetindo.
  Se o campo tem o valor 1, que dizer, que a bola é nova, não estava no concurso anterior, mas
  apareceu no atual.
  Se o campo tem o valor maior que 1, quer dizer que a bola esta se repetindo desde os últimos jogos;
  Se o campo tem o valor negativo igual a -1, quer dizer que a bola estava no concurso anterior,
  mas não saiu no concurso atual.
  Se o campo tem o valor negativo menor  que -1, quer dizer que a bola ainda não saiu desde o último
  concurso e o atual.
 */
drop table if exists lotofacil.lotofacil_resultado_num_frequencia;
CREATE TABLE lotofacil.lotofacil_resultado_num_frequencia (
  concurso         NUMERIC      NOT NULL,

  num_1                    NUMERIC DEFAULT 0,
  num_2                    NUMERIC DEFAULT 0,
  num_3                    NUMERIC DEFAULT 0,
  num_4                    NUMERIC DEFAULT 0,
  num_5                    NUMERIC DEFAULT 0,
  num_6                    NUMERIC DEFAULT 0,
  num_7                    NUMERIC DEFAULT 0,
  num_8                    NUMERIC DEFAULT 0,
  num_9                    NUMERIC DEFAULT 0,
  num_10                   NUMERIC DEFAULT 0,
  num_11                   NUMERIC DEFAULT 0,
  num_12                   NUMERIC DEFAULT 0,
  num_13                   NUMERIC DEFAULT 0,
  num_14                   NUMERIC DEFAULT 0,
  num_15                   NUMERIC DEFAULT 0,
  num_16                   NUMERIC DEFAULT 0,
  num_17                   NUMERIC DEFAULT 0,
  num_18                   NUMERIC DEFAULT 0,
  num_19                   NUMERIC DEFAULT 0,
  num_20                   NUMERIC DEFAULT 0,
  num_21                   NUMERIC DEFAULT 0,
  num_22                   NUMERIC DEFAULT 0,
  num_23                   NUMERIC DEFAULT 0,
  num_24                   NUMERIC DEFAULT 0,
  num_25                   NUMERIC DEFAULT 0,

  CONSTRAINT lotofacil_resultado_num_frequencia_pk PRIMARY KEY (concurso),

  constraint lotofacil_resultado_num_frequencia_fk FOREIGN KEY (concurso) references lotofacil.lotofacil_resultado_num(concurso)
  on update CASCADE on delete cascade
);
comment on CONSTRAINT lotofacil_resultado_num_frequencia_fk on lotofacil.lotofacil_resultado_num_frequencia is
'A tabela está com as clausulas on update cascade on delete cascade, pois, se for deletado '
'algum registro da tabela lotofacil_resultado_num automaticamente, este será deletado.';

/**
  Na tabela lotofacil_resultado_num_frequencia acima, a cada concurso sorteado,
  comparando o concurso atual com o concurso anterior, e verificamos quais bolas são
  novas, se repetem, deixou de sair ou ainda não saiu. Então pra cada campo, definirmos
  um valor negativo, que pode ser -1 ou menor que -1, ou positivo.
  A diferença da tabela abaixo, é que soma todos os valores de cada campo, pra termos
  uma frequência desde o primeiro concurso.
 */
drop table if exists lotofacil.lotofacil_resultado_num_frequencia_total;
CREATE TABLE lotofacil.lotofacil_resultado_num_frequencia_total (

  concurso         NUMERIC      NOT NULL,

  num_1                    NUMERIC DEFAULT 0,
  num_2                    NUMERIC DEFAULT 0,
  num_3                    NUMERIC DEFAULT 0,
  num_4                    NUMERIC DEFAULT 0,
  num_5                    NUMERIC DEFAULT 0,
  num_6                    NUMERIC DEFAULT 0,
  num_7                    NUMERIC DEFAULT 0,
  num_8                    NUMERIC DEFAULT 0,
  num_9                    NUMERIC DEFAULT 0,
  num_10                   NUMERIC DEFAULT 0,
  num_11                   NUMERIC DEFAULT 0,
  num_12                   NUMERIC DEFAULT 0,
  num_13                   NUMERIC DEFAULT 0,
  num_14                   NUMERIC DEFAULT 0,
  num_15                   NUMERIC DEFAULT 0,
  num_16                   NUMERIC DEFAULT 0,
  num_17                   NUMERIC DEFAULT 0,
  num_18                   NUMERIC DEFAULT 0,
  num_19                   NUMERIC DEFAULT 0,
  num_20                   NUMERIC DEFAULT 0,
  num_21                   NUMERIC DEFAULT 0,
  num_22                   NUMERIC DEFAULT 0,
  num_23                   NUMERIC DEFAULT 0,
  num_24                   NUMERIC DEFAULT 0,
  num_25                   NUMERIC DEFAULT 0,

  CONSTRAINT lotofacil_resultado_num_frequencia_total_pk PRIMARY KEY (concurso),

  constraint lotofacil_resultado_num_frequencia_total_fk FOREIGN KEY (concurso) references lotofacil.lotofacil_resultado_num(concurso)
  on update CASCADE on delete cascade
);
comment on CONSTRAINT lotofacil_resultado_num_frequencia_total_fk on lotofacil.lotofacil_resultado_num_frequencia_total is
'A tabela está com as clausulas on update cascade on delete cascade, pois, se for deletado '
'algum registro da tabela lotofacil_resultado_num automaticamente, este será deletado.';

/**
  Toda vez que o número é sorteado na lotofacil, o valor é incrementado, senão é decrementado,
  assim, fica fácil identificar, quais bolas, estão saindo mais.
 */
drop table if exists lotofacil.lotofacil_resultado_num_sobe_desce;
CREATE TABLE lotofacil.lotofacil_resultado_num_sobe_desce (
  concurso         NUMERIC      NOT NULL,

  num_1                    NUMERIC DEFAULT 0,
  num_2                    NUMERIC DEFAULT 0,
  num_3                    NUMERIC DEFAULT 0,
  num_4                    NUMERIC DEFAULT 0,
  num_5                    NUMERIC DEFAULT 0,
  num_6                    NUMERIC DEFAULT 0,
  num_7                    NUMERIC DEFAULT 0,
  num_8                    NUMERIC DEFAULT 0,
  num_9                    NUMERIC DEFAULT 0,
  num_10                   NUMERIC DEFAULT 0,
  num_11                   NUMERIC DEFAULT 0,
  num_12                   NUMERIC DEFAULT 0,
  num_13                   NUMERIC DEFAULT 0,
  num_14                   NUMERIC DEFAULT 0,
  num_15                   NUMERIC DEFAULT 0,
  num_16                   NUMERIC DEFAULT 0,
  num_17                   NUMERIC DEFAULT 0,
  num_18                   NUMERIC DEFAULT 0,
  num_19                   NUMERIC DEFAULT 0,
  num_20                   NUMERIC DEFAULT 0,
  num_21                   NUMERIC DEFAULT 0,
  num_22                   NUMERIC DEFAULT 0,
  num_23                   NUMERIC DEFAULT 0,
  num_24                   NUMERIC DEFAULT 0,
  num_25                   NUMERIC DEFAULT 0,

  CONSTRAINT lotofacil_resultado_num_sobe_desce_pk PRIMARY KEY (concurso),

  constraint lotofacil_resultado_num_sobe_desce_fk FOREIGN KEY (concurso) references lotofacil.lotofacil_resultado_num(concurso)
  on update CASCADE on delete cascade
);



/**
  Esta tabela é semelhante à tabela lotofacil_resultado_num_frequencia, entretanto
  haverá além do concurso, os campos bola e a frequência
 */
drop table if exists lotofacil.lotofacil_resultado_bolas_frequencia;
create table lotofacil.lotofacil_resultado_bolas_frequencia(
  concurso numeric not null,
  bola numeric not null,
  frequencia numeric not null,
  CONSTRAINT lotofacil_resultado_bolas_frequencia_FK FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num(concurso) on update cascade on delete cascade
);

drop table if exists lotofacil.lotofacil_resultado_bolas_frequencia_total;
create table lotofacil.lotofacil_resultado_bolas_frequencia_total(
  concurso numeric not null,
  bola numeric not null,
  frequencia numeric not null,
  CONSTRAINT lotofacil_resultado_bolas_frequencia_FK FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num(concurso) on update cascade on delete cascade
);

drop view if EXISTS lotofacil.v_lotofacil_resultado_bolas_frequencia;
create view lotofacil.v_lotofacil_resultado_bolas_frequencia as
  select concurso, bola,
    case
      when frequencia < -1 THEN
        'ainda_nao_saiu'
      when frequencia = -1 THEN
        'deixou_de_sair'
      when frequencia = 1 THEN
        'novo'
      when frequencia > 1 THEN
        'repetindo'
    end as frequencia_status,
    frequencia

    from lotofacil.lotofacil_resultado_bolas_frequencia
      order by concurso desc, frequencia asc, bola asc;

drop table if exists lotofacil.lotofacil_resultado_bolas_sobe_desce;
create table lotofacil.lotofacil_resultado_bolas_sobe_desce(
  concurso numeric not null,
  bola numeric not null,
  sobe_desce numeric not null,
  CONSTRAINT lotofacil_resultado_bolas_sobe_desce_FK FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num(concurso) on update cascade on delete cascade
);



/***
  Função para atualizar as tabelas de novos, repetidos, ainda_nao_saiu e deixou_de_sair.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_frequencia_atualizar();
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_frequencia_atualizar()
  RETURNS VOID
LANGUAGE plpgsql
AS $$
DECLARE
  -- Serve pra armazenar cada registro, após percorremos no loop.
  reg_lotofacil_resultado_num          lotofacil.lotofacil_resultado_num%ROWTYPE;

  lotofacil_resultado_num_atual NUMERIC [26];
  lotofacil_resultado_num_frequencia      NUMERIC [26];
  
  lotofacil_resultado_num_frequencia_total numeric[26];
  
  lotofacil_resultado_num_sobe_desce numeric[26];

  -- As 6 variáveis abaixo armazena a quantidade de novos, repetidos, deixou_de_sair e ainda_nao_saiu
  -- encontradas.
  qt_novos numeric;
  qt_repetidos numeric;
  qt_deixou_de_sair numeric;
  qt_ainda_nao_saiu numeric;
  
  qtAlternaram_para_Positivo      NUMERIC;
  qtAlternaram_para_Negativo      NUMERIC;
  
  -- Variáveis utilizadas pra popular as tabelas que terminam com o sufixo num:
  -- lotofacil_resultado_novos_num,
  -- lotofacil_resultado_repetidos_num;
  -- lotofacil_resultado_deixou_de_sair_num;
  -- lotofacil_resultado_ainda_nao_saiu_num;  
  sql_novos_num text;
  sql_repetidos_num text;
  sql_deixou_de_sair_num text;
  sql_ainda_nao_saiu_num text;
  
  -- Variáveis utilizadas pra popular as tabelas que terminam com o sufixo bolas:
  -- lotofacil_resultado_novos_bolas,
  -- lotofacil_resultado_repetidos_bolas;
  -- lotofacil_resultado_deixou_de_sair_bolas;
  -- lotofacil_resultado_ainda_nao_saiu_bolas;  
  
  sql_novos_bolas text;
  sql_repetidos_bolas text;
  sql_deixou_de_sair_bolas text;
  sql_ainda_nao_saiu_bolas text;

  sql_bolas_coluna text;
  sql_num_valor_1 text;
  
  b_primeiro_concurso BOOLEAN;
  

  strAlternaram_para_Positivo     CHARACTER VARYING;
  strAlternaram_para_negativo     CHARACTER VARYING;


  soma_frequencia numeric;
  qt_Pares numeric;
  qt_Impares numeric;

  uA numeric;
  uB numeric;




BEGIN
  -- Deleta todas as tabelas referente a novos, repetidos, ainda nao saiu, deixou de sair.
  DELETE FROM lotofacil.lotofacil_resultado_novos_num;
  DELETE from lotofacil.lotofacil_resultado_repetidos_num;
  DELETE from lotofacil.lotofacil_resultado_ainda_nao_saiu_num;
  DELETE from lotofacil.lotofacil_resultado_deixou_de_sair_num;
  
  DELETE FROM lotofacil.lotofacil_resultado_novos_bolas;
  DELETE from lotofacil.lotofacil_resultado_repetidos_bolas;
  DELETE from lotofacil.lotofacil_resultado_ainda_nao_saiu_bolas;
  DELETE from lotofacil.lotofacil_resultado_deixou_de_sair_bolas;  
  
  DELETE FROM lotofacil.lotofacil_resultado_num_frequencia;
  Delete from lotofacil.lotofacil_resultado_num_frequencia_total;

  Delete from lotofacil.lotofacil_resultado_bolas_frequencia;
  Delete from lotofacil.lotofacil_resultado_bolas_frequencia_total;

  Delete from lotofacil.lotofacil_resultado_num_sobe_desce;
  Delete from lotofacil.lotofacil_resultado_bolas_sobe_desce;


  -- A cada iteração do loop abaixo, os valores de cada elemento deste arranjo 
  -- terá valores diferentes conforme percorremos cada concurso.
  lotofacil_resultado_num_frequencia [1] := 0;
  lotofacil_resultado_num_frequencia [2] := 0;
  lotofacil_resultado_num_frequencia [3] := 0;
  lotofacil_resultado_num_frequencia [4] := 0;
  lotofacil_resultado_num_frequencia [5] := 0;
  lotofacil_resultado_num_frequencia [6] := 0;
  lotofacil_resultado_num_frequencia [7] := 0;
  lotofacil_resultado_num_frequencia [8] := 0;
  lotofacil_resultado_num_frequencia [9] := 0;
  lotofacil_resultado_num_frequencia [10] := 0;
  lotofacil_resultado_num_frequencia [11] := 0;
  lotofacil_resultado_num_frequencia [12] := 0;
  lotofacil_resultado_num_frequencia [13] := 0;
  lotofacil_resultado_num_frequencia [14] := 0;
  lotofacil_resultado_num_frequencia [15] := 0;
  lotofacil_resultado_num_frequencia [16] := 0;
  lotofacil_resultado_num_frequencia [17] := 0;
  lotofacil_resultado_num_frequencia [18] := 0;
  lotofacil_resultado_num_frequencia [19] := 0;
  lotofacil_resultado_num_frequencia [20] := 0;
  lotofacil_resultado_num_frequencia [21] := 0;
  lotofacil_resultado_num_frequencia [22] := 0;
  lotofacil_resultado_num_frequencia [23] := 0;
  lotofacil_resultado_num_frequencia [24] := 0;
  lotofacil_resultado_num_frequencia [25] := 0;
  
  lotofacil_resultado_num_frequencia_total [1] := 0;
  lotofacil_resultado_num_frequencia_total [2] := 0;
  lotofacil_resultado_num_frequencia_total [3] := 0;
  lotofacil_resultado_num_frequencia_total [4] := 0;
  lotofacil_resultado_num_frequencia_total [5] := 0;
  lotofacil_resultado_num_frequencia_total [6] := 0;
  lotofacil_resultado_num_frequencia_total [7] := 0;
  lotofacil_resultado_num_frequencia_total [8] := 0;
  lotofacil_resultado_num_frequencia_total [9] := 0;
  lotofacil_resultado_num_frequencia_total [10] := 0;
  lotofacil_resultado_num_frequencia_total [11] := 0;
  lotofacil_resultado_num_frequencia_total [12] := 0;
  lotofacil_resultado_num_frequencia_total [13] := 0;
  lotofacil_resultado_num_frequencia_total [14] := 0;
  lotofacil_resultado_num_frequencia_total [15] := 0;
  lotofacil_resultado_num_frequencia_total [16] := 0;
  lotofacil_resultado_num_frequencia_total [17] := 0;
  lotofacil_resultado_num_frequencia_total [18] := 0;
  lotofacil_resultado_num_frequencia_total [19] := 0;
  lotofacil_resultado_num_frequencia_total [20] := 0;
  lotofacil_resultado_num_frequencia_total [21] := 0;
  lotofacil_resultado_num_frequencia_total [22] := 0;
  lotofacil_resultado_num_frequencia_total [23] := 0;
  lotofacil_resultado_num_frequencia_total [24] := 0;
  lotofacil_resultado_num_frequencia_total [25] := 0; 
  
  lotofacil_resultado_num_sobe_desce [1] := 0;
  lotofacil_resultado_num_sobe_desce [2] := 0;
  lotofacil_resultado_num_sobe_desce [3] := 0;
  lotofacil_resultado_num_sobe_desce [4] := 0;
  lotofacil_resultado_num_sobe_desce [5] := 0;
  lotofacil_resultado_num_sobe_desce [6] := 0;
  lotofacil_resultado_num_sobe_desce [7] := 0;
  lotofacil_resultado_num_sobe_desce [8] := 0;
  lotofacil_resultado_num_sobe_desce [9] := 0;
  lotofacil_resultado_num_sobe_desce [10] := 0;
  lotofacil_resultado_num_sobe_desce [11] := 0;
  lotofacil_resultado_num_sobe_desce [12] := 0;
  lotofacil_resultado_num_sobe_desce [13] := 0;
  lotofacil_resultado_num_sobe_desce [14] := 0;
  lotofacil_resultado_num_sobe_desce [15] := 0;
  lotofacil_resultado_num_sobe_desce [16] := 0;
  lotofacil_resultado_num_sobe_desce [17] := 0;
  lotofacil_resultado_num_sobe_desce [18] := 0;
  lotofacil_resultado_num_sobe_desce [19] := 0;
  lotofacil_resultado_num_sobe_desce [20] := 0;
  lotofacil_resultado_num_sobe_desce [21] := 0;
  lotofacil_resultado_num_sobe_desce [22] := 0;
  lotofacil_resultado_num_sobe_desce [23] := 0;
  lotofacil_resultado_num_sobe_desce [24] := 0;
  lotofacil_resultado_num_sobe_desce [25] := 0;
  
  
  
  b_primeiro_concurso = true;

  -- No loop abaixo, iremos comparar o concurso atual com o concurso anterior.
  FOR reg_lotofacil_resultado_num IN
  SELECT *
  FROM lotofacil.lotofacil_resultado_num
  ORDER BY concurso ASC
  LOOP
    -- Se é o primeiro concurso, iremos analisar e realizar nova iteração
    -- Pois, nossa tabela de frequência é baseada na comparação do concurso
    -- anterior e concurso atual.
    if b_primeiro_concurso = true THEN 
      b_primeiro_concurso = false;
      
      lotofacil_resultado_num_frequencia [1] := reg_lotofacil_resultado_num.num_1;
      lotofacil_resultado_num_frequencia [2] := reg_lotofacil_resultado_num.num_2;
      lotofacil_resultado_num_frequencia [3] := reg_lotofacil_resultado_num.num_3;
      lotofacil_resultado_num_frequencia [4] := reg_lotofacil_resultado_num.num_4;
      lotofacil_resultado_num_frequencia [5] := reg_lotofacil_resultado_num.num_5;
      lotofacil_resultado_num_frequencia [6] := reg_lotofacil_resultado_num.num_6;
      lotofacil_resultado_num_frequencia [7] := reg_lotofacil_resultado_num.num_7;
      lotofacil_resultado_num_frequencia [8] := reg_lotofacil_resultado_num.num_8;
      lotofacil_resultado_num_frequencia [9] := reg_lotofacil_resultado_num.num_9;
      lotofacil_resultado_num_frequencia [10] := reg_lotofacil_resultado_num.num_10;
      lotofacil_resultado_num_frequencia [11] := reg_lotofacil_resultado_num.num_11;
      lotofacil_resultado_num_frequencia [12] := reg_lotofacil_resultado_num.num_12;
      lotofacil_resultado_num_frequencia [13] := reg_lotofacil_resultado_num.num_13;
      lotofacil_resultado_num_frequencia [14] := reg_lotofacil_resultado_num.num_14;
      lotofacil_resultado_num_frequencia [15] := reg_lotofacil_resultado_num.num_15;
      lotofacil_resultado_num_frequencia [16] := reg_lotofacil_resultado_num.num_16;
      lotofacil_resultado_num_frequencia [17] := reg_lotofacil_resultado_num.num_17;
      lotofacil_resultado_num_frequencia [18] := reg_lotofacil_resultado_num.num_18;
      lotofacil_resultado_num_frequencia [19] := reg_lotofacil_resultado_num.num_19;
      lotofacil_resultado_num_frequencia [20] := reg_lotofacil_resultado_num.num_20;
      lotofacil_resultado_num_frequencia [21] := reg_lotofacil_resultado_num.num_21;
      lotofacil_resultado_num_frequencia [22] := reg_lotofacil_resultado_num.num_22;
      lotofacil_resultado_num_frequencia [23] := reg_lotofacil_resultado_num.num_23;
      lotofacil_resultado_num_frequencia [24] := reg_lotofacil_resultado_num.num_24;
      lotofacil_resultado_num_frequencia [25] := reg_lotofacil_resultado_num.num_25;

      lotofacil_resultado_num_frequencia_total [1] := reg_lotofacil_resultado_num.num_1;
      lotofacil_resultado_num_frequencia_total [2] := reg_lotofacil_resultado_num.num_2;
      lotofacil_resultado_num_frequencia_total [3] := reg_lotofacil_resultado_num.num_3;
      lotofacil_resultado_num_frequencia_total [4] := reg_lotofacil_resultado_num.num_4;
      lotofacil_resultado_num_frequencia_total [5] := reg_lotofacil_resultado_num.num_5;
      lotofacil_resultado_num_frequencia_total [6] := reg_lotofacil_resultado_num.num_6;
      lotofacil_resultado_num_frequencia_total [7] := reg_lotofacil_resultado_num.num_7;
      lotofacil_resultado_num_frequencia_total [8] := reg_lotofacil_resultado_num.num_8;
      lotofacil_resultado_num_frequencia_total [9] := reg_lotofacil_resultado_num.num_9;
      lotofacil_resultado_num_frequencia_total [10] := reg_lotofacil_resultado_num.num_10;
      lotofacil_resultado_num_frequencia_total [11] := reg_lotofacil_resultado_num.num_11;
      lotofacil_resultado_num_frequencia_total [12] := reg_lotofacil_resultado_num.num_12;
      lotofacil_resultado_num_frequencia_total [13] := reg_lotofacil_resultado_num.num_13;
      lotofacil_resultado_num_frequencia_total [14] := reg_lotofacil_resultado_num.num_14;
      lotofacil_resultado_num_frequencia_total [15] := reg_lotofacil_resultado_num.num_15;
      lotofacil_resultado_num_frequencia_total [16] := reg_lotofacil_resultado_num.num_16;
      lotofacil_resultado_num_frequencia_total [17] := reg_lotofacil_resultado_num.num_17;
      lotofacil_resultado_num_frequencia_total [18] := reg_lotofacil_resultado_num.num_18;
      lotofacil_resultado_num_frequencia_total [19] := reg_lotofacil_resultado_num.num_19;
      lotofacil_resultado_num_frequencia_total [20] := reg_lotofacil_resultado_num.num_20;
      lotofacil_resultado_num_frequencia_total [21] := reg_lotofacil_resultado_num.num_21;
      lotofacil_resultado_num_frequencia_total [22] := reg_lotofacil_resultado_num.num_22;
      lotofacil_resultado_num_frequencia_total [23] := reg_lotofacil_resultado_num.num_23;
      lotofacil_resultado_num_frequencia_total [24] := reg_lotofacil_resultado_num.num_24;
      lotofacil_resultado_num_frequencia_total [25] := reg_lotofacil_resultado_num.num_25;
      
      lotofacil_resultado_num_sobe_desce [1] := reg_lotofacil_resultado_num.num_1;
      lotofacil_resultado_num_sobe_desce [2] := reg_lotofacil_resultado_num.num_2;
      lotofacil_resultado_num_sobe_desce [3] := reg_lotofacil_resultado_num.num_3;
      lotofacil_resultado_num_sobe_desce [4] := reg_lotofacil_resultado_num.num_4;
      lotofacil_resultado_num_sobe_desce [5] := reg_lotofacil_resultado_num.num_5;
      lotofacil_resultado_num_sobe_desce [6] := reg_lotofacil_resultado_num.num_6;
      lotofacil_resultado_num_sobe_desce [7] := reg_lotofacil_resultado_num.num_7;
      lotofacil_resultado_num_sobe_desce [8] := reg_lotofacil_resultado_num.num_8;
      lotofacil_resultado_num_sobe_desce [9] := reg_lotofacil_resultado_num.num_9;
      lotofacil_resultado_num_sobe_desce [10] := reg_lotofacil_resultado_num.num_10;
      lotofacil_resultado_num_sobe_desce [11] := reg_lotofacil_resultado_num.num_11;
      lotofacil_resultado_num_sobe_desce [12] := reg_lotofacil_resultado_num.num_12;
      lotofacil_resultado_num_sobe_desce [13] := reg_lotofacil_resultado_num.num_13;
      lotofacil_resultado_num_sobe_desce [14] := reg_lotofacil_resultado_num.num_14;
      lotofacil_resultado_num_sobe_desce [15] := reg_lotofacil_resultado_num.num_15;
      lotofacil_resultado_num_sobe_desce [16] := reg_lotofacil_resultado_num.num_16;
      lotofacil_resultado_num_sobe_desce [17] := reg_lotofacil_resultado_num.num_17;
      lotofacil_resultado_num_sobe_desce [18] := reg_lotofacil_resultado_num.num_18;
      lotofacil_resultado_num_sobe_desce [19] := reg_lotofacil_resultado_num.num_19;
      lotofacil_resultado_num_sobe_desce [20] := reg_lotofacil_resultado_num.num_20;
      lotofacil_resultado_num_sobe_desce [21] := reg_lotofacil_resultado_num.num_21;
      lotofacil_resultado_num_sobe_desce [22] := reg_lotofacil_resultado_num.num_22;
      lotofacil_resultado_num_sobe_desce [23] := reg_lotofacil_resultado_num.num_23;
      lotofacil_resultado_num_sobe_desce [24] := reg_lotofacil_resultado_num.num_24;
      lotofacil_resultado_num_sobe_desce [25] := reg_lotofacil_resultado_num.num_25;      
      
      -- Se é o primeiro concurso, devemos marcar as bolas que não saiu com o valor -1 pois
      -- senão, irá considera que l
      uB := 1;
      while uB <= 25 LOOP
        if lotofacil_resultado_num_frequencia[uB] = 0 then
          lotofacil_resultado_num_frequencia[uB] := -1;
          lotofacil_resultado_num_frequencia_total[uB] := -1;
          lotofacil_resultado_num_sobe_desce[uB] := -1;
        END IF;
        uB := uB + 1;
      END LOOP;
      
      continue;
      
    END IF;
    
    lotofacil_resultado_num_atual [1] := reg_lotofacil_resultado_num.num_1;
    lotofacil_resultado_num_atual [2] := reg_lotofacil_resultado_num.num_2;
    lotofacil_resultado_num_atual [3] := reg_lotofacil_resultado_num.num_3;
    lotofacil_resultado_num_atual [4] := reg_lotofacil_resultado_num.num_4;
    lotofacil_resultado_num_atual [5] := reg_lotofacil_resultado_num.num_5;
    lotofacil_resultado_num_atual [6] := reg_lotofacil_resultado_num.num_6;
    lotofacil_resultado_num_atual [7] := reg_lotofacil_resultado_num.num_7;
    lotofacil_resultado_num_atual [8] := reg_lotofacil_resultado_num.num_8;
    lotofacil_resultado_num_atual [9] := reg_lotofacil_resultado_num.num_9;
    lotofacil_resultado_num_atual [10] := reg_lotofacil_resultado_num.num_10;
    lotofacil_resultado_num_atual [11] := reg_lotofacil_resultado_num.num_11;
    lotofacil_resultado_num_atual [12] := reg_lotofacil_resultado_num.num_12;
    lotofacil_resultado_num_atual [13] := reg_lotofacil_resultado_num.num_13;
    lotofacil_resultado_num_atual [14] := reg_lotofacil_resultado_num.num_14;
    lotofacil_resultado_num_atual [15] := reg_lotofacil_resultado_num.num_15;
    lotofacil_resultado_num_atual [16] := reg_lotofacil_resultado_num.num_16;
    lotofacil_resultado_num_atual [17] := reg_lotofacil_resultado_num.num_17;
    lotofacil_resultado_num_atual [18] := reg_lotofacil_resultado_num.num_18;
    lotofacil_resultado_num_atual [19] := reg_lotofacil_resultado_num.num_19;
    lotofacil_resultado_num_atual [20] := reg_lotofacil_resultado_num.num_20;
    lotofacil_resultado_num_atual [21] := reg_lotofacil_resultado_num.num_21;
    lotofacil_resultado_num_atual [22] := reg_lotofacil_resultado_num.num_22;
    lotofacil_resultado_num_atual [23] := reg_lotofacil_resultado_num.num_23;
    lotofacil_resultado_num_atual [24] := reg_lotofacil_resultado_num.num_24;
    lotofacil_resultado_num_atual [25] := reg_lotofacil_resultado_num.num_25;

    -- Neste loop, iremos contabilizar a quantidade de bolas:
    -- que são novas, repetidas, que deixaram de sair e ainda não saíram
    -- Também, será identificadas quais são as bolas novas, repetidas, que deixaram de sair, que ainda não saíram
    -- em cada concurso.
    -- Será preenchida a tabela lotofacil.lotofacil_resultado_num_frequencia, desta forma:
    -- Se a bola saiu no concurso atual e não saiu no concurso anterior, ela terá no campo corresponde a mesma,
    -- o valor 1.
    -- Se a bola saiu no concurso atual e também saiu no concurso anterior, o valor do campo no concurso atual
    -- será igual ao valor do mesmo campo do concurso anterior, acrescentado pelo valor 1.
    -- Se a bola não saiu no concurso atual, e também não saiu no concurso anterior, ela terá no campo
    -- do concurso atual, o valor do campo correspondente acrescido do valor -1.
    
    qt_novos := 0;
    qt_repetidos := 0;
    qt_deixou_de_sair := 0;
    qt_ainda_nao_saiu := 0;
       
    -- qtNovos := 0;
    -- qtRepetidos := 0;
    -- qtDeixou_de_Sair := 0;
    -- qtAinda_Nao_Saiu := 0;
    qtAlternaram_para_Negativo := 0;
    qtAlternaram_para_Positivo := 0;
    
    
    sql_novos_num := '';
    sql_repetidos_num := '';
    sql_deixou_de_sair_num := '';
    sql_ainda_nao_saiu_num := '';
    
    sql_novos_bolas := '';
    sql_repetidos_bolas := '';
    sql_deixou_de_sair_bolas := '';
    sql_ainda_nao_saiu_bolas := '';

    strAlternaram_para_negativo := '';
    strAlternaram_para_Positivo := '';


    qt_Pares := 0;
    qt_Impares := 0;
    soma_frequencia := 0;

    uA := 1;
    WHILE uA <= 25 LOOP
      -- Se a bola saiu, incrementar, senão decrementar.
      if lotofacil_resultado_num_atual[uA] = 1 THEN 
        lotofacil_resultado_num_sobe_desce[uA] := lotofacil_resultado_num_sobe_desce[uA] + 1;
      else
        lotofacil_resultado_num_sobe_desce[uA] := lotofacil_resultado_num_sobe_desce[uA] - 1;
      end if;

      -- Bola não foi sorteado no concurso atual.
      IF lotofacil_resultado_num_atual [uA] = 1
      THEN
        CASE
          -- Frequência negativa quer dizer que a bola não vinha saíndo desde o último concurso
          -- Então, devemos começar com o valor 1.
          WHEN sign(lotofacil_resultado_num_frequencia [uA]) = -1
          THEN
            lotofacil_resultado_num_frequencia [uA] := 1;
          
          -- Se a frequencia anterior tem o valor zero, quer dizer, que é a primeira vez que estamos
          -- analisando, então iremos definir o valor da frequencia do concurso atual pra o valor 1.
          WHEN sign(lotofacil_resultado_num_frequencia [uA]) = 0
          THEN
            lotofacil_resultado_num_frequencia [uA] := 1;
          
          -- Se a frequencia anterior tem um valor positivo, quer dizer, que a bola está se repetindo
          -- desde o último concurso.
          WHEN sign(lotofacil_resultado_num_frequencia [uA]) = 1
          THEN
            lotofacil_resultado_num_frequencia [uA] := lotofacil_resultado_num_frequencia [uA] + 1;
        END CASE;
      ELSE
        IF lotofacil_resultado_num_atual [uA] = 0
        THEN
          CASE
          -- Frequência negativa quer dizer que a bola não vinha saíndo desde o último concurso
          -- Então, devemos começar com o valor 1.
            WHEN sign(lotofacil_resultado_num_frequencia [uA]) = -1
            THEN
              lotofacil_resultado_num_frequencia [uA] := lotofacil_resultado_num_frequencia [uA] - 1;
            
          -- Se a frequencia anterior tem o valor zero, quer dizer, que é a primeira vez que estamos
          -- analisando, então iremos definir o valor da frequencia do concurso atual pra o valor 1.            
            WHEN sign(lotofacil_resultado_num_frequencia [uA]) = 0
            THEN
              lotofacil_resultado_num_frequencia [uA] := -1;
            
            -- Se a frequencia anterior tem um valor positivo, quer dizer, que a bola está se repetindo
            -- desde o último concurso.            
            WHEN sign(lotofacil_resultado_num_frequencia [uA]) = 1
            THEN
              lotofacil_resultado_num_frequencia [uA] := -1;
          END CASE;
        END IF;
      END IF;

      -- Estamos percorrendo os campos num_ em ordem crescente, onde o primeiro
      -- campo é num_1 e o último é num_25, então, sempre ao ser inseridos
      -- dados nas tabelas com sufixo _bolas, sempre as bolas estão em ordem
      -- crescente.

      -- Se a frequência atual é um número menor que -1, quer dizer que ainda
      -- este número ainda não saiu.
      
      -- ####################### REFERENTE A AINDA NÃO SAIU ###########################
      -- Um número diz-se que ainda não saiu se não saiu no concurso anterior nem no concurso atual
      -- Então, o valor dele sempre será um número menor que -1.

      IF lotofacil_resultado_num_frequencia [ua] < -1
      THEN
        qt_ainda_nao_saiu := qt_ainda_nao_saiu + 1;

        -- Aqui, iremos, construir o sql para o insert.
        sql_ainda_nao_saiu_num := sql_ainda_nao_saiu_num || ', num_' || uA;
        sql_ainda_nao_saiu_bolas := sql_ainda_nao_saiu_bolas || ', ' || uA;

        -- Se a frequência tem o valor -1, quer dizer, que o número estava
        -- saindo nos concursos anterior ou concurso anterior e deixou de sair.
      ELSIF lotofacil_resultado_num_frequencia [uA] = -1
        THEN
          
          qt_deixou_de_sair := qt_deixou_de_sair + 1;
          
          sql_deixou_de_sair_num := sql_deixou_de_sair_num || ', num_' || uA;
          sql_deixou_de_sair_bolas := sql_deixou_de_sair_bolas || ', ' || uA;

      -- Se a frequência tem o valor de 1, quer dizer, que o número não saiu
      -- no último concurso, então é novo.
      ELSIF lotofacil_resultado_num_frequencia [uA] = 1
        THEN
          
          qt_novos := qt_novos + 1;
          
          sql_novos_num := sql_novos_num || ', num_' || uA;
          sql_novos_bolas := sql_novos_bolas || ', ' || uA;

      -- Se a frequência tem o valor maior que 1, quer dizer, que o número
      -- está se repetindo.
      ELSIF lotofacil_resultado_num_frequencia [uA] > 1
        THEN

          qt_repetidos := qt_repetidos + 1;
          
          sql_repetidos_num := sql_repetidos_num || ', num_' || uA;
          sql_repetidos_bolas := sql_repetidos_bolas || ', ' || uA;

      END IF;
      
      -- Soma a frequencia atual, com a soma total de todas as frequências já
      -- encontradas.
      lotofacil_resultado_num_frequencia_total[uA] := lotofacil_resultado_num_frequencia_total [uA] +
                                                      lotofacil_resultado_num_frequencia[uA];
      
      -- Incrementa a variável
      uA := uA + 1;
    END LOOP;

    --Insere 1 registro por bola, nas tabelas lotofacil_resultado_bolas_frequencia e
    -- lotofacil_resultado_bolas_frequencia_total.
    for uA in 1..25 LOOP
      Insert Into lotofacil.lotofacil_resultado_bolas_frequencia(concurso, bola, frequencia) VALUES
        (reg_lotofacil_resultado_num.concurso, uA, lotofacil_resultado_num_frequencia[uA]);

      Insert Into lotofacil.lotofacil_resultado_bolas_frequencia_total(concurso, bola, frequencia) VALUES
        (reg_lotofacil_resultado_num.concurso, uA, lotofacil_resultado_num_frequencia_total[uA]);
      
      Insert into Lotofacil.lotofacil_resultado_bolas_sobe_desce(concurso, bola, sobe_desce) VALUES 
        (reg_lotofacil_resultado_num.concurso, uA, lotofacil_resultado_num_sobe_desce[uA]);

    END LOOP;

    -- A tabela lotofacil_resultado_num_frequencia tem a frequencia baseada nos últimos concursos.
    -- A outra tabela, lotofacil_resultado_num_frequencia_total, tem a soma de cada frequencia de
    -- cada concurso.
    -- Nesta tabela fica fácil detectar, qual é a bola que mais sai e a que menos sai.


    INSERT INTO lotofacil.lotofacil_resultado_num_frequencia (
      concurso, num_1, num_2, num_3, num_4, num_5,
                num_6, num_7, num_8, num_9, num_10,
                num_11, num_12, num_13, num_14, num_15,
                num_16, num_17, num_18, num_19, num_20,
                num_21, num_22, num_23, num_24, num_25)
    VALUES (reg_lotofacil_resultado_num.concurso,
            lotofacil_resultado_num_frequencia[1],
            lotofacil_resultado_num_frequencia[2],
            lotofacil_resultado_num_frequencia[3],
            lotofacil_resultado_num_frequencia[4],
            lotofacil_resultado_num_frequencia[5],
            lotofacil_resultado_num_frequencia[6],
            lotofacil_resultado_num_frequencia[7],
            lotofacil_resultado_num_frequencia[8],
            lotofacil_resultado_num_frequencia[9],
            lotofacil_resultado_num_frequencia[10],
            lotofacil_resultado_num_frequencia[11],
            lotofacil_resultado_num_frequencia[12],
            lotofacil_resultado_num_frequencia[13],
            lotofacil_resultado_num_frequencia[14],
            lotofacil_resultado_num_frequencia[15],
            lotofacil_resultado_num_frequencia[16],
            lotofacil_resultado_num_frequencia[17],
            lotofacil_resultado_num_frequencia[18],
            lotofacil_resultado_num_frequencia[19],
            lotofacil_resultado_num_frequencia[20],
            lotofacil_resultado_num_frequencia[21],
            lotofacil_resultado_num_frequencia[22],
            lotofacil_resultado_num_frequencia[23],
            lotofacil_resultado_num_frequencia[24],
            lotofacil_resultado_num_frequencia[25]);
    
    INSERT INTO lotofacil.lotofacil_resultado_num_frequencia_total (
      concurso, num_1, num_2, num_3, num_4, num_5,
                num_6, num_7, num_8, num_9, num_10,
                num_11, num_12, num_13, num_14, num_15,
                num_16, num_17, num_18, num_19, num_20,
                num_21, num_22, num_23, num_24, num_25)
    VALUES (reg_lotofacil_resultado_num.concurso,
            lotofacil_resultado_num_frequencia_total[1],
            lotofacil_resultado_num_frequencia_total[2],
            lotofacil_resultado_num_frequencia_total[3],
            lotofacil_resultado_num_frequencia_total[4],
            lotofacil_resultado_num_frequencia_total[5],
            lotofacil_resultado_num_frequencia_total[6],
            lotofacil_resultado_num_frequencia_total[7],
            lotofacil_resultado_num_frequencia_total[8],
            lotofacil_resultado_num_frequencia_total[9],
            lotofacil_resultado_num_frequencia_total[10],
            lotofacil_resultado_num_frequencia_total[11],
            lotofacil_resultado_num_frequencia_total[12],
            lotofacil_resultado_num_frequencia_total[13],
            lotofacil_resultado_num_frequencia_total[14],
            lotofacil_resultado_num_frequencia_total[15],
            lotofacil_resultado_num_frequencia_total[16],
            lotofacil_resultado_num_frequencia_total[17],
            lotofacil_resultado_num_frequencia_total[18],
            lotofacil_resultado_num_frequencia_total[19],
            lotofacil_resultado_num_frequencia_total[20],
            lotofacil_resultado_num_frequencia_total[21],
            lotofacil_resultado_num_frequencia_total[22],
            lotofacil_resultado_num_frequencia_total[23],
            lotofacil_resultado_num_frequencia_total[24],
            lotofacil_resultado_num_frequencia_total[25]);
    
    INSERT INTO lotofacil.lotofacil_resultado_num_sobe_desce (
      concurso, num_1, num_2, num_3, num_4, num_5,
                num_6, num_7, num_8, num_9, num_10,
                num_11, num_12, num_13, num_14, num_15,
                num_16, num_17, num_18, num_19, num_20,
                num_21, num_22, num_23, num_24, num_25)
    VALUES (reg_lotofacil_resultado_num.concurso,
            lotofacil_resultado_num_sobe_desce[1],
            lotofacil_resultado_num_sobe_desce[2],
            lotofacil_resultado_num_sobe_desce[3],
            lotofacil_resultado_num_sobe_desce[4],
            lotofacil_resultado_num_sobe_desce[5],
            lotofacil_resultado_num_sobe_desce[6],
            lotofacil_resultado_num_sobe_desce[7],
            lotofacil_resultado_num_sobe_desce[8],
            lotofacil_resultado_num_sobe_desce[9],
            lotofacil_resultado_num_sobe_desce[10],
            lotofacil_resultado_num_sobe_desce[11],
            lotofacil_resultado_num_sobe_desce[12],
            lotofacil_resultado_num_sobe_desce[13],
            lotofacil_resultado_num_sobe_desce[14],
            lotofacil_resultado_num_sobe_desce[15],
            lotofacil_resultado_num_sobe_desce[16],
            lotofacil_resultado_num_sobe_desce[17],
            lotofacil_resultado_num_sobe_desce[18],
            lotofacil_resultado_num_sobe_desce[19],
            lotofacil_resultado_num_sobe_desce[20],
            lotofacil_resultado_num_sobe_desce[21],
            lotofacil_resultado_num_sobe_desce[22],
            lotofacil_resultado_num_sobe_desce[23],
            lotofacil_resultado_num_sobe_desce[24],
            lotofacil_resultado_num_sobe_desce[25]);
    


    Raise Notice 'qt_novos: %, qt_repetidos: %, qt_ainda_nao_saiu: %, qt_deixou_de_sair: %',
      qt_novos, qt_repetidos, qt_ainda_nao_saiu, qt_deixou_de_sair;

    if qt_novos > 10 and reg_lotofacil_resultado_num.concurso <> 1 THEN
      Raise EXCEPTION 'Erro, lotofacil %, qt de novos: %, a quantidade máxima de ítens novos é 10:',
        reg_lotofacil_resultado_num.concurso, qt_novos;
    END IF;

    if (reg_lotofacil_resultado_num.concurso <> 1) and (qt_repetidos < 5 or qt_repetidos > 15) then
      Raise Exception 'Na lotofacil, a quantidade mínima de ítens repetidos é 5, e a quantidade máxima é 15,'
    'foi informado %', qt_repetidos;
    END IF;

    /*
    if (reg_lotofacil_resultado_num.concurso <> 1) and (qt_novos <> qt_deixou_de_sair) then
      Raise Exception 'Na lotofacil de 15 números, sempre a quantidade de novos é igual à quantidade de números '
        'que deixaram de sair, erro, quantidade de novos diferentes de quantidade de números que deixou de sair.';
    END IF;
    */

    Raise Notice 'Concurso: %, qtNovos: %, qtRepetidos: %, qtAindaNaoSaiu %', reg_lotofacil_resultado_num.concurso,
      qt_novos, qt_repetidos, qt_ainda_nao_saiu;


    -- ######################## NOVOS ##################################
    uA := 1;
    sql_bolas_coluna := '';
    sql_num_valor_1 := '';
    while uA <= qt_novos LOOP
      sql_bolas_coluna := sql_bolas_coluna || ', b_' || uA;
      sql_num_valor_1 := sql_num_valor_1 || ', 1';
      uA := uA + 1;
    END LOOP;

    sql_novos_bolas :=  'Insert into lotofacil.lotofacil_resultado_novos_bolas (concurso, qt_novos ' ||
                        sql_bolas_coluna || ') values (' || reg_lotofacil_resultado_num.concurso ||
                        ', ' || qt_novos || sql_novos_bolas || ')';

    sql_novos_num := 'Insert into lotofacil.lotofacil_resultado_novos_num (concurso, qt_novos ' ||
                      sql_novos_num || ') values (' || reg_lotofacil_resultado_num.concurso ||
                        ', ' || qt_novos || sql_num_valor_1 || ')';


    Raise Notice '%', sql_novos_num;
    execute sql_novos_bolas;
    execute sql_novos_num;

    -- ######################## REPETIDOS ##################################
    uA := 1;
    sql_bolas_coluna := '';
    sql_num_valor_1 := '';
    while uA <= qt_repetidos LOOP
      sql_bolas_coluna := sql_bolas_coluna || ', b_' || uA;
      sql_num_valor_1 := sql_num_valor_1 || ', 1';
      uA := uA + 1;
    END LOOP;

    sql_repetidos_bolas :=  'Insert into lotofacil.lotofacil_resultado_repetidos_bolas (concurso, qt_repetidos ' ||
                        sql_bolas_coluna || ') values (' || reg_lotofacil_resultado_num.concurso ||
                        ', ' || qt_repetidos || sql_repetidos_bolas || ')';

    sql_repetidos_num := 'Insert into lotofacil.lotofacil_resultado_repetidos_num (concurso, qt_repetidos ' ||
                      sql_repetidos_num || ') values (' || reg_lotofacil_resultado_num.concurso ||
                        ', ' || qt_repetidos || sql_num_valor_1 || ')';


    Raise Notice '%', sql_repetidos_num;
    execute sql_repetidos_bolas;
    execute sql_repetidos_num;

    -- ######################## AINDA NÃO SAIU ##################################
    uA := 1;
    sql_bolas_coluna := '';
    sql_num_valor_1 := '';
    while uA <= qt_ainda_nao_saiu LOOP
      sql_bolas_coluna := sql_bolas_coluna || ', b_' || uA;
      sql_num_valor_1 := sql_num_valor_1 || ', 1';
      uA := uA + 1;
    END LOOP;

    sql_ainda_nao_saiu_bolas :=  'Insert into lotofacil.lotofacil_resultado_ainda_nao_saiu_bolas (concurso, qt_ainda_nao_saiu ' ||
                        sql_bolas_coluna || ') values (' || reg_lotofacil_resultado_num.concurso ||
                        ', ' || qt_ainda_nao_saiu || sql_ainda_nao_saiu_bolas || ')';

    sql_ainda_nao_saiu_num := 'Insert into lotofacil.lotofacil_resultado_ainda_nao_saiu_num (concurso, qt_ainda_nao_saiu ' ||
                      sql_ainda_nao_saiu_num || ') values (' || reg_lotofacil_resultado_num.concurso ||
                        ', ' || qt_ainda_nao_saiu || sql_num_valor_1 || ')';


    Raise Notice '%', sql_ainda_nao_saiu_num;
    execute sql_ainda_nao_saiu_bolas;
    execute sql_ainda_nao_saiu_num;

    -- ######################## DEIXOU DE SAIR ##################################
    uA := 1;
    sql_bolas_coluna := '';
    sql_num_valor_1 := '';
    while uA <= qt_deixou_de_sair LOOP
      sql_bolas_coluna := sql_bolas_coluna || ', b_' || uA;
      sql_num_valor_1 := sql_num_valor_1 || ', 1';
      uA := uA + 1;
    END LOOP;

    sql_deixou_de_sair_bolas :=  'Insert into lotofacil.lotofacil_resultado_deixou_de_sair_bolas (concurso, qt_deixou_de_sair ' ||
                        sql_bolas_coluna || ') values (' || reg_lotofacil_resultado_num.concurso ||
                        ', ' || qt_deixou_de_sair || sql_deixou_de_sair_bolas || ')';

    sql_deixou_de_sair_num := 'Insert into lotofacil.lotofacil_resultado_deixou_de_sair_num (concurso, qt_deixou_de_sair ' ||
                      sql_deixou_de_sair_num || ') values (' || reg_lotofacil_resultado_num.concurso ||
                        ', ' || qt_deixou_de_sair || sql_num_valor_1 || ')';


    Raise Notice '%', sql_deixou_de_sair_num;
    execute sql_deixou_de_sair_bolas;
    execute sql_deixou_de_sair_num;
  END LOOP;
END $$;

SELECT lotofacil.fn_lotofacil_resultado_frequencia_atualizar();


/**
  Indica quantas vezes,
 */

drop view if exists lotofacil.v_lotofacil_resultado_novos_qt_por_concurso;
create view lotofacil.v_lotofacil_resultado_novos_qt_por_concurso AS
  Select qt_novos, count(*) as qt_vezes from lotofacil.lotofacil_resultado_novos_bolas
    group by qt_novos
  order by qt_vezes desc, qt_novos asc;

drop view if exists lotofacil.v_lotofacil_resultado_repetidos_qt_por_concurso;
create view lotofacil.v_lotofacil_resultado_repetidos_qt_por_concurso AS
  Select qt_repetidos, count(*) as qt_vezes from lotofacil.lotofacil_resultado_repetidos_bolas
    group by qt_repetidos
  order by qt_vezes desc, qt_repetidos asc;

drop view if exists lotofacil.v_lotofacil_resultado_ainda_nao_saiu_qt_por_concurso;
create view lotofacil.v_lotofacil_resultado_ainda_nao_saiu_qt_por_concurso AS
  Select qt_ainda_nao_saiu, count(*) as qt_vezes from lotofacil.lotofacil_resultado_ainda_nao_saiu_bolas
    group by qt_ainda_nao_saiu
  order by qt_vezes desc, qt_ainda_nao_saiu asc;

drop view if exists lotofacil.v_lotofacil_resultado_deixou_de_sair_qt_por_concurso;
create view lotofacil.v_lotofacil_resultado_deixou_de_sair_qt_por_concurso AS
  Select qt_deixou_de_sair, count(*) as qt_vezes from lotofacil.lotofacil_resultado_deixou_de_sair_bolas
    group by qt_deixou_de_sair
  order by qt_vezes desc, qt_deixou_de_sair asc;








