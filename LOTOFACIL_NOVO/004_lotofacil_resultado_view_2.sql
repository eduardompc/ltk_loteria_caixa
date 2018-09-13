



/**
  id_b1
 */
/**
  b1, agrupado, por id b1.
 */
drop table if exists lotofacil.lotofacil_id_b1_agrupado;
create table lotofacil.lotofacil_id_b1_agrupado(
  b1_id numeric not null,
  qt_vezes numeric not null,

  CONSTRAINT b1_agrupado_fk FOREIGN KEY (b1_id) REFERENCES lotofacil.lotofacil_id_b1(b1_id)
);
/**
  Script pra popular a tabela.
 */
  Delete from lotofacil.lotofacil_id_b1_agrupado;
  Insert into lotofacil.lotofacil_id_b1_agrupado (b1_id, qt_vezes)
    SELECT b1_id, count(*) as qt_vezes from lotofacil.lotofacil_id
      group by b1_id
    order by b1_id;
/**
  b1, agrupado, por id b1 e por quantidade de bolas.
 */
drop table if exists lotofacil.lotofacil_id_b1_agrupado_por_qt;
create table lotofacil.lotofacil_id_b1_agrupado_por_qt(
  b1_id numeric not null,
  ltf_qt numeric not null check(ltf_qt in (15, 16, 17, 18)),
  qt_vezes numeric not null,
  CONSTRAINT b1_agrupado_por_qt_fk FOREIGN KEY (b1_id) REFERENCES lotofacil.lotofacil_id_b1(b1_id)
);

/*
  Script sql pra popular a tabela.
 */
Delete from lotofacil.lotofacil_id_b1_agrupado_por_qt;
Insert into lotofacil.lotofacil_id_b1_agrupado_por_qt (b1_id, ltf_qt, qt_vezes)
  SELECT b1_id, ltf_qt, count(*) as qt_vezes from lotofacil.lotofacil_id
    group by b1_id, ltf_qt
  order by b1_id;

/**
  b1_b4_b8_b12_b15
 */
/**
  b1_b4_b8_b12_b15, agrupado, por id b1_b4_b8_b12_b15.
 */
drop table if exists lotofacil.lotofacil_id_b1_b4_b8_b12_b15_agrupado;
create table lotofacil.lotofacil_id_b1_b4_b8_b12_b15_agrupado(
  b1_b4_b8_b12_b15_id numeric not null,
  qt_vezes numeric not null,

  CONSTRAINT b1_b4_b8_b12_b15_agrupado_fk FOREIGN KEY (b1_b4_b8_b12_b15_id) REFERENCES lotofacil.lotofacil_id_b1_b4_b8_b12_b15(b1_b4_b8_b12_b15_id)
);
/**
  Script pra popular a tabela.
 */
  Delete from lotofacil.lotofacil_id_b1_b4_b8_b12_b15_agrupado;
  Insert into lotofacil.lotofacil_id_b1_b4_b8_b12_b15_agrupado (b1_b4_b8_b12_b15_id, qt_vezes)
    SELECT b1_b4_b8_b12_b15_id, count(*) as qt_vezes from lotofacil.lotofacil_id
      group by b1_b4_b8_b12_b15_id
    order by b1_b4_b8_b12_b15_id;
/**
  b1_b4_b8_b12_b15, agrupado, por id b1_b4_b8_b12_b15 e por quantidade de bolas.
 */
drop table if exists lotofacil.lotofacil_id_b1_b4_b8_b12_b15_agrupado_por_qt;
create table lotofacil.lotofacil_id_b1_b4_b8_b12_b15_agrupado_por_qt(
  b1_b4_b8_b12_b15_id numeric not null,
  ltf_qt numeric not null check(ltf_qt in (15, 16, 17, 18)),
  qt_vezes numeric not null,
  CONSTRAINT b1_b4_b8_b12_b15_agrupado_por_qt_fk FOREIGN KEY (b1_b4_b8_b12_b15_id) REFERENCES lotofacil.lotofacil_id_b1_b4_b8_b12_b15(b1_b4_b8_b12_b15_id)
);

/*
  Script sql pra popular a tabela.
 */
Delete from lotofacil.lotofacil_id_b1_b4_b8_b12_b15_agrupado_por_qt;
Insert into lotofacil.lotofacil_id_b1_b4_b8_b12_b15_agrupado_por_qt (b1_b4_b8_b12_b15_id, ltf_qt, qt_vezes)
  SELECT b1_b4_b8_b12_b15_id, ltf_qt, count(*) as qt_vezes from lotofacil.lotofacil_id
    group by b1_b4_b8_b12_b15_id, ltf_qt
  order by b1_b4_b8_b12_b15_id;

/**
  b1, b8, b15
 */
/**
  b1_b8_b15, agrupado, por id b1_b8_b15.
 */
drop table if exists lotofacil.lotofacil_id_b1_b8_b15_agrupado;
create table lotofacil.lotofacil_id_b1_b8_b15_agrupado(
  b1_b8_b15_id numeric not null,
  qt_vezes numeric not null,

  CONSTRAINT b1_b8_b15_agrupado_fk FOREIGN KEY (b1_b8_b15_id) REFERENCES lotofacil.lotofacil_id_b1_b8_b15(b1_b8_b15_id)
);
/**
  Script pra popular a tabela.
 */
  Delete from lotofacil.lotofacil_id_b1_b8_b15_agrupado;
  Insert into lotofacil.lotofacil_id_b1_b8_b15_agrupado (b1_b8_b15_id, qt_vezes)
    SELECT b1_b8_b15_id, count(*) as qt_vezes from lotofacil.lotofacil_id
      group by b1_b8_b15_id
    order by b1_b8_b15_id;


/**
  b1_b8_b15, agrupado, por id b1_b8_b15 e por quantidade de bolas.
 */
drop table if exists lotofacil.lotofacil_id_b1_b8_b15_agrupado_por_qt;
create table lotofacil.lotofacil_id_b1_b8_b15_agrupado_por_qt(
  b1_b8_b15_id numeric not null,
  ltf_qt numeric not null check(ltf_qt in (15, 16, 17, 18)),
  qt_vezes numeric not null,
  CONSTRAINT b1_b8_b15_agrupado_por_qt_fk FOREIGN KEY (b1_b8_b15_id) REFERENCES lotofacil.lotofacil_id_b1_b8_b15(b1_b8_b15_id)
);

/*
  Script sql pra popular a tabela.
 */
Delete from lotofacil.lotofacil_id_b1_b8_b15_agrupado_por_qt;
Insert into lotofacil.lotofacil_id_b1_b8_b15_agrupado_por_qt (b1_b8_b15_id, ltf_qt, qt_vezes)
  SELECT b1_b8_b15_id, ltf_qt, count(*) as qt_vezes from lotofacil.lotofacil_id
    group by b1_b8_b15_id, ltf_qt
  order by b1_b8_b15_id;


/**
  b1_b15.
 */
/**
  b1_b15, agrupado, por id b1_b15.
 */
drop table if exists lotofacil.lotofacil_id_b1_b15_agrupado;
create table lotofacil.lotofacil_id_b1_b15_agrupado(
  b1_b15_id numeric not null,
  qt_vezes numeric not null,

  CONSTRAINT b1_b15_agrupado_fk FOREIGN KEY (b1_b15_id) REFERENCES lotofacil.lotofacil_id_b1_b15(b1_b15_id)
);
/**
  Script pra popular a tabela.
 */
  Delete from lotofacil.lotofacil_id_b1_b15_agrupado;
  Insert into lotofacil.lotofacil_id_b1_b15_agrupado (b1_b15_id, qt_vezes)
    SELECT b1_b15_id, count(*) as qt_vezes from lotofacil.lotofacil_id
      group by b1_b15_id
    order by b1_b15_id;

/**
  b1_b15, agrupado, por id b1_b15 e por quantidade de bolas.
 */
drop table if exists lotofacil.lotofacil_id_b1_b15_agrupado_por_qt cascade;
create table lotofacil.lotofacil_id_b1_b15_agrupado_por_qt(
  b1_b15_id numeric not null,
  ltf_qt numeric not null check(ltf_qt in (15, 16, 17, 18)),
  qt_vezes numeric not null,
  CONSTRAINT b1_b15_agrupado_por_qt_fk FOREIGN KEY (b1_b15_id) REFERENCES lotofacil.lotofacil_id_b1_b15(b1_b15_id)
);

/*
  Script sql pra popular a tabela.
 */
Delete from lotofacil.lotofacil_id_b1_b15_agrupado_por_qt;
Insert into lotofacil.lotofacil_id_b1_b15_agrupado_por_qt (b1_b15_id, ltf_qt, qt_vezes)
  SELECT b1_b15_id, ltf_qt, count(*) as qt_vezes from lotofacil.lotofacil_id
    group by b1_b15_id, ltf_qt
  order by b1_b15_id;

/**
  Colunas b1, b2: Início.
 */
/**
  b1_b2.
 */
/**
  b1_b2, agrupado, por id b1_b2.
 */
drop table if exists lotofacil.lotofacil_id_b1_b2_agrupado;
create table lotofacil.lotofacil_id_b1_b2_agrupado(
  b1_b2_id numeric not null,
  qt_vezes numeric not null,

  CONSTRAINT b1_b2_agrupado_fk FOREIGN KEY (b1_b2_id) REFERENCES lotofacil.lotofacil_id_b1_b2(b1_b2_id)
);
/**
  Script pra popular a tabela.
 */
  Delete from lotofacil.lotofacil_id_b1_b2_agrupado;
  Insert into lotofacil.lotofacil_id_b1_b2_agrupado (b1_b2_id, qt_vezes)
    SELECT b1_b2_id, count(*) as qt_vezes from lotofacil.lotofacil_id
      group by b1_b2_id
    order by b1_b2_id;
/**
  b1_b2, agrupado, por id b1_b2 e por quantidade de bolas.
 */
drop table if exists lotofacil.lotofacil_id_b1_b2_agrupado_por_qt;
create table lotofacil.lotofacil_id_b1_b2_agrupado_por_qt(
  b1_b2_id numeric not null,
  ltf_qt numeric not null check(ltf_qt in (15, 16, 17, 18)),
  qt_vezes numeric not null,
  CONSTRAINT b1_b2_agrupado_por_qt_fk FOREIGN KEY (b1_b2_id) REFERENCES lotofacil.lotofacil_id_b1_b2(b1_b2_id)
);

/*
  Script sql pra popular a tabela.
 */
Delete from lotofacil.lotofacil_id_b1_b2_agrupado_por_qt;
Insert into lotofacil.lotofacil_id_b1_b2_agrupado_por_qt (b1_b2_id, ltf_qt, qt_vezes)
  SELECT b1_b2_id, ltf_qt, count(*) as qt_vezes from lotofacil.lotofacil_id
    group by b1_b2_id, ltf_qt
  order by b1_b2_id;

/**
  Colunas b1, b2: FIM.
 */

/**
  Colunas b1, b2, b3: Início.
 */
drop table if exists lotofacil.lotofacil_id_b1_b2_b3_agrupado;
create table lotofacil.lotofacil_id_b1_b2_b3_agrupado(
  b1_b2_b3_id numeric not null,
  qt_vezes numeric not null,

  CONSTRAINT b1_b2_b3_agrupado_fk FOREIGN KEY (b1_b2_b3_id) REFERENCES lotofacil.lotofacil_id_b1_b2_b3(b1_b2_b3_id)
);
/**
  Script pra popular a tabela.
 */
  Delete from lotofacil.lotofacil_id_b1_b2_b3_agrupado;
  Insert into lotofacil.lotofacil_id_b1_b2_b3_agrupado (b1_b2_b3_id, qt_vezes)
    SELECT b1_b2_b3_id, count(*) as qt_vezes from lotofacil.lotofacil_id
      group by b1_b2_b3_id
    order by b1_b2_b3_id;
/**
  b1_b2_b3, agrupado, por id b1_b2_b3 e por quantidade de bolas.
 */
drop table if exists lotofacil.lotofacil_id_b1_b2_b3_agrupado_por_qt;
create table lotofacil.lotofacil_id_b1_b2_b3_agrupado_por_qt(
  b1_b2_b3_id numeric not null,
  ltf_qt numeric not null check(ltf_qt in (15, 16, 17, 18)),
  qt_vezes numeric not null,
  CONSTRAINT b1_b2_b3_agrupado_por_qt_fk FOREIGN KEY (b1_b2_b3_id) REFERENCES lotofacil.lotofacil_id_b1_b2_b3(b1_b2_b3_id)
);

/*
  Script sql pra popular a tabela.
 */
Delete from lotofacil.lotofacil_id_b1_b2_b3_agrupado_por_qt;
Insert into lotofacil.lotofacil_id_b1_b2_b3_agrupado_por_qt (b1_b2_b3_id, ltf_qt, qt_vezes)
  SELECT b1_b2_b3_id, ltf_qt, count(*) as qt_vezes from lotofacil.lotofacil_id
    group by b1_b2_b3_id, ltf_qt
  order by b1_b2_b3_id;
/**
  Colunas b1, b2, b3: Fim.
 */


/**
  Colunas b1, b2, b3, b4: Início.
 */
drop table if exists lotofacil.lotofacil_id_b1_b2_b3_b4_agrupado;
create table lotofacil.lotofacil_id_b1_b2_b3_b4_agrupado(
  b1_b2_b3_b4_id numeric not null,
  qt_vezes numeric not null,

  CONSTRAINT b1_b2_b3_b4_agrupado_fk FOREIGN KEY (b1_b2_b3_b4_id) REFERENCES lotofacil.lotofacil_id_b1_b2_b3_b4(b1_b2_b3_b4_id)
);
/**
  Script pra popular a tabela.
 */
  Delete from lotofacil.lotofacil_id_b1_b2_b3_b4_agrupado;
  Insert into lotofacil.lotofacil_id_b1_b2_b3_b4_agrupado (b1_b2_b3_b4_id, qt_vezes)
    SELECT b1_b2_b3_b4_id, count(*) as qt_vezes from lotofacil.lotofacil_id
      group by b1_b2_b3_b4_id
    order by b1_b2_b3_b4_id;
/**
  b1_b2_b3_b4, agrupado, por id b1_b2_b3_b4 e por quantidade de bolas.
 */
drop table if exists lotofacil.lotofacil_id_b1_b2_b3_b4_agrupado_por_qt;
create table lotofacil.lotofacil_id_b1_b2_b3_b4_agrupado_por_qt(
  b1_b2_b3_b4_id numeric not null,
  ltf_qt numeric not null check(ltf_qt in (15, 16, 17, 18)),
  qt_vezes numeric not null,
  CONSTRAINT b1_b2_b3_b4_agrupado_por_qt_fk FOREIGN KEY (b1_b2_b3_b4_id) REFERENCES lotofacil.lotofacil_id_b1_b2_b3_b4(b1_b2_b3_b4_id)
);

/*
  Script sql pra popular a tabela.
 */
Delete from lotofacil.lotofacil_id_b1_b2_b3_b4_agrupado_por_qt;
Insert into lotofacil.lotofacil_id_b1_b2_b3_b4_agrupado_por_qt (b1_b2_b3_b4_id, ltf_qt, qt_vezes)
  SELECT b1_b2_b3_b4_id, ltf_qt, count(*) as qt_vezes from lotofacil.lotofacil_id
    group by b1_b2_b3_b4_id, ltf_qt
  order by b1_b2_b3_b4_id;
/**
  Colunas b1, b2, b3_b4, b4: Fim.
 */

/**
  Colunas b1, b2, b3, b4, b5: Início.
 */
drop table if exists lotofacil.lotofacil_id_b1_b2_b3_b4_b5_agrupado;
create table lotofacil.lotofacil_id_b1_b2_b3_b4_b5_agrupado(
  b1_b2_b3_b4_b5_id numeric not null,
  qt_vezes numeric not null,

  CONSTRAINT b1_b2_b3_b4_b5_agrupado_fk FOREIGN KEY (b1_b2_b3_b4_b5_id) REFERENCES lotofacil.lotofacil_id_b1_b2_b3_b4_b5(b1_b2_b3_b4_b5_id)
);
/**
  Script pra popular a tabela.
 */
  Delete from lotofacil.lotofacil_id_b1_b2_b3_b4_b5_agrupado;
  Insert into lotofacil.lotofacil_id_b1_b2_b3_b4_b5_agrupado (b1_b2_b3_b4_b5_id, qt_vezes)
    SELECT b1_b2_b3_b4_b5_id, count(*) as qt_vezes from lotofacil.lotofacil_id
      group by b1_b2_b3_b4_b5_id
    order by b1_b2_b3_b4_b5_id;
/**
  b1_b2_b3_b4_b5, agrupado, por id b1_b2_b3_b4_b5 e por quantidade de bolas.
 */
drop table if exists lotofacil.lotofacil_id_b1_b2_b3_b4_b5_agrupado_por_qt;
create table lotofacil.lotofacil_id_b1_b2_b3_b4_b5_agrupado_por_qt(
  b1_b2_b3_b4_b5_id numeric not null,
  ltf_qt numeric not null check(ltf_qt in (15, 16, 17, 18)),
  qt_vezes numeric not null,
  CONSTRAINT b1_b2_b3_b4_b5_agrupado_por_qt_fk FOREIGN KEY (b1_b2_b3_b4_b5_id) REFERENCES lotofacil.lotofacil_id_b1_b2_b3_b4_b5(b1_b2_b3_b4_b5_id)
);

/*
  Script sql pra popular a tabela.
 */
Delete from lotofacil.lotofacil_id_b1_b2_b3_b4_b5_agrupado_por_qt;
Insert into lotofacil.lotofacil_id_b1_b2_b3_b4_b5_agrupado_por_qt (b1_b2_b3_b4_b5_id, ltf_qt, qt_vezes)
  SELECT b1_b2_b3_b4_b5_id, ltf_qt, count(*) as qt_vezes from lotofacil.lotofacil_id
    group by b1_b2_b3_b4_b5_id, ltf_qt
  order by b1_b2_b3_b4_b5_id;
/**
  Colunas b1, b2, b3, b4, b5: Fim.
 */




/**
  Cria as views para as coluna b1, b4, b8, b12 e b15.
 */
drop view if exists lotofacil.v_lotofacil_resultado_b1;
create view lotofacil.v_lotofacil_resultado_b1 AS
  Select ltf_agrupado.b1_id, b1, ltf_agrupado.qt_vezes as ltf_qt, count(ltf_res.b1_id) as res_qt
    from lotofacil.lotofacil_id_b1_agrupado_por_qt ltf_agrupado
  left join lotofacil.lotofacil_id_b1 ltf_id
      on ltf_agrupado.b1_id = ltf_id.b1_id
  left join lotofacil.lotofacil_resultado_id ltf_res
      on ltf_id.b1_id = ltf_res.b1_id
  where ltf_agrupado.ltf_qt = 15
  group by ltf_agrupado.b1_id, b1, ltf_agrupado.qt_vezes
  order by res_qt desc, ltf_qt desc, b1;



drop view if exists lotofacil.v_lotofacil_resultado_b1_b2;
create view lotofacil.v_lotofacil_resultado_b1_b2 AS
  Select ltf_agrupado.b1_b2_id, b1, b2, ltf_agrupado.qt_vezes as ltf_qt, count(ltf_res.b1_b2_id) as res_qt
    from lotofacil.lotofacil_id_b1_b2_agrupado_por_qt ltf_agrupado
  left join lotofacil.lotofacil_id_b1_b2 ltf_id
      on ltf_agrupado.b1_b2_id = ltf_id.b1_b2_id
  left join lotofacil.lotofacil_resultado_id ltf_res
      on ltf_id.b1_b2_id = ltf_res.b1_b2_id
  where ltf_agrupado.ltf_qt = 15
  group by ltf_agrupado.b1_b2_id, b1, b2, ltf_agrupado.qt_vezes
  order by res_qt desc, ltf_qt desc, b1;

drop view if exists lotofacil.v_lotofacil_resultado_b1_b2_b3;
create view lotofacil.v_lotofacil_resultado_b1_b2_b3 AS
  Select ltf_agrupado.b1_b2_b3_id, b1, b2, b3, ltf_agrupado.qt_vezes as ltf_qt, count(ltf_res.b1_b2_b3_id) as res_qt
    from lotofacil.lotofacil_id_b1_b2_b3_agrupado_por_qt ltf_agrupado
  left join lotofacil.lotofacil_id_b1_b2_b3 ltf_id
      on ltf_agrupado.b1_b2_b3_id = ltf_id.b1_b2_b3_id
  left join lotofacil.lotofacil_resultado_id ltf_res
      on ltf_id.b1_b2_b3_id = ltf_res.b1_b2_b3_id
  where ltf_agrupado.ltf_qt = 15
  group by ltf_agrupado.b1_b2_b3_id, b1, b2, b3, ltf_agrupado.qt_vezes
  order by res_qt desc, ltf_qt desc, b1;

drop view if exists lotofacil.v_lotofacil_resultado_b1_b2_b3_b4;
create view lotofacil.v_lotofacil_resultado_b1_b2_b3_b4 AS
  Select ltf_agrupado.b1_b2_b3_b4_id, b1, b2, b3, b4, ltf_agrupado.qt_vezes as ltf_qt, count(ltf_res.b1_b2_b3_b4_id) as res_qt
    from lotofacil.lotofacil_id_b1_b2_b3_b4_agrupado_por_qt ltf_agrupado
  left join lotofacil.lotofacil_id_b1_b2_b3_b4 ltf_id
      on ltf_agrupado.b1_b2_b3_b4_id = ltf_id.b1_b2_b3_b4_id
  left join lotofacil.lotofacil_resultado_id ltf_res
      on ltf_id.b1_b2_b3_b4_id = ltf_res.b1_b2_b3_b4_id
  where ltf_agrupado.ltf_qt = 15
  group by ltf_agrupado.b1_b2_b3_b4_id, b1, b2, b3, b4, ltf_agrupado.qt_vezes
  order by res_qt desc, ltf_qt desc, b1;

drop view if exists lotofacil.v_lotofacil_resultado_b1_b2_b3_b4_b5;
create view lotofacil.v_lotofacil_resultado_b1_b2_b3_b4_b5 AS
  Select ltf_agrupado.b1_b2_b3_b4_b5_id, b1, b2, b3, b4, b5, ltf_agrupado.qt_vezes as ltf_qt, count(ltf_res.b1_b2_b3_b4_b5_id) as res_qt
    from lotofacil.lotofacil_id_b1_b2_b3_b4_b5_agrupado_por_qt ltf_agrupado
  left join lotofacil.lotofacil_id_b1_b2_b3_b4_b5 ltf_id
      on ltf_agrupado.b1_b2_b3_b4_b5_id = ltf_id.b1_b2_b3_b4_b5_id
  left join lotofacil.lotofacil_resultado_id ltf_res
      on ltf_id.b1_b2_b3_b4_b5_id = ltf_res.b1_b2_b3_b4_b5_id
  where ltf_agrupado.ltf_qt = 15
  group by ltf_agrupado.b1_b2_b3_b4_b5_id, b1, b2, b3, b4, b5, ltf_agrupado.qt_vezes
  order by res_qt desc, ltf_qt desc, b1;

drop view if exists lotofacil.v_lotofacil_resultado_b1_b15;
create view lotofacil.v_lotofacil_resultado_b1_b15 AS
  Select ltf_agrupado.b1_b15_id, b1, b15, ltf_agrupado.qt_vezes as ltf_qt, count(ltf_res.b1_b15_id) as res_qt
    from lotofacil.lotofacil_id_b1_b15_agrupado_por_qt ltf_agrupado
  left join lotofacil.lotofacil_id_b1_b15 ltf_id
      on ltf_agrupado.b1_b15_id = ltf_id.b1_b15_id
  left join lotofacil.lotofacil_resultado_id ltf_res
      on ltf_id.b1_b15_id = ltf_res.b1_b15_id
  where ltf_agrupado.ltf_qt = 15
  group by ltf_agrupado.b1_b15_id, b1, b15, ltf_agrupado.qt_vezes
  order by res_qt desc, ltf_qt desc, b1;


drop view if exists lotofacil.v_lotofacil_resultado_b1_b8_b15;
create view lotofacil.v_lotofacil_resultado_b1_b8_b15 AS
  Select ltf_agrupado.b1_b8_b15_id, b1, b8, b15, ltf_agrupado.qt_vezes as ltf_qt, count(ltf_res.b1_b8_b15_id) as res_qt
    from lotofacil.lotofacil_id_b1_b8_b15_agrupado_por_qt ltf_agrupado
  left join lotofacil.lotofacil_id_b1_b8_b15 ltf_id
      on ltf_agrupado.b1_b8_b15_id = ltf_id.b1_b8_b15_id
  left join lotofacil.lotofacil_resultado_id ltf_res
      on ltf_id.b1_b8_b15_id = ltf_res.b1_b8_b15_id
  where ltf_agrupado.ltf_qt = 15
  group by ltf_agrupado.b1_b8_b15_id, b1, b8, b15, ltf_agrupado.qt_vezes
  order by res_qt desc, ltf_qt desc, b1;

drop view if exists lotofacil.v_lotofacil_resultado_b1_b4_b8_b12_b15;
create view lotofacil.v_lotofacil_resultado_b1_b4_b8_b12_b15 AS
  Select ltf_agrupado.b1_b4_b8_b12_b15_id, b1, b4, b8, b12, b15, ltf_agrupado.qt_vezes as ltf_qt, count(ltf_res.b1_b4_b8_b12_b15_id) as res_qt
    from lotofacil.lotofacil_id_b1_b4_b8_b12_b15_agrupado_por_qt ltf_agrupado
  left join lotofacil.lotofacil_id_b1_b4_b8_b12_b15 ltf_id
      on ltf_agrupado.b1_b4_b8_b12_b15_id = ltf_id.b1_b4_b8_b12_b15_id
  left join lotofacil.lotofacil_resultado_id ltf_res
      on ltf_id.b1_b4_b8_b12_b15_id = ltf_res.b1_b4_b8_b12_b15_id
  where ltf_agrupado.ltf_qt = 15
  group by ltf_agrupado.b1_b4_b8_b12_b15_id, b1, b4, b8, b12, b15, ltf_agrupado.qt_vezes
  order by res_qt desc, ltf_qt desc, b1;




DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_grupo_1_bola;
CREATE VIEW lotofacil.v_lotofacil_resultado_grupo_1_bola AS
  SELECT
    ltf_id.grp_id,
    bola1,
    count(ltf_res.grp_id) AS qt_vezes
  FROM lotofacil.lotofacil_id_grupo_1_bola ltf_id
    LEFT JOIN lotofacil.lotofacil_resultado_grupo_1_bola ltf_res
      ON ltf_id.grp_id = ltf_res.grp_id
  GROUP BY ltf_id.grp_id, bola1
  ORDER BY qt_vezes DESC;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_grupo_1_bola( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_grupo_1_bola(concurso_inicial NUMERIC, concurso_final NUMERIC)
  RETURNS TABLE(grp_id NUMERIC, bola_1 NUMERIC, qt_vezes NUMERIC)
LANGUAGE plpgsql
AS $$
DECLARE
BEGIN
  RETURN QUERY
  SELECT
    ltf_id.grp_id :: NUMERIC,
    ltf_id.bola1 :: NUMERIC          AS bola_1,
    count(ltf_res.grp_id) :: NUMERIC AS qt_vezes
  FROM lotofacil.lotofacil_id_grupo_1_bola ltf_id
    LEFT JOIN lotofacil.lotofacil_resultado_grupo_1_bola ltf_res
      ON ltf_id.grp_id = ltf_res.grp_id
         AND concurso BETWEEN concurso_inicial AND concurso_final
  GROUP BY ltf_id.grp_id, bola1
  ORDER BY qt_vezes DESC;
END;
$$;

SELECT *
FROM lotofacil.fn_lotofacil_resultado_grupo_1_bola(1, 1);

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_grupo_2_bolas;
CREATE VIEW lotofacil.v_lotofacil_resultado_grupo_2_bolas AS
  SELECT
    ltf_id.grp_id,
    bola1,
    bola2,
    count(ltf_res.grp_id) AS qt_vezes
  FROM lotofacil.lotofacil_id_grupo_2_bolas ltf_id
    LEFT JOIN lotofacil.lotofacil_resultado_grupo_2_bolas ltf_res
      ON ltf_id.grp_id = ltf_res.grp_id
  GROUP BY ltf_id.grp_id, bola1, bola2
  ORDER BY qt_vezes DESC;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_grupo_2_bolas(concurso_inicial NUMERIC, concurso_final NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_grupo_2_bolas(concurso_inicial NUMERIC, concurso_final NUMERIC)
  RETURNS TABLE(grp_id NUMERIC, bola_1 NUMERIC, bola_2 NUMERIC, qt_vezes NUMERIC)
LANGUAGE plpgsql
AS $$
DECLARE
BEGIN
  RETURN QUERY
  SELECT
    ltf_id.grp_id,
    bola1,
    bola2,
    count(ltf_res.grp_id) :: NUMERIC AS qt_vezes
  FROM lotofacil.lotofacil_id_grupo_2_bolas ltf_id
    LEFT JOIN lotofacil.lotofacil_resultado_grupo_2_bolas ltf_res
      ON ltf_id.grp_id = ltf_res.grp_id
         AND concurso BETWEEN concurso_inicial AND concurso_final
  GROUP BY ltf_id.grp_id, bola1, bola2
  ORDER BY qt_vezes DESC;
END;
$$;


DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_grupo_3_bolas;
CREATE VIEW lotofacil.v_lotofacil_resultado_grupo_3_bolas AS
  SELECT
    ltf_id.grp_id,
    bola1,
    bola2,
    bola3,
    count(ltf_res.grp_id) AS qt_vezes
  FROM lotofacil.lotofacil_id_grupo_3_bolas ltf_id
    LEFT JOIN lotofacil.lotofacil_resultado_grupo_3_bolas ltf_res
      ON ltf_id.grp_id = ltf_res.grp_id
  GROUP BY ltf_id.grp_id, bola1, bola2, bola3
  ORDER BY qt_vezes DESC;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_grupo_3_bolas(concurso_inicial NUMERIC, concurso_final NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_grupo_3_bolas(concurso_inicial NUMERIC, concurso_final NUMERIC)
  RETURNS TABLE(grp_id NUMERIC, bola_1 NUMERIC, bola_2 NUMERIC, bola_3 NUMERIC, qt_vezes NUMERIC)
LANGUAGE plpgsql
AS $$
DECLARE
BEGIN
  RETURN QUERY
  SELECT
    ltf_id.grp_id,
    bola1,
    bola2,
    bola3,
    count(ltf_res.grp_id) :: NUMERIC AS qt_vezes
  FROM lotofacil.lotofacil_id_grupo_3_bolas ltf_id
    LEFT JOIN lotofacil.lotofacil_resultado_grupo_3_bolas ltf_res
      ON ltf_id.grp_id = ltf_res.grp_id
         AND concurso BETWEEN concurso_inicial AND concurso_final
  GROUP BY ltf_id.grp_id, bola1, bola2, bola3
  ORDER BY qt_vezes DESC;

END;
$$;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_grupo_4_bolas;
CREATE VIEW lotofacil.v_lotofacil_resultado_grupo_4_bolas AS
  SELECT
    ltf_id.grp_id,
    bola1,
    bola2,
    bola3,
    bola4,
    count(ltf_res.grp_id) AS qt_vezes
  FROM lotofacil.lotofacil_id_grupo_4_bolas ltf_id
    LEFT JOIN lotofacil.lotofacil_resultado_grupo_4_bolas ltf_res
      ON ltf_id.grp_id = ltf_res.grp_id
  GROUP BY ltf_id.grp_id, bola1, bola2, bola3, bola4
  ORDER BY qt_vezes DESC;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_grupo_4_bolas( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_grupo_4_bolas(concurso_inicial NUMERIC, concurso_final NUMERIC)
  RETURNS TABLE(grp_id NUMERIC, bola_1 NUMERIC, bola_2 NUMERIC, bola_3 NUMERIC, bola_4 NUMERIC, qt_vezes NUMERIC)
LANGUAGE plpgsql
AS $$
DECLARE
BEGIN
  RETURN QUERY
  SELECT
    ltf_id.grp_id,
    bola1,
    bola2,
    bola3,
    bola4,
    count(ltf_res.grp_id) :: NUMERIC AS qt_vezes
  FROM lotofacil.lotofacil_id_grupo_4_bolas ltf_id
    LEFT JOIN lotofacil.lotofacil_resultado_grupo_4_bolas ltf_res
      ON ltf_id.grp_id = ltf_res.grp_id
         AND concurso BETWEEN concurso_inicial AND concurso_final
  GROUP BY ltf_id.grp_id, bola1, bola2, bola3, bola4
  ORDER BY qt_vezes DESC;
END;
$$;


DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_grupo_5_bolas;
CREATE VIEW lotofacil.v_lotofacil_resultado_grupo_5_bolas AS
  SELECT
    ltf_id.grp_id,
    bola1,
    bola2,
    bola3,
    bola4,
    bola5,
    count(ltf_res.grp_id) AS qt_vezes
  FROM lotofacil.lotofacil_id_grupo_5_bolas ltf_id
    LEFT JOIN lotofacil.lotofacil_resultado_grupo_5_bolas ltf_res
      ON ltf_id.grp_id = ltf_res.grp_id
  GROUP BY ltf_id.grp_id, bola1, bola2, bola3, bola4, bola5
  ORDER BY qt_vezes DESC;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_grupo_6_bolas;
CREATE VIEW lotofacil.v_lotofacil_resultado_grupo_6_bolas AS
  SELECT
    ltf_id.grp_id,
    bola1,
    bola2,
    bola3,
    bola4,
    bola5,
    bola6,
    count(ltf_res.grp_id) AS qt_vezes
  FROM lotofacil.lotofacil_id_grupo_6_bolas ltf_id
    LEFT JOIN lotofacil.lotofacil_resultado_grupo_6_bolas ltf_res
      ON ltf_id.grp_id = ltf_res.grp_id
  GROUP BY ltf_id.grp_id, bola1, bola2, bola3, bola4, bola5, bola6
  ORDER BY qt_vezes DESC;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_grupo_7_bolas;
CREATE VIEW lotofacil.v_lotofacil_resultado_grupo_7_bolas AS
  SELECT
    ltf_id.grp_id,
    bola1,
    bola2,
    bola3,
    bola4,
    bola5,
    bola6,
    bola7,
    count(ltf_res.grp_id) AS qt_vezes
  FROM lotofacil.lotofacil_id_grupo_7_bolas ltf_id
    LEFT JOIN lotofacil.lotofacil_resultado_grupo_7_bolas ltf_res
      ON ltf_id.grp_id = ltf_res.grp_id
  GROUP BY ltf_id.grp_id, bola1, bola2, bola3, bola4, bola5, bola6, bola7
  ORDER BY qt_vezes DESC;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_grupo_8_bolas;
CREATE VIEW lotofacil.v_lotofacil_resultado_grupo_8_bolas AS
  SELECT
    ltf_id.grp_id,
    bola1,
    bola2,
    bola3,
    bola4,
    bola5,
    bola6,
    bola7,
    bola8,
    count(ltf_res.grp_id) AS qt_vezes
  FROM lotofacil.lotofacil_id_grupo_8_bolas ltf_id
    LEFT JOIN lotofacil.lotofacil_resultado_grupo_8_bolas ltf_res
      ON ltf_id.grp_id = ltf_res.grp_id
  GROUP BY ltf_id.grp_id, bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8
  ORDER BY qt_vezes DESC;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_grupo_9_bolas;
CREATE VIEW lotofacil.v_lotofacil_resultado_grupo_9_bolas AS
  SELECT
    ltf_id.grp_id,
    bola1,
    bola2,
    bola3,
    bola4,
    bola5,
    bola6,
    bola7,
    bola8,
    bola9,
    count(ltf_res.grp_id) AS qt_vezes
  FROM lotofacil.lotofacil_id_grupo_9_bolas ltf_id
    LEFT JOIN lotofacil.lotofacil_resultado_grupo_9_bolas ltf_res
      ON ltf_id.grp_id = ltf_res.grp_id
  GROUP BY ltf_id.grp_id, bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9
  ORDER BY qt_vezes DESC;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_grupo_10_bolas;
CREATE VIEW lotofacil.v_lotofacil_resultado_grupo_10_bolas AS
  SELECT
    ltf_id.grp_id,
    bola1,
    bola2,
    bola3,
    bola4,
    bola5,
    bola6,
    bola7,
    bola8,
    bola9,
    bola10,
    count(ltf_res.grp_id) AS qt_vezes
  FROM lotofacil.lotofacil_id_grupo_10_bolas ltf_id
    LEFT JOIN lotofacil.lotofacil_resultado_grupo_10_bolas ltf_res
      ON ltf_id.grp_id = ltf_res.grp_id
  GROUP BY ltf_id.grp_id, bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9, bola10
  ORDER BY qt_vezes DESC;

