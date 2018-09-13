drop table if exists lotofacil.lotofacil_id_grupo_1_bola;
create table lotofacil.lotofacil_id_grupo_1_bola (
  grp_id numeric not null,
  bola1 numeric not null,

  CONSTRAINT lotofacil_id_grupo_1_bola_chk unique(
    bola1
  ),
  CONSTRAINT lotofacil_id_grupo_1_bola_chk2 check((bola1 >= 1) and (bola1 <= 25)),

  constraint lotofacil_id_grupo_1_bola_pk PRIMARY KEY (grp_id)
);

drop table if exists lotofacil.lotofacil_id_grupo_2_bolas;
create table lotofacil.lotofacil_id_grupo_2_bolas (
  grp_id numeric not null,
  bola1 numeric not null,
  bola2 numeric not null,

  CONSTRAINT lotofacil_id_grupo_2_bolas_chk unique(
    bola1, bola2
  ),
  CONSTRAINT lotofacil_id_grupo_2_bolas_chk check (
    (bola1 < bola2)
  ),
  CONSTRAINT lotofacil_id_grupo_2_bolas_chk2 check((bola1 >= 1) and (bola2 <= 25)),

  constraint lotofacil_id_grupo_2_bolas_pk PRIMARY KEY (grp_id)
);

drop table if exists lotofacil.lotofacil_id_grupo_3_bolas;
create table lotofacil.lotofacil_id_grupo_3_bolas (
  grp_id numeric not null,
  bola1 numeric not null,
  bola2 numeric not null,
  bola3 numeric not null,

  CONSTRAINT lotofacil_id_grupo_3_bolas_chk unique(
    bola1, bola2, bola3
  ),
  CONSTRAINT lotofacil_id_grupo_3_bolas_chk check (
    (bola1 < bola2)
    and (bola2 < bola3)
  ),
  CONSTRAINT lotofacil_id_grupo_3_bolas_chk2 check((bola1 >= 1) and (bola3 <= 25)),

  constraint lotofacil_id_grupo_3_bolas_pk PRIMARY KEY (grp_id)
);

drop table if exists lotofacil.lotofacil_id_grupo_4_bolas;
create table lotofacil.lotofacil_id_grupo_4_bolas (
  grp_id numeric not null,
  bola1 numeric not null,
  bola2 numeric not null,
  bola3 numeric not null,
  bola4 numeric not null,

  CONSTRAINT lotofacil_id_grupo_4_bolas_chk unique(
    bola1, bola2, bola3, bola4
  ),
  CONSTRAINT lotofacil_id_grupo_4_bolas_chk check (
    (bola1 < bola2)
    and (bola2 < bola3)
    and (bola3 < bola4)
  ),
  CONSTRAINT lotofacil_id_grupo_4_bolas_chk2 check((bola1 >= 1) and (bola4 <= 25)),

  constraint lotofacil_id_grupo_4_bolas_pk PRIMARY KEY (grp_id)
);


drop table if exists lotofacil.lotofacil_id_grupo_5_bolas;
create table lotofacil.lotofacil_id_grupo_5_bolas (
  grp_id numeric not null,
  bola1 numeric not null,
  bola2 numeric not null,
  bola3 numeric not null,
  bola4 numeric not null,
  bola5 numeric not null,

  CONSTRAINT lotofacil_id_grupo_5_bolas_chk unique(
    bola1, bola2, bola3, bola4, bola5
  ),
  CONSTRAINT lotofacil_id_grupo_5_bolas_chk check (
    (bola1 < bola2)
    and (bola2 < bola3)
    and (bola3 < bola4)
    and (bola4 < bola5)
  ),
  CONSTRAINT lotofacil_id_grupo_5_bolas_chk2 check((bola1 >= 1) and (bola5 <= 25)),

  constraint lotofacil_id_grupo_5_bolas_pk PRIMARY KEY (grp_id)
);


drop table if exists lotofacil.lotofacil_id_grupo_6_bolas;
create table lotofacil.lotofacil_id_grupo_6_bolas (
  grp_id numeric not null,
  bola1 numeric not null,
  bola2 numeric not null,
  bola3 numeric not null,
  bola4 numeric not null,
  bola5 numeric not null,
  bola6 numeric not null,

  CONSTRAINT lotofacil_id_grupo_6_bolas_chk unique(
    bola1, bola2, bola3, bola4, bola5, bola6
  ),
  CONSTRAINT lotofacil_id_grupo_6_bolas_chk check (
    (bola1 < bola2)
    and (bola2 < bola3)
    and (bola3 < bola4)
    and (bola4 < bola5)
    AND (bola5 < bola6)
  ),
  CONSTRAINT lotofacil_id_grupo_6_bolas_chk2 check((bola1 >= 1) and (bola6 <= 25)),

  constraint lotofacil_id_grupo_6_bolas_pk PRIMARY KEY (grp_id)
);



drop table if exists lotofacil.lotofacil_id_grupo_7_bolas;
create table lotofacil.lotofacil_id_grupo_7_bolas (
  grp_id numeric not null,
  bola1 numeric not null,
  bola2 numeric not null,
  bola3 numeric not null,
  bola4 numeric not null,
  bola5 numeric not null,
  bola6 numeric not null,
  bola7 numeric not null,

  CONSTRAINT lotofacil_id_grupo_7_bolas_chk unique(
    bola1, bola2, bola3, bola4, bola5, bola6, bola7
  ),
  CONSTRAINT lotofacil_id_grupo_7_bolas_chk check (
    (bola1 < bola2)
    and (bola2 < bola3)
    and (bola3 < bola4)
    and (bola4 < bola5)
    AND (bola5 < bola6)
    AND (bola6 < bola7)
  ),
  CONSTRAINT lotofacil_id_grupo_7_bolas_chk2 check((bola1 >= 1) and (bola7 <= 25)),

  constraint lotofacil_id_grupo_7_bolas_pk PRIMARY KEY (grp_id)
);


drop table if exists lotofacil.lotofacil_id_grupo_8_bolas;
create table lotofacil.lotofacil_id_grupo_8_bolas (
  grp_id numeric not null,
  bola1 numeric not null,
  bola2 numeric not null,
  bola3 numeric not null,
  bola4 numeric not null,
  bola5 numeric not null,
  bola6 numeric not null,
  bola7 numeric not null,
  bola8 numeric not null,

  CONSTRAINT lotofacil_id_grupo_8_bolas_chk unique(
    bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8
  ),
  CONSTRAINT lotofacil_id_grupo_8_bolas_chk check (
    (bola1 < bola2)
    and (bola2 < bola3)
    and (bola3 < bola4)
    and (bola4 < bola5)
    AND (bola5 < bola6)
    AND (bola6 < bola7)
    AND (bola7 < bola8)
  ),
  CONSTRAINT lotofacil_id_grupo_8_bolas_chk2 check((bola1 >= 1) and (bola8 <= 25)),

  constraint lotofacil_id_grupo_8_bolas_pk PRIMARY KEY (grp_id)
);


drop table if exists lotofacil.lotofacil_id_grupo_9_bolas;
create table lotofacil.lotofacil_id_grupo_9_bolas (
  grp_id numeric not null,
  bola1 numeric not null,
  bola2 numeric not null,
  bola3 numeric not null,
  bola4 numeric not null,
  bola5 numeric not null,
  bola6 numeric not null,
  bola7 numeric not null,
  bola8 numeric not null,
  bola9 numeric not null,

  CONSTRAINT lotofacil_id_grupo_9_bolas_chk unique(
    bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9
  ),
  CONSTRAINT lotofacil_id_grupo_9_bolas_chk check (
    (bola1 < bola2)
    and (bola2 < bola3)
    and (bola3 < bola4)
    and (bola4 < bola5)
    AND (bola5 < bola6)
    AND (bola6 < bola7)
    AND (bola7 < bola8)
    AND (bola8 < bola9)
  ),
  CONSTRAINT lotofacil_id_grupo_9_bolas_chk2 check((bola1 >= 1) and (bola9 <= 25)),

  constraint lotofacil_id_grupo_9_bolas_pk PRIMARY KEY (grp_id)
);


drop table if exists lotofacil.lotofacil_id_grupo_10_bolas;
create table lotofacil.lotofacil_id_grupo_10_bolas (
  grp_id numeric not null,
  bola1 numeric not null,
  bola2 numeric not null,
  bola3 numeric not null,
  bola4 numeric not null,
  bola5 numeric not null,
  bola6 numeric not null,
  bola7 numeric not null,
  bola8 numeric not null,
  bola9 numeric not null,
  bola10 numeric not null,

  CONSTRAINT lotofacil_id_grupo_10_bolas_chk unique(
    bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9, bola10
  ),
  CONSTRAINT lotofacil_id_grupo_10_bolas_chk check (
    (bola1 < bola2)
    and (bola2 < bola3)
    and (bola3 < bola4)
    and (bola4 < bola5)
    AND (bola5 < bola6)
    AND (bola6 < bola7)
    AND (bola7 < bola8)
    AND (bola8 < bola9)
    AND (bola9 < bola10)
  ),
  CONSTRAINT lotofacil_id_grupo_10_bolas_chk2 check((bola1 >= 1) and (bola10 <= 25)),

  constraint lotofacil_id_grupo_10_bolas_pk PRIMARY KEY (grp_id)
);



drop table if exists lotofacil.lotofacil_id_grupo_11_bolas;
create table lotofacil.lotofacil_id_grupo_11_bolas (
  grp_id numeric not null,
  bola1 numeric not null,
  bola2 numeric not null,
  bola3 numeric not null,
  bola4 numeric not null,
  bola5 numeric not null,
  bola6 numeric not null,
  bola7 numeric not null,
  bola8 numeric not null,
  bola9 numeric not null,
  bola10 numeric not null,
  bola11 numeric not null,

  CONSTRAINT lotofacil_id_grupo_11_bolas_chk unique(
    bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9, bola10,
    bola11
  ),
  CONSTRAINT lotofacil_id_grupo_11_bolas_chk check (
    (bola1 < bola2)
    and (bola2 < bola3)
    and (bola3 < bola4)
    and (bola4 < bola5)
    AND (bola5 < bola6)
    AND (bola6 < bola7)
    AND (bola7 < bola8)
    AND (bola8 < bola9)
    AND (bola9 < bola10)
    and (bola10 < bola11)
  ),
  CONSTRAINT lotofacil_id_grupo_11_bolas_chk2 check((bola1 >= 1) and (bola11 <= 25)),

  constraint lotofacil_id_grupo_11_bolas_pk PRIMARY KEY (grp_id)
);



drop table if exists lotofacil.lotofacil_id_grupo_12_bolas;
create table lotofacil.lotofacil_id_grupo_12_bolas (
  grp_id numeric not null,
  bola1 numeric not null,
  bola2 numeric not null,
  bola3 numeric not null,
  bola4 numeric not null,
  bola5 numeric not null,
  bola6 numeric not null,
  bola7 numeric not null,
  bola8 numeric not null,
  bola9 numeric not null,
  bola10 numeric not null,
  bola11 numeric not null,
  bola12 numeric not null,

  CONSTRAINT lotofacil_id_grupo_12_bolas_chk unique(
    bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9, bola10,
    bola11, bola12
  ),
  CONSTRAINT lotofacil_id_grupo_12_bolas_chk check (
    (bola1 < bola2)
    and (bola2 < bola3)
    and (bola3 < bola4)
    and (bola4 < bola5)
    AND (bola5 < bola6)
    AND (bola6 < bola7)
    AND (bola7 < bola8)
    AND (bola8 < bola9)
    AND (bola9 < bola10)
    and (bola10 < bola11)
    and (bola11 < bola12)
  ),
  CONSTRAINT lotofacil_id_grupo_12_bolas_chk2 check((bola1 >= 1) and (bola12 <= 25)),

  constraint lotofacil_id_grupo_12_bolas_pk PRIMARY KEY (grp_id)
);


drop table if exists lotofacil.lotofacil_id_grupo_13_bolas;
create table lotofacil.lotofacil_id_grupo_13_bolas (
  grp_id numeric not null,
  bola1 numeric not null,
  bola2 numeric not null,
  bola3 numeric not null,
  bola4 numeric not null,
  bola5 numeric not null,
  bola6 numeric not null,
  bola7 numeric not null,
  bola8 numeric not null,
  bola9 numeric not null,
  bola10 numeric not null,
  bola11 numeric not null,
  bola12 numeric not null,
  bola13 numeric not null,

  CONSTRAINT lotofacil_id_grupo_13_bolas_chk unique(
    bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9, bola10,
    bola11, bola12, bola13
  ),
  CONSTRAINT lotofacil_id_grupo_13_bolas_chk check (
    (bola1 < bola2)
    and (bola2 < bola3)
    and (bola3 < bola4)
    and (bola4 < bola5)
    AND (bola5 < bola6)
    AND (bola6 < bola7)
    AND (bola7 < bola8)
    AND (bola8 < bola9)
    AND (bola9 < bola10)
    and (bola10 < bola11)
    and (bola11 < bola12)
    and (bola12 < bola13)
  ),
  CONSTRAINT lotofacil_id_grupo_13_bolas_chk2 check((bola1 >= 1) and (bola13 <= 25)),

  constraint lotofacil_id_grupo_13_bolas_pk PRIMARY KEY (grp_id)
);


drop table if exists lotofacil.lotofacil_id_grupo_14_bolas;
create table lotofacil.lotofacil_id_grupo_14_bolas (
  grp_id numeric not null,
  bola1 numeric not null,
  bola2 numeric not null,
  bola3 numeric not null,
  bola4 numeric not null,
  bola5 numeric not null,
  bola6 numeric not null,
  bola7 numeric not null,
  bola8 numeric not null,
  bola9 numeric not null,
  bola10 numeric not null,
  bola11 numeric not null,
  bola12 numeric not null,
  bola13 numeric not null,
  bola14 numeric not null,

  CONSTRAINT lotofacil_id_grupo_14_bolas_chk unique(
    bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9, bola10,
    bola11, bola12, bola13, bola14
  ),
  CONSTRAINT lotofacil_id_grupo_14_bolas_chk check (
    (bola1 < bola2)
    and (bola2 < bola3)
    and (bola3 < bola4)
    and (bola4 < bola5)
    AND (bola5 < bola6)
    AND (bola6 < bola7)
    AND (bola7 < bola8)
    AND (bola8 < bola9)
    AND (bola9 < bola10)
    and (bola10 < bola11)
    and (bola11 < bola12)
    and (bola12 < bola13)
    and (bola13 < bola14)
  ),
  CONSTRAINT lotofacil_id_grupo_14_bolas_chk2 check((bola1 >= 1) and (bola14 <= 25)),

  constraint lotofacil_id_grupo_14_bolas_pk PRIMARY KEY (grp_id)
);

drop table if exists lotofacil.lotofacil_id_grupo_15_bolas;
create table lotofacil.lotofacil_id_grupo_15_bolas (
  grp_id numeric not null,
  bola1 numeric not null,
  bola2 numeric not null,
  bola3 numeric not null,
  bola4 numeric not null,
  bola5 numeric not null,
  bola6 numeric not null,
  bola7 numeric not null,
  bola8 numeric not null,
  bola9 numeric not null,
  bola10 numeric not null,
  bola11 numeric not null,
  bola12 numeric not null,
  bola13 numeric not null,
  bola14 numeric not null,
  bola15 numeric not null,

  CONSTRAINT lotofacil_id_grupo_15_bolas_chk unique(
    bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9, bola10,
    bola11, bola12, bola13, bola14, bola15
  ),
  CONSTRAINT lotofacil_id_grupo_15_bolas_chk check (
    (bola1 < bola2) and (bola2 < bola3) and (bola3 < bola4) and (bola4 < bola5) AND
    (bola5 < bola6) and (bola6 < bola7) and (bola7 < bola8) and (bola8 < bola9) AND
    (bola9 < bola10) and (bola10 < bola11) and (bola11 < bola12) and (bola12 < bola13) AND
    (bola13 < bola14) and (bola14 < bola15)
  ),
  CONSTRAINT lotofacil_id_grupo_15_bolas_chk2 check((bola1 >= 1) and (bola15 <= 25)),

  constraint lotofacil_id_grupo_15_bolas_pk PRIMARY KEY (grp_id)
);