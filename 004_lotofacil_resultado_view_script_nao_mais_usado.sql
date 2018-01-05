/**
  As tabelas:
   lotofacil_resultado_par_impar,
   lotofacil_resultado_primo,
   lotofacil_resultado_externo_interno,
   lotofacil_resultado_horizontal,
   lotofacil_resultado_vertical,
   lotofacil_resultado_diagonal,
   lotofacil_resultado_quarteto,
   lotofacil_resultado_trio,
   lotofacil_resultado_b1,
   lotofacil_resultado_b1_b15,
   lotofacil_resultado_b1_b8_b15,
   lotofacil_resultado_b1_b4_b8_b12_b15

   foram substituído por uma única tabela
   lotofacil_resultado_id, onde cada campo corresponde a um
   único id pra cada tabela acima relacionada.

 */

/*

drop table if exists lotofacil.lotofacil_resultado_par_impar;
create table lotofacil.lotofacil_resultado_par_impar(
  concurso numeric not null,
  par_impar_id numeric not null,
  CONSTRAINT lotofacil_resultado_par_impar_fk FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num(concurso)
  on update cascade on delete cascade,
  CONSTRAINT lotofacil_resultado_par_impar_pk PRIMARY KEY (concurso, par_impar_id)
);

drop table if exists lotofacil.lotofacil_resultado_externo_interno;
create table lotofacil.lotofacil_resultado_externo_interno(
  concurso numeric not null,
  ext_int_id numeric not null,
  CONSTRAINT lotofacil_resultado_externo_interno_fk FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num(concurso)
  on update cascade on delete cascade,
  CONSTRAINT lotofacil_resultado_externo_interno_pk PRIMARY KEY (concurso, ext_int_id)
);


drop table if exists lotofacil.lotofacil_resultado_primo;
create table lotofacil.lotofacil_resultado_primo(
  concurso numeric not null,
  prm_id numeric not null,
  CONSTRAINT lotofacil_resultado_primo_pk PRIMARY KEY (concurso, prm_id),
  CONSTRAINT lotofacil_resultado_primo_unk UNIQUE (concurso, prm_id)
);

drop table if exists lotofacil.lotofacil_resultado_horizontal;
create table lotofacil.lotofacil_resultado_horizontal(
  concurso numeric not null,
  hrz_id numeric not null,
  CONSTRAINT lotofacil_resultado_horizontal_fk FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num(concurso)
  on update cascade on delete cascade,
  CONSTRAINT lotofacil_resultado_horizontal_pk PRIMARY KEY (concurso, hrz_id)
);

drop table if exists lotofacil.lotofacil_resultado_vertical;
create table lotofacil.lotofacil_resultado_vertical(
  concurso numeric not null,
  vrt_id numeric not null,
  CONSTRAINT lotofacil_resultado_vertical_fk FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num(concurso)
  on update cascade on delete cascade,
  CONSTRAINT lotofacil_resultado_vertical_pk PRIMARY KEY (concurso, vrt_id)
);

drop table if exists lotofacil.lotofacil_resultado_diagonal;
create table lotofacil.lotofacil_resultado_diagonal(
  concurso numeric not null,
  dg_id numeric not null,
  CONSTRAINT lotofacil_resultado_diagonal_fk FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num(concurso)
  on update cascade on delete cascade,
  CONSTRAINT lotofacil_resultado_diagonal_pk PRIMARY KEY (concurso, dg_id)
);

drop table if exists lotofacil.lotofacil_resultado_cruzeta;
create table lotofacil.lotofacil_resultado_cruzeta(
  concurso numeric not null,
  crz_id numeric not null,
  CONSTRAINT lotofacil_resultado_cruzeta_fk FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num(concurso)
  on update cascade on delete cascade,
  CONSTRAINT lotofacil_resultado_cruzeta_pk PRIMARY KEY (concurso, crz_id)
);

/**
  Quarteto:
    São 4 bolas, por grupo, o último grupo tem 5.
 */
drop table if exists lotofacil.lotofacil_resultado_quarteto;
create table lotofacil.lotofacil_resultado_quarteto(
  concurso numeric not null,
  qrt_id numeric not null,
  CONSTRAINT lotofacil_resultado_quarteto_fk FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num(concurso)
  on update cascade on delete cascade,
  CONSTRAINT lotofacil_resultado_quarteto_pk PRIMARY KEY (concurso, qrt_id)
);

drop table if exists lotofacil.lotofacil_resultado_trio;
create table lotofacil.lotofacil_resultado_trio(
  concurso numeric not null,
  trio_id numeric not null,
  CONSTRAINT lotofacil_resultado_trio_fk FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num(concurso)
  on update cascade on delete cascade,
  CONSTRAINT lotofacil_resultado_trio_pk PRIMARY KEY (concurso, trio_id)
);

/**
  Coluna b1, indica a coluna com a menor bola.
  As bolas são disposta em ordem crescente.
 */
drop table if exists lotofacil.lotofacil_resultado_b1;
create table lotofacil.lotofacil_resultado_b1(
  concurso numeric not null,
  b1_id numeric not null,
  CONSTRAINT lotofacil_resultado_b1_fk FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num(concurso)
  on update cascade on delete cascade,
  CONSTRAINT lotofacil_resultado_b1_pk PRIMARY KEY (concurso, b1_id)
);

/**
  Coluna b1, indica a coluna com a menor bola.
  Coluna b15, indica a última coluna com a maior bola do concurso.
  As bolas são disposta em ordem crescente.
 */
drop table if exists lotofacil.lotofacil_resultado_b1_b15;
create table lotofacil.lotofacil_resultado_b1_b15(
  concurso numeric not null,
  b1_b15_id numeric not null,
  CONSTRAINT lotofacil_resultado_b1_b15_fk FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num(concurso)
  on update cascade on delete cascade,
  CONSTRAINT lotofacil_resultado_b1_b15_pk PRIMARY KEY (concurso, b1_b15_id)
);


drop table if exists lotofacil.lotofacil_resultado_b1_b8_b15;
create table lotofacil.lotofacil_resultado_b1_b8_b15(
  concurso numeric not null,
  b1_b8_b15_id numeric not null,
  CONSTRAINT lotofacil_resultado_b1_b8_b15_fk FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num(concurso)
  on update cascade on delete cascade,
  CONSTRAINT lotofacil_resultado_b1_b8_b15_pk PRIMARY KEY (concurso, b1_b8_b15_id)
);

drop table if exists lotofacil.lotofacil_resultado_b1_b4_b8_b12_b15;
create table lotofacil.lotofacil_resultado_b1_b4_b8_b12_b15(
  concurso numeric not null,
  b1_b4_b8_b12_b15_id numeric not null,
  CONSTRAINT lotofacil_resultado_b1_b4_b8_b12_b15_fk FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num(concurso)
  on update cascade on delete cascade,
  CONSTRAINT lotofacil_resultado_b1_b4_b8_b12_b15_pk PRIMARY KEY (concurso, b1_b4_b8_b12_b15_id)
);
*/
