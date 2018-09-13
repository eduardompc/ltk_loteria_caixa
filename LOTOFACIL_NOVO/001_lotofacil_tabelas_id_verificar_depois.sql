


/**
  Aqui, será criado todas as combinações possíveis referentes às combinações:
  b1
  b1_b8
  b1_b8_b15
  b1_b4_b8_b12_b15
 */
drop table if EXISTS lotofacil.lotofacil_id_b1;
create table lotofacil.lotofacil_id_b1(
  b1_id smallint not null,
  b1 smallint not null check (b1 >= 1 and b1 <= 11),
  CONSTRAINT lotofacil_id_b1_pk PRIMARY KEY (b1_id),
  CONSTRAINT lotofacil_id_b1_unk UNIQUE (b1)
);

drop table if EXISTS lotofacil.lotofacil_id_b1_b2;
create table lotofacil.lotofacil_id_b1_b2(
  b1_b2_id smallint not null,
  b1 smallint not null check (b1 >= 1 and b1 <= 11),
  b2 smallint not null check (b2 >= 2 and b2 <= 12),
  CONSTRAINT lotofacil_id_b1_b2_pk PRIMARY KEY (b1_b2_id),
  CONSTRAINT lotofacil_id_b1_b2_unk UNIQUE (b1, b2)
);

drop table if EXISTS lotofacil.lotofacil_id_b1_b2_b3;
create table lotofacil.lotofacil_id_b1_b2_b3(
  b1_b2_b3_id smallint not null,
  b1 smallint not null check (b1 >= 1 and b1 <= 11),
  b2 smallint not null check (b2 >= 2 and b2 <= 12),
  b3 smallint not null check (b3 >= 3 and b3 <= 13),
  CONSTRAINT lotofacil_id_b1_b2_b3_pk PRIMARY KEY (b1_b2_b3_id),
  CONSTRAINT lotofacil_id_b1_b2_b3_unk UNIQUE (b1, b2, b3)
);

drop table if EXISTS lotofacil.lotofacil_id_b1_b2_b3_b4;
create table lotofacil.lotofacil_id_b1_b2_b3_b4(
  b1_b2_b3_b4_id smallint not null,
  b1 smallint not null check (b1 >= 1 and b1 <= 11),
  b2 smallint not null check (b2 >= 2 and b2 <= 12),
  b3 smallint not null check (b3 >= 3 and b3 <= 13),
  b4 smallint not null check (b4 >= 4 and b4 <= 14),
  CONSTRAINT lotofacil_id_b1_b2_b3_b4_pk PRIMARY KEY (b1_b2_b3_b4_id),
  CONSTRAINT lotofacil_id_b1_b2_b3_b4_unk UNIQUE (b1, b2, b3, b4)
);


drop table if EXISTS lotofacil.lotofacil_id_b1_b2_b3_b4_b5;
create table lotofacil.lotofacil_id_b1_b2_b3_b4_b5(
  b1_b2_b3_b4_b5_id smallint not null,
  b1 smallint not null check (b1 >= 1 and b1 <= 11),
  b2 smallint not null check (b2 >= 2 and b2 <= 12),
  b3 smallint not null check (b3 >= 3 and b3 <= 13),
  b4 smallint not null check (b4 >= 4 and b4 <= 14),
  b5 smallint not null check (b5 >= 5 and b5 <= 15),
  CONSTRAINT lotofacil_id_b1_b2_b3_b4_b5_pk PRIMARY KEY (b1_b2_b3_b4_b5_id),
  CONSTRAINT lotofacil_id_b1_b2_b3_b4_b5_unk UNIQUE (b1, b2, b3, b4, b5)
);


drop table if EXISTS lotofacil.lotofacil_id_b1_b15;
create table lotofacil.lotofacil_id_b1_b15(
  b1_b15_id smallint not null,
  b1 smallint not null check (b1 >= 1 and b1 <= 11),
  b15 smallint not null check (b15 >= 15 and b15 <= 25),
  CONSTRAINT lotofacil_id_b1_b15_pk PRIMARY KEY (b1_b15_id),
  CONSTRAINT lotofacil_id_b1_b15_unk UNIQUE (b1, b15)
);

drop table if EXISTS lotofacil.lotofacil_id_b1_b8_b15;
create table lotofacil.lotofacil_id_b1_b8_b15(
  b1_b8_b15_id smallint not null,
  b1 smallint not null check (b1 >= 1 and b1 <= 11),
  b8 smallint not null check (b8 >= 8 and b8 <= 18),
  b15 smallint not null check (b15 >= 15 and b15 <= 25),
  CONSTRAINT lotofacil_id_b1_b8_b15_pk PRIMARY KEY (b1_b8_b15_id),
  CONSTRAINT lotofacil_id_b1_b8_b15_unk UNIQUE (b1, b8, b15)
);

drop table if EXISTS lotofacil.lotofacil_id_b1_b4_b8_b12_b15;
create table lotofacil.lotofacil_id_b1_b4_b8_b12_b15(
  b1_b4_b8_b12_b15_id smallint not null,
  b1 smallint not null check (b1 >= 1 and b1 <= 11),
  b4 smallint not null check (b4 >= 4 and b4 <= 14),
  b8 smallint not null check (b8 >= 8 and b8 <= 18),
  b12 smallint not null check (b12 >= 12 and b12 <= 22),
  b15 smallint not null check (b15 >= 15 and b15 <= 25),
  CONSTRAINT lotofacil_id_b1_b4_b8_b12_b15_pk PRIMARY KEY (b1_b4_b8_b12_b15_id),
  CONSTRAINT lotofacil_id_b1_b4_b8_b12_b15_unk UNIQUE (b1, b4, b8, b12, b15)
);






