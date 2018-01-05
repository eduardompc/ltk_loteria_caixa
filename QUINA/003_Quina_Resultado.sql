/**
  Tabela que armazena todas as combinações válidas da quina.
  Na quina, joga-se de 5 a 15 números e são sorteados 5 números.
  Há:
      24.040.016 combinações com 5 números
      300.500.200 combinações com 6 números
      3.176.716.400 combinações com 7 números.
      28.987.537.150 combinações com 8 números.
      231.900.297.200 combinações com 9 números.
      1.646.492.110.120 combinações com 10 números.
      10.477.677.064.400 combinações com 11 números.
      60.246.643.120.300 combinações com 12 números.
      315.136.287.090.800 combinações com 13 números.
      1.508.152.231.077.400 combinações com 14 números.
      6.635.869.816.740.560 combinações com 15 números.

  Iremos implementar no momento somente combinações com 5, 6, e 7 números.
  A coluna quina_id, é um identificador pra cada combinação possível na quina, primeiro, virão
  todas as combinações de 5 números, depois, de 7 números, depois de 8 números.

 */

/**
  Deleta as tabelas que depende da tabela quina_resultado_num;
 */
drop table if exists ltk_quina.quina_resultado_par_impar;
drop table if exists ltk_quina.quina_resultado_primo;
drop table if exists ltk_quina.quina_resultado_horizontal;
drop table if exists ltk_quina.quina_resultado_vertical;
drop table if exists ltk_quina.quina_resultado_diagonal;
drop table if exists ltk_quina.quina_resultado_quarteto;
drop table if exists ltk_quina.quina_resultado_quadrante;
drop table if exists ltk_quina.quina_resultado_circular;
drop table if exists ltk_quina.quina_resultado_quarteto;
drop table if exists ltk_quina.quina_resultado_b1;
drop table if exists ltk_quina.quina_resultado_b1_b5;
drop table if exists ltk_quina.quina_resultado_b1_b3_b5;
drop table if exists ltk_quina.quina_resultado_grupo_1_bola;
drop table if exists ltk_quina.quina_resultado_grupo_2_bolas;
drop table if exists ltk_quina.quina_resultado_grupo_3_bolas;
drop table if exists ltk_quina.quina_resultado_grupo_4_bolas;

drop table if exists ltk_quina.quina_resultado_num;
CREATE TABLE ltk_quina.quina_resultado_num (
  concurso          numeric not null,
  data              date not null,
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
  num_26                   NUMERIC DEFAULT 0 check (num_26 in (0, 1)),
  num_27                   NUMERIC DEFAULT 0 check (num_27 in (0, 1)),
  num_28                   NUMERIC DEFAULT 0 check (num_28 in (0, 1)),
  num_29                   NUMERIC DEFAULT 0 check (num_29 in (0, 1)),
  num_30                   NUMERIC DEFAULT 0 check (num_30 in (0, 1)),
  num_31                   NUMERIC DEFAULT 0 check (num_31 in (0, 1)),
  num_32                   NUMERIC DEFAULT 0 check (num_32 in (0, 1)),
  num_33                   NUMERIC DEFAULT 0 check (num_33 in (0, 1)),
  num_34                   NUMERIC DEFAULT 0 check (num_34 in (0, 1)),
  num_35                   NUMERIC DEFAULT 0 check (num_35 in (0, 1)),
  num_36                   NUMERIC DEFAULT 0 check (num_36 in (0, 1)),
  num_37                   NUMERIC DEFAULT 0 check (num_37 in (0, 1)),
  num_38                   NUMERIC DEFAULT 0 check (num_38 in (0, 1)),
  num_39                   NUMERIC DEFAULT 0 check (num_39 in (0, 1)),
  num_40                   NUMERIC DEFAULT 0 check (num_40 in (0, 1)),
  num_41                   NUMERIC DEFAULT 0 check (num_41 in (0, 1)),
  num_42                   NUMERIC DEFAULT 0 check (num_42 in (0, 1)),
  num_43                   NUMERIC DEFAULT 0 check (num_43 in (0, 1)),
  num_44                   NUMERIC DEFAULT 0 check (num_44 in (0, 1)),
  num_45                   NUMERIC DEFAULT 0 check (num_45 in (0, 1)),
  num_46                   NUMERIC DEFAULT 0 check (num_46 in (0, 1)),
  num_47                   NUMERIC DEFAULT 0 check (num_47 in (0, 1)),
  num_48                   NUMERIC DEFAULT 0 check (num_48 in (0, 1)),
  num_49                   NUMERIC DEFAULT 0 check (num_49 in (0, 1)),
  num_50                   NUMERIC DEFAULT 0 check (num_50 in (0, 1)),
  num_51                   NUMERIC DEFAULT 0 check (num_51 in (0, 1)),
  num_52                   NUMERIC DEFAULT 0 check (num_52 in (0, 1)),
  num_53                   NUMERIC DEFAULT 0 check (num_53 in (0, 1)),
  num_54                   NUMERIC DEFAULT 0 check (num_54 in (0, 1)),
  num_55                   NUMERIC DEFAULT 0 check (num_55 in (0, 1)),
  num_56                   NUMERIC DEFAULT 0 check (num_56 in (0, 1)),
  num_57                   NUMERIC DEFAULT 0 check (num_57 in (0, 1)),
  num_58                   NUMERIC DEFAULT 0 check (num_58 in (0, 1)),
  num_59                   NUMERIC DEFAULT 0 check (num_59 in (0, 1)),
  num_60                   NUMERIC DEFAULT 0 check (num_60 in (0, 1)),
  num_61                   NUMERIC DEFAULT 0 check (num_61 in (0, 1)),
  num_62                   NUMERIC DEFAULT 0 check (num_62 in (0, 1)),
  num_63                   NUMERIC DEFAULT 0 check (num_63 in (0, 1)),
  num_64                   NUMERIC DEFAULT 0 check (num_64 in (0, 1)),
  num_65                   NUMERIC DEFAULT 0 check (num_65 in (0, 1)),
  num_66                   NUMERIC DEFAULT 0 check (num_66 in (0, 1)),
  num_67                   NUMERIC DEFAULT 0 check (num_67 in (0, 1)),
  num_68                   NUMERIC DEFAULT 0 check (num_68 in (0, 1)),
  num_69                   NUMERIC DEFAULT 0 check (num_69 in (0, 1)),
  num_70                   NUMERIC DEFAULT 0 check (num_70 in (0, 1)),
  num_71                   NUMERIC DEFAULT 0 check (num_71 in (0, 1)),
  num_72                   NUMERIC DEFAULT 0 check (num_72 in (0, 1)),
  num_73                   NUMERIC DEFAULT 0 check (num_73 in (0, 1)),
  num_74                   NUMERIC DEFAULT 0 check (num_74 in (0, 1)),
  num_75                   NUMERIC DEFAULT 0 check (num_75 in (0, 1)),
  num_76                   NUMERIC DEFAULT 0 check (num_76 in (0, 1)),
  num_77                   NUMERIC DEFAULT 0 check (num_77 in (0, 1)),
  num_78                   NUMERIC DEFAULT 0 check (num_78 in (0, 1)),
  num_79                   NUMERIC DEFAULT 0 check (num_79 in (0, 1)),
  num_80                   NUMERIC DEFAULT 0 check (num_80 in (0, 1)),

  constraint quina_resultado_num_chk_1 check (
  num_1  + num_2   + num_3   + num_4   + num_5   + num_6   + num_7   + num_8   + num_9   + num_10 +
  num_11 + num_12  + num_13  + num_14  + num_15  + num_16  + num_17  + num_18  + num_19  + num_20 +
  num_21 + num_22  + num_23  + num_24  + num_25  + num_26  + num_27  + num_28  + num_29  + num_30 +
  num_31 + num_32  + num_33  + num_34  + num_35  + num_36  + num_37  + num_38  + num_39  + num_40 +
  num_41 + num_42  + num_43  + num_44  + num_45  + num_46  + num_47  + num_48  + num_49  + num_50 +
  num_51 + num_52  + num_53  + num_54  + num_55  + num_56  + num_57  + num_58  + num_59  + num_60 +
  num_61 + num_62  + num_63  + num_64  + num_65  + num_66  + num_67  + num_68  + num_69  + num_70 +
  num_71 + num_72  + num_73  + num_74  + num_75  + num_76  + num_77  + num_78  + num_79  + num_80  BETWEEN
      5 and 7
  ),

  /**
    Não pode haver mais de 32 colunas em um índice.

  constraint quina_unk unique (
    num_1  , num_2   , num_3   , num_4   , num_5   , num_6   , num_7   , num_8   , num_9   , num_10 ,
    num_11 , num_12  , num_13  , num_14  , num_15  , num_16  , num_17  , num_18  , num_19  , num_20 ,
    num_21 , num_22  , num_23  , num_24  , num_25  , num_26  , num_27  , num_28  , num_29  , num_30 ,
    num_31 , num_32  , num_33  , num_34  , num_35  , num_36  , num_37  , num_38  , num_39  , num_40 ,
    num_41 , num_42  , num_43  , num_44  , num_45  , num_46  , num_47  , num_48  , num_49  , num_50 ,
    num_51 , num_52  , num_53  , num_54  , num_55  , num_56  , num_57  , num_58  , num_59  , num_60 ,
    num_61 , num_62  , num_63  , num_64  , num_65  , num_66  , num_67  , num_68  , num_69  , num_70 ,
    num_71 , num_72  , num_73  , num_74  , num_75  , num_76  , num_77  , num_78  , num_79  , num_80),
    */

  constraint quina_resultado_num_pk PRIMARY KEY (concurso)
);

/**
  Iremos implementar até quina de 7 números!!!.
 */
drop table if exists ltk_quina.quina_resultado_bolas;
CREATE TABLE ltk_quina.quina_resultado_bolas (
  concurso numeric not null,

  b1       NUMERIC NOT NULL,
  b2       NUMERIC NOT NULL,
  b3       NUMERIC NOT NULL,
  b4       NUMERIC NOT NULL,
  b5       NUMERIC NOT NULL,
  b6       NUMERIC NULL,
  b7       NUMERIC NULL,

  /*
    Não será implementado acima de 7 números.
   */
  /*
  b8 numeric null,
  b9 numeric null,
  b10 numeric NULL,
  b11 numeric null,
  b12 numeric null,
  b13 numeric null,
  b14 numeric null,
  b15 numeric null,
  */

  CONSTRAINT quina_resultado_bolas_unk UNIQUE (concurso, b1, b2, b3, b4, b5),
  CONSTRAINT quina_resultado_bolas_fk FOREIGN KEY (quina_id) REFERENCES ltk_quina.quina_num (quina_id)
);

/**
  Armazena o número do concurso e o identificador quina_id daquele concurso,
  mais prático, do que haver um campo quina_id, na tabela quina_resultado.
 */
drop table if exists ltk_quina.quina_resultado_quina_id;
create table ltk_quina.quina_resultado_quina_id(
  concurso numeric not null,
  quina_id numeric not null,
  CONSTRAINT quina_resultado_quina_id_fk_1 FOREIGN KEY (concurso) references ltk_quina.quina_resultado_num(concurso),
  CONSTRAINT quina_resultado_quina_id_fk_2 FOREIGN KEY (quina_id) REFERENCES ltk_quina.quina_num(quina_id),
  CONSTRAINT quina_resultado_quina_id_pk PRIMARY KEY (concurso)
);




drop table if exists ltk_quina.quina_resultado_par_impar;
create table ltk_quina.quina_resultado_par_impar(
  concurso numeric not null,
  par_impar_id numeric not null,
  CONSTRAINT quina_resultado_par_impar_fk FOREIGN KEY (concurso) REFERENCES ltk_quina.quina_resultado_num(concurso)
  on update cascade on delete cascade,
  CONSTRAINT quina_resultado_par_impar_pk PRIMARY KEY (concurso, par_impar_id)
);

drop table if exists ltk_quina.quina_resultado_primo;
create table ltk_quina.quina_resultado_primo(
  concurso numeric not null,
  prm_id numeric not null,
  CONSTRAINT quina_resultado_primo_fk FOREIGN KEY (concurso) REFERENCES ltk_quina.quina_resultado_num(concurso)
  on update cascade on delete cascade,
  CONSTRAINT quina_resultado_primo_pk PRIMARY KEY (concurso, prm_id)
);

drop table if exists ltk_quina.quina_resultado_horizontal;
create table ltk_quina.quina_resultado_horizontal(
  concurso numeric not null,
  hrz_id numeric not null,
  CONSTRAINT quina_resultado_horizontal_fk FOREIGN KEY (concurso) REFERENCES ltk_quina.quina_resultado_num(concurso)
  on update cascade on delete cascade,
  CONSTRAINT quina_resultado_horizontal_pk PRIMARY KEY (concurso, hrz_id)
);

drop table if exists ltk_quina.quina_resultado_vertical;
create table ltk_quina.quina_resultado_vertical(
  concurso numeric not null,
  vrt_id numeric not null,
  CONSTRAINT quina_resultado_vertical_fk FOREIGN KEY (concurso) REFERENCES ltk_quina.quina_resultado_num(concurso)
  on update cascade on delete cascade,
  CONSTRAINT quina_resultado_vertical_pk PRIMARY KEY (concurso, vrt_id)
);

drop table if exists ltk_quina.quina_resultado_diagonal;
create table ltk_quina.quina_resultado_diagonal(
  concurso numeric not null,
  dg_id numeric not null,
  CONSTRAINT quina_resultado_diagonal_fk FOREIGN KEY (concurso) REFERENCES ltk_quina.quina_resultado_num(concurso)
  on update cascade on delete cascade,
  CONSTRAINT quina_resultado_diagonal_pk PRIMARY KEY (concurso, dg_id)
);

drop table if exists ltk_quina.quina_resultado_quadrante;
create table ltk_quina.quina_resultado_quadrante(
  concurso numeric not null,
  qd_id numeric not null,
  CONSTRAINT quina_resultado_quadrante_fk FOREIGN KEY (concurso) REFERENCES ltk_quina.quina_resultado_num(concurso)
  on update cascade on delete cascade,
  CONSTRAINT quina_resultado_quadrante_pk PRIMARY KEY (concurso, qd_id)
);


drop table if exists ltk_quina.quina_resultado_circular;
create table ltk_quina.quina_resultado_circular(
  concurso numeric not null,
  crc_id numeric not null,
  CONSTRAINT quina_resultado_circular_fk FOREIGN KEY (concurso) REFERENCES ltk_quina.quina_resultado_num(concurso)
  on update cascade on delete cascade,
  CONSTRAINT quina_resultado_circular_pk PRIMARY KEY (concurso, crc_id)
);

/**
  Coluna b1, indica a coluna com a menor bola.
  As bolas são disposta em ordem crescente.
 */
drop table if exists ltk_quina.quina_resultado_b1;
create table ltk_quina.quina_resultado_b1(
  concurso numeric not null,
  b1_id numeric not null,
  CONSTRAINT quina_resultado_b1_fk FOREIGN KEY (concurso) REFERENCES ltk_quina.quina_resultado_num(concurso)
  on update cascade on delete cascade,
  CONSTRAINT quina_resultado_b1_pk PRIMARY KEY (concurso, b1_id)
);

/**
  Coluna b1, indica a coluna com a menor bola.
  Coluna b15, indica a última coluna com a maior bola do concurso.
  As bolas são disposta em ordem crescente.
 */
drop table if exists ltk_quina.quina_resultado_b1_b5;
create table ltk_quina.quina_resultado_b1_b5(
  concurso numeric not null,
  b1_b5_id numeric not null,
  CONSTRAINT quina_resultado_b1_b5_fk FOREIGN KEY (concurso) REFERENCES ltk_quina.quina_resultado_num(concurso)
  on update cascade on delete cascade,
  CONSTRAINT quina_resultado_b1_b5_pk PRIMARY KEY (concurso, b1_b5_id)
);


drop table if exists ltk_quina.quina_resultado_b1_b3_b5;
create table ltk_quina.quina_resultado_b1_b3_b5(
  concurso numeric not null,
  b1_b3_b5_id numeric not null,
  CONSTRAINT quina_resultado_b1_b3_b5_fk FOREIGN KEY (concurso) REFERENCES ltk_quina.quina_resultado_num(concurso)
  on update cascade on delete cascade,
  CONSTRAINT quina_resultado_b1_b3_b5_pk PRIMARY KEY (concurso, b1_b3_b5_id)
);

/**
  A tabela de resultado de grupo 1 bola, praticamente, o id corresponde à própria bola.
 */
drop table if exists ltk_quina.quina_resultado_grupo_1_bola;
create table ltk_quina.quina_resultado_grupo_1_bola(
  concurso numeric not null,
  grp_id numeric not null,
  CONSTRAINT quina_resultado_grupo_1_bola_unk UNIQUE (concurso, grp_id),
  constraint quina_resultado_grupo_1_bola_FK
  FOREIGN KEY (grp_id) REFERENCES ltk_quina.quina_id_grupo_1_bola(grp_id) on update cascade
);
comment on CONSTRAINT quina_resultado_grupo_1_bola_FK on ltk_quina.quina_resultado_grupo_1_bola
is 'Se o id do grupo na tabela quina_id_grupo_1 atualizar, devemos atualizar as tabelas dependentes,'
'percebe-se que não é possível deletar um id de grupo da tabela quina_id_grupo_1 enquanto houver '
'registros na tabela que depende dela';

/*
alter table ltk_quina.quina_resultado_grupo_1_bola drop constraint quina_resultado_grupo_1_bola_FK;
alter table ltk_quina.quina_resultado_grupo_10_bolas add constraint quina_resultado_grupo_10_bola_FK
  FOREIGN KEY (grp_id) REFERENCES ltk_quina.quina_id_grupo_10_bolas(grp_id) on update cascade;
  */

drop table if exists ltk_quina.quina_resultado_grupo_2_bolas;
create table ltk_quina.quina_resultado_grupo_2_bolas(
  concurso numeric not null,
  grp_id numeric not null,
  CONSTRAINT quina_resultado_grupo_2_bolas_unk UNIQUE (concurso, grp_id),
  constraint quina_resultado_grupo_2_bolas_FK  FOREIGN KEY (grp_id) REFERENCES ltk_quina.quina_id_grupo_2_bolas(grp_id) on update cascade
);

drop table if exists ltk_quina.quina_resultado_grupo_3_bolas;
create table ltk_quina.quina_resultado_grupo_3_bolas(
  concurso numeric not null,
  grp_id numeric not null,
  CONSTRAINT quina_resultado_grupo_3_bolas_unk UNIQUE (concurso, grp_id),
  constraint quina_resultado_grupo_3_bolas_FK  FOREIGN KEY (grp_id) REFERENCES ltk_quina.quina_id_grupo_3_bolas(grp_id) on update cascade
  
);

drop table if exists ltk_quina.quina_resultado_grupo_4_bolas;
create table ltk_quina.quina_resultado_grupo_4_bolas(
  concurso numeric not null,
  grp_id numeric not null,
  CONSTRAINT quina_resultado_grupo_4_bolas_unk UNIQUE (concurso, grp_id),
  constraint quina_resultado_grupo_4_bolas_FK  FOREIGN KEY (grp_id) REFERENCES ltk_quina.quina_id_grupo_4_bolas(grp_id) on update cascade
);
