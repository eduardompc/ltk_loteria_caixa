/**
  Autor:  Fábio Moura de Oliveira
  Data:   21/7/2018
  Author: Fábio Moura de Oliveira
  Date:   7/21/2018

  Descrição: Neste banco de dados, a tabela 'd_sorte_id',
  armazena o id pra cada estatística que pretendemos
  obter daquela combinação, por exemplo, na estatística
  de par x ímpar, haverá um campo 'par_impar_id' que
  armazena o id da combinação par x ímpar da combinação
  que estamos analisando.
  Pra cada combinação estatística que pretendemos
  analisar existirá uma tabela com o prefixo 'd_sorte_id_'
  que armazenará um identificador pra cada combinação
  possível daquela estatística que estamos analisando.
  No caso da tabela 'd_sorte_id', pra cada combinação
  possível do jogo 'dia_de_sorte', haverá um registro
  com vários campos, em cada campo, há um identificador
  que refere-se a uma estatística, por exemplo,
  par_impar_id, externo_interno_id e assim por diante.
  Entretanto, se precisamos saber a estatística geral
  de uma estatística específica, devemos fazer um select
  com um group by ou criar um view de um select com group by.
  Mas, no quesito, desempenho, se os dados não se alteram
  o mais correto, é criar uma tabela fixa, por este motivo,
  as tabelas abaixo, com o prefixo 'd_sorte_id_' e com
  o sufixo 'qt_vz' representa os dados agregados considerando
  uma estatística específica, então, por exemplo,
  se quisermos determinar quantas vezes a combinação
  par x ímpar existe em todas as combinações possíveis
  do jogo 'dia_de_sorte', deve fazer um select na tabela
  'd_sorte_id_par_impar_qt_vz'.

 */

Drop table if exists d_sorte.d_sorte_id_par_impar_qt_vz;
create table d_sorte.d_sorte_id_par_impar_qt_vz(
  par_impar_id numeric not null,
  d_sorte_qt smallint check (d_sorte_qt between 7 and 15),
  qt_vz numeric not null,

  constraint d_sorte_id_par_impar_qt_vz_pk PRIMARY KEY (par_impar_id)
);

Drop table if exists d_sorte.d_sorte_id_primo_nao_primo_qt_vz;
create table d_sorte.d_sorte_id_primo_nao_primo_qt_vz(
  prm_id numeric not null,
  d_sorte_qt smallint check (d_sorte_qt between 7 and 15),
  qt_vz numeric not null,

  constraint d_sorte_id_primo_nao_primo_qt_vz_pk PRIMARY KEY (prm_id)
);

Drop table if exists d_sorte.d_sorte_id_externo_interno_qt_vz;
create table d_sorte.d_sorte_id_externo_interno_qt_vz(
  ext_int_id numeric not null,
  d_sorte_qt smallint check (d_sorte_qt between 7 and 15),
  qt_vz numeric not null,

  constraint d_sorte_id_externo_interno_qt_vz_pk PRIMARY KEY (ext_int_id)
);

Drop table if exists d_sorte.d_sorte_id_horizontal_qt_vz;
create table d_sorte.d_sorte_id_horizontal_qt_vz(
  hrz_id numeric not null,
  d_sorte_qt smallint check (d_sorte_qt between 7 and 15),
  qt_vz numeric not null,

  constraint d_sorte_id_horizontal_qt_vz_pk PRIMARY KEY (hrz_id)
);

Drop table if exists d_sorte.d_sorte_id_vertical_qt_vz;
create table d_sorte.d_sorte_id_vertical_qt_vz(
  vrt_id numeric not null,
  d_sorte_qt smallint check (d_sorte_qt between 7 and 15),
  qt_vz numeric not null,

  constraint d_sorte_id_vertical_qt_vz_pk PRIMARY KEY (vrt_id)
);

Drop table if exists d_sorte.d_sorte_id_diagonal_esquerda_qt_vz;
create table d_sorte.d_sorte_id_diagonal_esquerda_qt_vz(
  dge_id numeric not null,
  d_sorte_qt smallint check (d_sorte_qt between 7 and 15),
  qt_vz numeric not null,

  constraint d_sorte_id_diagonal_esquerda_qt_vz_pk PRIMARY KEY (dge_id)
);

Drop table if exists d_sorte.d_sorte_id_diagonal_direita_qt_vz;
create table d_sorte.d_sorte_id_diagonal_direita_qt_vz(
  dgd_id numeric not null,
  d_sorte_qt smallint check (d_sorte_qt between 7 and 15),
  qt_vz numeric not null,

  constraint d_sorte_id_diagonal_direita_qt_vz_pk PRIMARY KEY (dgd_id)
);

Drop table if exists d_sorte.d_sorte_id_quadrante_qt_vz;
create table d_sorte.d_sorte_id_quadrante_qt_vz(
  qd_id numeric not null,
  d_sorte_qt smallint check (d_sorte_qt between 7 and 15),
  qt_vz numeric not null,

  constraint d_sorte_id_quadrante_qt_vz_pk PRIMARY KEY (qd_id)
);

Drop table if exists d_sorte.d_sorte_id_esquerda_direita_qt_vz;
create table d_sorte.d_sorte_id_esquerda_direita_qt_vz(
  esq_dir_id numeric not null,
  d_sorte_qt smallint check (d_sorte_qt between 7 and 15),
  qt_vz numeric not null,

  constraint d_sorte_id_esquerda_direita_qt_vz_pk PRIMARY KEY (esq_dir_id)
);

Drop table if exists d_sorte.d_sorte_id_superior_inferior_qt_vz;
create table d_sorte.d_sorte_id_superior_inferior_qt_vz(
  sup_inf_id numeric not null,
  d_sorte_qt smallint check (d_sorte_qt between 7 and 15),
  qt_vz numeric not null,

  constraint d_sorte_id_superior_inferior_qt_vz_pk PRIMARY KEY (sup_inf_id)
);

Drop table if exists d_sorte.d_sorte_id_dezena_qt_vz;
create table d_sorte.d_sorte_id_dezena_qt_vz(
  dz_id numeric not null,
  d_sorte_qt smallint check (d_sorte_qt between 7 and 15),
  qt_vz numeric not null,

  constraint d_sorte_id_dezena_qt_vz_pk PRIMARY KEY (dz_id)
);

Drop table if exists d_sorte.d_sorte_id_unidade_qt_vz;
create table d_sorte.d_sorte_id_unidade_qt_vz(
  un_id numeric not null,
  d_sorte_qt smallint check (d_sorte_qt between 7 and 15),
  qt_vz numeric not null,

  constraint d_sorte_id_unidade_qt_vz_pk PRIMARY KEY (un_id)
);

Drop table if exists d_sorte.d_sorte_id_algarismo_qt_vz;
create table d_sorte.d_sorte_id_algarismo_qt_vz(
  alg_id numeric not null,
  d_sorte_qt smallint check (d_sorte_qt between 7 and 15),
  qt_vz numeric not null,

  constraint d_sorte_id_algarismo_qt_vz_pk PRIMARY KEY (alg_id)
);

Drop table if exists d_sorte.d_sorte_id_soma_bolas_qt_vz;
create table d_sorte.d_sorte_id_soma_bolas_qt_vz(
  sm_bolas_id numeric not null,
  d_sorte_qt smallint check (d_sorte_qt between 7 and 15),
  qt_vz numeric not null,

  constraint d_sorte_id_soma_bolas_qt_vz_pk PRIMARY KEY (sm_bolas_id)
);

Drop table if exists d_sorte.d_sorte_id_soma_algarismo_qt_vz;
create table d_sorte.d_sorte_id_soma_algarismo_qt_vz(
  sm_alg_id numeric not null,
  d_sorte_qt smallint check (d_sorte_qt between 7 and 15),
  qt_vz numeric not null,

  constraint d_sorte_id_soma_algarismo_qt_vz_pk PRIMARY KEY (sm_alg_id)
);

/**
  A tabela d_sorte_id, deve está populada com todos os dados,
  antes de executar os comandos abaixo.
 */
Delete from d_sorte.d_sorte_id_par_impar_qt_vz;
Insert into d_sorte.d_sorte_id_par_impar_qt_vz(par_impar_id, d_sorte_qt, qt_vz)
  SELECT par_impar_id, d_sorte_qt, count(*) as qt_vz
from d_sorte.d_sorte_id
group by par_impar_id, d_sorte_qt
order by d_sorte_qt asc, qt_vz desc, par_impar_id asc

Delete from d_sorte.d_sorte_id_primo_nao_primo_qt_vz;
Insert into d_sorte.d_sorte_id_primo_nao_primo_qt_vz(prm_id, d_sorte_qt, qt_vz)
  SELECT prm_id, d_sorte_qt, count(*) as qt_vz
from d_sorte.d_sorte_id
group by prm_id, d_sorte_qt
order by d_sorte_qt asc, qt_vz desc, prm_id asc;

Delete from d_sorte.d_sorte_id_externo_interno_qt_vz;
Insert into d_sorte.d_sorte_id_externo_interno_qt_vz(ext_int_id, d_sorte_qt, qt_vz)
  SELECT ext_int_id, d_sorte_qt, count(*) as qt_vz
from d_sorte.d_sorte_id
group by ext_int_id, d_sorte_qt
order by d_sorte_qt asc, qt_vz desc, ext_int_id asc;

Delete from d_sorte.d_sorte_id_horizontal_qt_vz;
Insert into d_sorte.d_sorte_id_horizontal_qt_vz(hrz_id, d_sorte_qt, qt_vz)
  SELECT hrz_id, d_sorte_qt, count(*) as qt_vz
from d_sorte.d_sorte_id
group by hrz_id, d_sorte_qt
order by d_sorte_qt asc, qt_vz desc, hrz_id asc;

Delete from d_sorte.d_sorte_id_vertical_qt_vz;
Insert into d_sorte.d_sorte_id_vertical_qt_vz(vrt_id, d_sorte_qt, qt_vz)
  SELECT vrt_id, d_sorte_qt, count(*) as qt_vz
from d_sorte.d_sorte_id
group by vrt_id, d_sorte_qt
order by d_sorte_qt asc, qt_vz desc, vrt_id asc;

Delete from d_sorte.d_sorte_id_diagonal_esquerda_qt_vz;
Insert into d_sorte.d_sorte_id_diagonal_esquerda_qt_vz(dge_id, d_sorte_qt, qt_vz)
  SELECT dge_id, d_sorte_qt, count(*) as qt_vz
from d_sorte.d_sorte_id
group by dge_id, d_sorte_qt
order by d_sorte_qt asc, qt_vz desc, dge_id asc;

Delete from d_sorte.d_sorte_id_diagonal_direita_qt_vz;
Insert into d_sorte.d_sorte_id_diagonal_direita_qt_vz(dgd_id, d_sorte_qt, qt_vz)
  SELECT dgd_id, d_sorte_qt, count(*) as qt_vz
from d_sorte.d_sorte_id
group by dgd_id, d_sorte_qt
order by d_sorte_qt asc, qt_vz desc, dgd_id asc;

Delete from d_sorte.d_sorte_id_quadrante_qt_vz;
Insert into d_sorte.d_sorte_id_quadrante_qt_vz(qd_id, d_sorte_qt, qt_vz)
  SELECT qd_id, d_sorte_qt, count(*) as qt_vz
from d_sorte.d_sorte_id
group by qd_id, d_sorte_qt
order by d_sorte_qt asc, qt_vz desc, qd_id asc;

Delete from d_sorte.d_sorte_id_esquerda_direita_qt_vz;
Insert into d_sorte.d_sorte_id_esquerda_direita_qt_vz(esq_dir_id, d_sorte_qt, qt_vz)
  SELECT esq_dir_id, d_sorte_qt, count(*) as qt_vz
from d_sorte.d_sorte_id
group by esq_dir_id, d_sorte_qt
order by d_sorte_qt asc, qt_vz desc, esq_dir_id asc;

Delete from d_sorte.d_sorte_id_superior_inferior_qt_vz;
Insert into d_sorte.d_sorte_id_superior_inferior_qt_vz(sup_inf_id, d_sorte_qt, qt_vz)
  SELECT sup_inf_id, d_sorte_qt, count(*) as qt_vz
from d_sorte.d_sorte_id
group by sup_inf_id, d_sorte_qt
order by d_sorte_qt asc, qt_vz desc, sup_inf_id asc;

Delete from d_sorte.d_sorte_id_dezena_qt_vz;
Insert into d_sorte.d_sorte_id_dezena_qt_vz(dz_id, d_sorte_qt, qt_vz)
  SELECT dz_id, d_sorte_qt, count(*) as qt_vz
from d_sorte.d_sorte_id
group by dz_id, d_sorte_qt
order by d_sorte_qt asc, qt_vz desc, dz_id asc;

Delete from d_sorte.d_sorte_id_unidade_qt_vz;
Insert into d_sorte.d_sorte_id_unidade_qt_vz(un_id, d_sorte_qt, qt_vz)
  SELECT un_id, d_sorte_qt, count(*) as qt_vz
from d_sorte.d_sorte_id
group by un_id, d_sorte_qt
order by d_sorte_qt asc, qt_vz desc, un_id asc;

Delete from d_sorte.d_sorte_id_algarismo_qt_vz;
Insert into d_sorte.d_sorte_id_algarismo_qt_vz(alg_id, d_sorte_qt, qt_vz)
  SELECT alg_id, d_sorte_qt, count(*) as qt_vz
from d_sorte.d_sorte_id
group by alg_id, d_sorte_qt
order by d_sorte_qt asc, qt_vz desc, alg_id asc;

Delete from d_sorte.d_sorte_id_soma_bolas_qt_vz;
Insert into d_sorte.d_sorte_id_soma_bolas_qt_vz(sm_bolas_id, d_sorte_qt, qt_vz)
  SELECT sm_bolas_id, d_sorte_qt, count(*) as qt_vz
from d_sorte.d_sorte_id
group by sm_bolas_id, d_sorte_qt
order by d_sorte_qt asc, qt_vz desc, sm_bolas_id asc;

Delete from d_sorte.d_sorte_id_soma_algarismo_qt_vz;
Insert into d_sorte.d_sorte_id_soma_algarismo_qt_vz(sm_alg_id, d_sorte_qt, qt_vz)
  SELECT sm_alg_id, d_sorte_qt, count(*) as qt_vz
from d_sorte.d_sorte_id
group by sm_alg_id, d_sorte_qt
order by d_sorte_qt asc, qt_vz desc, sm_alg_id;









