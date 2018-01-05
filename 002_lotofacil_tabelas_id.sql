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
  Horizontal.
 */
drop table if EXISTS lotofacil.lotofacil_id_horizontal;
create table lotofacil.lotofacil_id_horizontal(
  hrz_id numeric not null,
  hrz_qt numeric not null check (hrz_qt in (15, 16, 17, 18)),
  hrz_1 numeric not null check (hrz_1 in (0, 1, 2, 3, 4, 5)),
  hrz_2 numeric not null check (hrz_2 in (0, 1, 2, 3, 4, 5)),
  hrz_3 numeric not null check (hrz_3 in (0, 1, 2, 3, 4, 5)),
  hrz_4 numeric not null check (hrz_4 in (0, 1, 2, 3, 4, 5)),
  hrz_5 numeric not null check (hrz_5 in (0, 1, 2, 3, 4, 5)),

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
  vrt_id numeric not null,
  vrt_qt numeric not null check (vrt_qt in (15, 16, 17, 18)),
  vrt_1 numeric not null check (vrt_1 in (0, 1, 2, 3, 4, 5)),
  vrt_2 numeric not null check (vrt_2 in (0, 1, 2, 3, 4, 5)),
  vrt_3 numeric not null check (vrt_3 in (0, 1, 2, 3, 4, 5)),
  vrt_4 numeric not null check (vrt_4 in (0, 1, 2, 3, 4, 5)),
  vrt_5 numeric not null check (vrt_5 in (0, 1, 2, 3, 4, 5)),

  CONSTRAINT lotofacil_id_vertical_pk PRIMARY KEY (vrt_id),
  CONSTRAINT lotofacil_id_vertical_chk check ((vrt_1 + vrt_2 + vrt_3 + vrt_4 + vrt_5) = vrt_qt),  

  -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT lotofacil_id_vertical_unk UNIQUE (vrt_1, vrt_2, vrt_3, vrt_4, vrt_5)
);

/**
  Diagonal.
 */
drop table if EXISTS lotofacil.lotofacil_id_diagonal;
create table lotofacil.lotofacil_id_diagonal(
  dg_id numeric not null,
  dg_qt numeric not null check (dg_qt in (15, 16, 17, 18)),
  dg_1 numeric not null check (dg_1 in (0, 1, 2, 3, 4, 5)),
  dg_2 numeric not null check (dg_2 in (0, 1, 2, 3, 4, 5)),
  dg_3 numeric not null check (dg_3 in (0, 1, 2, 3, 4, 5)),
  dg_4 numeric not null check (dg_4 in (0, 1, 2, 3, 4, 5)),
  dg_5 numeric not null check (dg_5 in (0, 1, 2, 3, 4, 5)),

  CONSTRAINT lotofacil_id_diagonal_pk PRIMARY KEY (dg_id),
  CONSTRAINT lotofacil_id_diagonal_chk check ((dg_1 + dg_2 + dg_3 + dg_4 + dg_5) = dg_qt),
  
  -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT lotofacil_id_diagonal_unk UNIQUE (dg_1, dg_2, dg_3, dg_4, dg_5)
);

/**
  Cruzeta.
 */
drop table if EXISTS lotofacil.lotofacil_id_cruzeta;
create table lotofacil.lotofacil_id_cruzeta(
  crz_id numeric not null,
  crz_qt numeric not null check (crz_qt in (15, 16, 17, 18)),
  crz_1 numeric not null check (crz_1 in (0, 1, 2, 3, 4, 5)),
  crz_2 numeric not null check (crz_2 in (0, 1, 2, 3, 4, 5)),
  crz_3 numeric not null check (crz_3 in (0, 1, 2, 3, 4, 5)),
  crz_4 numeric not null check (crz_4 in (0, 1, 2, 3, 4, 5)),
  crz_5 numeric not null check (crz_5 in (0, 1, 2, 3, 4, 5)),

  CONSTRAINT lotofacil_id_cruzeta_pk PRIMARY KEY (crz_id),
  CONSTRAINT lotofacil_id_cruzeta_chk check ((crz_1 + crz_2 + crz_3 + crz_4 + crz_5) = crz_qt),

  -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT lotofacil_id_cruzeta_unk UNIQUE (crz_1, crz_2, crz_3, crz_4, crz_5)

);

/**
  Cruzeta.
 */
drop table if EXISTS lotofacil.lotofacil_id_trio;
create table lotofacil.lotofacil_id_trio(
  trio_id numeric not null,
  tr_qt numeric not null check (tr_qt in (15, 16, 17, 18)),
  tr_1 numeric not null check (tr_1 in (0, 1, 2, 3)),
  tr_2 numeric not null check (tr_2 in (0, 1, 2, 3)),
  tr_3 numeric not null check (tr_3 in (0, 1, 2, 3)),
  tr_4 numeric not null check (tr_4 in (0, 1, 2, 3)),
  tr_5 numeric not null check (tr_5 in (0, 1, 2, 3)),
  tr_6 numeric not null check (tr_6 in (0, 1, 2, 3)),
  tr_7 numeric not null check (tr_7 in (0, 1, 2, 3)),
  tr_8 numeric not null check (tr_8 in (0, 1, 2, 3, 4)),

  CONSTRAINT lotofacil_id_trio_pk PRIMARY KEY (trio_id),
  CONSTRAINT lotofacil_id_trio_chk check ((tr_1 + tr_2 + tr_3 + tr_4 + tr_5 + tr_6 + tr_7 + tr_8) = tr_qt),

  -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT lotofacil_id_trio_unk UNIQUE (tr_1, tr_2, tr_3, tr_4, tr_5, tr_6, tr_7, tr_8)

);

/**
  Quarteto.
  É composto de grupos de 4 bolas, entretanto, o último grupo tem 5 bolas.
  Pra formar o quarteto, dividir as 25 bolas 2 dois grupos,
  na parte superior, há 12 bolas, na parte inferior 13 bolas.
  Em seguida, da esquerda pra direita, pega 2 bolas, da parte superior
  e duas bolas da parte inferior.
  As 4 bolas selecionada no passo interior, compõe o primeiro grupo do
  quarteto, e assim por diante.
  No final, no 5 grupos, haverá 2 bolas, na parte superior e 3 bolas na
  parte inferior, estas 2 bolas e as 3 bolas fazem parte do mesmo grupo.
 */
drop table if EXISTS lotofacil.lotofacil_id_quarteto;
create table lotofacil.lotofacil_id_quarteto(
  qrt_id numeric not null,
  qrt_qt numeric not null check (qrt_qt in (15, 16, 17, 18)),
  qrt_1 numeric not null check (qrt_1 in (0, 1, 2, 3, 4)),
  qrt_2 numeric not null check (qrt_2 in (0, 1, 2, 3, 4)),
  qrt_3 numeric not null check (qrt_3 in (0, 1, 2, 3, 4)),
  qrt_4 numeric not null check (qrt_4 in (0, 1, 2, 3, 4)),
  qrt_5 numeric not null check (qrt_5 in (0, 1, 2, 3, 4)),
  qrt_6 numeric not null check (qrt_6 in (0, 1, 2, 3, 4, 5)),

  CONSTRAINT lotofacil_id_quarteto_pk PRIMARY KEY (qrt_id),
  CONSTRAINT lotofacil_id_quarteto_chk check ((qrt_1 + qrt_2 + qrt_3 + qrt_4 + qrt_5 + qrt_6) = qrt_qt),

  -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT lotofacil_id_quarteto_unk UNIQUE (qrt_1, qrt_2, qrt_3, qrt_4, qrt_5, qrt_6)
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
  ext_int_id numeric not null,
  ext_int_qt numeric not null check (ext_int_qt in (15, 16, 17, 18)),

  externo numeric not null check (externo between 6 and 16),
  interno numeric not null check (interno between 0 and 9),

  CONSTRAINT lotofacil_id_externo_interno_pk PRIMARY KEY (ext_int_id),
  CONSTRAINT lotofacil_id_externo_interno_chk check (externo + interno = ext_int_qt),

  -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT lotofacil_id_externo_interno_unk UNIQUE (externo, interno)
);

drop table if exists lotofacil.lotofacil_id_externo_interno_comum;
create table lotofacil.lotofacil_id_externo_interno_comum(
  comum_id  SERIAL PRIMARY KEY,
  ext_int_id numeric not null,
  ext_int_comum_id numeric not null,
  CONSTRAINT lotofacil_id_externo_interno_comum_unk unique(ext_int_id, ext_int_comum_id)
);



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
  par_impar_id numeric not null,
  par_impar_qt numeric not null check (par_impar_qt in (15, 16, 17, 18)),

  par numeric not null check (par between 0 and 12),
  impar numeric not null check (impar between 0 and 13),

  CONSTRAINT lotofacil_id_par_impar_pk PRIMARY KEY (par_impar_id),
  CONSTRAINT lotofacil_id_par_impar_chk check (par + impar = par_impar_qt),

    -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT lotofacil_id_par_impar_interno_unk UNIQUE (par, impar)
);


drop table if exists lotofacil.lotofacil_id_par_impar_comum;
create table lotofacil.lotofacil_id_par_impar_comum(
  comum_id  SERIAL PRIMARY KEY,
  par_impar_id numeric not null,
  par_impar_comum_id numeric not null,
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
  prm_id numeric not null,
  prm_qt numeric not null,
  primo numeric not null,
  nao_primo numeric not null,

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
  prm_id numeric not null,
  prm_comum_id numeric not null,

  CONSTRAINT lotofacil_id_primo_comum_unk UNIQUE (prm_id, prm_comum_id),
  constraint lotofacil_id_primo_comum_fk FOREIGN KEY (prm_comum_id) REFERENCES lotofacil.lotofacil_id_primo(prm_id)
);



/**
  Novos: Bola NÃO SAIU no concurso anterior, mas saiu no concurso atual.
  Repetidos: Bola SAIU no concurso anterior e saiu no atual também.
  Há 25 números, são sorteados 15, restam 10 números.
  Então, pode haver de 0 a 10 números novos.

 */
drop table if exists lotofacil.lotofacil_id_novos_repetidos;
create table lotofacil.lotofacil_id_novos_repetidos (
  novos_repetidos_id  NUMERIC NOT NULL,
  novos     NUMERIC NOT NULL CHECK (novos >= 0 AND novos <= 10),
  repetidos NUMERIC NOT NULL CHECK (repetidos >= 5 AND repetidos <= 15),

  CONSTRAINT lotofacil_id_novos_repetidos_pk PRIMARY KEY (novos_repetidos_id),
  CONSTRAINT lotofacil_id_novos_repetidos_chk CHECK ((novos + repetidos) = 15),

    -- Devemos garantir que as colunas terão valores únicos.
  -- Não precisamos validar a coluna com a quantidade pois a validação é realizada acima.
  CONSTRAINT lotofacil_id_novos_repetidos_unk UNIQUE (novos, repetidos)
);


/**
  Aqui, será criado todas as combinações possíveis referentes às combinações:
  b1
  b1_b8
  b1_b8_b15
  b1_b4_b8_b12_b15
 */
drop table if EXISTS lotofacil.lotofacil_id_b1;
create table lotofacil.lotofacil_id_b1(
  b1_id numeric not null,
  b1 numeric not null check (b1 >= 1 and b1 <= 11),
  CONSTRAINT lotofacil_id_b1_pk PRIMARY KEY (b1_id),
  CONSTRAINT lotofacil_id_b1_unk UNIQUE (b1)
);

drop table if EXISTS lotofacil.lotofacil_id_b1_b15;
create table lotofacil.lotofacil_id_b1_b15(
  b1_b15_id numeric not null,
  b1 numeric not null check (b1 >= 1 and b1 <= 11),
  b15 numeric not null check (b15 >= 15 and b15 <= 25),
  CONSTRAINT lotofacil_id_b1_b15_pk PRIMARY KEY (b1_b15_id),
  CONSTRAINT lotofacil_id_b1_b15_unk UNIQUE (b1, b15)
);

drop table if EXISTS lotofacil.lotofacil_id_b1_b8_b15;
create table lotofacil.lotofacil_id_b1_b8_b15(
  b1_b8_b15_id numeric not null,
  b1 numeric not null check (b1 >= 1 and b1 <= 11),
  b8 numeric not null check (b8 >= 8 and b8 <= 18),
  b15 numeric not null check (b15 >= 15 and b15 <= 25),
  CONSTRAINT lotofacil_id_b1_b8_b15_pk PRIMARY KEY (b1_b8_b15_id),
  CONSTRAINT lotofacil_id_b1_b8_b15_unk UNIQUE (b1, b8, b15)
);

drop table if EXISTS lotofacil.lotofacil_id_b1_b4_b8_b12_b15;
create table lotofacil.lotofacil_id_b1_b4_b8_b12_b15(
  b1_b4_b8_b12_b15_id numeric not null,
  b1 numeric not null check (b1 >= 1 and b1 <= 11),
  b4 numeric not null check (b4 >= 4 and b4 <= 14),
  b8 numeric not null check (b8 >= 8 and b8 <= 18),
  b12 numeric not null check (b12 >= 12 and b12 <= 22),
  b15 numeric not null check (b15 >= 15 and b15 <= 25),
  CONSTRAINT lotofacil_id_b1_b4_b8_b12_b15_pk PRIMARY KEY (b1_b4_b8_b12_b15_id),
  CONSTRAINT lotofacil_id_b1_b4_b8_b12_b15_unk UNIQUE (b1, b4, b8, b12, b15)
);

/**
  Nesta tabela, cada campo corresponde a um id pra cada tipo de combinação, por exemplo,
  o campo 'par_impar_id', armazena o id da combinação par x impar daquela combinação,
  ao invés de ter um campo 'par' e 'impar', é mais preferível ter um único campo
  com o id de tal combinação.
  Neste caso, eu preferi ter uma única tabela com todos os ids, ao invés de ter
  uma tabela pra cada tipo de combinação.
 */
drop table if exists lotofacil.lotofacil_id;
create table lotofacil.lotofacil_id(
  ltf_id numeric not null,
  ltf_qt numeric not null,
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

  CONSTRAINT lotofacil_id_fk_1 FOREIGN KEY (ltf_id) references lotofacil.lotofacil_num(ltf_id) on update cascade on delete cascade,

  CONSTRAINT lotofacil_id_fk_2 FOREIGN KEY (par_impar_id) references lotofacil.lotofacil_id_par_impar(par_impar_id) on update cascade on delete cascade,
  CONSTRAINT lotofacil_id_fk_3 FOREIGN KEY (ext_int_id) references lotofacil.lotofacil_id_externo_interno(ext_int_id) on update cascade on delete cascade,
  CONSTRAINT lotofacil_id_fk_4 FOREIGN KEY (prm_id) references lotofacil.lotofacil_id_primo(prm_id) on update cascade on delete cascade,

  CONSTRAINT lotofacil_id_fk_5 FOREIGN KEY (hrz_id) references lotofacil.lotofacil_id_horizontal(hrz_id) on update cascade on delete cascade,
  CONSTRAINT lotofacil_id_fk_6 FOREIGN KEY (vrt_id) references lotofacil.lotofacil_id_vertical(vrt_id) on update cascade on delete cascade,
  CONSTRAINT lotofacil_id_fk_7 FOREIGN KEY (dg_id) references lotofacil.lotofacil_id_diagonal(dg_id) on update cascade on delete cascade,

  CONSTRAINT lotofacil_id_fk_8 FOREIGN KEY (crz_id) references lotofacil.lotofacil_id_cruzeta (crz_id) on update cascade on delete cascade,
  CONSTRAINT lotofacil_id_fk_9 FOREIGN KEY (qrt_id) REFERENCES lotofacil.lotofacil_id_quarteto (qrt_id) on update cascade on delete cascade,
  constraint lotofacil_id_fk_10 FOREIGN KEY (trio_id) REFERENCES lotofacil.lotofacil_id_trio (trio_id) on update cascade on delete cascade,
    
  CONSTRAINT lotofacil_id_fk_11 FOREIGN KEY (b1_id) REFERENCES lotofacil.lotofacil_id_b1(b1_id) on UPDATE cascade on delete cascade,
  CONSTRAINT lotofacil_id_fk_12 FOREIGN KEY (b1_b15_id) REFERENCES lotofacil.lotofacil_id_b1_b15(b1_b15_id) on UPDATE cascade on delete cascade,
  CONSTRAINT lotofacil_id_fk_13 FOREIGN KEY (b1_b8_b15_id) REFERENCES lotofacil.lotofacil_id_b1_b8_b15(b1_b8_b15_id) on UPDATE cascade on delete cascade,
  CONSTRAINT lotofacil_id_fk_14 FOREIGN KEY (b1_b4_b8_b12_b15_id) REFERENCES lotofacil.lotofacil_id_b1_b4_b8_b12_b15(b1_b4_b8_b12_b15_id) on UPDATE cascade on delete cascade
);

  alter table lotofacil.lotofacil_id add constraint lotofacil_id_fk_1 FOREIGN KEY (ltf_id) references lotofacil.lotofacil_num(ltf_id) on update cascade on delete cascade;

  alter table lotofacil.lotofacil_id add constraint lotofacil_id_fk_2 FOREIGN KEY (par_impar_id) references lotofacil.lotofacil_id_par_impar(par_impar_id) on update cascade on delete cascade;
  alter table lotofacil.lotofacil_id add constraint lotofacil_id_fk_3 FOREIGN KEY (ext_int_id) references lotofacil.lotofacil_id_externo_interno(ext_int_id) on update cascade on delete cascade;
  alter table lotofacil.lotofacil_id add constraint lotofacil_id_fk_4 FOREIGN KEY (prm_id) references lotofacil.lotofacil_id_primo(prm_id) on update cascade on delete cascade;

  alter table lotofacil.lotofacil_id add constraint lotofacil_id_fk_5 FOREIGN KEY (hrz_id) references lotofacil.lotofacil_id_horizontal(hrz_id) on update cascade on delete cascade;
  alter table lotofacil.lotofacil_id add constraint lotofacil_id_fk_6 FOREIGN KEY (vrt_id) references lotofacil.lotofacil_id_vertical(vrt_id) on update cascade on delete cascade;
  alter table lotofacil.lotofacil_id add constraint lotofacil_id_fk_7 FOREIGN KEY (dg_id) references lotofacil.lotofacil_id_diagonal(dg_id) on update cascade on delete cascade;

  alter table lotofacil.lotofacil_id add constraint lotofacil_id_fk_8 FOREIGN KEY (crz_id) references lotofacil.lotofacil_id_cruzeta (crz_id) on update cascade on delete cascade;
  alter table lotofacil.lotofacil_id add constraint lotofacil_id_fk_9 FOREIGN KEY (qrt_id) REFERENCES lotofacil.lotofacil_id_quarteto (qrt_id) on update cascade on delete cascade;
  alter table lotofacil.lotofacil_id add constraint lotofacil_id_fk_10 FOREIGN KEY (trio_id) REFERENCES lotofacil.lotofacil_id_trio (trio_id) on update cascade on delete cascade;
    
  alter table lotofacil.lotofacil_id add constraint lotofacil_id_fk_11 FOREIGN KEY (b1_id) REFERENCES lotofacil.lotofacil_id_b1(b1_id) on UPDATE cascade on delete cascade;
  alter table lotofacil.lotofacil_id add constraint lotofacil_id_fk_12 FOREIGN KEY (b1_b15_id) REFERENCES lotofacil.lotofacil_id_b1_b15(b1_b15_id) on UPDATE cascade on delete cascade;
  alter table lotofacil.lotofacil_id add constraint lotofacil_id_fk_13 FOREIGN KEY (b1_b8_b15_id) REFERENCES lotofacil.lotofacil_id_b1_b8_b15(b1_b8_b15_id) on UPDATE cascade on delete cascade;
  alter table lotofacil.lotofacil_id add constraint lotofacil_id_fk_14 FOREIGN KEY (b1_b4_b8_b12_b15_id) REFERENCES lotofacil.lotofacil_id_b1_b4_b8_b12_b15(b1_b4_b8_b12_b15_id) on UPDATE cascade on delete cascade


/**
  Pra aumentar o desempenho, eu irei criar indices pra cada cada campo, afinal de contas, provavelmente, irei fazer
  select em um ou vários campos desta tabela.
 */
drop index if exists lotofacil_id_idx_1;
drop index if exists lotofacil_id_idx_2;
drop index if exists lotofacil_id_idx_3;
drop index if exists lotofacil_id_idx_4;
drop index if exists lotofacil_id_idx_5;
drop index if exists lotofacil_id_idx_6;
drop index if exists lotofacil_id_idx_7;
drop index if exists lotofacil_id_idx_8;
drop index if exists lotofacil_id_idx_9;
drop index if exists lotofacil_id_idx_10;
drop index if exists lotofacil_id_idx_11;
drop index if exists lotofacil_id_idx_12;
drop index if exists lotofacil_id_idx_13;
drop index if exists lotofacil_id_idx_14;

create index lotofacil_id_idx_1 on lotofacil.lotofacil_id(ltf_id);
create index lotofacil_id_idx_2 on lotofacil.lotofacil_id(ltf_qt);

create index lotofacil_id_idx_3 on lotofacil.lotofacil_id(par_impar_id);
create index lotofacil_id_idx_4 on lotofacil.lotofacil_id(ext_int_id);
create index lotofacil_id_idx_5 on lotofacil.lotofacil_id(prm_id);

create index lotofacil_id_idx_6 on lotofacil.lotofacil_id(hrz_id);
create index lotofacil_id_idx_7 on lotofacil.lotofacil_id(vrt_id);
create index lotofacil_id_idx_8 on lotofacil.lotofacil_id(dg_id);

create index lotofacil_id_idx_9 on lotofacil.lotofacil_id(crz_id);
create index lotofacil_id_idx_10 on lotofacil.lotofacil_id(qrt_id);
create index lotofacil_id_idx_11 on lotofacil.lotofacil_id(trio_id);

create index lotofacil_id_idx_12 on lotofacil.lotofacil_id(b1_id);
create index lotofacil_id_idx_13 on lotofacil.lotofacil_id(b1_b15_id);
create index lotofacil_id_idx_14 on lotofacil.lotofacil_id(b1_b8_b15_id);
create index lotofacil_id_idx_15 on lotofacil.lotofacil_id(b1_b4_b8_b12_b15_id);








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

/*
  Função pra atualizar o campo ltf_id da tabela lotofacil.lotofacil_resultado;
 */
drop FUNCTION if exists lotofacil.fn_atualizar_lotofacil_resultado_ltf_id();
create function lotofacil.fn_atualizar_lotofacil_resultado_ltf_id()
  returns void
  LANGUAGE pgplsql
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
















