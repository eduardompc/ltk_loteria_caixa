/**
  Autor:      Fábio Moura de Oliveira
  Data:       dom, 16/9/2018
  Motivação:  Identificar 1 ou mais bolas de um conjunto de estatística.
  Descrição:
  Dada uma combinação de x bolas, de tal forma que nenhuma bola se repita,
  podemos associar a cada bola há uma posição em uma tabela binária, onde
  se consideramos um subconjunto desta combinação, podemos na tabela binária
  indicar 1 se aquela bola está no subconjunto ou 0 caso contrário. Por exemplo,
  consideramos 5 bolas: 1, 2, 3, 4 e 5.
  Se atribuírmos uma tabela binária de 5 bolas, às bolas nesta ordem, podemos ter,
  pra cada campo, um bola associada, o valor deste campo terá o valor 1 se a bola
  saiu na combinação, 0 caso contrário.
  [bin_4] [bin_3] [bin_2] [bin_1] [bin_0]
    1       2       3       4       5
  Então, se escolhermos um subconjunto deste conjunto, por exemplo, as bolas, 3
  e 5, teríamos na tabela binária está representação.
  campos                  =>  [bin_4] [bin_3] [bin_2] [bin_1] [bin_0]
  bolas                   =>    1       2       3       4       5
  representação binária:  =>    0       0       1       0       0
  No banco de dados, há várias tabelas que tem o prefixo: 'lotofacil_binario',
  que armazena todas as combinações possíveis de 0 e 1, considerando a quantidade
  de posições, se vc observar podemos fazer estatística de 0 a x bolas.
  Então, podemos associar o id da combinação binária em uma outra tabela que armazena
  o id de todas as combinações possíveis, assim, fica fácil determinamos em um conjunto
  quais as bolas que mais saem.
  Outro exemplo, seria números pares, na lotofacil, há 12 números par, então,
  teríamos uma tabela binária de 12 posições, onde iriamos representar cada bola
  nesta tabela, em ordem crescente:
  [2,4,6,8,10,12,14,16,18,20,22,24]
  Então, se em uma combinação qualquer da lotofacil, os números pares escolhidos, forem
  2, 8, 10, teriamos então:
  Bolas                   =>  [2,4,6,8,10,12,14,16,18,20,22,24]
  Representação binária       [1,0,0,1,1,0,0,0,0,0,0,0]
  das bolas escolhidas    =>
 */

drop table if exists lotofacil.lotofacil_id_binario_16_bolas;
create table lotofacil.lotofacil_id_binario_16_bolas(
  bin_id numeric not null primary key,
  bin_qt numeric not null check(bin_qt between 0 and 16),
  bin_15 smallint not null check(bin_15 in (0,1)),
  bin_14 smallint not null check(bin_14 in (0,1)),
  bin_13 smallint not null check(bin_13 in (0,1)),
  bin_12 smallint not null check(bin_12 in (0,1)),
  bin_11 smallint not null check(bin_11 in (0,1)),
  bin_10 smallint not null check(bin_10 in (0,1)),
  bin_9 smallint not null check(bin_9 in (0,1)),
  bin_8 smallint not null check(bin_8 in (0,1)),
  bin_7 smallint not null check(bin_7 in (0,1)),
  bin_6 smallint not null check(bin_6 in (0,1)),
  bin_5 smallint not null check(bin_5 in (0,1)),
  bin_4 smallint not null check(bin_4 in (0,1)),
  bin_3 smallint not null check(bin_3 in (0,1)),
  bin_2 smallint not null check(bin_2 in (0,1)),
  bin_1 smallint not null check(bin_1 in (0,1)),
  bin_0 smallint not null check(bin_0 in (0,1)),
  constraint lotofacil_id_binario_16_bolas_chk check (
    bin_15 + bin_14 + bin_13 + bin_12 + bin_11 + bin_10 +
      bin_9 + bin_8 + bin_7 + bin_6 + bin_5 + bin_4 + bin_3 +
      bin_2 + bin_1 + bin_0 = bin_qt
  )
);

drop table if exists lotofacil.lotofacil_id_binario_15_bolas;
create table lotofacil.lotofacil_id_binario_15_bolas(
  bin_id numeric not null primary key,
  bin_qt numeric not null check(bin_qt between 0 and 15),
  bin_14 smallint not null check(bin_14 in (0,1)),
  bin_13 smallint not null check(bin_13 in (0,1)),
  bin_12 smallint not null check(bin_12 in (0,1)),
  bin_11 smallint not null check(bin_11 in (0,1)),
  bin_10 smallint not null check(bin_10 in (0,1)),
  bin_9 smallint not null check(bin_9 in (0,1)),
  bin_8 smallint not null check(bin_8 in (0,1)),
  bin_7 smallint not null check(bin_7 in (0,1)),
  bin_6 smallint not null check(bin_6 in (0,1)),
  bin_5 smallint not null check(bin_5 in (0,1)),
  bin_4 smallint not null check(bin_4 in (0,1)),
  bin_3 smallint not null check(bin_3 in (0,1)),
  bin_2 smallint not null check(bin_2 in (0,1)),
  bin_1 smallint not null check(bin_1 in (0,1)),
  bin_0 smallint not null check(bin_0 in (0,1)),
  constraint lotofacil_id_binario_15_bolas_chk check (
    bin_14 + bin_13 + bin_12 + bin_11 + bin_10 +
      bin_9 + bin_8 + bin_7 + bin_6 + bin_5 + bin_4 + bin_3 +
      bin_2 + bin_1 + bin_0 = bin_qt
  )
);

drop table if exists lotofacil.lotofacil_id_binario_14_bolas;
create table lotofacil.lotofacil_id_binario_14_bolas(
  bin_id numeric not null primary key,
  bin_qt numeric not null check(bin_qt between 0 and 14),
  bin_13 smallint not null check(bin_13 in (0,1)),
  bin_12 smallint not null check(bin_12 in (0,1)),
  bin_11 smallint not null check(bin_11 in (0,1)),
  bin_10 smallint not null check(bin_10 in (0,1)),
  bin_9 smallint not null check(bin_9 in (0,1)),
  bin_8 smallint not null check(bin_8 in (0,1)),
  bin_7 smallint not null check(bin_7 in (0,1)),
  bin_6 smallint not null check(bin_6 in (0,1)),
  bin_5 smallint not null check(bin_5 in (0,1)),
  bin_4 smallint not null check(bin_4 in (0,1)),
  bin_3 smallint not null check(bin_3 in (0,1)),
  bin_2 smallint not null check(bin_2 in (0,1)),
  bin_1 smallint not null check(bin_1 in (0,1)),
  bin_0 smallint not null check(bin_0 in (0,1)),
  constraint lotofacil_id_binario_14_bolas_chk check (
    bin_13 + bin_12 + bin_11 + bin_10 +
      bin_9 + bin_8 + bin_7 + bin_6 + bin_5 + bin_4 + bin_3 +
      bin_2 + bin_1 + bin_0 = bin_qt
  )
);


drop table if exists lotofacil.lotofacil_id_binario_13_bolas;
create table lotofacil.lotofacil_id_binario_13_bolas(
  bin_id numeric not null primary key,
  bin_qt numeric not null check(bin_qt between 0 and 13),
  bin_12 smallint not null check(bin_12 in (0,1)),
  bin_11 smallint not null check(bin_11 in (0,1)),
  bin_10 smallint not null check(bin_10 in (0,1)),
  bin_9 smallint not null check(bin_9 in (0,1)),
  bin_8 smallint not null check(bin_8 in (0,1)),
  bin_7 smallint not null check(bin_7 in (0,1)),
  bin_6 smallint not null check(bin_6 in (0,1)),
  bin_5 smallint not null check(bin_5 in (0,1)),
  bin_4 smallint not null check(bin_4 in (0,1)),
  bin_3 smallint not null check(bin_3 in (0,1)),
  bin_2 smallint not null check(bin_2 in (0,1)),
  bin_1 smallint not null check(bin_1 in (0,1)),
  bin_0 smallint not null check(bin_0 in (0,1)),
  constraint lotofacil_id_binario_13_bolas_chk check (
    bin_12 + bin_11 + bin_10 +
      bin_9 + bin_8 + bin_7 + bin_6 + bin_5 + bin_4 + bin_3 +
      bin_2 + bin_1 + bin_0 = bin_qt
  )
);

drop table if exists lotofacil.lotofacil_id_binario_12_bolas;
create table lotofacil.lotofacil_id_binario_12_bolas(
  bin_id numeric not null primary key,
  bin_qt numeric not null check(bin_qt between 0 and 12),
  bin_11 smallint not null check(bin_11 in (0,1)),
  bin_10 smallint not null check(bin_10 in (0,1)),
  bin_9 smallint not null check(bin_9 in (0,1)),
  bin_8 smallint not null check(bin_8 in (0,1)),
  bin_7 smallint not null check(bin_7 in (0,1)),
  bin_6 smallint not null check(bin_6 in (0,1)),
  bin_5 smallint not null check(bin_5 in (0,1)),
  bin_4 smallint not null check(bin_4 in (0,1)),
  bin_3 smallint not null check(bin_3 in (0,1)),
  bin_2 smallint not null check(bin_2 in (0,1)),
  bin_1 smallint not null check(bin_1 in (0,1)),
  bin_0 smallint not null check(bin_0 in (0,1)),
  constraint lotofacil_id_binario_12_bolas_chk check (
    bin_11 + bin_10 +
      bin_9 + bin_8 + bin_7 + bin_6 + bin_5 + bin_4 + bin_3 +
      bin_2 + bin_1 + bin_0 = bin_qt
  )
);

drop table if exists lotofacil.lotofacil_id_binario_11_bolas;
create table lotofacil.lotofacil_id_binario_11_bolas(
  bin_id numeric not null primary key,
  bin_qt numeric not null check(bin_qt between 0 and 11),
  bin_10 smallint not null check(bin_10 in (0,1)),
  bin_9 smallint not null check(bin_9 in (0,1)),
  bin_8 smallint not null check(bin_8 in (0,1)),
  bin_7 smallint not null check(bin_7 in (0,1)),
  bin_6 smallint not null check(bin_6 in (0,1)),
  bin_5 smallint not null check(bin_5 in (0,1)),
  bin_4 smallint not null check(bin_4 in (0,1)),
  bin_3 smallint not null check(bin_3 in (0,1)),
  bin_2 smallint not null check(bin_2 in (0,1)),
  bin_1 smallint not null check(bin_1 in (0,1)),
  bin_0 smallint not null check(bin_0 in (0,1)),
  constraint lotofacil_id_binario_11_bolas_chk check (
    bin_10 +
      bin_9 + bin_8 + bin_7 + bin_6 + bin_5 + bin_4 + bin_3 +
      bin_2 + bin_1 + bin_0 = bin_qt
  )
);

drop table if exists lotofacil.lotofacil_id_binario_10_bolas;
create table lotofacil.lotofacil_id_binario_10_bolas(
  bin_id numeric not null primary key,
  bin_qt numeric not null check(bin_qt between 0 and 10),
  bin_9 smallint not null check(bin_9 in (0,1)),
  bin_8 smallint not null check(bin_8 in (0,1)),
  bin_7 smallint not null check(bin_7 in (0,1)),
  bin_6 smallint not null check(bin_6 in (0,1)),
  bin_5 smallint not null check(bin_5 in (0,1)),
  bin_4 smallint not null check(bin_4 in (0,1)),
  bin_3 smallint not null check(bin_3 in (0,1)),
  bin_2 smallint not null check(bin_2 in (0,1)),
  bin_1 smallint not null check(bin_1 in (0,1)),
  bin_0 smallint not null check(bin_0 in (0,1)),
  constraint lotofacil_id_binario_10_bolas_chk check (
      bin_9 + bin_8 + bin_7 + bin_6 + bin_5 + bin_4 + bin_3 +
      bin_2 + bin_1 + bin_0 = bin_qt
  )
);

drop table if exists lotofacil.lotofacil_id_binario_9_bolas;
create table lotofacil.lotofacil_id_binario_9_bolas(
  bin_id numeric not null primary key,
  bin_qt numeric not null check(bin_qt between 0 and 9),
  bin_8 smallint not null check(bin_8 in (0,1)),
  bin_7 smallint not null check(bin_7 in (0,1)),
  bin_6 smallint not null check(bin_6 in (0,1)),
  bin_5 smallint not null check(bin_5 in (0,1)),
  bin_4 smallint not null check(bin_4 in (0,1)),
  bin_3 smallint not null check(bin_3 in (0,1)),
  bin_2 smallint not null check(bin_2 in (0,1)),
  bin_1 smallint not null check(bin_1 in (0,1)),
  bin_0 smallint not null check(bin_0 in (0,1)),
  constraint lotofacil_id_binario_9_bolas_chk check (
      bin_8 + bin_7 + bin_6 + bin_5 + bin_4 + bin_3 +
      bin_2 + bin_1 + bin_0 = bin_qt
  )
);

drop table if exists lotofacil.lotofacil_id_binario_8_bolas;
create table lotofacil.lotofacil_id_binario_8_bolas(
  bin_id numeric not null primary key,
  bin_qt numeric not null check(bin_qt between 0 and 8),
  bin_7 smallint not null check(bin_7 in (0,1)),
  bin_6 smallint not null check(bin_6 in (0,1)),
  bin_5 smallint not null check(bin_5 in (0,1)),
  bin_4 smallint not null check(bin_4 in (0,1)),
  bin_3 smallint not null check(bin_3 in (0,1)),
  bin_2 smallint not null check(bin_2 in (0,1)),
  bin_1 smallint not null check(bin_1 in (0,1)),
  bin_0 smallint not null check(bin_0 in (0,1)),
  constraint lotofacil_id_binario_8_bolas_chk check (
      bin_7 + bin_6 + bin_5 + bin_4 + bin_3 +
      bin_2 + bin_1 + bin_0 = bin_qt
  )
);


drop table if exists lotofacil.lotofacil_id_binario_7_bolas;
create table lotofacil.lotofacil_id_binario_7_bolas(
  bin_id numeric not null primary key,
  bin_qt numeric not null check(bin_qt between 0 and 7),
  bin_6 smallint not null check(bin_6 in (0,1)),
  bin_5 smallint not null check(bin_5 in (0,1)),
  bin_4 smallint not null check(bin_4 in (0,1)),
  bin_3 smallint not null check(bin_3 in (0,1)),
  bin_2 smallint not null check(bin_2 in (0,1)),
  bin_1 smallint not null check(bin_1 in (0,1)),
  bin_0 smallint not null check(bin_0 in (0,1)),
  constraint lotofacil_id_binario_7_bolas_chk check (
      bin_6 + bin_5 + bin_4 + bin_3 +
      bin_2 + bin_1 + bin_0 = bin_qt
  )
);

drop table if exists lotofacil.lotofacil_id_binario_6_bolas;
create table lotofacil.lotofacil_id_binario_6_bolas(
  bin_id numeric not null primary key,
  bin_qt numeric not null check(bin_qt between 0 and 6),
  bin_5 smallint not null check(bin_5 in (0,1)),
  bin_4 smallint not null check(bin_4 in (0,1)),
  bin_3 smallint not null check(bin_3 in (0,1)),
  bin_2 smallint not null check(bin_2 in (0,1)),
  bin_1 smallint not null check(bin_1 in (0,1)),
  bin_0 smallint not null check(bin_0 in (0,1)),
  constraint lotofacil_id_binario_6_bolas_chk check (
      bin_5 + bin_4 + bin_3 +
      bin_2 + bin_1 + bin_0 = bin_qt
  )
);

drop table if exists lotofacil.lotofacil_id_binario_5_bolas;
create table lotofacil.lotofacil_id_binario_5_bolas(
  bin_id numeric not null primary key,
  bin_qt numeric not null check(bin_qt between 0 and 5),
  bin_4 smallint not null check(bin_4 in (0,1)),
  bin_3 smallint not null check(bin_3 in (0,1)),
  bin_2 smallint not null check(bin_2 in (0,1)),
  bin_1 smallint not null check(bin_1 in (0,1)),
  bin_0 smallint not null check(bin_0 in (0,1)),
  constraint lotofacil_id_binario_5_bolas_chk check (
      bin_4 + bin_3 +
      bin_2 + bin_1 + bin_0 = bin_qt
  )
);

drop table if exists lotofacil.lotofacil_id_binario_4_bolas;
create table lotofacil.lotofacil_id_binario_4_bolas(
  bin_id numeric not null primary key,
  bin_qt numeric not null check(bin_qt between 0 and 4),
  bin_3 smallint not null check(bin_3 in (0,1)),
  bin_2 smallint not null check(bin_2 in (0,1)),
  bin_1 smallint not null check(bin_1 in (0,1)),
  bin_0 smallint not null check(bin_0 in (0,1)),
  constraint lotofacil_id_binario_4_bolas_chk check (
      bin_3 + bin_2 + bin_1 + bin_0 = bin_qt
  )
);

drop table if exists lotofacil.lotofacil_id_binario_3_bolas;
create table lotofacil.lotofacil_id_binario_3_bolas(
  bin_id numeric not null primary key,
  bin_qt numeric not null check(bin_qt between 0 and 3),
  bin_2 smallint not null check(bin_2 in (0,1)),
  bin_1 smallint not null check(bin_1 in (0,1)),
  bin_0 smallint not null check(bin_0 in (0,1)),
  constraint lotofacil_id_binario_3_bolas_chk check (
      bin_2 + bin_1 + bin_0 = bin_qt
  )
);

drop table if exists lotofacil.lotofacil_id_binario_2_bolas;
create table lotofacil.lotofacil_id_binario_2_bolas(
  bin_id numeric not null primary key,
  bin_qt numeric not null check(bin_qt between 0 and 2),
  bin_1 smallint not null check(bin_1 in (0,1)),
  bin_0 smallint not null check(bin_0 in (0,1)),
  constraint lotofacil_id_binario_2_bolas_chk check (
      bin_1 + bin_0 = bin_qt
  )
);
















































































































