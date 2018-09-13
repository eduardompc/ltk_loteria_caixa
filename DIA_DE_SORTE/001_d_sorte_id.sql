/**
  Autor:  Fábio Moura de Oliveira
  Data:   11/7/2018
  Descrição:  Pra cada análise estatística haverá uma
              tabela que armazena toda as combinações possíveis,
              e associa pra cada combinação um identificador único
              e exclusivo.
              Então, por exemplo, em uma combinação par x ímpar,
              ao invés de agrupar por par x ímpar, irei agrupar
              pelo o identificador da combinação par x ímpar,
              assim, fica mais prático e mais eficiente.
 */

drop table if exists d_sorte.d_sorte_id_par_impar;
create table d_sorte.d_sorte_id_par_impar(
  par_impar_id numeric not null,
  par_impar_qt smallint not null check (par_impar_qt in (7, 8, 9, 10, 11, 12, 13, 14, 15)),

  par smallint not null check (par between 0 and 15),
  impar smallint not null check (impar between 0 and 16),

  CONSTRAINT d_sorte_id_par_impar_pk PRIMARY KEY (par_impar_id),
  CONSTRAINT d_sorte_id_par_impar_chk check (par + impar = par_impar_qt),

    -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT d_sorte_id_par_impar_interno_unk UNIQUE (par, impar)
);


/**
  Armazena pra cada combinação possível de primo x nao_primo,
  um identificador.
 */
drop table if exists d_sorte.d_sorte_id_primo_comum;
drop table if exists d_sorte.d_sorte_id_primo_nao_primo;
create table d_sorte.d_sorte_id_primo(
  prm_id numeric not null,
  prm_qt smallint not null check (prm_qt between 7 and 15),
  primo smallint not null check (primo between 0 and 11),
  nao_primo smallint not null check (nao_primo between 0 and 20),

  CONSTRAINT d_sorte_id_primo_chk_1 check (primo + nao_primo = prm_qt),
  CONSTRAINT d_sorte_id_primo_pk PRIMARY KEY (prm_id),
  CONSTRAINT d_sorte_id_primo_unk unique (primo, nao_primo)
);

drop table if exists d_sorte.d_sorte_id_externo_interno;
create table d_sorte.d_sorte_id_externo_interno(
  ext_int_id numeric not null,
  ext_int_qt smallint not null check (ext_int_qt in (7, 8, 9, 10, 11, 12, 13, 14, 15)),

  externo smallint not null check (externo between 0 and 15),
  interno smallint not null check (interno between 0 and 16),

  CONSTRAINT d_sorte_id_externo_interno_pk PRIMARY KEY (ext_int_id),
  CONSTRAINT d_sorte_id_externo_interno_chk check (externo + interno = ext_int_qt),

    -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT d_sorte_id_ext_int_interno_unk UNIQUE (externo, interno)
);

drop table if EXISTS d_sorte.d_sorte_id_horizontal;
create table d_sorte.d_sorte_id_horizontal(
  hrz_id numeric not null,
  hrz_qt smallint not null check (hrz_qt in (7, 8, 9, 10, 11, 12, 13, 14, 15)),
  hrz_1 smallint not null check (hrz_1 between 0 and 7),
  hrz_2 smallint not null check (hrz_2 between 0 and 7),
  hrz_3 smallint not null check (hrz_3 between 0 and 7),
  hrz_4 smallint not null check (hrz_4 between 0 and 7),
  hrz_5 smallint not null check (hrz_5 between 0 and 3),

  CONSTRAINT d_sorte_id_horizontal_pk PRIMARY KEY (hrz_id),
  CONSTRAINT d_sorte_id_horizontal_chk check ((hrz_1 + hrz_2 + hrz_3 + hrz_4 + hrz_5) = hrz_qt),

  -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT d_sorte_id_horizontal_unk UNIQUE (hrz_1, hrz_2, hrz_3, hrz_4, hrz_5)
);

drop table if EXISTS d_sorte.d_sorte_id_vertical;
create table d_sorte.d_sorte_id_vertical(
  vrt_id numeric not null,
  vrt_qt smallint not null check (vrt_qt between 7 and 15),
  vrt_1 smallint not null check (vrt_1 between 0 and 5),
  vrt_2 smallint not null check (vrt_2 between 0 and 5),
  vrt_3 smallint not null check (vrt_3 between 0 and 5),
  vrt_4 smallint not null check (vrt_4 between 0 and 4),
  vrt_5 smallint not null check (vrt_5 between 0 and 4),
  vrt_6 smallint not null check (vrt_6 between 0 and 4),
  vrt_7 smallint not null check (vrt_7 between 0 and 4),

  CONSTRAINT d_sorte_id_vertical_pk PRIMARY KEY (vrt_id),
  CONSTRAINT d_sorte_id_vertical_chk check ((vrt_1 + vrt_2 + vrt_3 + vrt_4 + vrt_5 + vrt_6 + vrt_7) = vrt_qt),

  -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT d_sorte_id_vertical_unk UNIQUE (vrt_1, vrt_2, vrt_3, vrt_4, vrt_5, vrt_6, vrt_7)
);

drop table if EXISTS d_sorte.d_sorte_id_diagonal_esquerda;
create table d_sorte.d_sorte_id_diagonal_esquerda(
  dge_id numeric not null,
  dge_qt smallint not null check (dge_qt between 7 and 15),
  dge_1 smallint not null check (dge_1 between 0 and 4),
  dge_2 smallint not null check (dge_2 between 0 and 4),
  dge_3 smallint not null check (dge_3 between 0 and 4),
  dge_4 smallint not null check (dge_4 between 0 and 4),
  dge_5 smallint not null check (dge_5 between 0 and 5),
  dge_6 smallint not null check (dge_6 between 0 and 5),
  dge_7 smallint not null check (dge_7 between 0 and 5),

  CONSTRAINT d_sorte_id_diagonal_esquerda_pk PRIMARY KEY (dge_id),
  CONSTRAINT d_sorte_id_diagonal_esquerda_chk check ((dge_1 + dge_2 + dge_3 + dge_4 + dge_5 + dge_6 + dge_7) = dge_qt),

  -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT d_sorte_id_diagonal_esquerda_unk UNIQUE (dge_1, dge_2, dge_3, dge_4, dge_5, dge_6, dge_7)
);

drop table if EXISTS d_sorte.d_sorte_id_diagonal_direita;
create table d_sorte.d_sorte_id_diagonal_direita(
  dgd_id numeric not null,
  dgd_qt smallint not null check (dgd_qt between 7 and 15),
  dgd_1 smallint not null check (dgd_1 between 0 and 5),
  dgd_2 smallint not null check (dgd_2 between 0 and 5),
  dgd_3 smallint not null check (dgd_3 between 0 and 5),
  dgd_4 smallint not null check (dgd_4 between 0 and 4),
  dgd_5 smallint not null check (dgd_5 between 0 and 4),
  dgd_6 smallint not null check (dgd_6 between 0 and 4),
  dgd_7 smallint not null check (dgd_7 between 0 and 4),

  CONSTRAINT d_sorte_id_diagonal_direita_pk PRIMARY KEY (dgd_id),
  CONSTRAINT d_sorte_id_diagonal_direita_chk check ((dgd_1 + dgd_2 + dgd_3 + dgd_4 + dgd_5 + dgd_6 + dgd_7) = dgd_qt),

  -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT d_sorte_id_diagonal_direita_unk UNIQUE (dgd_1, dgd_2, dgd_3, dgd_4, dgd_5, dgd_6, dgd_7)
);

drop table if exists d_sorte.d_sorte_id_quadrante;
create table d_sorte.d_sorte_id_quadrante(
  qd_id numeric not null,
  qd_qt smallint not null check (qd_qt between 7 and 15),
  qd_1 smallint not null check (qd_1 between 0 and 8),
  qd_2 smallint not null check (qd_2 between 0 and 8),
  qd_3 smallint not null check (qd_3 between 0 and 7),
  qd_4 smallint not null check (qd_4 between 0 and 8),

  constraint d_sorte_id_quadrante_chk check (qd_1 + qd_2 + qd_3 + qd_4 = qd_qt),
  constraint d_sorte_id_quadrante_chk PRIMARY KEY (qd_id)
);

drop table if exists d_sorte.d_sorte_id_esquerda_direita;
create table d_sorte.d_sorte_id_esquerda_direita(
  esq_dir_id numeric not null,
  esq_dir_qt smallint not null check (esq_dir_qt between 7 and 15),
  esq smallint not null check(esq between 0 and 15),
  dir smallint not null check(dir between 0 and 16),

  constraint d_sorte_id_esquerda_direita_pk PRIMARY KEY (esq_dir_id),
  CONSTRAINT d_sorte_id_esquerda_direita_chk check (esq + dir = esq_dir_qt)
);

drop table if exists d_sorte.d_sorte_id_superior_inferior;
create table d_sorte.d_sorte_id_superior_inferior(
  sup_inf_id numeric not null,
  sup_inf_qt smallint not null check (sup_inf_qt between 7 and 15),
  sup smallint not null check(sup between 0 and 15),
  inf smallint not null check(inf between 0 and 16),

  constraint d_sorte_id_superior_inferior_pk PRIMARY KEY (sup_inf_id),
  CONSTRAINT d_sorte_id_superior_inferior_chk check (sup + inf = sup_inf_qt)
);

/**
  No jogo dia de sorte, o número da bola pode ter de 1 a 2 algarismos,
  na matemática, o algarismo mais a esquerda está na casa das unidades,
  e o algarismo à esquerda das unidades é a dezena, então, iremos
  realizar estatística também das unidades.
   [DEZ] [UN]
    [1]   [0] => 10
    [0]   [9] => 9
 */

/**
  No jogo dia de sorte, o número da bola pode ter de 1 a 2 algarismos,
  na matemática, o algarismo mais a esquerda está na casa das unidades,
  e o algarismo à esquerda das unidades é a dezena, então, iremos
  realizar estatística também das dezenas.
   [DEZ] [UN]
    [1]   [0] => 10
    [0]   [9] => 9
 */
drop table if exists d_sorte.d_sorte_id_dezena;
create table d_sorte.d_sorte_id_dezena(
  dz_id numeric not null,
  dz_qt smallint not null check (dz_qt between 7 and 15),
  dz_0 smallint not null check (dz_0 between 0 and 9),
  dz_1 smallint not null check (dz_1 between 0 and 10),
  dz_2 smallint not null check (dz_2 between 0 and 10),
  dz_3 smallint not null check (dz_3 between 0 and 2),

  constraint d_sorte_id_dezena_chk check (dz_0 + dz_1 + dz_2 + dz_3 = dz_qt),
  constraint d_sorte_id_dezena_pk PRIMARY KEY (dz_id)
);


drop table if exists d_sorte.d_sorte_id_unidade;
create table d_sorte.d_sorte_id_unidade(
  un_id numeric not null,
  un_qt smallint not null check (un_qt between 7 and 15),
  un_0 smallint not null check (un_0 between 0 and 3),
  un_1 smallint not null check (un_1 between 0 and 4),
  un_2 smallint not null check (un_2 between 0 and 3),
  un_3 smallint not null check (un_3 between 0 and 3),
  un_4 smallint not null check (un_4 between 0 and 3),
  un_5 smallint not null check (un_5 between 0 and 3),
  un_6 smallint not null check (un_6 between 0 and 3),
  un_7 smallint not null check (un_7 between 0 and 3),
  un_8 smallint not null check (un_8 between 0 and 3),
  un_9 smallint not null check (un_9 between 0 and 3),

  CONSTRAINT d_sorte_id_unidade_pk PRIMARY KEY (un_id),
  CONSTRAINT d_sorte_id_unidade_chk check (un_0 + un_1 + un_2 + un_3 + un_4 + un_5 +
  un_6 + un_7 + un_8 + un_9 = un_qt)

);


/**
  Iremos contabilizar a quantidade todas de algarismos de cada combinação.
 */

drop table if exists d_sorte.d_sorte_id_algarismo;
create table d_sorte.d_sorte_id_algarismo(
  alg_id numeric not null,
  alg_qt smallint not null check (alg_qt between 7 and 15),
  alg_0 smallint not null check (alg_0 between 0 and 3),
  alg_1 smallint not null check (alg_1 between 0 and 14),
  alg_2 smallint not null check (alg_2 between 0 and 13),
  alg_3 smallint not null check (alg_3 between 0 and 5),
  alg_4 smallint not null check (alg_4 between 0 and 3),
  alg_5 smallint not null check (alg_5 between 0 and 3),
  alg_6 smallint not null check (alg_6 between 0 and 3),
  alg_7 smallint not null check (alg_7 between 0 and 3),
  alg_8 smallint not null check (alg_8 between 0 and 3),
  alg_9 smallint not null check (alg_9 between 0 and 3),

  CONSTRAINT d_sorte_id_algarismo_pk PRIMARY KEY (alg_id)
);

drop table if exists d_sorte.d_sorte_id_soma_bolas;
create table d_sorte.d_sorte_id_soma_bolas(
  sm_bolas_id numeric not null check(sm_bolas_id between 28 and 360),
  sm_bolas smallint not null check (sm_bolas between 28 and 360),

  constraint d_sorte_id_soma_bolas_pk PRIMARY KEY (sm_bolas_id),
  constraint d_sorte_id_soma_bolas_chk check (sm_bolas_id = sm_bolas)
);

/**
  No jogo dia de sorte, haverá um campo 'sm_alg' na tabela 'd_sorte_id' e
  'd_sorte_resultado_id', que é um valor entre 1 e 9,
   este campo armazena a soma dos algarismos da soma
  de todas as bolas da mesma combinação, por exemplo,
  na combinação: 1, 2, 3, 4, 5, 6, 7, a soma das bolas é igual
  a 28, em seguida, a soma dos algarismos '2' e '8', é igual a '11',
  observe acima, que 'sm_alg', deve ser um número entre '1' e '9',
  então, devemos somar os algarismos da nova soma, até que
  a soma seja um número de um único algarismo.
 */
drop table if exists d_sorte.d_sorte_id_soma_algarismo;
create table d_sorte.d_sorte_id_soma_algarismo(
  sm_alg_id numeric not null check(sm_alg_id between 1 and 9),
  sm_alg smallint not null check (sm_alg between 1 and 9),

  constraint d_sorte_id_soma_algarismo_pk PRIMARY KEY (sm_alg_id),
  constraint d_sorte_id_soma_algarismo_chk check (sm_alg_id = sm_alg)
);

/**
  Função utilizada pra atualizar as tabelas d_sorte_id_sm_bolas
  e d_sorte_id_soma_algarismo.
 */
drop function if exists d_sorte.fn_d_sorte_id_soma_algarismo();
create function d_sorte.fn_d_sorte_id_soma_algarismo()
  returns void
  language plpgsql
  as $$
  DECLARE
    uA SMALLINT default 0;
  BEGIN
    Delete from d_sorte.d_sorte_id_soma_algarismo;

    for uA in 1 .. 9 LOOP
      Insert into d_sorte.d_sorte_id_soma_algarismo (sm_alg_id, sm_alg) values (uA, uA);
    END LOOP;
  END;
  $$;

drop function if exists d_sorte.fn_d_sorte_id_soma_bolas();
create function d_sorte.fn_d_sorte_id_soma_bolas()
  returns void
  language plpgsql
  as $$
  DECLARE
    uA SMALLINT default 0;
  BEGIN
    Delete from d_sorte.d_sorte_id_soma_bolas;

    for uA in 28 .. 360 LOOP
      Insert into d_sorte.d_sorte_id_soma_bolas (sm_bolas_id, sm_bolas) values (uA, uA);
    END LOOP;
  end
  $$;

Select d_sorte.fn_d_sorte_id_soma_algarismo();
Select d_sorte.fn_d_sorte_id_soma_bolas();






