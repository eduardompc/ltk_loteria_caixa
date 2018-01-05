/*
  Cria as tabelas, que terão os campos id consolidados, pra ficar melhor o carregamento ao chamar as views.
 */

/**
  Par x Ímpar, agrupado, por id par x impar.
 */
drop table if exists ltk_quina.quina_id_par_impar_agrupado;
create table ltk_quina.quina_id_par_impar_agrupado(
  par_impar_id numeric not null,
  qt_vezes numeric not null,

  CONSTRAINT par_impar_agrupado_fk FOREIGN KEY (par_impar_id) REFERENCES ltk_quina.quina_id_par_impar(par_impar_id)
);
/**
  Script pra popular a tabela.
 */
  Delete from ltk_quina.quina_id_par_impar_agrupado;
  Insert into ltk_quina.quina_id_par_impar_agrupado (par_impar_id, qt_vezes)
    SELECT par_impar_id, count(*) as qt_vezes from ltk_quina.quina_id
      group by par_impar_id
    order by par_impar_id;
/**
  Par x Ímpar, agrupado, por id par x impar e por quantidade de bolas.
 */
drop table if exists ltk_quina.quina_id_par_impar_agrupado_por_qt;
create table ltk_quina.quina_id_par_impar_agrupado_por_qt(
  par_impar_id numeric not null,
  quina_qt numeric not null check(quina_qt in (5, 6, 7)),
  qt_vezes numeric not null,
  CONSTRAINT par_impar_agrupado_por_qt_fk FOREIGN KEY (par_impar_id) REFERENCES ltk_quina.quina_id_par_impar(par_impar_id)
);

/*
  Script sql pra popular a tabela.
 */
Delete from ltk_quina.quina_id_par_impar_agrupado_por_qt;
Insert into ltk_quina.quina_id_par_impar_agrupado_por_qt (par_impar_id, quina_qt, qt_vezes)
  SELECT par_impar_id, quina_qt, count(*) as qt_vezes from ltk_quina.quina_id
    group by par_impar_id, quina_qt
  order by par_impar_id;



/************************************************ 
      PRIMO X NÃO PRIMO
 ************************************************/
/**
  primo x nao_primo, agrupado, por id primo x nao_primo.
 */
drop table if exists ltk_quina.quina_id_primo_agrupado;
create table ltk_quina.quina_id_primo_agrupado(
  prm_id numeric not null,
  qt_vezes numeric not null,

  CONSTRAINT primo_agrupado_fk FOREIGN KEY (prm_id) REFERENCES ltk_quina.quina_id_primo(prm_id)
);
/**
  Script pra popular a tabela.
 */
  Delete from ltk_quina.quina_id_primo_agrupado;
  Insert into ltk_quina.quina_id_primo_agrupado (prm_id, qt_vezes)
    SELECT prm_id, count(*) as qt_vezes from ltk_quina.quina_id
      group by prm_id
    order by prm_id;
/**
  primo x nao_primo, agrupado, por id primo x nao_primo e por quantidade de bolas.
 */
drop table if exists ltk_quina.quina_id_primo_agrupado_por_qt;
create table ltk_quina.quina_id_primo_agrupado_por_qt(
  prm_id numeric not null,
  quina_qt numeric not null check(quina_qt in (5, 6, 7)),
  qt_vezes numeric not null,
  CONSTRAINT primo_agrupado_por_qt_fk FOREIGN KEY (prm_id) REFERENCES ltk_quina.quina_id_primo(prm_id)
);

/*
  Script sql pra popular a tabela.
 */
Delete from ltk_quina.quina_id_primo_agrupado_por_qt;
Insert into ltk_quina.quina_id_primo_agrupado_por_qt (prm_id, quina_qt, qt_vezes)
  SELECT prm_id, quina_qt, count(*) as qt_vezes from ltk_quina.quina_id
    group by prm_id, quina_qt
  order by prm_id;

/*
  Horizontal.
 */
/**
  horizontal, agrupado, por id horizontal.
 */
drop table if exists ltk_quina.quina_id_horizontal_agrupado;
create table ltk_quina.quina_id_horizontal_agrupado(
  hrz_id numeric not null,
  qt_vezes numeric not null,

  CONSTRAINT horizontal_agrupado_fk FOREIGN KEY (hrz_id) REFERENCES ltk_quina.quina_id_horizontal(hrz_id)
);
/**
  Script pra popular a tabela.
 */
  Delete from ltk_quina.quina_id_horizontal_agrupado;
  Insert into ltk_quina.quina_id_horizontal_agrupado (hrz_id, qt_vezes)
    SELECT hrz_id, count(*) as qt_vezes from ltk_quina.quina_id
      group by hrz_id
    order by hrz_id;
/**
  horizontal, agrupado, por id horizontal e por quantidade de bolas.
 */
drop table if exists ltk_quina.quina_id_horizontal_agrupado_por_qt;
create table ltk_quina.quina_id_horizontal_agrupado_por_qt(
  hrz_id numeric not null,
  quina_qt numeric not null check(quina_qt in (5, 6, 7)),
  qt_vezes numeric not null,
  CONSTRAINT horizontal_agrupado_por_qt_fk FOREIGN KEY (hrz_id) REFERENCES ltk_quina.quina_id_horizontal(hrz_id)
);

/*
  Script sql pra popular a tabela.
 */
Delete from ltk_quina.quina_id_horizontal_agrupado_por_qt;
Insert into ltk_quina.quina_id_horizontal_agrupado_por_qt (hrz_id, quina_qt, qt_vezes)
  SELECT hrz_id, quina_qt, count(*) as qt_vezes from ltk_quina.quina_id
    group by hrz_id, quina_qt
  order by hrz_id;

/**
  Vertical.
 */
/**
  vertical, agrupado, por id vertical.
 */
drop table if exists ltk_quina.quina_id_vertical_agrupado;
create table ltk_quina.quina_id_vertical_agrupado(
  vrt_id numeric not null,
  qt_vezes numeric not null,

  CONSTRAINT vertical_agrupado_fk FOREIGN KEY (vrt_id) REFERENCES ltk_quina.quina_id_vertical(vrt_id)
);
/**
  Script pra popular a tabela.
 */
  Delete from ltk_quina.quina_id_vertical_agrupado;
  Insert into ltk_quina.quina_id_vertical_agrupado (vrt_id, qt_vezes)
    SELECT vrt_id, count(*) as qt_vezes from ltk_quina.quina_id
      group by vrt_id
    order by vrt_id;
/**
  vertical, agrupado, por id vertical e por quantidade de bolas.
 */
drop table if exists ltk_quina.quina_id_vertical_agrupado_por_qt;
create table ltk_quina.quina_id_vertical_agrupado_por_qt(
  vrt_id numeric not null,
  quina_qt numeric not null check(quina_qt in (5, 6, 7)),
  qt_vezes numeric not null,
  CONSTRAINT vertical_agrupado_por_qt_fk FOREIGN KEY (vrt_id) REFERENCES ltk_quina.quina_id_vertical(vrt_id)
);

/*
  Script sql pra popular a tabela.
 */
Delete from ltk_quina.quina_id_vertical_agrupado_por_qt;
Insert into ltk_quina.quina_id_vertical_agrupado_por_qt (vrt_id, quina_qt, qt_vezes)
  SELECT vrt_id, quina_qt, count(*) as qt_vezes from ltk_quina.quina_id
    group by vrt_id, quina_qt
  order by vrt_id;

/******************************************************
  Diagonal.
 ******************************************************/
/**
  diagonal, agrupado, por id diagonal.
 */
drop table if exists ltk_quina.quina_id_diagonal_agrupado;
create table ltk_quina.quina_id_diagonal_agrupado(
  dg_id numeric not null,
  qt_vezes numeric not null,

  CONSTRAINT diagonal_agrupado_fk FOREIGN KEY (dg_id) REFERENCES ltk_quina.quina_id_diagonal(dg_id)
);
/**
  Script pra popular a tabela.
 */
  Delete from ltk_quina.quina_id_diagonal_agrupado;
  Insert into ltk_quina.quina_id_diagonal_agrupado (dg_id, qt_vezes)
    SELECT dg_id, count(*) as qt_vezes from ltk_quina.quina_id
      group by dg_id
    order by dg_id;
/**
  diagonal, agrupado, por id diagonal e por quantidade de bolas.
 */
drop table if exists ltk_quina.quina_id_diagonal_agrupado_por_qt;
create table ltk_quina.quina_id_diagonal_agrupado_por_qt(
  dg_id numeric not null,
  quina_qt numeric not null check(quina_qt in (5, 6, 7)),
  qt_vezes numeric not null,
  CONSTRAINT diagonal_agrupado_por_qt_fk FOREIGN KEY (dg_id) REFERENCES ltk_quina.quina_id_diagonal(dg_id)
);

/*
  Script sql pra popular a tabela.
 */
Delete from ltk_quina.quina_id_diagonal_agrupado_por_qt;
Insert into ltk_quina.quina_id_diagonal_agrupado_por_qt (dg_id, quina_qt, qt_vezes)
  SELECT dg_id, quina_qt, count(*) as qt_vezes from ltk_quina.quina_id
    group by dg_id, quina_qt
  order by dg_id;

/*
  quadrante.
 */
/**
  quadrante, agrupado, por id quadrante.
 */
drop table if exists ltk_quina.quina_id_quadrante_agrupado;
create table ltk_quina.quina_id_quadrante_agrupado(
  qd_id numeric not null,
  qt_vezes numeric not null,

  CONSTRAINT quadrante_agrupado_fk FOREIGN KEY (qd_id) REFERENCES ltk_quina.quina_id_quadrante(qd_id)
);
/**
  Script pra popular a tabela.
 */
  Delete from ltk_quina.quina_id_quadrante_agrupado;
  Insert into ltk_quina.quina_id_quadrante_agrupado (qd_id, qt_vezes)
    SELECT qd_id, count(*) as qt_vezes from ltk_quina.quina_id
      group by qd_id
    order by qd_id;
/**
  quadrante, agrupado, por id quadrante e por quantidade de bolas.
 */
drop table if exists ltk_quina.quina_id_quadrante_agrupado_por_qt;
create table ltk_quina.quina_id_quadrante_agrupado_por_qt(
  qd_id numeric not null,
  quina_qt numeric not null check(quina_qt in (5, 6, 7)),
  qt_vezes numeric not null,
  CONSTRAINT quadrante_agrupado_por_qt_fk FOREIGN KEY (qd_id) REFERENCES ltk_quina.quina_id_quadrante(qd_id)
);

/*
  Script sql pra popular a tabela.
 */
Delete from ltk_quina.quina_id_quadrante_agrupado_por_qt;
Insert into ltk_quina.quina_id_quadrante_agrupado_por_qt (qd_id, quina_qt, qt_vezes)
  SELECT qd_id, quina_qt, count(*) as qt_vezes from ltk_quina.quina_id
    group by qd_id, quina_qt
  order by qd_id;

/**######################################################
  circular.
 #######################################################*/
/**
  circular, agrupado, por id circular.
 */
drop table if exists ltk_quina.quina_id_circular_agrupado;
create table ltk_quina.quina_id_circular_agrupado(
  crc_id numeric not null,
  qt_vezes numeric not null,

  CONSTRAINT circular_agrupado_fk FOREIGN KEY (crc_id) REFERENCES ltk_quina.quina_id_circular(crc_id)
);
/**
  Script pra popular a tabela.
 */
  Delete from ltk_quina.quina_id_circular_agrupado;
  Insert into ltk_quina.quina_id_circular_agrupado (crc_id, qt_vezes)
    SELECT crc_id, count(*) as qt_vezes from ltk_quina.quina_id
      group by crc_id
    order by crc_id;
/**
  circular, agrupado, por id circular e por quantidade de bolas.
 */
drop table if exists ltk_quina.quina_id_circular_agrupado_por_qt;
create table ltk_quina.quina_id_circular_agrupado_por_qt(
  crc_id numeric not null,
  quina_qt numeric not null check(quina_qt in (5, 6, 7)),
  qt_vezes numeric not null,
  CONSTRAINT circular_agrupado_por_qt_fk FOREIGN KEY (crc_id) REFERENCES ltk_quina.quina_id_circular(crc_id)
);

/*
  Script sql pra popular a tabela.
 */
Delete from ltk_quina.quina_id_circular_agrupado_por_qt;
Insert into ltk_quina.quina_id_circular_agrupado_por_qt (crc_id, quina_qt, qt_vezes)
  SELECT crc_id, quina_qt, count(*) as qt_vezes from ltk_quina.quina_id
    group by crc_id, quina_qt
  order by crc_id;


/** ###################################################
  id_b1
 #####################################################*/
/**
  b1, agrupado, por id b1.
 */
drop table if exists ltk_quina.quina_id_b1_agrupado;
create table ltk_quina.quina_id_b1_agrupado(
  b1_id numeric not null,
  qt_vezes numeric not null,

  CONSTRAINT b1_agrupado_fk FOREIGN KEY (b1_id) REFERENCES ltk_quina.quina_id_b1(b1_id)
);
/**
  Script pra popular a tabela.
 */
  Delete from ltk_quina.quina_id_b1_agrupado;
  Insert into ltk_quina.quina_id_b1_agrupado (b1_id, qt_vezes)
    SELECT b1_id, count(*) as qt_vezes from ltk_quina.quina_id
      group by b1_id
    order by b1_id;
/**
  b1, agrupado, por id b1 e por quantidade de bolas.
 */
drop table if exists ltk_quina.quina_id_b1_agrupado_por_qt;
create table ltk_quina.quina_id_b1_agrupado_por_qt(
  b1_id numeric not null,
  quina_qt numeric not null check(quina_qt in (5, 6, 7)),
  qt_vezes numeric not null,
  CONSTRAINT b1_agrupado_por_qt_fk FOREIGN KEY (b1_id) REFERENCES ltk_quina.quina_id_b1(b1_id)
);

/*
  Script sql pra popular a tabela.
 */
Delete from ltk_quina.quina_id_b1_agrupado_por_qt;
Insert into ltk_quina.quina_id_b1_agrupado_por_qt (b1_id, quina_qt, qt_vezes)
  SELECT b1_id, quina_qt, count(*) as qt_vezes from ltk_quina.quina_id
    group by b1_id, quina_qt
  order by b1_id;

/**
  b1, b3, b5
 */
/**
  b1_b3_b5, agrupado, por id b1_b3_b5.
 */
drop table if exists ltk_quina.quina_id_b1_b3_b5_agrupado;
create table ltk_quina.quina_id_b1_b3_b5_agrupado(
  b1_b3_b5_id numeric not null,
  qt_vezes numeric not null,

  CONSTRAINT b1_b3_b5_agrupado_fk FOREIGN KEY (b1_b3_b5_id) REFERENCES ltk_quina.quina_id_b1_b3_b5(b1_b3_b5_id)
);
/**
  Script pra popular a tabela.
 */
  Delete from ltk_quina.quina_id_b1_b3_b5_agrupado;
  Insert into ltk_quina.quina_id_b1_b3_b5_agrupado (b1_b3_b5_id, qt_vezes)
    SELECT b1_b3_b5_id, count(*) as qt_vezes from ltk_quina.quina_id
      group by b1_b3_b5_id
    order by b1_b3_b5_id;

/**
  b1_b3_b5, agrupado, por id b1_b3_b5 e por quantidade de bolas.
 */
drop table if exists ltk_quina.quina_id_b1_b3_b5_agrupado_por_qt;
create table ltk_quina.quina_id_b1_b3_b5_agrupado_por_qt(
  b1_b3_b5_id numeric not null,
  quina_qt numeric not null check(quina_qt in (5, 6, 7)),
  qt_vezes numeric not null,
  CONSTRAINT b1_b3_b5_agrupado_por_qt_fk FOREIGN KEY (b1_b3_b5_id) REFERENCES ltk_quina.quina_id_b1_b3_b5(b1_b3_b5_id)
);

/*
  Script sql pra popular a tabela.
 */
Delete from ltk_quina.quina_id_b1_b3_b5_agrupado_por_qt;
Insert into ltk_quina.quina_id_b1_b3_b5_agrupado_por_qt (b1_b3_b5_id, quina_qt, qt_vezes)
  SELECT b1_b3_b5_id, quina_qt, count(*) as qt_vezes from ltk_quina.quina_id
    group by b1_b3_b5_id, quina_qt
  order by b1_b3_b5_id;

/**
  b1_b15.
 */
/**
  b1_b15, agrupado, por id b1_b15.
 */
drop table if exists ltk_quina.quina_id_b1_b5_agrupado;
create table ltk_quina.quina_id_b1_b5_agrupado(
  b1_b5_id numeric not null,
  qt_vezes numeric not null,

  CONSTRAINT b1_b5_agrupado_fk FOREIGN KEY (b1_b5_id) REFERENCES ltk_quina.quina_id_b1_b5(b1_b5_id)
);
/**
  Script pra popular a tabela.
 */
  Delete from ltk_quina.quina_id_b1_b5_agrupado;
  Insert into ltk_quina.quina_id_b1_b5_agrupado (b1_b5_id, qt_vezes)
    SELECT b1_b5_id, count(*) as qt_vezes from ltk_quina.quina_id
      group by b1_b5_id
    order by b1_b5_id;
/**
  b1_b5, agrupado, por id b1_b5 e por quantidade de bolas.
 */
drop table if exists ltk_quina.quina_id_b1_b5_agrupado_por_qt;
create table ltk_quina.quina_id_b1_b5_agrupado_por_qt(
  b1_b5_id numeric not null,
  quina_qt numeric not null check(quina_qt in (5, 6, 7)),
  qt_vezes numeric not null,
  CONSTRAINT b1_b5_agrupado_por_qt_fk FOREIGN KEY (b1_b5_id) REFERENCES ltk_quina.quina_id_b1_b5(b1_b5_id)
);

/*
  Script sql pra popular a tabela.
 */
Delete from ltk_quina.quina_id_b1_b5_agrupado_por_qt;
Insert into ltk_quina.quina_id_b1_b5_agrupado_por_qt (b1_b5_id, quina_qt, qt_vezes)
  SELECT b1_b5_id, quina_qt, count(*) as qt_vezes from ltk_quina.quina_id
    group by b1_b5_id, quina_qt
  order by b1_b5_id;

/*
  Script sql pra popular a tabela novos x repetidos.
 */
/**
  No caso da tabela novos e repetidos, os dados é pego de uma tabela separada,
  ao invés de ser quina_id, será quina_novos_repetidos.
 */
drop table if exists ltk_quina.quina_id_novos_repetidos_agrupado;
create table ltk_quina.quina_id_novos_repetidos_agrupado(
  novos_repetidos_id numeric not null,
  qt_vezes numeric not null,

  CONSTRAINT novos_repetidos_agrupado_fk FOREIGN KEY (novos_repetidos_id) REFERENCES ltk_quina.quina_id_novos_repetidos(novos_repetidos_id)
);
/**
  novos_repetidos, agrupado, por id novos_repetidos e por quantidade de bolas.
 */
drop table if exists ltk_quina.quina_id_novos_repetidos_agrupado_por_qt;
create table ltk_quina.quina_id_novos_repetidos_agrupado_por_qt(
  novos_repetidos_id numeric not null,
  quina_qt numeric not null check(quina_qt in (5, 6, 7)),
  qt_vezes numeric not null,
  CONSTRAINT novos_repetidos_agrupado_por_qt_fk FOREIGN KEY (novos_repetidos_id) REFERENCES ltk_quina.quina_id_novos_repetidos(novos_repetidos_id)
);

/**
  Apaga toda as tabelas, que serão usadas no view.
 */
drop view if exists ltk_quina.v_quina_resultado_horizontal;
drop view if exists ltk_quina.v_quina_resultado_horizontal_detalhado;

drop view if exists ltk_quina.v_quina_resultado_vertical;
drop view if exists ltk_quina.v_quina_resultado_vertical_detalhado;

drop view if exists ltk_quina.v_quina_resultado_diagonal;
drop view if exists ltk_quina.v_quina_resultado_diagonal_detalhado;

drop view if exists ltk_quina.v_quina_resultado_quadrante;

drop view if exists ltk_quina.v_quina_resultado_externo_interno;
drop view if exists ltk_quina.v_quina_resultado_externo_interno_detalhado;

drop view if exists ltk_quina.v_quina_resultado_par_impar;
drop view if exists ltk_quina.v_quina_resultado_par_impar_detalhado;

drop view if exists ltk_quina.v_quina_resultado_par_impar;
create view ltk_quina.v_quina_resultado_par_impar AS
  Select ltf_agrupado.par_impar_id, par, impar, ltf_agrupado.qt_vezes as quina_qt, count(ltf_res.par_impar_id) as res_qt
    from ltk_quina.quina_id_par_impar_agrupado_por_qt ltf_agrupado
  left JOIN ltk_quina.quina_id_par_impar quina_id
        on ltf_agrupado.par_impar_id = quina_id.par_impar_id
  left join ltk_quina.quina_resultado_par_impar ltf_res
        on quina_id.par_impar_id = ltf_res.par_impar_id
      where ltf_agrupado.quina_qt = 5
  group by ltf_agrupado.par_impar_id, par, impar, ltf_agrupado.qt_vezes
  order by res_qt desc, quina_qt desc, par, impar;

drop view if exists ltk_quina.v_quina_resultado_primo;
create view ltk_quina.v_quina_resultado_primo AS
  Select ltf_agrupado.prm_id, primo, nao_primo, ltf_agrupado.qt_vezes as quina_qt, count(ltf_res.prm_id) as res_qt
    from ltk_quina.quina_id_primo_agrupado_por_qt ltf_agrupado
  left JOIN ltk_quina.quina_id_primo quina_id
        on ltf_agrupado.prm_id = quina_id.prm_id
  left join ltk_quina.quina_resultado_primo ltf_res
        on quina_id.prm_id = ltf_res.prm_id
      where ltf_agrupado.quina_qt = 5
  group by ltf_agrupado.prm_id, primo, nao_primo, ltf_agrupado.qt_vezes
  order by res_qt desc, quina_qt desc, primo, nao_primo;

drop view if exists ltk_quina.v_quina_resultado_horizontal;
create view ltk_quina.v_quina_resultado_horizontal AS
  Select ltf_agrupado.hrz_id, hrz_1, hrz_2, hrz_3, hrz_4, ltf_agrupado.qt_vezes as quina_qt, count(ltf_res.hrz_id) as res_qt
    from ltk_quina.quina_id_horizontal_agrupado_por_qt ltf_agrupado
  left JOIN ltk_quina.quina_id_horizontal quina_id
        on ltf_agrupado.hrz_id = quina_id.hrz_id
  left join ltk_quina.quina_resultado_horizontal ltf_res
        on quina_id.hrz_id = ltf_res.hrz_id
      where ltf_agrupado.quina_qt = 5
  group by ltf_agrupado.hrz_id, hrz_1, hrz_2, hrz_3, hrz_4, ltf_agrupado.qt_vezes
  order by res_qt desc, quina_qt desc, hrz_1, hrz_2, hrz_3, hrz_4;

drop view if exists ltk_quina.v_quina_resultado_vertical;
create view ltk_quina.v_quina_resultado_vertical AS
  Select ltf_agrupado.vrt_id, vrt_1, vrt_2, vrt_3, vrt_4, vrt_5, ltf_agrupado.qt_vezes as quina_qt, count(ltf_res.vrt_id) as res_qt
    from ltk_quina.quina_id_vertical_agrupado_por_qt ltf_agrupado
  left JOIN ltk_quina.quina_id_vertical quina_id
        on ltf_agrupado.vrt_id = quina_id.vrt_id
  left join ltk_quina.quina_resultado_vertical ltf_res
        on quina_id.vrt_id = ltf_res.vrt_id
      where ltf_agrupado.quina_qt = 5
  group by ltf_agrupado.vrt_id, vrt_1, vrt_2, vrt_3, vrt_4, vrt_5, ltf_agrupado.qt_vezes
  order by res_qt desc, quina_qt desc, vrt_1, vrt_2, vrt_3, vrt_4, vrt_5;

drop view if exists ltk_quina.v_quina_resultado_diagonal;
create view ltk_quina.v_quina_resultado_diagonal AS
  Select ltf_agrupado.dg_id, dg_1, dg_2, dg_3, dg_4, dg_5, ltf_agrupado.qt_vezes as quina_qt, count(ltf_res.dg_id) as res_qt
    from ltk_quina.quina_id_diagonal_agrupado_por_qt ltf_agrupado
  left JOIN ltk_quina.quina_id_diagonal quina_id
        on ltf_agrupado.dg_id = quina_id.dg_id
  left join ltk_quina.quina_resultado_diagonal ltf_res
        on quina_id.dg_id = ltf_res.dg_id
      where ltf_agrupado.quina_qt = 5
  group by ltf_agrupado.dg_id, dg_1, dg_2, dg_3, dg_4, dg_5, ltf_agrupado.qt_vezes
  order by res_qt desc, quina_qt desc, dg_1, dg_2, dg_3, dg_4, dg_5;

drop view if exists ltk_quina.v_quina_resultado_quadrante;
create view ltk_quina.v_quina_resultado_quadrante AS
  Select ltf_agrupado.qd_id, qd_1, qd_2, qd_3, qd_4, ltf_agrupado.qt_vezes as quina_qt, count(ltf_res.qd_id) as res_qt
    from ltk_quina.quina_id_quadrante_agrupado_por_qt ltf_agrupado
  left JOIN ltk_quina.quina_id_quadrante quina_id
        on ltf_agrupado.qd_id = quina_id.qd_id
  left join ltk_quina.quina_resultado_quadrante ltf_res
        on quina_id.qd_id = ltf_res.qd_id
      where ltf_agrupado.quina_qt = 5
  group by ltf_agrupado.qd_id, qd_1, qd_2, qd_3, qd_4, ltf_agrupado.qt_vezes
  order by res_qt desc, quina_qt desc, qd_1, qd_2, qd_3, qd_4;

/**
  TODO: Verificar posteriormene se a view abaixo é necessária.
 */
drop view if exists ltk_quina.v_quina_resultado_novos_repetidos;
create view ltk_quina.v_quina_resultado_novos_repetidos AS
  Select ltf_agrupado.novos_repetidos_id, novos, repetidos, ltf_agrupado.qt_vezes as quina_qt, count(ltf_res.novos_repetidos_id) as res_qt
    from ltk_quina.quina_id_novos_repetidos_agrupado_por_qt ltf_agrupado
  left JOIN ltk_quina.quina_id_novos_repetidos quina_id
        on ltf_agrupado.novos_repetidos_id = quina_id.novos_repetidos_id
  left join ltk_quina.quina_resultado_novos_repetidos ltf_res
        on quina_id.novos_repetidos_id = ltf_res.novos_repetidos_id
      where ltf_agrupado.quina_qt = 15
  group by ltf_agrupado.novos_repetidos_id, novos, repetidos, ltf_agrupado.qt_vezes
  order by res_qt desc, quina_qt desc, novos, repetidos;


/**
  Retorna todo os concursos.
 */
drop view if exists ltk_quina.v_quina_concursos;
create view ltk_quina.v_quina_concursos (concurso) as
  Select concurso from ltk_quina.quina_resultado_num
  GROUP BY concurso order by concurso;

/**
  Cria as views para as coluna b1, b4, b8, b12 e b15.
 */
drop view if exists ltk_quina.v_quina_resultado_b1;
create view ltk_quina.v_quina_resultado_b1 AS
  Select ltf_agrupado.b1_id, b1, ltf_agrupado.qt_vezes as quina_qt, count(ltf_res.b1_id) as res_qt
    from ltk_quina.quina_id_b1_agrupado_por_qt ltf_agrupado
  left join ltk_quina.quina_id_b1 quina_id
      on ltf_agrupado.b1_id = quina_id.b1_id
  left join ltk_quina.quina_resultado_b1 ltf_res
      on quina_id.b1_id = ltf_res.b1_id
  where ltf_agrupado.quina_qt = 5
  group by ltf_agrupado.b1_id, b1, ltf_agrupado.qt_vezes
  order by res_qt desc, quina_qt desc, b1;

drop view if exists ltk_quina.v_quina_resultado_b1_b5;
create view ltk_quina.v_quina_resultado_b1_b5 AS
  Select ltf_agrupado.b1_b5_id, b1, b5, ltf_agrupado.qt_vezes as quina_qt, count(ltf_res.b1_b5_id) as res_qt
    from ltk_quina.quina_id_b1_b5_agrupado_por_qt ltf_agrupado
  left join ltk_quina.quina_id_b1_b5 quina_id
      on ltf_agrupado.b1_b5_id = quina_id.b1_b5_id
  left join ltk_quina.quina_resultado_b1_b5 ltf_res
      on quina_id.b1_b5_id = ltf_res.b1_b5_id
  where ltf_agrupado.quina_qt = 5
  group by ltf_agrupado.b1_b5_id, b1, b5, ltf_agrupado.qt_vezes
  order by res_qt desc, quina_qt desc, b1;

drop view if exists ltk_quina.v_quina_resultado_b1_b3_b5;
create view ltk_quina.v_quina_resultado_b1_b3_b5 AS
  Select ltf_agrupado.b1_b3_b5_id, b1, b3, b5, ltf_agrupado.qt_vezes as quina_qt, count(ltf_res.b1_b3_b5_id) as res_qt
    from ltk_quina.quina_id_b1_b3_b5_agrupado_por_qt ltf_agrupado
  left join ltk_quina.quina_id_b1_b3_b5 quina_id
      on ltf_agrupado.b1_b3_b5_id = quina_id.b1_b3_b5_id
  left join ltk_quina.quina_resultado_b1_b3_b5 ltf_res
      on quina_id.b1_b3_b5_id = ltf_res.b1_b3_b5_id
  where ltf_agrupado.quina_qt = 5
  group by ltf_agrupado.b1_b3_b5_id, b1, b3, b5, ltf_agrupado.qt_vezes
  order by res_qt desc, quina_qt desc, b1;

drop view if exists ltk_quina.v_quina_resultado_grupo_1_bola;
create view ltk_quina.v_quina_resultado_grupo_1_bola as
  Select quina_id.grp_id, bola1, count(ltf_res.grp_id) as qt_vezes
  from ltk_quina.quina_id_grupo_1_bola quina_id
  left join ltk_quina.quina_resultado_grupo_1_bola ltf_res
    on quina_id.grp_id = ltf_res.grp_id
  group by quina_id.grp_id, bola1
  order by qt_vezes desc;

drop view if exists ltk_quina.v_quina_resultado_grupo_2_bolas;
create view ltk_quina.v_quina_resultado_grupo_2_bolas as
  Select quina_id.grp_id, bola1, bola2, count(ltf_res.grp_id) as qt_vezes
  from ltk_quina.quina_id_grupo_2_bolas quina_id
  left join ltk_quina.quina_resultado_grupo_2_bolas ltf_res
    on quina_id.grp_id = ltf_res.grp_id
  group by quina_id.grp_id, bola1, bola2
  order by qt_vezes desc;

drop view if exists ltk_quina.v_quina_resultado_grupo_3_bolas;
create view ltk_quina.v_quina_resultado_grupo_3_bolas as
  Select quina_id.grp_id, bola1, bola2, bola3, count(ltf_res.grp_id) as qt_vezes
  from ltk_quina.quina_id_grupo_3_bolas quina_id
  left join ltk_quina.quina_resultado_grupo_3_bolas ltf_res
    on quina_id.grp_id = ltf_res.grp_id
  group by quina_id.grp_id, bola1, bola2, bola3
  order by qt_vezes desc;

drop view if exists ltk_quina.v_quina_resultado_grupo_4_bolas;
create view ltk_quina.v_quina_resultado_grupo_4_bolas as
  Select quina_id.grp_id, bola1, bola2, bola3, bola4, count(ltf_res.grp_id) as qt_vezes
  from ltk_quina.quina_id_grupo_4_bolas quina_id
  left join ltk_quina.quina_resultado_grupo_4_bolas ltf_res
    on quina_id.grp_id = ltf_res.grp_id
  group by quina_id.grp_id, bola1, bola2, bola3, bola4
  order by qt_vezes desc;

/**
  Retorna somente quina_id que ainda não foram sorteados na ltk_quina.
  TODO: Implementar atualização do campo quina_id na tabela quina_num.
 */
drop view if exists ltk_quina.v_quina_num_nao_sorteado;
create view ltk_quina.v_quina_num_nao_sorteado AS
Select quina_id from ltk_quina.quina_num ltf_num
    where quina_id not in (Select quina_id from ltk_quina.quina_resultado_quina_id);

/**
  Exibe a quantidade de padrões que saíram no resultado.
 */
Drop view if exists ltk_quina.v_quina_resultado_dif_padrao;
create view ltk_quina.v_quina_resultado_dif_padrao (dif_padrao, quina_qt, res_qt) AS
  Select
      quina_df_padrao.dif_padrao,
      quina_df_padrao.qt_vezes,
      case when quina_res.qt_vezes is null then 0 else quina_res.qt_vezes end as res_qt FROM ltk_quina.quina_dif_padrao quina_df_padrao
    left join (Select dif_padrao, count(*) as qt_vezes from ltk_quina.quina_resultado_quina_id quina_res, ltk_quina.quina_estatistica quina_est
where quina_res.quina_id = quina_est.quina_id
group by dif_padrao) quina_res
    on quina_res.dif_padrao = quina_df_padrao.dif_padrao
  order by res_qt desc;


