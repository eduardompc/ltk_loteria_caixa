/*
  Há 40 números pares e 40 números ímpares, entretanto, na quina pode haver de 5 a 15 bolas,
  então pode haver de 0 a 15 números pares ou ímpares.
 */
drop table if exists ltk_quina.quina_id_par_impar;
create table ltk_quina.quina_id_par_impar(
  par_impar_id numeric not null,
  par_impar_qt numeric not null check (par_impar_qt in (5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15)),

  par numeric not null check (par between 0 and 15),
  impar numeric not null check (impar between 0 and 15),

  CONSTRAINT quina_id_par_impar_pk PRIMARY KEY (par_impar_id),
  CONSTRAINT quina_id_par_impar_chk check (par + impar = par_impar_qt),

    -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT quina_id_par_impar_interno_unk UNIQUE (par, impar)
);

--Select ltk_quina.fn_quina_id_grupo();
drop table if exists ltk_quina.quina_id_primo;
drop table if exists ltk_quina.quina_id_primo;
create table ltk_quina.quina_id_primo(
  prm_id numeric not null,
  prm_qt numeric not null,
  primo numeric not null,
  nao_primo numeric not null,

  CONSTRAINT quina_id_primo_pk PRIMARY KEY (prm_id),
  CONSTRAINT quina_id_primo_unk unique (primo, nao_primo)
);
comment on table ltk_quina.quina_id_primo IS
'Esta tabela armazena todas as combinações possíveis de números primos na ltk_quina.'
'Os números primos são: 2, 3, 5, 7, 11, 13, 17, 19, 23.'
'Ou seja, há 9 números primos, isto que dizer que pode haver no máximo 9 números primos';

/**
  Colunas b1, b3, e b5.
 */
drop table if EXISTS ltk_quina.quina_id_b1;
create table ltk_quina.quina_id_b1(
  b1_id numeric not null,
  b1_qt numeric not null,
  b1 numeric not null check (b1 >= 1 and b1 <= 80),
  CONSTRAINT quina_id_b1_pk PRIMARY KEY (b1_id),
  CONSTRAINT quina_id_b1_unk UNIQUE (b1)
);

drop table if EXISTS ltk_quina.quina_id_b1_b5;
create table ltk_quina.quina_id_b1_b5(
  b1_b5_id numeric not null,
  b1_b5_qt numeric not null,
  b1 numeric not null check (b1 >= 1 and b1 <= 76),
  b5 numeric not null check (b5 >= 5 and b5 <= 80),
  CONSTRAINT quina_id_b1_b5_pk PRIMARY KEY (b1_b5_id),
  CONSTRAINT quina_id_b1_b5_unk UNIQUE (b1, b5)
);

drop table if EXISTS ltk_quina.quina_id_b1_b3_b5;
create table ltk_quina.quina_id_b1_b3_b5(
  b1_b3_b5_id numeric not null,
  b1_b3_b5_qt numeric not null,
  b1 numeric not null check (b1 >= 1 and b1 <= 76),
  b3 numeric not null check (b3 >= 3 and b3 <= 78),
  b5 numeric not null check (b5 >= 5 and b5 <= 80),
  CONSTRAINT quina_id_b1_b3_b5_pk PRIMARY KEY (b1_b3_b5_id),
  CONSTRAINT quina_id_b1_b3_b5_unk UNIQUE (b1, b3, b5)
);


/**
  Horizontal, vertical e diagonal.
 */
drop table if EXISTS ltk_quina.quina_id_horizontal;
create table ltk_quina.quina_id_horizontal(
  hrz_id numeric not null,
  hrz_qt numeric not null check (hrz_qt in (5, 6, 7)),
  hrz_1 numeric not null check (hrz_1 in (0, 1, 2, 3, 4, 5, 6, 7)),
  hrz_2 numeric not null check (hrz_2 in (0, 1, 2, 3, 4, 5, 6, 7)),
  hrz_3 numeric not null check (hrz_3 in (0, 1, 2, 3, 4, 5, 6, 7)),
  hrz_4 numeric not null check (hrz_4 in (0, 1, 2, 3, 4, 5, 6, 7)),

  CONSTRAINT quina_id_horizontal_pk PRIMARY KEY (hrz_id),
  CONSTRAINT quina_id_horizontal_chk check ((hrz_1 + hrz_2 + hrz_3 + hrz_4) = hrz_qt),

  -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT quina_id_horizontal_unk UNIQUE (hrz_1, hrz_2, hrz_3, hrz_4)
);

/**
  Vertical.
 */
drop table if EXISTS ltk_quina.quina_id_vertical;
create table ltk_quina.quina_id_vertical(
  vrt_id numeric not null,
  vrt_qt numeric not null check (vrt_qt in (5, 6, 7)),
  vrt_1 numeric not null check (vrt_1 in (0, 1, 2, 3, 4, 5, 6, 7)),
  vrt_2 numeric not null check (vrt_2 in (0, 1, 2, 3, 4, 5, 6, 7)),
  vrt_3 numeric not null check (vrt_3 in (0, 1, 2, 3, 4, 5, 6, 7)),
  vrt_4 numeric not null check (vrt_4 in (0, 1, 2, 3, 4, 5, 6, 7)),
  vrt_5 numeric not null check (vrt_5 in (0, 1, 2, 3, 4, 5, 6, 7)),

  CONSTRAINT quina_id_vertical_pk PRIMARY KEY (vrt_id),
  CONSTRAINT quina_id_vertical_chk check ((vrt_1 + vrt_2 + vrt_3 + vrt_4 + vrt_5) = vrt_qt),  

  -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT quina_id_vertical_unk UNIQUE (vrt_1, vrt_2, vrt_3, vrt_4, vrt_5)
);

/**
  Diagonal.
 */
drop table if EXISTS ltk_quina.quina_id_diagonal;
create table ltk_quina.quina_id_diagonal(
  dg_id numeric not null,
  dg_qt numeric not null check (dg_qt in (5, 6, 7)),
  dg_1 numeric not null check (dg_1 in (0, 1, 2, 3, 4, 5, 6, 7)),
  dg_2 numeric not null check (dg_2 in (0, 1, 2, 3, 4, 5, 6, 7)),
  dg_3 numeric not null check (dg_3 in (0, 1, 2, 3, 4, 5, 6, 7)),
  dg_4 numeric not null check (dg_4 in (0, 1, 2, 3, 4, 5, 6, 7)),
  dg_5 numeric not null check (dg_5 in (0, 1, 2, 3, 4, 5, 6, 7)),

  CONSTRAINT quina_id_diagonal_pk PRIMARY KEY (dg_id),
  CONSTRAINT quina_id_diagonal_chk check ((dg_1 + dg_2 + dg_3 + dg_4 + dg_5) = dg_qt),
  
  -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT quina_id_diagonal_unk UNIQUE (dg_1, dg_2, dg_3, dg_4, dg_5)
);

/*
  Esta tabela será criada pra saber em qual linha mais sai números:
  linha 1: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
 */
drop table if EXISTS ltk_quina.quina_id_linha;
create table ltk_quina.quina_id_linha(
  linha_id numeric not null,
  linha_qt numeric not null check (linha_qt in (5, 6, 7)),
  linha_1 numeric not null check (linha_1 in (0, 1, 2, 3, 4, 5, 6, 7)),
  linha_2 numeric not null check (linha_2 in (0, 1, 2, 3, 4, 5, 6, 7)),
  linha_3 numeric not null check (linha_3 in (0, 1, 2, 3, 4, 5, 6, 7)),
  linha_4 numeric not null check (linha_4 in (0, 1, 2, 3, 4, 5, 6, 7)),
  linha_5 numeric not null check (linha_5 in (0, 1, 2, 3, 4, 5, 6, 7)),
  linha_6 numeric not null check (linha_6 in (0, 1, 2, 3, 4, 5, 6, 7)),
  linha_7 numeric not null check (linha_7 in (0, 1, 2, 3, 4, 5, 6, 7)),
  linha_8 numeric not null check (linha_8 in (0, 1, 2, 3, 4, 5, 6, 7)),  

  CONSTRAINT quina_id_linha_pk PRIMARY KEY (linha_id),
  CONSTRAINT quina_id_linha_chk check ((linha_1 + linha_2 + linha_3 + linha_4 + linha_5 +
                                       linha_6 + linha_7 + linha_8) = linha_qt),
  
  -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT quina_id_linha_unk UNIQUE (linha_1, linha_2, linha_3, linha_4, linha_5, linha_6, linha_7, linha_8)
);

drop table if EXISTS ltk_quina.quina_id_coluna;
create table ltk_quina.quina_id_coluna(
  coluna_id numeric not null,
  coluna_qt numeric not null check (coluna_qt in (5, 6, 7)),
  coluna_1 numeric not null check (coluna_1 in (0, 1, 2, 3, 4, 5, 6, 7)),
  coluna_2 numeric not null check (coluna_2 in (0, 1, 2, 3, 4, 5, 6, 7)),
  coluna_3 numeric not null check (coluna_3 in (0, 1, 2, 3, 4, 5, 6, 7)),
  coluna_4 numeric not null check (coluna_4 in (0, 1, 2, 3, 4, 5, 6, 7)),
  coluna_5 numeric not null check (coluna_5 in (0, 1, 2, 3, 4, 5, 6, 7)),
  coluna_6 numeric not null check (coluna_6 in (0, 1, 2, 3, 4, 5, 6, 7)),
  coluna_7 numeric not null check (coluna_7 in (0, 1, 2, 3, 4, 5, 6, 7)),
  coluna_8 numeric not null check (coluna_8 in (0, 1, 2, 3, 4, 5, 6, 7)),
  coluna_9 numeric not null check (coluna_9 in (0, 1, 2, 3, 4, 5, 6, 7)),
  coluna_10 numeric not null check (coluna_10 in (0, 1, 2, 3, 4, 5, 6, 7)),

  CONSTRAINT quina_id_coluna_pk PRIMARY KEY (coluna_id),
  CONSTRAINT quina_id_coluna_chk check ((coluna_1 + coluna_2 + coluna_3 + coluna_4 + coluna_5 +
                                       coluna_6 + coluna_7 + coluna_8 + coluna_9 + coluna_10) = coluna_qt),
  
  -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT quina_id_coluna_unk UNIQUE (coluna_1, coluna_2, coluna_3, coluna_4, coluna_5,
                                         coluna_6, coluna_7, coluna_8, coluna_9, coluna_10)
);

drop table if EXISTS ltk_quina.quina_id_quarteto;
create table ltk_quina.quina_id_quarteto(
  qrt_id numeric not null,
  qrt_qt numeric not null check (qrt_qt in (5, 6, 7)),
  qrt_1 numeric not null check (qrt_1 in (0, 1, 2, 3, 4, 5, 6, 7)),
  qrt_2 numeric not null check (qrt_2 in (0, 1, 2, 3, 4, 5, 6, 7)),
  qrt_3 numeric not null check (qrt_3 in (0, 1, 2, 3, 4, 5, 6, 7)),
  qrt_4 numeric not null check (qrt_4 in (0, 1, 2, 3, 4, 5, 6, 7)),

  CONSTRAINT quina_id_quarteto_pk PRIMARY KEY (qrt_id),
  CONSTRAINT quina_id_quarteto_chk check ((qrt_1 + qrt_2 + qrt_3 + qrt_4) = qrt_qt),
  
  -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT quina_id_quarteto_unk UNIQUE (qrt_1, qrt_2, qrt_3, qrt_4)
);

drop table if EXISTS ltk_quina.quina_id_quadrante;
create table ltk_quina.quina_id_quadrante(
  qd_id numeric not null,
  qd_qt numeric not null check (qd_qt in (5, 6, 7)),
  qd_1 numeric not null check (qd_1 in (0, 1, 2, 3, 4, 5, 6, 7)),
  qd_2 numeric not null check (qd_2 in (0, 1, 2, 3, 4, 5, 6, 7)),
  qd_3 numeric not null check (qd_3 in (0, 1, 2, 3, 4, 5, 6, 7)),
  qd_4 numeric not null check (qd_4 in (0, 1, 2, 3, 4, 5, 6, 7)),

  CONSTRAINT quina_id_quadrante_pk PRIMARY KEY (qd_id),
  CONSTRAINT quina_id_quadrante_chk check ((qd_1 + qd_2 + qd_3 + qd_4) = qd_qt),
  
  -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT quina_id_quadrante_unk UNIQUE (qd_1, qd_2, qd_3, qd_4)
);

drop table if EXISTS ltk_quina.quina_id_circular;
create table ltk_quina.quina_id_circular(
  crc_id numeric not null,
  crc_qt numeric not null check (crc_qt in (5, 6, 7)),
  crc_1 numeric not null check (crc_1 in (0, 1, 2, 3, 4, 5, 6, 7)),
  crc_2 numeric not null check (crc_2 in (0, 1, 2, 3, 4, 5, 6, 7)),
  crc_3 numeric not null check (crc_3 in (0, 1, 2, 3, 4, 5, 6, 7)),
  crc_4 numeric not null check (crc_4 in (0, 1, 2, 3, 4, 5, 6, 7)),

  CONSTRAINT quina_id_circular_pk PRIMARY KEY (crc_id),
  CONSTRAINT quina_id_circular_chk check ((crc_1 + crc_2 + crc_3 + crc_4) = crc_qt),
  
  -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT quina_id_circular_unk UNIQUE (crc_1, crc_2, crc_3, crc_4)
);

/**
  Indica a quantidade de múltiplos que tem pra cada bola.
  Pra jogos de 5 bolas, somente os 4 campos m_b1, m_b2, m_b3 e m_b4
  são utilizados.

  Inicialmente, a tabela analisará jogos da quina de 5 números.
 */
drop table if exists ltk_quina.quina_id_multiplo;
create table ltk_quina.quina_id_multiplo(
  multiplo_id numeric not null,
  m_b1 numeric not null,  -- Múltiplos de b1.
  m_b2 numeric not null,  -- Múltiplos de b2.
  m_b3 numeric not null,  -- Múltiplos de b3.
  m_b4 numeric not null,  -- Múltiplos de b4.
  CONSTRAINT quina_id_multiplo_pk PRIMARY KEY (multiplo_id)
);

/*
  Na quina, iremos analisar também duques, ternos, quarteto e quinteto.
 */
drop table if exists ltk_quina.quina_id_grupo_1_bola;
create table ltk_quina.quina_id_grupo_1_bola (
  grp_id numeric not null,
  bola1 numeric not null,

  CONSTRAINT quina_id_grupo_1_bola_chk unique(
    bola1
  ),
  CONSTRAINT quina_id_grupo_1_bola_chk2 check((bola1 >= 1) and (bola1 <= 80)),

  constraint quina_id_grupo_1_bola_pk PRIMARY KEY (grp_id)
);

drop table if exists ltk_quina.quina_id_grupo_2_bolas;
create table ltk_quina.quina_id_grupo_2_bolas (
  grp_id numeric not null,
  bola1 numeric not null,
  bola2 numeric not null,

  CONSTRAINT quina_id_grupo_2_bolas_chk unique(
    bola1, bola2
  ),
  CONSTRAINT quina_id_grupo_2_bolas_chk check (
    (bola1 < bola2)
  ),
  CONSTRAINT quina_id_grupo_2_bolas_chk2 check((bola1 >= 1) and (bola2 <= 80)),

  constraint quina_id_grupo_2_bolas_pk PRIMARY KEY (grp_id)
);

drop table if exists ltk_quina.quina_id_grupo_3_bolas;
create table ltk_quina.quina_id_grupo_3_bolas (
  grp_id numeric not null,
  bola1 numeric not null,
  bola2 numeric not null,
  bola3 numeric not null,

  CONSTRAINT quina_id_grupo_3_bolas_chk unique(
    bola1, bola2, bola3
  ),
  CONSTRAINT quina_id_grupo_3_bolas_chk check (
    (bola1 < bola2)
    and (bola2 < bola3)
  ),
  CONSTRAINT quina_id_grupo_3_bolas_chk2 check((bola1 >= 1) and (bola3 <= 80)),

  constraint quina_id_grupo_3_bolas_pk PRIMARY KEY (grp_id)
);

drop table if exists ltk_quina.quina_id_grupo_4_bolas;
create table ltk_quina.quina_id_grupo_4_bolas (
  grp_id numeric not null,
  bola1 numeric not null,
  bola2 numeric not null,
  bola3 numeric not null,
  bola4 numeric not null,

  CONSTRAINT quina_id_grupo_4_bolas_chk unique(
    bola1, bola2, bola3, bola4
  ),
  CONSTRAINT quina_id_grupo_4_bolas_chk check (
    (bola1 < bola2)
    and (bola2 < bola3)
    and (bola3 < bola4)
  ),
  CONSTRAINT quina_id_grupo_4_bolas_chk2 check((bola1 >= 1) and (bola4 <= 80)),

  constraint quina_id_grupo_4_bolas_pk PRIMARY KEY (grp_id)
);

drop table if exists ltk_quina.quina_id;
create table ltk_quina.quina_id(
  quina_id numeric not null,
  quina_qt numeric not null,
  par_impar_id numeric not null,
  prm_id numeric not null,
  hrz_id numeric not null,
  vrt_id numeric not null,
  dg_id numeric not null,
  qd_id numeric not null,
  crc_id numeric not null,
  b1_id numeric not null,
  b1_b5_id numeric not null,
  b1_b3_b5_id numeric not null
);

/**
  Devemos criar os índices abaixo pra agilizar as consultas.
 */
drop index IF EXISTS quina_id_idx_1;
drop index IF EXISTS quina_id_idx_2;
drop index IF EXISTS quina_id_idx_3;
drop index IF EXISTS quina_id_idx_4;
drop index IF EXISTS quina_id_idx_5;
drop index IF EXISTS quina_id_idx_6;
drop index IF EXISTS quina_id_idx_7;
drop index IF EXISTS quina_id_idx_8;
drop index IF EXISTS quina_id_idx_9;
drop index IF EXISTS quina_id_idx_10;
drop index IF EXISTS quina_id_idx_11;
drop index IF EXISTS quina_id_idx_12;

CREATE INDEX quina_id_idx_1 on ltk_quina.quina_id(quina_id);
CREATE INDEX quina_id_idx_2 on ltk_quina.quina_id(par_impar_id);
CREATE INDEX quina_id_idx_3 on ltk_quina.quina_id(prm_id);
CREATE INDEX quina_id_idx_4 on ltk_quina.quina_id(hrz_id);
CREATE INDEX quina_id_idx_5 on ltk_quina.quina_id(vrt_id);
CREATE INDEX quina_id_idx_6 on ltk_quina.quina_id(dg_id);
CREATE INDEX quina_id_idx_7 on ltk_quina.quina_id(quina_id);
CREATE INDEX quina_id_idx_8 on ltk_quina.quina_id(qd_id);
CREATE INDEX quina_id_idx_9 on ltk_quina.quina_id(crc_id);
CREATE INDEX quina_id_idx_10 on ltk_quina.quina_id(b1_id);
CREATE INDEX quina_id_idx_11 on ltk_quina.quina_id(b1_b5_id);
CREATE INDEX quina_id_idx_12 on ltk_quina.quina_id(b1_b3_b5_id);


