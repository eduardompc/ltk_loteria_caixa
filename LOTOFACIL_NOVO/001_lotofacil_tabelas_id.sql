/***
  Tabela que armazena id pra cada tipo de combinação na lotofacil.
  Autor:  Fábio Moura de Oliveira.
  Aqui, são gerados somente a estrutura das tabelas, os dados de tais tabelas são populados
  com arquivos *.csv, criado por um programa gerador de dados.
 */


/**
  Neste arquivo, irei criar as tabelas com id, por que disto,
  pois quando realizar a análise, não irei considerar a analisar de um único
  campo da tabela isolada, por exemplo, na tabela par_impar,
  cada combinação terá um id, pois, fica mais fácil realizar o filtro, utilizando
  um único id, do que pegar e fazer um where dos campos par e impar.
  Por exemplo, na tabela par x impar, abaixo.
    par    impar    qt_vezes
      7      8        486
      8      7        403
      6      9        319
      9      6        172
      5      10       111
      10     5        36
      4      11       21
      11     4        5
      3      12       3

    Analisando, a combinação que sai mais vezes é 7 pares, 8 pares, então ao invés
    de fazer um select assim, lógico né estou considerando, que pode ter
    15 bolas, 16 bolas

    Select par_impar_qt = 15 and par in (7, 8) ou par_impar_qt = 16 in par(7, 8),

    ao invés irei utilizar um id pra cada combinação, fica mais fácil realizar o select,
    desta forma:

    Select par_impar_id in (0, 1, 2, 3), que neste caso poderia corresponder a:

par_impar_id      par    impar    qt_vezes
    0             7      8        486
    1             8      7        403
    2             6      9        319
    3             9      6        172
    4             5      10       111
    5             10     5        36
    6             4      11       21
    7             11     4        5
    8             3      12       3
  
 */

-- Delete a tabela lotofacil_id, pois depende das outras.
drop table if exists lotofacil.lotofacil_id;


/**
  Par x Impar.
  Criar identificadores para cada combinação par e ímpar da lotofacil.
  Na lotofácil, há 12 pares e 13 ímpares, entretanto, iremos criar id
  somente pra as combinações possíveis na lotofacil, as combinações possíveis
  são de 15, 16, 17 e 18 bolas.
  Então, uma combinação de 15 bolas, terá no mínimo 2 pares e 13 impares ou, por exemplo
  terá 12 pares e 3 ímpares.
 */
drop table if exists lotofacil.lotofacil_id_par_impar;
create table lotofacil.lotofacil_id_par_impar(
  par_impar_id smallint not null,
  par_impar_qt smallint not null check (par_impar_qt in (15, 16, 17, 18)),

  par SMALLINT not null check (par between 0 and 12),
  impar smallint not null check (impar between 0 and 13),

  CONSTRAINT lotofacil_id_par_impar_pk PRIMARY KEY (par_impar_id),
  CONSTRAINT lotofacil_id_par_impar_chk check (par + impar = par_impar_qt),

    -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT lotofacil_id_par_impar_interno_unk UNIQUE (par, impar)
);

drop table if exists lotofacil.lotofacil_id_par_impar_comum;
create table lotofacil.lotofacil_id_par_impar_comum(
  comum_id  SERIAL PRIMARY KEY,
  par_impar_id smallint not null,
  par_impar_comum_id smallint not null,
  CONSTRAINT lotofacil_id_par_impar_comum_unk unique(par_impar_id, par_impar_comum_id)
);
comment on table lotofacil.lotofacil_id_par_impar_comum IS
'Esta tabela armazena os ids das combinações par x impar, '
'de um total de bolas relativo a outra combinação par x impar de um total de bolas diferentes'
'ou seja, todas as combinações de 15, serão relacionadas com as outras combinações de 16, 17 e 18,'
'por exemplo, a combinação: 2 par x 13 impares, é uma combinação de 15 bolas, '
'então, devemos verificar se nas outras combinações de 16, 17 e 18, se há pela menos uma combinação'
'de 2 par ou 13 ímpares, neste exemplo, há:'
'as combinações são:'
'16 bolas: 3 par x 13 ímpares,'
'17 bolas: 4 par x 13 ímpares,'
'18 bolas: 5 par x 13 ímpares,'
'ou seja, iremos comparar a combinação par x impar com a combinação com um total de bolas diferentes,'
'e verificar se há a quantidade de par é igual à combinação que estamos comparando e o mesmo pra a '
'quantidade de números ímpares.';


--Select lotofacil.fn_lotofacil_id_grupo();
drop table if exists lotofacil.lotofacil_id_primo_comum;
drop table if exists lotofacil.lotofacil_id_primo;
create table lotofacil.lotofacil_id_primo(
  prm_id smallint not null,
  prm_qt smallint not null,
  primo smallint not null,
  nao_primo smallint not null,

  CONSTRAINT lotofacil_id_primo_pk PRIMARY KEY (prm_id),
  CONSTRAINT lotofacil_id_primo_unk unique (primo, nao_primo)
);
comment on table lotofacil.lotofacil_id_primo IS
'Esta tabela armazena todas as combinações possíveis de números primos na lotofacil.'
'Os números primos são: 2, 3, 5, 7, 11, 13, 17, 19, 23.'
'Ou seja, há 9 números primos, isto que dizer que pode haver no máximo 9 números primos';

/**
 */
drop table if exists lotofacil.lotofacil_id_primo_comum;
create table lotofacil.lotofacil_id_primo_comum(
  comum_id  SERIAL PRIMARY KEY,
  prm_id smallint not null,
  prm_comum_id smallint not null,

  CONSTRAINT lotofacil_id_primo_comum_unk UNIQUE (prm_id, prm_comum_id),
  constraint lotofacil_id_primo_comum_fk FOREIGN KEY (prm_comum_id) REFERENCES lotofacil.lotofacil_id_primo(prm_id)
);

/**
  Externo x Interno.
  Na lotofacil, há no máximo, 9 internos e 16 externos.
  Em todas as combinações de 15, 16, 17 e 18 bolas, sempre haverá
  no máximo 9 internos, então, praticamente, podemos dizer, que ele é
  comum a todos eles, então, vamos criar este campo também.
 */
drop table if exists lotofacil.lotofacil_id_externo_interno;
create table lotofacil.lotofacil_id_externo_interno(
  ext_int_id smallint not null,
  ext_int_qt smallint not null check (ext_int_qt in (15, 16, 17, 18)),

  externo smallint not null check (externo between 6 and 16),
  interno smallint not null check (interno between 0 and 9),

  CONSTRAINT lotofacil_id_externo_interno_pk PRIMARY KEY (ext_int_id),
  CONSTRAINT lotofacil_id_externo_interno_chk check (externo + interno = ext_int_qt),

  -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT lotofacil_id_externo_interno_unk UNIQUE (externo, interno)
);

drop table if exists lotofacil.lotofacil_id_externo_interno_comum;
create table lotofacil.lotofacil_id_externo_interno_comum(
  comum_id  SERIAL PRIMARY KEY,
  ext_int_id smallint not null,
  ext_int_comum_id smallint not null,
  CONSTRAINT lotofacil_id_externo_interno_comum_unk unique(ext_int_id, ext_int_comum_id)
);

/**
  Horizontal.
 */
drop table if EXISTS lotofacil.lotofacil_id_horizontal;
create table lotofacil.lotofacil_id_horizontal(
  hrz_id smallint not null,
  hrz_qt smallint not null check (hrz_qt in (15, 16, 17, 18)),
  hrz_1 smallint not null check (hrz_1 in (0, 1, 2, 3, 4, 5)),
  hrz_2 smallint not null check (hrz_2 in (0, 1, 2, 3, 4, 5)),
  hrz_3 smallint not null check (hrz_3 in (0, 1, 2, 3, 4, 5)),
  hrz_4 smallint not null check (hrz_4 in (0, 1, 2, 3, 4, 5)),
  hrz_5 smallint not null check (hrz_5 in (0, 1, 2, 3, 4, 5)),

  CONSTRAINT lotofacil_id_horizontal_pk PRIMARY KEY (hrz_id),
  CONSTRAINT lotofacil_id_horizontal_chk check ((hrz_1 + hrz_2 + hrz_3 + hrz_4 + hrz_5) = hrz_qt),

  -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT lotofacil_id_horizontal_unk UNIQUE (hrz_1, hrz_2, hrz_3, hrz_4, hrz_5)
);

/**
  Vertical.
 */
drop table if EXISTS lotofacil.lotofacil_id_vertical;
create table lotofacil.lotofacil_id_vertical(
  vrt_id smallint not null,
  vrt_qt smallint not null check (vrt_qt in (15, 16, 17, 18)),
  vrt_1 smallint not null check (vrt_1 in (0, 1, 2, 3, 4, 5)),
  vrt_2 smallint not null check (vrt_2 in (0, 1, 2, 3, 4, 5)),
  vrt_3 smallint not null check (vrt_3 in (0, 1, 2, 3, 4, 5)),
  vrt_4 smallint not null check (vrt_4 in (0, 1, 2, 3, 4, 5)),
  vrt_5 smallint not null check (vrt_5 in (0, 1, 2, 3, 4, 5)),

  CONSTRAINT lotofacil_id_vertical_pk PRIMARY KEY (vrt_id),
  CONSTRAINT lotofacil_id_vertical_chk check ((vrt_1 + vrt_2 + vrt_3 + vrt_4 + vrt_5) = vrt_qt),  

  -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT lotofacil_id_vertical_unk UNIQUE (vrt_1, vrt_2, vrt_3, vrt_4, vrt_5)
);

/**
  Diagonal esquerda.
 */
drop table if EXISTS lotofacil.lotofacil_id_diagonal_esquerda;
create table lotofacil.lotofacil_id_diagonal_esquerda(
  dge_id smallint not null,
  dge_qt smallint not null check (dge_qt in (15, 16, 17, 18)),
  dge_1 smallint not null check (dge_1 in (0, 1, 2, 3, 4, 5)),
  dge_2 smallint not null check (dge_2 in (0, 1, 2, 3, 4, 5)),
  dge_3 smallint not null check (dge_3 in (0, 1, 2, 3, 4, 5)),
  dge_4 smallint not null check (dge_4 in (0, 1, 2, 3, 4, 5)),
  dge_5 smallint not null check (dge_5 in (0, 1, 2, 3, 4, 5)),

  CONSTRAINT lotofacil_id_diagonal_esquerda_pk PRIMARY KEY (dge_id),
  CONSTRAINT lotofacil_id_diagonal_esquerda_chk check ((dge_1 + dge_2 + dge_3 + dge_4 + dge_5) = dge_qt),
  
  -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT lotofacil_id_diagonal_esquerda_unk UNIQUE (dge_1, dge_2, dge_3, dge_4, dge_5)
);

/**
  Diagonal direita.
 */
drop table if EXISTS lotofacil.lotofacil_id_diagonal_direita;
create table lotofacil.lotofacil_id_diagonal_direita(
  dgd_id smallint not null,
  dgd_qt smallint not null check (dgd_qt in (15, 16, 17, 18)),
  dgd_1 smallint not null check (dgd_1 in (0, 1, 2, 3, 4, 5)),
  dgd_2 smallint not null check (dgd_2 in (0, 1, 2, 3, 4, 5)),
  dgd_3 smallint not null check (dgd_3 in (0, 1, 2, 3, 4, 5)),
  dgd_4 smallint not null check (dgd_4 in (0, 1, 2, 3, 4, 5)),
  dgd_5 smallint not null check (dgd_5 in (0, 1, 2, 3, 4, 5)),

  CONSTRAINT lotofacil_id_diagonal_direita_pk PRIMARY KEY (dgd_id),
  CONSTRAINT lotofacil_id_diagonal_direita_chk check ((dgd_1 + dgd_2 + dgd_3 + dgd_4 + dgd_5) = dgd_qt),
  
  -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT lotofacil_id_diagonal_direita_unk UNIQUE (dgd_1, dgd_2, dgd_3, dgd_4, dgd_5)
);

/**
  Esquerda x direita.
  Há na lotofacil 12 bolas na parte esquerda e 13 bolas na parte direita.
 */
drop table if exists lotofacil.lotofacil_id_esquerda_direita;
create table lotofacil.lotofacil_id_esquerda_direita(
  esq_dir_id smallint not null,
  esq_dir_qt smallint not null check (esq_dir_qt in (15, 16, 17, 18)),

  esquerda smallint not null check (esquerda between 0 and 12),
  direita smallint not null check (direita between 0 and 13),

  CONSTRAINT lotofacil_id_esquerda_direita_pk PRIMARY KEY (esq_dir_id),
  CONSTRAINT lotofacil_id_esquerda_direita_chk check (esquerda + direita = esq_dir_qt),

    -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT lotofacil_id_esquerda_direita_interno_unk UNIQUE (esquerda, direita)
);

drop table if exists lotofacil.lotofacil_id_esquerda_direita_comum;
create table lotofacil.lotofacil_id_esquerda_direita_comum(
  comum_id  SERIAL PRIMARY KEY,
  esq_dir_id smallint not null,
  esq_dir_comum_id smallint not null,
  CONSTRAINT lotofacil_id_esquerda_direita_comum_unk unique(esq_dir_id, esq_dir_comum_id)
);



/*
  Superior x inferior.
  Há na lotofacil 12 bolas na parte superior e 13 bolas na parte inferior.
 */
drop table if exists lotofacil.lotofacil_id_superior_inferior;
create table lotofacil.lotofacil_id_superior_inferior(
  sup_inf_id smallint not null,
  sup_inf_qt smallint not null check (sup_inf_qt in (15, 16, 17, 18)),

  superior smallint not null check (superior between 0 and 12),
  inferior smallint not null check (inferior between 0 and 13),

  CONSTRAINT lotofacil_id_superior_inferior_pk PRIMARY KEY (sup_inf_id),
  CONSTRAINT lotofacil_id_superior_inferior_chk check (superior + inferior = sup_inf_qt),

    -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT lotofacil_id_superior_inferior_interno_unk UNIQUE (superior, inferior)
);

drop table if exists lotofacil.lotofacil_id_superior_inferior_comum;
create table lotofacil.lotofacil_id_superior_inferior_comum(
  comum_id  SERIAL PRIMARY KEY,
  sup_inf_id smallint not null,
  sup_inf_comum_id smallint not null,
  CONSTRAINT lotofacil_id_superior_inferior_comum_unk unique(sup_inf_id, sup_inf_comum_id)
);

/**
  Superior_esquerda x inferior_direita
  Há na lotofacil 12 bolas na parte superior_esquerda e 13 bolas na parte inferior_direita.
 */
drop table if exists lotofacil.lotofacil_id_superior_esquerda_inferior_direita;
create table lotofacil.lotofacil_id_superior_esquerda_inferior_direita(
  sup_esq_inf_dir_id smallint not null,
  sup_esq_inf_dir_qt smallint not null check (sup_esq_inf_dir_qt in (15, 16, 17, 18)),

  superior_esquerda smallint not null check (superior_esquerda between 0 and 12),
  inferior_direita smallint not null check (inferior_direita between 0 and 13),

  CONSTRAINT lotofacil_id_superior_esquerda_inferior_direita_pk PRIMARY KEY (sup_esq_inf_dir_id),
  CONSTRAINT lotofacil_id_superior_esquerda_inferior_direita_chk check (superior_esquerda + inferior_direita = sup_esq_inf_dir_qt),

    -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT lotofacil_id_superior_esquerda_inferior_direita_interno_unk UNIQUE (superior_esquerda, inferior_direita)
);

drop table if exists lotofacil.lotofacil_id_superior_esquerda_inferior_direita_comum;
create table lotofacil.lotofacil_id_superior_esquerda_inferior_direita_comum(
  comum_id  SERIAL PRIMARY KEY,
  sup_esq_inf_dir_id smallint not null,
  sup_esq_inf_dir_comum_id smallint not null,
  CONSTRAINT lotofacil_id_superior_esquerda_inferior_direita_comum_unk unique(sup_esq_inf_dir_id, sup_esq_inf_dir_comum_id)
);


drop table if exists lotofacil.lotofacil_id_superior_direita_inferior_esquerda;
create table lotofacil.lotofacil_id_superior_direita_inferior_esquerda(
  sup_dir_inf_esq_id smallint not null,
  sup_dir_inf_esq_qt smallint not null check (sup_dir_inf_esq_qt in (15, 16, 17, 18)),

  superior_direita smallint not null check (superior_direita between 0 and 12),
  inferior_esquerda smallint not null check (inferior_esquerda between 0 and 13),

  CONSTRAINT lotofacil_id_superior_direita_inferior_esquerda_pk PRIMARY KEY (sup_dir_inf_esq_id),
  CONSTRAINT lotofacil_id_superior_direita_inferior_esquerda_chk check (superior_direita + inferior_esquerda = sup_dir_inf_esq_qt),

    -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT lotofacil_id_superior_direita_inferior_esquerda_interno_unk UNIQUE (superior_direita, inferior_esquerda)
);

drop table if exists lotofacil.lotofacil_id_superior_direita_inferior_esquerda_comum;
create table lotofacil.lotofacil_id_superior_direita_inferior_esquerda_comum(
  comum_id  SERIAL PRIMARY KEY,
  sup_dir_inf_esq_id smallint not null,
  sup_dir_inf_esq_comum_id smallint not null,
  CONSTRAINT lotofacil_id_superior_direita_inferior_esquerda_comum_unk unique(sup_dir_inf_esq_id, sup_dir_inf_esq_comum_id)
);

/**
  Cruzeta.
 */
drop table if EXISTS lotofacil.lotofacil_id_cruzeta;
create table lotofacil.lotofacil_id_cruzeta(
  crz_id smallint not null,
  crz_qt smallint not null check (crz_qt in (15, 16, 17, 18)),
  crz_1 smallint not null check (crz_1 in (0, 1, 2, 3, 4, 5)),
  crz_2 smallint not null check (crz_2 in (0, 1, 2, 3, 4, 5)),
  crz_3 smallint not null check (crz_3 in (0, 1, 2, 3, 4, 5, 6, 7, 8, 9)),
  crz_4 smallint not null check (crz_4 in (0, 1, 2, 3, 4, 5)),
  crz_5 smallint not null check (crz_5 in (0, 1, 2, 3, 4, 5)),

  CONSTRAINT lotofacil_id_cruzeta_pk PRIMARY KEY (crz_id),
  CONSTRAINT lotofacil_id_cruzeta_chk check ((crz_1 + crz_2 + crz_3 + crz_4 + crz_5) = crz_qt),

  -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT lotofacil_id_cruzeta_unk UNIQUE (crz_1, crz_2, crz_3, crz_4, crz_5)

);

/**
  losango.
 */
drop table if EXISTS lotofacil.lotofacil_id_losango;
create table lotofacil.lotofacil_id_losango(
  lsng_id smallint not null,
  lsng_qt smallint not null check (lsng_qt in (15, 16, 17, 18)),
  lsng_1 smallint not null check (lsng_1 in (0, 1, 2, 3)),
  lsng_2 smallint not null check (lsng_2 in (0, 1, 2, 3)),
  lsng_3 smallint not null check (lsng_3 between 0 and 13),
  lsng_4 smallint not null check (lsng_4 in (0, 1, 2, 3)),
  lsng_5 smallint not null check (lsng_5 in (0, 1, 2, 3)),

  CONSTRAINT lotofacil_id_losango_pk PRIMARY KEY (lsng_id),
  CONSTRAINT lotofacil_id_losango_chk check ((lsng_1 + lsng_2 + lsng_3 + lsng_4 + lsng_5) = lsng_qt),

  -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT lotofacil_id_losango_unk UNIQUE (lsng_1, lsng_2, lsng_3, lsng_4, lsng_5)

);

/**
  quinteto.
 */
drop table if EXISTS lotofacil.lotofacil_id_quinteto;
create table lotofacil.lotofacil_id_quinteto(
  qnt_id smallint not null,
  qnt_qt smallint not null check (qnt_qt in (15, 16, 17, 18)),
  qnt_1 smallint not null check (qnt_1 between 0 and 5),
  qnt_2 smallint not null check (qnt_2 between 0 and 5),
  qnt_3 smallint not null check (qnt_3 between 0 and 5),
  qnt_4 smallint not null check (qnt_4 between 0 and 5),
  qnt_5 smallint not null check (qnt_5 between 0 and 5),

  CONSTRAINT lotofacil_id_quinteto_pk PRIMARY KEY (qnt_id),
  CONSTRAINT lotofacil_id_quinteto_chk check ((qnt_1 + qnt_2 + qnt_3 + qnt_4 + qnt_5) = qnt_qt),

  -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT lotofacil_id_quinteto_unk UNIQUE (qnt_1, qnt_2, qnt_3, qnt_4, qnt_5)

);

/*
  Triângulo.
 */
drop table if EXISTS lotofacil.lotofacil_id_triangulo;
create table lotofacil.lotofacil_id_triangulo(
  trng_id smallint not null,
  trng_qt smallint not null check (trng_qt in (15, 16, 17, 18)),
  trng_1 smallint not null check (trng_1 between 0 and 8),
  trng_2 smallint not null check (trng_2 between 0 and 4),
  trng_3 smallint not null check (trng_3 between 0 and 9),
  trng_4 smallint not null check (trng_4 between 0 and 4),

  CONSTRAINT lotofacil_id_triangulo_pk PRIMARY KEY (trng_id),
  CONSTRAINT lotofacil_id_triangulo_chk check ((trng_1 + trng_2 + trng_3 + trng_4) = trng_qt),

  -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT lotofacil_id_triangulo_unk UNIQUE (trng_1, trng_2, trng_3, trng_4)

);


/**
  trio
 */
drop table if EXISTS lotofacil.lotofacil_id_trio;
create table lotofacil.lotofacil_id_trio(
  trio_id integer not null,
  tr_qt smallint not null check (tr_qt in (15, 16, 17, 18)),
  tr_1 smallint not null check (tr_1 in (0, 1, 2, 3)),
  tr_2 smallint not null check (tr_2 in (0, 1, 2, 3)),
  tr_3 smallint not null check (tr_3 in (0, 1, 2, 3)),
  tr_4 smallint not null check (tr_4 in (0, 1, 2, 3)),
  tr_5 smallint not null check (tr_5 in (0, 1, 2, 3)),
  tr_6 smallint not null check (tr_6 in (0, 1, 2, 3)),
  tr_7 smallint not null check (tr_7 in (0, 1, 2, 3)),
  tr_8 smallint not null check (tr_8 in (0, 1, 2, 3, 4)),

  CONSTRAINT lotofacil_id_trio_pk PRIMARY KEY (trio_id),
  CONSTRAINT lotofacil_id_trio_chk check ((tr_1 + tr_2 + tr_3 + tr_4 + tr_5 + tr_6 + tr_7 + tr_8) = tr_qt),

  -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT lotofacil_id_trio_unk UNIQUE (tr_1, tr_2, tr_3, tr_4, tr_5, tr_6, tr_7, tr_8)

);

/**
  x1_x2
 */
drop table if EXISTS lotofacil.lotofacil_id_x1_x2;
create table lotofacil.lotofacil_id_x1_x2(
  x1_x2_id smallint not null,
  x1_x2_qt smallint not null check (x1_x2_qt in (15, 16, 17, 18)),
  x1_x2_1 smallint not null check (x1_x2_1 between 0 and 9),
  x1_x2_2 smallint not null check (x1_x2_2 between 0 and 16),

  CONSTRAINT lotofacil_id_x1_x2_pk PRIMARY KEY (x1_x2_id),
  CONSTRAINT lotofacil_id_x1_x2_chk check ((x1_x2_1 + x1_x2_2) = x1_x2_qt),

  -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT lotofacil_id_x1_x2_unk UNIQUE (x1_x2_1, x1_x2_2)

);

/**
  dezena
 */
drop table if EXISTS lotofacil.lotofacil_id_dezena;
create table lotofacil.lotofacil_id_dezena(
  dz_id smallint not null,
  dz_qt smallint not null check (dz_qt in (15, 16, 17, 18)),
  dz_0 smallint not null check (dz_0 BETWEEN 0 and 9),
  dz_1 smallint not null check (dz_1 between 0 and 10),
  dz_2 smallint not null check (dz_2 between 0 and 6),

  CONSTRAINT lotofacil_id_dezena_pk PRIMARY KEY (dz_id),
  CONSTRAINT lotofacil_id_dezena_chk check ((dz_0 + dz_1 + dz_2) = dz_qt),

  -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT lotofacil_id_dezena_unk UNIQUE (dz_0, dz_1, dz_2)

);

/**
  Unidade.
 */
drop table if EXISTS lotofacil.lotofacil_id_unidade;
create table lotofacil.lotofacil_id_unidade(
  un_id integer not null,
  un_qt smallint not null check (un_qt in (15, 16, 17, 18)),
  un_0 smallint not null check (un_0 between 0 and 2),
  un_1 smallint not null check (un_1 between 0 and 3),
  un_2 smallint not null check (un_2 between 0 and 3),
  un_3 smallint not null check (un_3 between 0 and 3),
  un_4 smallint not null check (un_4 between 0 and 3),
  un_5 smallint not null check (un_5 between 0 and 3),
  un_6 smallint not null check (un_6 between 0 and 2),
  un_7 smallint not null check (un_7 between 0 and 2),
  un_8 smallint not null check (un_8 between 0 and 2),
  un_9 smallint not null check (un_9 between 0 and 2),

  CONSTRAINT lotofacil_id_unidade_pk PRIMARY KEY (un_id),
  CONSTRAINT lotofacil_id_unidade_chk check ((un_0 + un_1 + un_2 + un_3 + un_4 + un_5 + un_6 + un_7 + un_8 + un_9) = un_qt),

  -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT lotofacil_id_unidade_unk UNIQUE (un_0, un_1, un_2, un_3, un_4, un_5, un_6, un_7, un_8, un_9)

);

/**
  Estatística por algarismo, há
  2 algarismos com o valor 0 => 10, 20
  12 algarismo com o valor 1 => 1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 21
  8 algarismo com o valor 2 => 2, 12, 20, 21, 22, 23, 24, 25

  Nesta tabela, não haverá o campo alg_qt, pois não é possível diferenciar
  se é com 15, 16, 17 ou 18 bolas.
 */
drop table if EXISTS lotofacil.lotofacil_id_algarismo;
create table lotofacil.lotofacil_id_algarismo(
  alg_id integer not null,
  --alg_qt smallint not null check (alg_qt in (15, 16, 17, 18)),
  alg_0 smallint not null check (alg_0 between 0 and 2),
  alg_1 smallint not null check (alg_1 between 0 and 13),
  alg_2 smallint not null check (alg_2 between 0 and 9),
  alg_3 smallint not null check (alg_3 between 0 and 3),
  alg_4 smallint not null check (alg_4 between 0 and 3),
  alg_5 smallint not null check (alg_5 between 0 and 3),
  alg_6 smallint not null check (alg_6 between 0 and 2),
  alg_7 smallint not null check (alg_7 between 0 and 2),
  alg_8 smallint not null check (alg_8 between 0 and 2),
  alg_9 smallint not null check (alg_9 between 0 and 2),

  CONSTRAINT lotofacil_id_algarismo_pk PRIMARY KEY (alg_id),

  -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT lotofacil_id_algarismo_unk UNIQUE (alg_0, alg_1, alg_2, alg_3, alg_4, alg_5, alg_6, alg_7, alg_8, alg_9)

);

/**
  Soma de bolas.
 */
drop table if EXISTS lotofacil.lotofacil_id_soma_de_bolas;
create table lotofacil.lotofacil_id_soma_de_bolas(
  sm_bolas_id smallint not null,
  soma_de_bolas smallint not null check (soma_de_bolas BETWEEN 120 and 360),

  CONSTRAINT lotofacil_id_soma_de_bolas_pk PRIMARY KEY (sm_bolas_id),
  CONSTRAINT lotofacil_id_soma_de_bolas_chk check (sm_bolas_id = soma_de_bolas)

);

/**
  Esta tabela armazena a estatística de soma de algarismo de um número.
  Por exemplo, a soma da primeira combinação da lotofacil é:
  120, então soma os algarismos: 1 + 2 + 0 => 3.
  Esta tabela tem 9 registros, da forma: 1,1;2,2 e assim por diante.
  Observe que a soma dos algarismo sempre tem que ser um número de 1 algarismo,
  se não for devemos repetir a soma dos algarismos com o novo número.
 */
drop table if EXISTS lotofacil.lotofacil_id_soma_algarismo;
create table lotofacil.lotofacil_id_soma_algarismo(
  sm_alg_id smallint not null,
  algarismo smallint not null check (algarismo BETWEEN 1 and 9),

  CONSTRAINT lotofacil_id_soma_algarismo_pk PRIMARY KEY (sm_alg_id),
  CONSTRAINT lotofacil_id_soma_algarismo_chk check (sm_alg_id = algarismo)

);

/**
  Linha e coluna:
  Faz estatística do mesmo número de linha e coluna.
 */

drop table if EXISTS lotofacil.lotofacil_id_linha_coluna;
create table lotofacil.lotofacil_id_linha_coluna(
  lc_id integer not null,
  --lc_qt smallint not null check (lc_qt in (15, 16, 17, 18)),
  lc_1 smallint not null check (lc_1 between 0 and 9),
  lc_2 smallint not null check (lc_2 between 0 and 9),
  lc_3 smallint not null check (lc_3 between 0 and 9),
  lc_4 smallint not null check (lc_4 between 0 and 9),
  lc_5 smallint not null check (lc_5 between 0 and 9),
  CONSTRAINT lotofacil_id_linha_coluna_pk PRIMARY KEY (lc_id),
  ---CONSTRAINT lotofacil_id_linha_coluna_chk check ((lc_1 + lc_2 + lc_3 + lc_4 + lc_5) = lc_qt),

  -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT lotofacil_id_linha_coluna_unk UNIQUE (lc_1, lc_2, lc_3, lc_4, lc_5)

);

/**
  Esta tabela armazena em cada campo, o id de cada combinação relacionada a uma estatística.
  Este id refere-se ao id da combinação a qual estamos analisando, tal id está armazenado
  em outra tabela que armazena pra cada combinação da estatística que estamos analisando
  um identificador, então, ao invés de termos uma tabela que tem a combinação, temos
  é uma tabela que armazena somente o id, então, se quisermos saber como a combinação é formada
  devemos relacionar este id com o campo correspondente.
  Por exemplo, no campo 'par_impar_id', está o 'identificador' de uma combinação par x ímpar,
  ao invés de termos os campos 'par' e 'ímpar', nesta tabela 'lotofacil_id', temos é um id,
  se quisermos saber qual é a quantidade de bolas 'pares' e 'ímpares', devemos, procurar
  este 'id' na tabela 'lotofacil_id_par_impar'.

 */
drop table if exists lotofacil.lotofacil_id cascade;
create table lotofacil.lotofacil_id(
  ltf_id integer not null,
  ltf_qt smallint not null,

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

  /*
  b1_id smallint not null,
  b1_b2_id smallint not null,
  b1_b2_b3_id smallint not null,
  b1_b2_b3_b4_id smallint not null,
  b1_b2_b3_b4_b5_id smallint not null,
  b1_b15_id smallint not null,
  b1_b8_b15_id smallint not null,
  b1_b4_b8_b12_b15_id smallint not null,

  soma_de_bolas_id numeric null,
  */

  CONSTRAINT lotofacil_id_fk_1 FOREIGN KEY (ltf_id) references lotofacil.lotofacil_num(ltf_id) on update cascade on delete cascade,

  CONSTRAINT lotofacil_id_fk_2 FOREIGN KEY (par_impar_id) references lotofacil.lotofacil_id_par_impar(par_impar_id) on update cascade on delete cascade,
  CONSTRAINT lotofacil_id_fk_3 FOREIGN KEY (ext_int_id) references lotofacil.lotofacil_id_externo_interno(ext_int_id) on update cascade on delete cascade,
  CONSTRAINT lotofacil_id_fk_4 FOREIGN KEY (prm_id) references lotofacil.lotofacil_id_primo(prm_id) on update cascade on delete cascade,

  CONSTRAINT lotofacil_id_fk_5 FOREIGN KEY (hrz_id) references lotofacil.lotofacil_id_horizontal(hrz_id) on update cascade on delete cascade,
  CONSTRAINT lotofacil_id_fk_6 FOREIGN KEY (vrt_id) references lotofacil.lotofacil_id_vertical(vrt_id) on update cascade on delete cascade,
  CONSTRAINT lotofacil_id_fk_7 FOREIGN KEY (dge_id) references lotofacil.lotofacil_id_diagonal_esquerda(dge_id) on update cascade on delete cascade,
  CONSTRAINT lotofacil_id_fk_8 FOREIGN KEY (dgd_id) references lotofacil.lotofacil_id_diagonal_direita(dgd_id) on update cascade on delete cascade,

  CONSTRAINT lotofacil_id_fk_9 FOREIGN KEY (esq_dir_id) references lotofacil.lotofacil_id_esquerda_direita(esq_dir_id) on update cascade on delete cascade,
  CONSTRAINT lotofacil_id_fk_10 FOREIGN KEY (sup_inf_id) references lotofacil.lotofacil_id_superior_inferior(sup_inf_id) on update cascade on delete cascade,

  CONSTRAINT lotofacil_id_fk_11 FOREIGN KEY (sup_esq_inf_dir_id) references lotofacil.lotofacil_id_superior_esquerda_inferior_direita(sup_esq_inf_dir_id) on update cascade on delete cascade,
  CONSTRAINT lotofacil_id_fk_12 FOREIGN KEY (sup_dir_inf_esq_id) references lotofacil.lotofacil_id_superior_direita_inferior_esquerda(sup_dir_inf_esq_id) on update cascade on delete cascade,

  CONSTRAINT lotofacil_id_fk_13 FOREIGN KEY (crz_id) references lotofacil.lotofacil_id_cruzeta (crz_id) on update cascade on delete cascade,
  CONSTRAINT lotofacil_id_fk_14 FOREIGN KEY (lsng_id) REFERENCES lotofacil.lotofacil_id_losango (lsng_id) on update cascade on delete cascade,
  constraint lotofacil_id_fk_15 FOREIGN KEY (qnt_id) REFERENCES lotofacil.lotofacil_id_quinteto (qnt_id) on update cascade on delete cascade,

  constraint lotofacil_id_fk_16 FOREIGN KEY (trng_id) REFERENCES lotofacil.lotofacil_id_triangulo (trng_id) on update cascade on delete cascade,
  constraint lotofacil_id_fk_17 FOREIGN KEY (trio_id) REFERENCES lotofacil.lotofacil_id_trio(trio_id) on update cascade on delete cascade,

  constraint lotofacil_id_fk_18 FOREIGN KEY (x1_x2_id) REFERENCES lotofacil.lotofacil_id_x1_x2 (x1_x2_id) on update cascade on delete cascade,

  constraint lotofacil_id_fk_19 FOREIGN KEY (dz_id) REFERENCES lotofacil.lotofacil_id_dezena (dz_id) on update cascade on delete cascade,
  constraint lotofacil_id_fk_20 FOREIGN KEY (un_id) REFERENCES lotofacil.lotofacil_id_unidade (un_id) on update cascade on delete cascade,
  constraint lotofacil_id_fk_21 FOREIGN KEY (alg_id) REFERENCES lotofacil.lotofacil_id_algarismo (alg_id) on update cascade on delete cascade,

  constraint lotofacil_id_fk_22 FOREIGN KEY (sm_bolas_id) REFERENCES lotofacil.lotofacil_id_soma_de_bolas (sm_bolas_id) on update cascade on delete cascade,
  constraint lotofacil_id_fk_23 FOREIGN KEY (sm_alg_id) REFERENCES lotofacil.lotofacil_id_soma_algarismo (sm_alg_id)  on update cascade on delete cascade,

  constraint lotofacil_id_fk_24 FOREIGN KEY (lc_id) REFERENCES lotofacil.lotofacil_id_linha_coluna (lc_id) on update cascade on delete cascade

);

/*
  Função pra atualizar o campo ltf_id da tabela lotofacil.lotofacil_resultado;
  TODO: Esta function ão será usada mais.
 */
drop FUNCTION if exists lotofacil.fn_atualizar_lotofacil_resultado_ltf_id();
create function lotofacil.fn_atualizar_lotofacil_resultado_ltf_id()
  returns void
  LANGUAGE plpgsql
  as $$
  BEGIN
    Update lotofacil.lotofacil_resultado_num ltf_res set ltf_id = ltf_num.ltf_id
    from lotofacil.lotofacil_num ltf_num
    where 
      ltf_res.num_1 = ltf_num.num_1 and
    ltf_res.num_2 = ltf_num.num_2 and
    ltf_res.num_3 = ltf_num.num_3 and
    ltf_res.num_4 = ltf_num.num_4 and
    ltf_res.num_5 = ltf_num.num_5 and
    ltf_res.num_6 = ltf_num.num_6 and
    ltf_res.num_7 = ltf_num.num_7 and
    ltf_res.num_8 = ltf_num.num_8 and
    ltf_res.num_9 = ltf_num.num_9 and
    ltf_res.num_10 = ltf_num.num_10 and
    ltf_res.num_11 = ltf_num.num_11 and
    ltf_res.num_12 = ltf_num.num_12 and
    ltf_res.num_13 = ltf_num.num_13 and
    ltf_res.num_14 = ltf_num.num_14 and
    ltf_res.num_15 = ltf_num.num_15 and
    ltf_res.num_16 = ltf_num.num_16 and
    ltf_res.num_17 = ltf_num.num_17 and
    ltf_res.num_18 = ltf_num.num_18 and
    ltf_res.num_19 = ltf_num.num_19 and
    ltf_res.num_20 = ltf_num.num_20 AND
    ltf_res.num_21 = ltf_num.num_21 and
    ltf_res.num_22 = ltf_num.num_22 and
    ltf_res.num_23 = ltf_num.num_23 and
    ltf_res.num_24 = ltf_num.num_24 and
    ltf_res.num_25 = ltf_num.num_25 and
    ltf_num.ltf_qt = 15;
  END;$$;


/**
  Novos: Bola NÃO SAIU no concurso anterior, mas saiu no concurso atual.
  Repetidos: Bola SAIU no concurso anterior e saiu no atual também.
  Há 25 números, são sorteados 15, restam 10 números.
  Então, pode haver de 0 a 10 números novos.

 */
drop table if exists lotofacil.lotofacil_id_novos_repetidos;
create table lotofacil.lotofacil_id_novos_repetidos (
  novos_repetidos_id  smallint not NULL,
  novos     smallint not NULL CHECK (novos >= 0 AND novos <= 10),
  repetidos smallint not NULL CHECK (repetidos >= 5 AND repetidos <= 15),

  CONSTRAINT lotofacil_id_novos_repetidos_pk PRIMARY KEY (novos_repetidos_id),
  CONSTRAINT lotofacil_id_novos_repetidos_chk CHECK ((novos + repetidos) = 15),

    -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT lotofacil_id_novos_repetidos_unk UNIQUE (novos, repetidos)
);











