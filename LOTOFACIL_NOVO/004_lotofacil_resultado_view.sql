/*
  Cria as tabelas, que terão os campos id consolidados, pra ficar melhor o carregamento ao chamar as views.
 */

/**
  Par x Ímpar, agrupado, por id par x impar.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_par_impar_agrupado;
CREATE TABLE lotofacil.lotofacil_id_par_impar_agrupado (
  par_impar_id SMALLINT NOT NULL,
  qt_vezes     INTEGER  NOT NULL,

  CONSTRAINT par_impar_agrupado_fk FOREIGN KEY (par_impar_id) REFERENCES lotofacil.lotofacil_id_par_impar (par_impar_id)
);
/**
  Script pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_par_impar_agrupado;
INSERT INTO lotofacil.lotofacil_id_par_impar_agrupado (par_impar_id, qt_vezes)
  SELECT
    par_impar_id,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY par_impar_id
  ORDER BY par_impar_id;
/**
  Par x Ímpar, agrupado, por id par x impar e por quantidade de bolas.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_par_impar_agrupado_por_qt;
CREATE TABLE lotofacil.lotofacil_id_par_impar_agrupado_por_qt (
  par_impar_id SMALLINT NOT NULL,
  ltf_qt       SMALLINT NOT NULL CHECK (ltf_qt IN (15, 16, 17, 18)),
  qt_vezes     INTEGER  NOT NULL,
  CONSTRAINT par_impar_agrupado_por_qt_fk FOREIGN KEY (par_impar_id) REFERENCES lotofacil.lotofacil_id_par_impar (par_impar_id)
);

/*
  Script sql pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_par_impar_agrupado_por_qt;
INSERT INTO lotofacil.lotofacil_id_par_impar_agrupado_por_qt (par_impar_id, ltf_qt, qt_vezes)
  SELECT
    par_impar_id,
    ltf_qt,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY par_impar_id, ltf_qt
  ORDER BY par_impar_id;

/*
  ************************************************************************
      PRIMO X NÃO PRIMO
  ************************************************************************
 */

/**
  primo x nao_primo, agrupado, por id primo x nao_primo.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_primo_agrupado;
CREATE TABLE lotofacil.lotofacil_id_primo_agrupado (
  prm_id   SMALLINT NOT NULL,
  qt_vezes INTEGER  NOT NULL,

  CONSTRAINT primo_agrupado_fk FOREIGN KEY (prm_id) REFERENCES lotofacil.lotofacil_id_primo (prm_id)
);
/**
  Script pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_primo_agrupado;
INSERT INTO lotofacil.lotofacil_id_primo_agrupado (prm_id, qt_vezes)
  SELECT
    prm_id,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY prm_id
  ORDER BY prm_id;
/**
  primo x nao_primo, agrupado, por id primo x nao_primo e por quantidade de bolas.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_primo_agrupado_por_qt;
CREATE TABLE lotofacil.lotofacil_id_primo_agrupado_por_qt (
  prm_id   SMALLINT NOT NULL,
  ltf_qt   SMALLINT NOT NULL CHECK (ltf_qt IN (15, 16, 17, 18)),
  qt_vezes INTEGER  NOT NULL,
  CONSTRAINT primo_agrupado_por_qt_fk FOREIGN KEY (prm_id) REFERENCES lotofacil.lotofacil_id_primo (prm_id)
);

/*
  Script sql pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_primo_agrupado_por_qt;
INSERT INTO lotofacil.lotofacil_id_primo_agrupado_por_qt (prm_id, ltf_qt, qt_vezes)
  SELECT
    prm_id,
    ltf_qt,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY prm_id, ltf_qt
  ORDER BY prm_id;

/*
  ************************************************************************
      EXTERNO X ÍNTERNO.
  ************************************************************************
 */
/**
  externo x Interno, agrupado, por id externo x interno.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_externo_interno_agrupado;
CREATE TABLE lotofacil.lotofacil_id_externo_interno_agrupado (
  ext_int_id SMALLINT NOT NULL,
  qt_vezes   INTEGER  NOT NULL,

  CONSTRAINT externo_interno_agrupado_fk FOREIGN KEY (ext_int_id) REFERENCES lotofacil.lotofacil_id_externo_interno (ext_int_id)
);
/**
  Script pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_externo_interno_agrupado;
INSERT INTO lotofacil.lotofacil_id_externo_interno_agrupado (ext_int_id, qt_vezes)
  SELECT
    ext_int_id,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY ext_int_id
  ORDER BY ext_int_id;
/**
  externo x Interno, agrupado, por id externo x interno e por quantidade de bolas.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_externo_interno_agrupado_por_qt;
CREATE TABLE lotofacil.lotofacil_id_externo_interno_agrupado_por_qt (
  ext_int_id SMALLINT NOT NULL,
  ltf_qt     SMALLINT NOT NULL CHECK (ltf_qt IN (15, 16, 17, 18)),
  qt_vezes   INTEGER  NOT NULL,
  CONSTRAINT externo_interno_agrupado_por_qt_fk FOREIGN KEY (ext_int_id) REFERENCES lotofacil.lotofacil_id_externo_interno (ext_int_id)
);

/*
  Script sql pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_externo_interno_agrupado_por_qt;
INSERT INTO lotofacil.lotofacil_id_externo_interno_agrupado_por_qt (ext_int_id, ltf_qt, qt_vezes)
  SELECT
    ext_int_id,
    ltf_qt,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY ext_int_id, ltf_qt
  ORDER BY ext_int_id;


/*
  Horizontal.
 */
/**
  horizontal, agrupado, por id horizontal.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_horizontal_agrupado;
CREATE TABLE lotofacil.lotofacil_id_horizontal_agrupado (
  hrz_id   SMALLINT NOT NULL,
  qt_vezes INTEGER  NOT NULL,

  CONSTRAINT horizontal_agrupado_fk FOREIGN KEY (hrz_id) REFERENCES lotofacil.lotofacil_id_horizontal (hrz_id)
);
/**
  Script pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_horizontal_agrupado;
INSERT INTO lotofacil.lotofacil_id_horizontal_agrupado (hrz_id, qt_vezes)
  SELECT
    hrz_id,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY hrz_id
  ORDER BY hrz_id;
/**
  horizontal, agrupado, por id horizontal e por quantidade de bolas.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_horizontal_agrupado_por_qt;
CREATE TABLE lotofacil.lotofacil_id_horizontal_agrupado_por_qt (
  hrz_id   SMALLINT NOT NULL,
  ltf_qt   SMALLINT NOT NULL CHECK (ltf_qt IN (15, 16, 17, 18)),
  qt_vezes INTEGER  NOT NULL,
  CONSTRAINT horizontal_agrupado_por_qt_fk FOREIGN KEY (hrz_id) REFERENCES lotofacil.lotofacil_id_horizontal (hrz_id)
);

/*
  Script sql pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_horizontal_agrupado_por_qt;
INSERT INTO lotofacil.lotofacil_id_horizontal_agrupado_por_qt (hrz_id, ltf_qt, qt_vezes)
  SELECT
    hrz_id,
    ltf_qt,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY hrz_id, ltf_qt
  ORDER BY hrz_id;

/**
  Vertical.
 */
/**
  vertical, agrupado, por id vertical.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_vertical_agrupado;
CREATE TABLE lotofacil.lotofacil_id_vertical_agrupado (
  vrt_id   SMALLINT NOT NULL,
  qt_vezes INTEGER  NOT NULL,

  CONSTRAINT vertical_agrupado_fk FOREIGN KEY (vrt_id) REFERENCES lotofacil.lotofacil_id_vertical (vrt_id)
);
/**
  Script pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_vertical_agrupado;
INSERT INTO lotofacil.lotofacil_id_vertical_agrupado (vrt_id, qt_vezes)
  SELECT
    vrt_id,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY vrt_id
  ORDER BY vrt_id;
/**
  vertical, agrupado, por id vertical e por quantidade de bolas.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_vertical_agrupado_por_qt;
CREATE TABLE lotofacil.lotofacil_id_vertical_agrupado_por_qt (
  vrt_id   SMALLINT NOT NULL,
  ltf_qt   SMALLINT NOT NULL CHECK (ltf_qt IN (15, 16, 17, 18)),
  qt_vezes NUMERIC  NOT NULL,
  CONSTRAINT vertical_agrupado_por_qt_fk FOREIGN KEY (vrt_id) REFERENCES lotofacil.lotofacil_id_vertical (vrt_id)
);

/*
  Script sql pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_vertical_agrupado_por_qt;
INSERT INTO lotofacil.lotofacil_id_vertical_agrupado_por_qt (vrt_id, ltf_qt, qt_vezes)
  SELECT
    vrt_id,
    ltf_qt,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY vrt_id, ltf_qt
  ORDER BY vrt_id;

/**
  Diagonal esquerda.
 */
/**
  diagonal esquerda, agrupado, por id diagonal.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_diagonal_esquerda_agrupado;
CREATE TABLE lotofacil.lotofacil_id_diagonal_esquerda_agrupado (
  dge_id   SMALLINT NOT NULL,
  qt_vezes INTEGER  NOT NULL,

  CONSTRAINT diagonal_esquerda_agrupado_fk FOREIGN KEY (dge_id) REFERENCES lotofacil.lotofacil_id_diagonal_esquerda (dge_id)
);
/**
  Script pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_diagonal_esquerda_agrupado;
INSERT INTO lotofacil.lotofacil_id_diagonal_esquerda_agrupado (dge_id, qt_vezes)
  SELECT
    dge_id,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY dge_id
  ORDER BY dge_id;
/**
  diagonal, agrupado, por id diagonal e por quantidade de bolas.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_diagonal_esquerda_agrupado_por_qt;
CREATE TABLE lotofacil.lotofacil_id_diagonal_esquerda_agrupado_por_qt (
  dge_id   SMALLINT NOT NULL,
  ltf_qt   SMALLINT NOT NULL CHECK (ltf_qt IN (15, 16, 17, 18)),
  qt_vezes INTEGER  NOT NULL,
  CONSTRAINT diagonal_esquerda_agrupado_por_qt_fk FOREIGN KEY (dge_id) REFERENCES lotofacil.lotofacil_id_diagonal_esquerda (dge_id)
);

/*
  Script sql pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_diagonal_esquerda_agrupado_por_qt;
INSERT INTO lotofacil.lotofacil_id_diagonal_esquerda_agrupado_por_qt (dge_id, ltf_qt, qt_vezes)
  SELECT
    dge_id,
    ltf_qt,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY dge_id, ltf_qt
  ORDER BY dge_id;


/**
  Diagonal direita.
 */
/**
  diagonal, agrupado, por id diagonal.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_diagonal_direita_agrupado;
CREATE TABLE lotofacil.lotofacil_id_diagonal_direita_agrupado (
  dgd_id   SMALLINT NOT NULL,
  qt_vezes INTEGER  NOT NULL,

  CONSTRAINT diagonal_direita_agrupado_fk FOREIGN KEY (dgd_id) REFERENCES lotofacil.lotofacil_id_diagonal_direita (dgd_id)
);
/**
  Script pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_diagonal_direita_agrupado;
INSERT INTO lotofacil.lotofacil_id_diagonal_direita_agrupado (dgd_id, qt_vezes)
  SELECT
    dgd_id,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY dgd_id
  ORDER BY dgd_id;
/**
  diagonal, agrupado, por id diagonal e por quantidade de bolas.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_diagonal_direita_agrupado_por_qt;
CREATE TABLE lotofacil.lotofacil_id_diagonal_direita_agrupado_por_qt (
  dgd_id   SMALLINT NOT NULL,
  ltf_qt   SMALLINT NOT NULL CHECK (ltf_qt IN (15, 16, 17, 18)),
  qt_vezes INTEGER  NOT NULL,
  CONSTRAINT diagonal_direita_agrupado_por_qt_fk FOREIGN KEY (dgd_id) REFERENCES lotofacil.lotofacil_id_diagonal_direita (dgd_id)
);

/*
  Script sql pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_diagonal_direita_agrupado_por_qt;
INSERT INTO lotofacil.lotofacil_id_diagonal_direita_agrupado_por_qt (dgd_id, ltf_qt, qt_vezes)
  SELECT
    dgd_id,
    ltf_qt,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY dgd_id, ltf_qt
  ORDER BY dgd_id;


/*
  esquerda_direita.
 */
/**
  esquerda_direita, agrupado, por id esquerda_direita.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_esquerda_direita_agrupado;
CREATE TABLE lotofacil.lotofacil_id_esquerda_direita_agrupado (
  esq_dir_id SMALLINT NOT NULL,
  qt_vezes   INTEGER  NOT NULL,

  CONSTRAINT esquerda_direita_agrupado_fk FOREIGN KEY (esq_dir_id) REFERENCES lotofacil.lotofacil_id_esquerda_direita (esq_dir_id)
);
/**
  Script pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_esquerda_direita_agrupado;
INSERT INTO lotofacil.lotofacil_id_esquerda_direita_agrupado (esq_dir_id, qt_vezes)
  SELECT
    esq_dir_id,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY esq_dir_id
  ORDER BY esq_dir_id;
/**
  esquerda_direita, agrupado, por id esquerda_direita e por quantidade de bolas.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_esquerda_direita_agrupado_por_qt;
CREATE TABLE lotofacil.lotofacil_id_esquerda_direita_agrupado_por_qt (
  esq_dir_id SMALLINT NOT NULL,
  ltf_qt     SMALLINT NOT NULL CHECK (ltf_qt IN (15, 16, 17, 18)),
  qt_vezes   NUMERIC  NOT NULL,
  CONSTRAINT esquerda_direita_agrupado_por_qt_fk FOREIGN KEY (esq_dir_id) REFERENCES lotofacil.lotofacil_id_esquerda_direita (esq_dir_id)
);

/*
  Script sql pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_esquerda_direita_agrupado_por_qt;
INSERT INTO lotofacil.lotofacil_id_esquerda_direita_agrupado_por_qt (esq_dir_id, ltf_qt, qt_vezes)
  SELECT
    esq_dir_id,
    ltf_qt,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY esq_dir_id, ltf_qt
  ORDER BY esq_dir_id;

/*
  superior_inferior.
 */
/**
  superior_inferior, agrupado, por id superior_inferior.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_superior_inferior_agrupado;
CREATE TABLE lotofacil.lotofacil_id_superior_inferior_agrupado (
  sup_inf_id SMALLINT NOT NULL,
  qt_vezes   INTEGER  NOT NULL,

  CONSTRAINT superior_inferior_agrupado_fk FOREIGN KEY (sup_inf_id) REFERENCES lotofacil.lotofacil_id_superior_inferior (sup_inf_id)
);
/**
  Script pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_superior_inferior_agrupado;
INSERT INTO lotofacil.lotofacil_id_superior_inferior_agrupado (sup_inf_id, qt_vezes)
  SELECT
    sup_inf_id,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY sup_inf_id
  ORDER BY sup_inf_id;
/**
  superior_inferior, agrupado, por id superior_inferior e por quantidade de bolas.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_superior_inferior_agrupado_por_qt;
CREATE TABLE lotofacil.lotofacil_id_superior_inferior_agrupado_por_qt (
  sup_inf_id SMALLINT NOT NULL,
  ltf_qt     SMALLINT NOT NULL CHECK (ltf_qt IN (15, 16, 17, 18)),
  qt_vezes   INTEGER  NOT NULL,
  CONSTRAINT superior_inferior_agrupado_por_qt_fk FOREIGN KEY (sup_inf_id) REFERENCES lotofacil.lotofacil_id_superior_inferior (sup_inf_id)
);

/*
  Script sql pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_superior_inferior_agrupado_por_qt;
INSERT INTO lotofacil.lotofacil_id_superior_inferior_agrupado_por_qt (sup_inf_id, ltf_qt, qt_vezes)
  SELECT
    sup_inf_id,
    ltf_qt,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY sup_inf_id, ltf_qt
  ORDER BY sup_inf_id;


/**
  Superior esquerda, inferior direita.
 */
/**
  superior_inferior, agrupado, por id superior_inferior.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_superior_esquerda_inferior_direita_agrupado;
CREATE TABLE lotofacil.lotofacil_id_superior_esquerda_inferior_direita_agrupado (
  sup_esq_inf_dir_id SMALLINT NOT NULL,
  qt_vezes           INTEGER  NOT NULL,

  CONSTRAINT superior_esquerda_inferior_direita_agrupado_fk FOREIGN KEY (sup_esq_inf_dir_id) REFERENCES lotofacil.lotofacil_id_superior_esquerda_inferior_direita (sup_esq_inf_dir_id)
);
/**
  Script pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_superior_esquerda_inferior_direita_agrupado;
INSERT INTO lotofacil.lotofacil_id_superior_esquerda_inferior_direita_agrupado (sup_esq_inf_dir_id, qt_vezes)
  SELECT
    sup_esq_inf_dir_id,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY sup_esq_inf_dir_id
  ORDER BY sup_esq_inf_dir_id;
/**
  superior_inferior, _agrupado, por id superior_inferior e por quantidade de bolas.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_superior_esquerda_inferior_direita_agrupado_por_qt;
CREATE TABLE lotofacil.lotofacil_id_superior_esquerda_inferior_direita_agrupado_por_qt (
  sup_esq_inf_dir_id SMALLINT NOT NULL,
  ltf_qt             SMALLINT NOT NULL CHECK (ltf_qt IN (15, 16, 17, 18)),
  qt_vezes           INTEGER  NOT NULL,
  CONSTRAINT superior_esquerda_inferior_direita_agrupado_por_qt_fk FOREIGN KEY (sup_esq_inf_dir_id) REFERENCES lotofacil.lotofacil_id_superior_esquerda_inferior_direita (sup_esq_inf_dir_id)
);

/*
  Script sql pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_superior_esquerda_inferior_direita_agrupado_por_qt;
INSERT INTO lotofacil.lotofacil_id_superior_esquerda_inferior_direita_agrupado_por_qt (sup_esq_inf_dir_id, ltf_qt, qt_vezes)
  SELECT
    sup_esq_inf_dir_id,
    ltf_qt,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY sup_esq_inf_dir_id, ltf_qt
  ORDER BY sup_esq_inf_dir_id;


/**
  Superior esquerda, inferior direita.
 */
/**
  superior_inferior, _agrupado, por id superior_inferior.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_superior_direita_inferior_esquerda_agrupado;
CREATE TABLE lotofacil.lotofacil_id_superior_direita_inferior_esquerda_agrupado (
  sup_dir_inf_esq_id SMALLINT NOT NULL,
  qt_vezes           INTEGER  NOT NULL,

  CONSTRAINT superior_direita_inferior_esquerda_agrupado_fk FOREIGN KEY (sup_dir_inf_esq_id) REFERENCES lotofacil.lotofacil_id_superior_direita_inferior_esquerda (sup_dir_inf_esq_id)
);
/**
  Script pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_superior_direita_inferior_esquerda_agrupado;
INSERT INTO lotofacil.lotofacil_id_superior_direita_inferior_esquerda_agrupado (sup_dir_inf_esq_id, qt_vezes)
  SELECT
    sup_dir_inf_esq_id,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY sup_dir_inf_esq_id
  ORDER BY sup_dir_inf_esq_id;
/**
  superior_inferior, _agrupado, por id superior_inferior e por quantidade de bolas.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_superior_direita_inferior_esquerda_agrupado_por_qt;
CREATE TABLE lotofacil.lotofacil_id_superior_direita_inferior_esquerda_agrupado_por_qt (
  sup_dir_inf_esq_id SMALLINT NOT NULL,
  ltf_qt             SMALLINT NOT NULL CHECK (ltf_qt IN (15, 16, 17, 18)),
  qt_vezes           INTEGER  NOT NULL,
  CONSTRAINT superior_direita_inferior_esquerda_agrupado_por_qt_fk FOREIGN KEY (sup_dir_inf_esq_id) REFERENCES lotofacil.lotofacil_id_superior_direita_inferior_esquerda (sup_dir_inf_esq_id)
);

/*
  Script sql pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_superior_direita_inferior_esquerda_agrupado_por_qt;
INSERT INTO lotofacil.lotofacil_id_superior_direita_inferior_esquerda_agrupado_por_qt (sup_dir_inf_esq_id, ltf_qt, qt_vezes)
  SELECT
    sup_dir_inf_esq_id,
    ltf_qt,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY sup_dir_inf_esq_id, ltf_qt
  ORDER BY sup_dir_inf_esq_id;


/**
  Cruzeta.
 */
/**
  cruzeta, agrupado, por id cruzeta.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_cruzeta_agrupado;
CREATE TABLE lotofacil.lotofacil_id_cruzeta_agrupado (
  crz_id   SMALLINT NOT NULL,
  qt_vezes INTEGER  NOT NULL,

  CONSTRAINT cruzeta_agrupado_fk FOREIGN KEY (crz_id) REFERENCES lotofacil.lotofacil_id_cruzeta (crz_id)
);
/**
  Script pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_cruzeta_agrupado;
INSERT INTO lotofacil.lotofacil_id_cruzeta_agrupado (crz_id, qt_vezes)
  SELECT
    crz_id,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY crz_id
  ORDER BY crz_id;
/**
  cruzeta, agrupado, por id cruzeta e por quantidade de bolas.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_cruzeta_agrupado_por_qt;
CREATE TABLE lotofacil.lotofacil_id_cruzeta_agrupado_por_qt (
  crz_id   SMALLINT NOT NULL,
  ltf_qt   SMALLINT NOT NULL CHECK (ltf_qt IN (15, 16, 17, 18)),
  qt_vezes INTEGER  NOT NULL,
  CONSTRAINT cruzeta_agrupado_por_qt_fk FOREIGN KEY (crz_id) REFERENCES lotofacil.lotofacil_id_cruzeta (crz_id)
);

/*
  Script sql pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_cruzeta_agrupado_por_qt;
INSERT INTO lotofacil.lotofacil_id_cruzeta_agrupado_por_qt (crz_id, ltf_qt, qt_vezes)
  SELECT
    crz_id,
    ltf_qt,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY crz_id, ltf_qt
  ORDER BY crz_id;


/**
  Losango
 */
/**
  Losango
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_losango_agrupado;
CREATE TABLE lotofacil.lotofacil_id_losango_agrupado (
  lsng_id  SMALLINT NOT NULL,
  qt_vezes INTEGER  NOT NULL,

  CONSTRAINT losango_agrupado_fk FOREIGN KEY (lsng_id) REFERENCES lotofacil.lotofacil_id_losango (lsng_id)
);
/**
  Script pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_losango_agrupado;
INSERT INTO lotofacil.lotofacil_id_losango_agrupado (lsng_id, qt_vezes)
  SELECT
    lsng_id,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY lsng_id
  ORDER BY lsng_id;
/**
  superior_inferior, _agrupado, por id superior_inferior e por quantidade de bolas.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_losango_agrupado_por_qt;
CREATE TABLE lotofacil.lotofacil_id_losango_agrupado_por_qt (
  lsng_id  SMALLINT NOT NULL,
  ltf_qt   SMALLINT NOT NULL CHECK (ltf_qt IN (15, 16, 17, 18)),
  qt_vezes INTEGER  NOT NULL,
  CONSTRAINT losango_agrupado_por_qt_fk FOREIGN KEY (lsng_id) REFERENCES lotofacil.lotofacil_id_losango (lsng_id)
);

/*
  Script sql pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_losango_agrupado_por_qt;
INSERT INTO lotofacil.lotofacil_id_losango_agrupado_por_qt (lsng_id, ltf_qt, qt_vezes)
  SELECT
    lsng_id,
    ltf_qt,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY lsng_id, ltf_qt
  ORDER BY lsng_id;


/**
  quinteto
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_quinteto_agrupado;
CREATE TABLE lotofacil.lotofacil_id_quinteto_agrupado (
  qnt_id   SMALLINT NOT NULL,
  qt_vezes INTEGER  NOT NULL,

  CONSTRAINT quinteto_agrupado_fk FOREIGN KEY (qnt_id) REFERENCES lotofacil.lotofacil_id_quinteto (qnt_id)
);
/**
  Script pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_quinteto_agrupado;
INSERT INTO lotofacil.lotofacil_id_quinteto_agrupado (qnt_id, qt_vezes)
  SELECT
    qnt_id,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY qnt_id
  ORDER BY qnt_id;
/**
  superior_inferior, _agrupado, por id superior_inferior e por quantidade de bolas.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_quinteto_agrupado_por_qt;
CREATE TABLE lotofacil.lotofacil_id_quinteto_agrupado_por_qt (
  qnt_id   SMALLINT NOT NULL,
  ltf_qt   SMALLINT NOT NULL CHECK (ltf_qt IN (15, 16, 17, 18)),
  qt_vezes INTEGER  NOT NULL,
  CONSTRAINT quinteto_agrupado_por_qt_fk FOREIGN KEY (qnt_id) REFERENCES lotofacil.lotofacil_id_quinteto (qnt_id)
);

/*
  Script sql pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_quinteto_agrupado_por_qt;
INSERT INTO lotofacil.lotofacil_id_quinteto_agrupado_por_qt (qnt_id, ltf_qt, qt_vezes)
  SELECT
    qnt_id,
    ltf_qt,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY qnt_id, ltf_qt
  ORDER BY qnt_id;


/**
  triangulo
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_triangulo_agrupado;
CREATE TABLE lotofacil.lotofacil_id_triangulo_agrupado (
  trng_id  SMALLINT NOT NULL,
  qt_vezes integer NOT NULL,

  CONSTRAINT triangulo_agrupado_fk FOREIGN KEY (trng_id) REFERENCES lotofacil.lotofacil_id_triangulo (trng_id)
);
/**
  Script pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_triangulo_agrupado;
INSERT INTO lotofacil.lotofacil_id_triangulo_agrupado (trng_id, qt_vezes)
  SELECT
    trng_id,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY trng_id
  ORDER BY trng_id;
/**
  superior_inferior, _agrupado, por id superior_inferior e por quantidade de bolas.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_triangulo_agrupado_por_qt;
CREATE TABLE lotofacil.lotofacil_id_triangulo_agrupado_por_qt (
  trng_id  SMALLINT NOT NULL,
  ltf_qt   SMALLINT NOT NULL CHECK (ltf_qt IN (15, 16, 17, 18)),
  qt_vezes INTEGER  NOT NULL,
  CONSTRAINT triangulo_agrupado_por_qt_fk FOREIGN KEY (trng_id) REFERENCES lotofacil.lotofacil_id_triangulo (trng_id)
);

/*
  Script sql pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_triangulo_agrupado_por_qt;
INSERT INTO lotofacil.lotofacil_id_triangulo_agrupado_por_qt (trng_id, ltf_qt, qt_vezes)
  SELECT
    trng_id,
    ltf_qt,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY trng_id, ltf_qt
  ORDER BY trng_id;


/**
  trio, agrupado, por id trio.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_trio_agrupado;
CREATE TABLE lotofacil.lotofacil_id_trio_agrupado (
  trio_id  SMALLINT NOT NULL,
  qt_vezes INTEGER  NOT NULL,

  CONSTRAINT trio_agrupado_fk FOREIGN KEY (trio_id) REFERENCES lotofacil.lotofacil_id_trio (trio_id)
);
/**
  Script pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_trio_agrupado;
INSERT INTO lotofacil.lotofacil_id_trio_agrupado (trio_id, qt_vezes)
  SELECT
    trio_id,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY trio_id
  ORDER BY trio_id;
/**
  trio, agrupado, por id trio e por quantidade de bolas.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_trio_agrupado_por_qt;
CREATE TABLE lotofacil.lotofacil_id_trio_agrupado_por_qt (
  trio_id  SMALLINT NOT NULL,
  ltf_qt   SMALLINT NOT NULL CHECK (ltf_qt IN (15, 16, 17, 18)),
  qt_vezes INTEGER  NOT NULL,
  CONSTRAINT trio_agrupado_por_qt_fk FOREIGN KEY (trio_id) REFERENCES lotofacil.lotofacil_id_trio (trio_id)
);

/*
  Script sql pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_trio_agrupado_por_qt;
INSERT INTO lotofacil.lotofacil_id_trio_agrupado_por_qt (trio_id, ltf_qt, qt_vezes)
  SELECT
    trio_id,
    ltf_qt,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY trio_id, ltf_qt
  ORDER BY trio_id;


/**
  x1_x2
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_x1_x2_agrupado;
CREATE TABLE lotofacil.lotofacil_id_x1_x2_agrupado (
  x1_x2_id SMALLINT NOT NULL,
  qt_vezes INTEGER  NOT NULL,

  CONSTRAINT x1_x2_agrupado_fk FOREIGN KEY (x1_x2_id) REFERENCES lotofacil.lotofacil_id_x1_x2 (x1_x2_id)
);
/**
  Script pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_x1_x2_agrupado;
INSERT INTO lotofacil.lotofacil_id_x1_x2_agrupado (x1_x2_id, qt_vezes)
  SELECT
    x1_x2_id,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY x1_x2_id
  ORDER BY x1_x2_id;
/**
  superior_inferior, _agrupado, por id superior_inferior e por quantidade de bolas.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_x1_x2_agrupado_por_qt;
CREATE TABLE lotofacil.lotofacil_id_x1_x2_agrupado_por_qt (
  x1_x2_id SMALLINT NOT NULL,
  ltf_qt   SMALLINT NOT NULL CHECK (ltf_qt IN (15, 16, 17, 18)),
  qt_vezes INTEGER  NOT NULL,
  CONSTRAINT x1_x2_agrupado_por_qt_fk FOREIGN KEY (x1_x2_id) REFERENCES lotofacil.lotofacil_id_x1_x2 (x1_x2_id)
);

/*
  Script sql pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_x1_x2_agrupado_por_qt;
INSERT INTO lotofacil.lotofacil_id_x1_x2_agrupado_por_qt (x1_x2_id, ltf_qt, qt_vezes)
  SELECT
    x1_x2_id,
    ltf_qt,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY x1_x2_id, ltf_qt
  ORDER BY x1_x2_id;


/**
  dezena
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_dz_agrupado;
CREATE TABLE lotofacil.lotofacil_id_dz_agrupado (
  dz_id    SMALLINT NOT NULL,
  qt_vezes INTEGER  NOT NULL,

  CONSTRAINT dz_agrupado_fk FOREIGN KEY (dz_id) REFERENCES lotofacil.lotofacil_id_dezena (dz_id)
);
/**
  Script pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_dz_agrupado;
INSERT INTO lotofacil.lotofacil_id_dz_agrupado (dz_id, qt_vezes)
  SELECT
    dz_id,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY dz_id
  ORDER BY dz_id;
/**
  superior_inferior, _agrupado, por id superior_inferior e por quantidade de bolas.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_dz_agrupado_por_qt;
CREATE TABLE lotofacil.lotofacil_id_dz_agrupado_por_qt (
  dz_id    SMALLINT NOT NULL,
  ltf_qt   SMALLINT NOT NULL CHECK (ltf_qt IN (15, 16, 17, 18)),
  qt_vezes INTEGER  NOT NULL,
  CONSTRAINT dz_agrupado_por_qt_fk FOREIGN KEY (dz_id) REFERENCES lotofacil.lotofacil_id_dezena (dz_id)
);

/*
  Script sql pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_dz_agrupado_por_qt;
INSERT INTO lotofacil.lotofacil_id_dz_agrupado_por_qt (dz_id, ltf_qt, qt_vezes)
  SELECT
    dz_id,
    ltf_qt,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY dz_id, ltf_qt
  ORDER BY dz_id;


/**
  unidade
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_unidade_agrupado;
CREATE TABLE lotofacil.lotofacil_id_unidade_agrupado (
  un_id    INTEGER NOT NULL,
  qt_vezes INTEGER NOT NULL,

  CONSTRAINT unidade_agrupado_fk FOREIGN KEY (un_id) REFERENCES lotofacil.lotofacil_id_unidade (un_id)
);
/**
  Script pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_unidade_agrupado;
INSERT INTO lotofacil.lotofacil_id_unidade_agrupado (un_id, qt_vezes)
  SELECT
    un_id,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY un_id
  ORDER BY un_id;
/**
  superior_inferior, _agrupado, por id superior_inferior e por quantidade de bolas.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_unidade_agrupado_por_qt;
CREATE TABLE lotofacil.lotofacil_id_unidade_agrupado_por_qt (
  un_id    INTEGER  NOT NULL,
  ltf_qt   SMALLINT NOT NULL CHECK (ltf_qt IN (15, 16, 17, 18)),
  qt_vezes INTEGER  NOT NULL,
  CONSTRAINT unidade_agrupado_por_qt_fk FOREIGN KEY (un_id) REFERENCES lotofacil.lotofacil_id_unidade (un_id)
);

/*
  Script sql pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_unidade_agrupado_por_qt;
INSERT INTO lotofacil.lotofacil_id_unidade_agrupado_por_qt (un_id, ltf_qt, qt_vezes)
  SELECT
    un_id,
    ltf_qt,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY un_id, ltf_qt
  ORDER BY un_id;


/**
  algarismo
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_algarismo_agrupado;
CREATE TABLE lotofacil.lotofacil_id_algarismo_agrupado (
  alg_id   integer NOT NULL,
  qt_vezes INTEGER  NOT NULL,

  CONSTRAINT algarismo_agrupado_fk FOREIGN KEY (alg_id) REFERENCES lotofacil.lotofacil_id_algarismo (alg_id)
);
/**
  Script pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_algarismo_agrupado;
INSERT INTO lotofacil.lotofacil_id_algarismo_agrupado (alg_id, qt_vezes)
  SELECT
    alg_id,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY alg_id
  ORDER BY alg_id;
/**
  superior_inferior, _agrupado, por id superior_inferior e por quantidade de bolas.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_algarismo_agrupado_por_qt;
CREATE TABLE lotofacil.lotofacil_id_algarismo_agrupado_por_qt (
  alg_id   INTEGER  NOT NULL,
  ltf_qt   SMALLINT NOT NULL CHECK (ltf_qt IN (15, 16, 17, 18)),
  qt_vezes INTEGER  NOT NULL,
  CONSTRAINT algarismo_agrupado_por_qt_fk FOREIGN KEY (alg_id) REFERENCES lotofacil.lotofacil_id_algarismo (alg_id)
);

/*
  Script sql pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_algarismo_agrupado_por_qt;
INSERT INTO lotofacil.lotofacil_id_algarismo_agrupado_por_qt (alg_id, ltf_qt, qt_vezes)
  SELECT
    alg_id,
    ltf_qt,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY alg_id, ltf_qt
  ORDER BY alg_id;


/**
  soma_de_bolas
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_soma_de_bolas_agrupado;
CREATE TABLE lotofacil.lotofacil_id_soma_de_bolas_agrupado (
  sm_bolas_id SMALLINT NOT NULL,
  qt_vezes    INTEGER  NOT NULL,

  CONSTRAINT soma_de_bolas_agrupado_fk FOREIGN KEY (sm_bolas_id) REFERENCES lotofacil.lotofacil_id_soma_de_bolas (sm_bolas_id)
);
/**
  Script pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_soma_de_bolas_agrupado;
INSERT INTO lotofacil.lotofacil_id_soma_de_bolas_agrupado (sm_bolas_id, qt_vezes)
  SELECT
    sm_bolas_id,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY sm_bolas_id
  ORDER BY sm_bolas_id;
/**
  superior_inferior, _agrupado, por id superior_inferior e por quantidade de bolas.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_soma_de_bolas_agrupado_por_qt;
CREATE TABLE lotofacil.lotofacil_id_soma_de_bolas_agrupado_por_qt (
  sm_bolas_id SMALLINT NOT NULL,
  ltf_qt      SMALLINT NOT NULL CHECK (ltf_qt IN (15, 16, 17, 18)),
  qt_vezes    INTEGER  NOT NULL,
  CONSTRAINT soma_de_bolas_agrupado_por_qt_fk FOREIGN KEY (sm_bolas_id) REFERENCES lotofacil.lotofacil_id_soma_de_bolas (sm_bolas_id)
);

/*
  Script sql pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_soma_de_bolas_agrupado_por_qt;
INSERT INTO lotofacil.lotofacil_id_soma_de_bolas_agrupado_por_qt (sm_bolas_id, ltf_qt, qt_vezes)
  SELECT
    sm_bolas_id,
    ltf_qt,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY sm_bolas_id, ltf_qt
  ORDER BY sm_bolas_id;


/**
  soma_algarismo
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_soma_algarismo_agrupado;
CREATE TABLE lotofacil.lotofacil_id_soma_algarismo_agrupado (
  sm_alg_id SMALLINT NOT NULL,
  qt_vezes  INTEGER  NOT NULL,

  CONSTRAINT soma_algarismo_agrupado_fk FOREIGN KEY (sm_alg_id) REFERENCES lotofacil.lotofacil_id_soma_algarismo (sm_alg_id)
);
/**
  Script pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_soma_algarismo_agrupado;
INSERT INTO lotofacil.lotofacil_id_soma_algarismo_agrupado (sm_alg_id, qt_vezes)
  SELECT
    sm_alg_id,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY sm_alg_id
  ORDER BY sm_alg_id;
/**
  superior_inferior, _agrupado, por id superior_inferior e por quantidade de bolas.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_soma_algarismo_agrupado_por_qt;
CREATE TABLE lotofacil.lotofacil_id_soma_algarismo_agrupado_por_qt (
  sm_alg_id SMALLINT NOT NULL,
  ltf_qt    SMALLINT NOT NULL CHECK (ltf_qt IN (15, 16, 17, 18)),
  qt_vezes  INTEGER  NOT NULL,
  CONSTRAINT soma_algarismo_agrupado_por_qt_fk FOREIGN KEY (sm_alg_id) REFERENCES lotofacil.lotofacil_id_soma_algarismo (sm_alg_id)
);

/*
  Script sql pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_soma_algarismo_agrupado_por_qt;
INSERT INTO lotofacil.lotofacil_id_soma_algarismo_agrupado_por_qt (sm_alg_id, ltf_qt, qt_vezes)
  SELECT
    sm_alg_id,
    ltf_qt,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY sm_alg_id, ltf_qt
  ORDER BY sm_alg_id;


/**
  linha_coluna
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_linha_coluna_agrupado;
CREATE TABLE lotofacil.lotofacil_id_linha_coluna_agrupado (
  lc_id    integer NOT NULL,
  qt_vezes INTEGER  NOT NULL,

  CONSTRAINT linha_coluna_agrupado_fk FOREIGN KEY (lc_id) REFERENCES lotofacil.lotofacil_id_linha_coluna (lc_id)
);
/**
  Script pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_linha_coluna_agrupado;
INSERT INTO lotofacil.lotofacil_id_linha_coluna_agrupado (lc_id, qt_vezes)
  SELECT
    lc_id,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY lc_id
  ORDER BY lc_id;
/**
  superior_inferior, _agrupado, por id superior_inferior e por quantidade de bolas.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_id_linha_coluna_agrupado_por_qt;
CREATE TABLE lotofacil.lotofacil_id_linha_coluna_agrupado_por_qt (
  lc_id    integer NOT NULL,
  ltf_qt   SMALLINT NOT NULL CHECK (ltf_qt IN (15, 16, 17, 18)),
  qt_vezes INTEGER  NOT NULL,
  CONSTRAINT linha_coluna_agrupado_por_qt_fk FOREIGN KEY (lc_id) REFERENCES lotofacil.lotofacil_id_linha_coluna (lc_id)
);

/*
  Script sql pra popular a tabela.
 */
DELETE FROM lotofacil.lotofacil_id_linha_coluna_agrupado_por_qt;
INSERT INTO lotofacil.lotofacil_id_linha_coluna_agrupado_por_qt (lc_id, ltf_qt, qt_vezes)
  SELECT
    lc_id,
    ltf_qt,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_id
  GROUP BY lc_id, ltf_qt
  ORDER BY lc_id;




/**
  Apaga toda as tabelas, que serão usadas no view.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_horizontal;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_horizontal_detalhado;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_vertical;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_vertical_detalhado;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_diagonal;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_diagonal_detalhado;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_cruzeta;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_cruzeta_detalhado;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_quarteto;


DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_externo_interno;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_externo_interno_detalhado;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_par_impar;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_par_impar_detalhado;

/*
  Nas views abaixo, anteriormente, cada tipo de combinação do resultado da lotofacil
  tinha uma tabela específica, por exemplo,
  pra resultados das combinações pares e impares, os dados, eram recuperados da tabela
  lotofacil_resultado_par_impar;
  pra resultados das combinações externo x internos, os dados, eram recuperados da tabela
  lotofacil_resultado_externo_interno.
  Notei, que praticamente, estou fazendo várias tabelas separadas que poderiam estar juntas neste caso.
  Então, foi criada a tabela lotofacil.lotofacil_resultado_id pra cada combinação existe
  um unico campo.
  Então, nos visualizações abaixo que serão criadas, irei agrupar por cada tipo de combinação
  em todas as combinações possíveis da lotofacil e comparar com os resultado dos jogos.
 */

/**
  Par x Ímpar.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_par_impar;
CREATE VIEW lotofacil.v_lotofacil_resultado_par_impar AS
  SELECT
    concurso,
    par,
    impar
  FROM lotofacil.lotofacil_resultado_id ltf_res, lotofacil.lotofacil_id_par_impar ltf_par_impar
  WHERE ltf_res.par_impar_id = ltf_par_impar.par_impar_id
  ORDER BY concurso DESC;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_par_impar_agrupado;
CREATE VIEW lotofacil.v_lotofacil_resultado_par_impar_agrupado AS
  SELECT
    ltf_agrupado.par_impar_id,
    par,
    impar,
    ltf_agrupado.qt_vezes       AS ltf_qt,
    count(ltf_res.par_impar_id) AS res_qt
  FROM lotofacil.lotofacil_id_par_impar_agrupado_por_qt ltf_agrupado
    LEFT JOIN lotofacil.lotofacil_id_par_impar ltf_id
      ON ltf_agrupado.par_impar_id = ltf_id.par_impar_id
    LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
      ON ltf_id.par_impar_id = ltf_res.par_impar_id
  WHERE ltf_agrupado.ltf_qt = 15
  GROUP BY ltf_agrupado.par_impar_id, par, impar, ltf_agrupado.qt_vezes
  ORDER BY res_qt DESC, ltf_qt DESC, par, impar;

/**
  Retornar a combinação par x impar agrupado, baseado em um intervalo de valores.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_par_impar_agrupado_intervalo_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_par_impar_agrupado_intervalo_concurso(concursoInicial NUMERIC,
                                                                                       concursoFinal   NUMERIC)
  RETURNS TABLE(par_impar_id NUMERIC, par NUMERIC, impar NUMERIC, ltf_qt NUMERIC, res_qt NUMERIC)

AS
$$
BEGIN
  RETURN QUERY SELECT
                 ltf_agrupado.par_impar_id,
                 ltf_id.par,
                 ltf_id.impar,
                 ltf_agrupado.qt_vezes :: NUMERIC       AS ltf_qt,
                 count(ltf_res.par_impar_id) :: NUMERIC AS res_qt
               FROM (lotofacil.lotofacil_id_par_impar_agrupado_por_qt ltf_agrupado
                 LEFT JOIN lotofacil.lotofacil_id_par_impar ltf_id
                   ON ltf_agrupado.par_impar_id = ltf_id.par_impar_id)
                 LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
                   ON (
                   ltf_agrupado.par_impar_id = ltf_res.par_impar_id AND
                   ltf_res.concurso >= concursoInicial AND ltf_res.concurso <= concursoFinal
                   )
               WHERE ltf_agrupado.ltf_qt = 15

               GROUP BY ltf_agrupado.par_impar_id, ltf_id.par, ltf_id.impar, ltf_agrupado.qt_vezes
               ORDER BY res_qt DESC, ltf_qt DESC, par, impar;
END;
$$ LANGUAGE plpgsql;


DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_primo_nao_primo;
CREATE VIEW lotofacil.v_lotofacil_resultado_primo_nao_primo AS
  SELECT
    concurso,
    primo,
    nao_primo
  FROM lotofacil.lotofacil_resultado_id ltf_res, lotofacil.lotofacil_id_primo ltf_primo_nao_primo
  WHERE ltf_res.prm_id = ltf_primo_nao_primo.prm_id
  ORDER BY concurso DESC;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_primo_nao_primo_agrupado;
CREATE VIEW lotofacil.v_lotofacil_resultado_primo_nao_primo_agrupado AS
  SELECT
    ltf_agrupado.prm_id,
    primo,
    nao_primo,
    ltf_agrupado.qt_vezes AS ltf_qt,
    count(ltf_res.prm_id) AS res_qt
  FROM lotofacil.lotofacil_id_primo_agrupado_por_qt ltf_agrupado
    LEFT JOIN lotofacil.lotofacil_id_primo ltf_id
      ON ltf_agrupado.prm_id = ltf_id.prm_id
    LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
      ON ltf_id.prm_id = ltf_res.prm_id
  WHERE ltf_agrupado.ltf_qt = 15
  GROUP BY ltf_agrupado.prm_id, primo, nao_primo, ltf_agrupado.qt_vezes
  ORDER BY res_qt DESC, ltf_qt DESC, primo, nao_primo;

/**
  Nome inicial alterado de fn_lotofacil, pra fn_ltf.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_primo_nao_primo_agrupado_intervalo_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_primo_nao_primo_agrupado_intervalo_concurso(concursoInicial NUMERIC,
                                                                                             concursoFinal   NUMERIC)
  RETURNS TABLE(prm_id NUMERIC, primo NUMERIC, nao_primo NUMERIC, ltf_qt NUMERIC, res_qt NUMERIC)
AS
$$
BEGIN
  RETURN QUERY SELECT
                 ltf_agrupado.prm_id :: NUMERIC,
                 ltf_id.primo :: NUMERIC,
                 ltf_id.nao_primo :: NUMERIC,
                 ltf_agrupado.qt_vezes :: NUMERIC     AS ltf_qt,
                 count(ltf_res.ext_int_id) :: NUMERIC AS res_qt
               FROM lotofacil.lotofacil_id_primo_agrupado_por_qt ltf_agrupado
                 LEFT JOIN lotofacil.lotofacil_id_primo ltf_id
                   ON ltf_agrupado.prm_id = ltf_id.prm_id
                 LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
                   ON (ltf_id.prm_id = ltf_res.prm_id AND
                       ltf_res.concurso >= concursoInicial AND ltf_res.concurso <= concursoFinal)
               WHERE ltf_agrupado.ltf_qt = 15
               GROUP BY ltf_agrupado.prm_id, ltf_id.primo, ltf_id.nao_primo, ltf_agrupado.qt_vezes
               ORDER BY res_qt DESC, ltf_qt DESC, ltf_id.primo, ltf_id.nao_primo;
END;
$$ LANGUAGE plpgsql;


/**
  Externo x Interno.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_externo_interno;
CREATE VIEW lotofacil.v_lotofacil_resultado_externo_interno AS
  SELECT
    concurso,
    externo,
    interno
  FROM lotofacil.lotofacil_resultado_id ltf_res, lotofacil.lotofacil_id_externo_interno ltf_externo_interno
  WHERE ltf_res.ext_int_id = ltf_externo_interno.ext_int_id
  ORDER BY concurso DESC;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_externo_interno_agrupado;
CREATE VIEW lotofacil.v_lotofacil_resultado_externo_interno_agrupado AS
  SELECT
    ltf_agrupado.ext_int_id,
    externo,
    interno,
    ltf_agrupado.qt_vezes     AS ltf_qt,
    count(ltf_res.ext_int_id) AS res_qt
  FROM lotofacil.lotofacil_id_externo_interno_agrupado_por_qt ltf_agrupado
    LEFT JOIN lotofacil.lotofacil_id_externo_interno ltf_id
      ON ltf_agrupado.ext_int_id = ltf_id.ext_int_id
    LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
      ON ltf_id.ext_int_id = ltf_res.ext_int_id
  WHERE ltf_agrupado.ltf_qt = 15
  GROUP BY ltf_agrupado.ext_int_id, externo, interno, ltf_agrupado.qt_vezes
  ORDER BY res_qt DESC, ltf_qt DESC, externo, interno;

/**
  Retornar a combinação externo x interno agrupado, baseado em um intervalo de valores.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_externo_interno_agrupado_intervalo_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_externo_interno_agrupado_intervalo_concurso(concursoInicial NUMERIC,
                                                                                             concursoFinal   NUMERIC)
  RETURNS TABLE(ext_int_id NUMERIC, externo NUMERIC, interno NUMERIC, ltf_qt NUMERIC, res_qt NUMERIC)
AS
$$
BEGIN
  RETURN QUERY SELECT
                 ltf_agrupado.ext_int_id :: NUMERIC,
                 ltf_id.externo :: NUMERIC,
                 ltf_id.interno :: NUMERIC,
                 ltf_agrupado.qt_vezes :: NUMERIC     AS ltf_qt,
                 count(ltf_res.ext_int_id) :: NUMERIC AS res_qt
               FROM lotofacil.lotofacil_id_externo_interno_agrupado_por_qt ltf_agrupado
                 LEFT JOIN lotofacil.lotofacil_id_externo_interno ltf_id
                   ON ltf_agrupado.ext_int_id = ltf_id.ext_int_id
                 LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
                   ON (ltf_id.ext_int_id = ltf_res.ext_int_id AND
                       ltf_res.concurso >= concursoInicial AND ltf_res.concurso <= concursoFinal)
               WHERE ltf_agrupado.ltf_qt = 15
               GROUP BY ltf_agrupado.ext_int_id, ltf_id.externo, ltf_id.interno, ltf_agrupado.qt_vezes
               ORDER BY res_qt DESC, ltf_qt DESC, externo, interno;
END;
$$ LANGUAGE plpgsql;


/**
  Horizontal.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_horizontal;
CREATE VIEW lotofacil.v_lotofacil_resultado_horizontal AS
  SELECT
    concurso,
    hrz_1,
    hrz_2,
    hrz_3,
    hrz_4,
    hrz_5
  FROM lotofacil.lotofacil_resultado_id ltf_res, lotofacil.lotofacil_id_horizontal ltf_horizontal
  WHERE ltf_res.hrz_id = ltf_horizontal.hrz_id
  ORDER BY concurso DESC;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_horizontal_agrupado;
CREATE VIEW lotofacil.v_lotofacil_resultado_horizontal_agrupado AS
  SELECT
    ltf_agrupado.hrz_id,
    hrz_1,
    hrz_2,
    hrz_3,
    hrz_4,
    hrz_5,
    ltf_agrupado.qt_vezes AS ltf_qt,
    count(ltf_res.hrz_id) AS res_qt
  FROM lotofacil.lotofacil_id_horizontal_agrupado_por_qt ltf_agrupado
    LEFT JOIN lotofacil.lotofacil_id_horizontal ltf_id
      ON ltf_agrupado.hrz_id = ltf_id.hrz_id
    LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
      ON ltf_id.hrz_id = ltf_res.hrz_id
  WHERE ltf_agrupado.ltf_qt = 15
  GROUP BY ltf_agrupado.hrz_id, hrz_1, hrz_2, hrz_3, hrz_4, hrz_5, ltf_agrupado.qt_vezes
  ORDER BY res_qt DESC, ltf_qt DESC, hrz_1, hrz_2, hrz_3, hrz_4, hrz_5;

/**
  Retornar a combinação Horizontal agrupado, baseado em um intervalo de valores.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_horizontal_agrupado_intervalo_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_horizontal_agrupado_intervalo_concurso(concursoInicial NUMERIC,
                                                                                        concursoFinal   NUMERIC)
  RETURNS TABLE(hrz_id NUMERIC, hrz_1 NUMERIC, hrz_2 NUMERIC, hrz_3 NUMERIC, hrz_4 NUMERIC, hrz_5 NUMERIC, ltf_qt NUMERIC, res_qt NUMERIC)
AS
$$
BEGIN
  RETURN QUERY SELECT
                 ltf_agrupado.hrz_id :: NUMERIC,
                 ltf_id.hrz_1 :: NUMERIC,
                 ltf_id.hrz_2 :: NUMERIC,
                 ltf_id.hrz_3 :: NUMERIC,
                 ltf_id.hrz_4 :: NUMERIC,
                 ltf_id.hrz_5 :: NUMERIC,
                 ltf_agrupado.qt_vezes :: NUMERIC AS ltf_qt,
                 count(ltf_res.hrz_id) :: NUMERIC AS res_qt
               FROM lotofacil.lotofacil_id_horizontal_agrupado_por_qt ltf_agrupado
                 LEFT JOIN lotofacil.lotofacil_id_horizontal ltf_id
                   ON ltf_agrupado.hrz_id = ltf_id.hrz_id
                 LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
                   ON (ltf_id.hrz_id = ltf_res.hrz_id AND
                       ltf_res.concurso >= concursoInicial AND ltf_res.concurso <= concursoFinal)
               WHERE ltf_agrupado.ltf_qt = 15
               GROUP BY ltf_agrupado.hrz_id, hrz_1, hrz_2, hrz_3, hrz_4, hrz_5, ltf_agrupado.qt_vezes
               ORDER BY res_qt DESC, ltf_qt DESC, hrz_1, hrz_2, hrz_3, hrz_4, hrz_5;
END;
$$ LANGUAGE plpgsql;


/**
  vertical.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_vertical;
CREATE VIEW lotofacil.v_lotofacil_resultado_vertical AS
  SELECT
    concurso,
    vrt_1,
    vrt_2,
    vrt_3,
    vrt_4,
    vrt_5
  FROM lotofacil.lotofacil_resultado_id ltf_res, lotofacil.lotofacil_id_vertical ltf_vertical
  WHERE ltf_res.vrt_id = ltf_vertical.vrt_id
  ORDER BY concurso DESC;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_vertical_agrupado;
CREATE VIEW lotofacil.v_lotofacil_resultado_vertical_agrupado AS
  SELECT
    ltf_agrupado.vrt_id,
    vrt_1,
    vrt_2,
    vrt_3,
    vrt_4,
    vrt_5,
    ltf_agrupado.qt_vezes AS ltf_qt,
    count(ltf_res.vrt_id) AS res_qt
  FROM lotofacil.lotofacil_id_vertical_agrupado_por_qt ltf_agrupado
    LEFT JOIN lotofacil.lotofacil_id_vertical ltf_id
      ON ltf_agrupado.vrt_id = ltf_id.vrt_id
    LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
      ON ltf_id.vrt_id = ltf_res.vrt_id
  WHERE ltf_agrupado.ltf_qt = 15
  GROUP BY ltf_agrupado.vrt_id, vrt_1, vrt_2, vrt_3, vrt_4, vrt_5, ltf_agrupado.qt_vezes
  ORDER BY res_qt DESC, ltf_qt DESC, vrt_1, vrt_2, vrt_3, vrt_4, vrt_5;

/**
  Retornar a combinação vertical agrupado, baseado em um intervalo de valores.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_vertical_agrupado_intervalo_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_vertical_agrupado_intervalo_concurso(concursoInicial NUMERIC,
                                                                                      concursoFinal   NUMERIC)
  RETURNS TABLE(vrt_id NUMERIC, vrt_1 NUMERIC, vrt_2 NUMERIC, vrt_3 NUMERIC, vrt_4 NUMERIC, vrt_5 NUMERIC, ltf_qt NUMERIC, res_qt NUMERIC)
AS
$$
BEGIN
  RETURN QUERY SELECT
                 ltf_agrupado.vrt_id :: NUMERIC,
                 ltf_id.vrt_1 :: NUMERIC,
                 ltf_id.vrt_2 :: NUMERIC,
                 ltf_id.vrt_3 :: NUMERIC,
                 ltf_id.vrt_4 :: NUMERIC,
                 ltf_id.vrt_5 :: NUMERIC,
                 ltf_agrupado.qt_vezes :: NUMERIC AS ltf_qt,
                 count(ltf_res.vrt_id) :: NUMERIC AS res_qt
               FROM lotofacil.lotofacil_id_vertical_agrupado_por_qt ltf_agrupado
                 LEFT JOIN lotofacil.lotofacil_id_vertical ltf_id
                   ON ltf_agrupado.vrt_id = ltf_id.vrt_id
                 LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
                   ON (ltf_id.vrt_id = ltf_res.vrt_id AND
                       ltf_res.concurso >= concursoInicial AND ltf_res.concurso <= concursoFinal)
               WHERE ltf_agrupado.ltf_qt = 15
               GROUP BY ltf_agrupado.vrt_id, vrt_1, vrt_2, vrt_3, vrt_4, vrt_5, ltf_agrupado.qt_vezes
               ORDER BY res_qt DESC, ltf_qt DESC, vrt_1, vrt_2, vrt_3, vrt_4, vrt_5;
END;
$$ LANGUAGE plpgsql;


/**
  diagonal_esquerda.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_diagonal_esquerda;
CREATE VIEW lotofacil.v_lotofacil_resultado_diagonal_esquerda AS
  SELECT
    concurso,
    dge_1,
    dge_2,
    dge_3,
    dge_4,
    dge_5
  FROM lotofacil.lotofacil_resultado_id ltf_res, lotofacil.lotofacil_id_diagonal_esquerda ltf_diagonal_esquerda
  WHERE ltf_res.dge_id = ltf_diagonal_esquerda.dge_id
  ORDER BY concurso DESC;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_diagonal_esquerda_agrupado;
CREATE VIEW lotofacil.v_lotofacil_resultado_diagonal_esquerda_agrupado AS
  SELECT
    ltf_agrupado.dge_id,
    dge_1,
    dge_2,
    dge_3,
    dge_4,
    dge_5,
    ltf_agrupado.qt_vezes AS ltf_qt,
    count(ltf_res.dge_id) AS res_qt
  FROM lotofacil.lotofacil_id_diagonal_esquerda_agrupado_por_qt ltf_agrupado
    LEFT JOIN lotofacil.lotofacil_id_diagonal_esquerda ltf_id
      ON ltf_agrupado.dge_id = ltf_id.dge_id
    LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
      ON ltf_id.dge_id = ltf_res.dge_id
  WHERE ltf_agrupado.ltf_qt = 15
  GROUP BY ltf_agrupado.dge_id, dge_1, dge_2, dge_3, dge_4, dge_5, ltf_agrupado.qt_vezes
  ORDER BY res_qt DESC, ltf_qt DESC, dge_1, dge_2, dge_3, dge_4, dge_5;

/**
  Retornar a combinação diagonal_esquerda agrupado, baseado em um intervalo de valores.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_diagonal_esquerda_agrupado_intervalo_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_diagonal_esquerda_agrupado_intervalo_concurso(concursoInicial NUMERIC,
                                                                                               concursoFinal   NUMERIC)
  RETURNS TABLE(dge_id NUMERIC, dge_1 NUMERIC, dge_2 NUMERIC, dge_3 NUMERIC, dge_4 NUMERIC, dge_5 NUMERIC, ltf_qt NUMERIC, res_qt NUMERIC)
AS
$$
BEGIN
  RETURN QUERY SELECT
                 ltf_agrupado.dge_id :: NUMERIC,
                 ltf_id.dge_1 :: NUMERIC,
                 ltf_id.dge_2 :: NUMERIC,
                 ltf_id.dge_3 :: NUMERIC,
                 ltf_id.dge_4 :: NUMERIC,
                 ltf_id.dge_5 :: NUMERIC,
                 ltf_agrupado.qt_vezes :: NUMERIC AS ltf_qt,
                 count(ltf_res.dge_id) :: NUMERIC AS res_qt
               FROM lotofacil.lotofacil_id_diagonal_esquerda_agrupado_por_qt ltf_agrupado
                 LEFT JOIN lotofacil.lotofacil_id_diagonal_esquerda ltf_id
                   ON ltf_agrupado.dge_id = ltf_id.dge_id
                 LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
                   ON (ltf_id.dge_id = ltf_res.dge_id AND
                       ltf_res.concurso >= concursoInicial AND ltf_res.concurso <= concursoFinal)
               WHERE ltf_agrupado.ltf_qt = 15
               GROUP BY ltf_agrupado.dge_id, dge_1, dge_2, dge_3, dge_4, dge_5, ltf_agrupado.qt_vezes
               ORDER BY res_qt DESC, ltf_qt DESC, dge_1, dge_2, dge_3, dge_4, dge_5;
END;
$$ LANGUAGE plpgsql;


/**
  diagonal_direita.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_diagonal_direita;
CREATE VIEW lotofacil.v_lotofacil_resultado_diagonal_direita AS
  SELECT
    concurso,
    dgd_1,
    dgd_2,
    dgd_3,
    dgd_4,
    dgd_5
  FROM lotofacil.lotofacil_resultado_id ltf_res, lotofacil.lotofacil_id_diagonal_direita ltf_diagonal_direita
  WHERE ltf_res.dgd_id = ltf_diagonal_direita.dgd_id
  ORDER BY concurso DESC;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_diagonal_direita_agrupado;
CREATE VIEW lotofacil.v_lotofacil_resultado_diagonal_direita_agrupado AS
  SELECT
    ltf_agrupado.dgd_id,
    dgd_1,
    dgd_2,
    dgd_3,
    dgd_4,
    dgd_5,
    ltf_agrupado.qt_vezes AS ltf_qt,
    count(ltf_res.dgd_id) AS res_qt
  FROM lotofacil.lotofacil_id_diagonal_direita_agrupado_por_qt ltf_agrupado
    LEFT JOIN lotofacil.lotofacil_id_diagonal_direita ltf_id
      ON ltf_agrupado.dgd_id = ltf_id.dgd_id
    LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
      ON ltf_id.dgd_id = ltf_res.dgd_id
  WHERE ltf_agrupado.ltf_qt = 15
  GROUP BY ltf_agrupado.dgd_id, dgd_1, dgd_2, dgd_3, dgd_4, dgd_5, ltf_agrupado.qt_vezes
  ORDER BY res_qt DESC, ltf_qt DESC, dgd_1, dgd_2, dgd_3, dgd_4, dgd_5;

/**
  Retornar a combinação diagonal_direita agrupado, baseado em um intervalo de valores.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_diagonal_direita_agrupado_intervalo_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_diagonal_direita_agrupado_intervalo_concurso(concursoInicial NUMERIC,
                                                                                              concursoFinal   NUMERIC)
  RETURNS TABLE(dgd_id NUMERIC, dgd_1 NUMERIC, dgd_2 NUMERIC, dgd_3 NUMERIC, dgd_4 NUMERIC, dgd_5 NUMERIC, ltf_qt NUMERIC, res_qt NUMERIC)
AS
$$
BEGIN
  RETURN QUERY SELECT
                 ltf_agrupado.dgd_id :: NUMERIC,
                 ltf_id.dgd_1 :: NUMERIC,
                 ltf_id.dgd_2 :: NUMERIC,
                 ltf_id.dgd_3 :: NUMERIC,
                 ltf_id.dgd_4 :: NUMERIC,
                 ltf_id.dgd_5 :: NUMERIC,
                 ltf_agrupado.qt_vezes :: NUMERIC AS ltf_qt,
                 count(ltf_res.dgd_id) :: NUMERIC AS res_qt
               FROM lotofacil.lotofacil_id_diagonal_direita_agrupado_por_qt ltf_agrupado
                 LEFT JOIN lotofacil.lotofacil_id_diagonal_direita ltf_id
                   ON ltf_agrupado.dgd_id = ltf_id.dgd_id
                 LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
                   ON (ltf_id.dgd_id = ltf_res.dgd_id AND
                       ltf_res.concurso >= concursoInicial AND ltf_res.concurso <= concursoFinal)
               WHERE ltf_agrupado.ltf_qt = 15
               GROUP BY ltf_agrupado.dgd_id, dgd_1, dgd_2, dgd_3, dgd_4, dgd_5, ltf_agrupado.qt_vezes
               ORDER BY res_qt DESC, ltf_qt DESC, dgd_1, dgd_2, dgd_3, dgd_4, dgd_5;
END;
$$ LANGUAGE plpgsql;


/**
  esquerda_direita.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_esquerda_direita;
CREATE VIEW lotofacil.v_lotofacil_resultado_esquerda_direita AS
  SELECT
    concurso,
    esquerda,
    direita
  FROM lotofacil.lotofacil_resultado_id ltf_res, lotofacil.lotofacil_id_esquerda_direita ltf_esquerda_direita
  WHERE ltf_res.esq_dir_id = ltf_esquerda_direita.esq_dir_id
  ORDER BY concurso DESC;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_esquerda_direita_agrupado;
CREATE VIEW lotofacil.v_lotofacil_resultado_esquerda_direita_agrupado AS
  SELECT
    ltf_agrupado.esq_dir_id,
    esquerda,
    direita,
    ltf_agrupado.qt_vezes     AS ltf_qt,
    count(ltf_res.esq_dir_id) AS res_qt
  FROM lotofacil.lotofacil_id_esquerda_direita_agrupado_por_qt ltf_agrupado
    LEFT JOIN lotofacil.lotofacil_id_esquerda_direita ltf_id
      ON ltf_agrupado.esq_dir_id = ltf_id.esq_dir_id
    LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
      ON ltf_id.esq_dir_id = ltf_res.esq_dir_id
  WHERE ltf_agrupado.ltf_qt = 15
  GROUP BY ltf_agrupado.esq_dir_id, esquerda, direita, ltf_agrupado.qt_vezes
  ORDER BY res_qt DESC, ltf_qt DESC, esquerda, direita;

/**
  Retornar a combinação esquerda_direita agrupado, baseado em um intervalo de valores.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_esquerda_direita_agrupado_intervalo_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_esquerda_direita_agrupado_intervalo_concurso(concursoInicial NUMERIC,
                                                                                              concursoFinal   NUMERIC)
  RETURNS TABLE(esq_dir_id NUMERIC, esq_dir_1 NUMERIC, esq_dir_2 NUMERIC, esq_dir_3 NUMERIC, esq_dir_4 NUMERIC, esq_dir_5 NUMERIC, ltf_qt NUMERIC, res_qt NUMERIC)
AS
$$
BEGIN
  RETURN QUERY SELECT
                 ltf_agrupado.esq_dir_id :: NUMERIC,
                 ltf_id.esquerda :: NUMERIC,
                 ltf_id.direita :: NUMERIC,
                 ltf_agrupado.qt_vezes :: NUMERIC     AS ltf_qt,
                 count(ltf_res.esq_dir_id) :: NUMERIC AS res_qt
               FROM lotofacil.lotofacil_id_esquerda_direita_agrupado_por_qt ltf_agrupado
                 LEFT JOIN lotofacil.lotofacil_id_esquerda_direita ltf_id
                   ON ltf_agrupado.esq_dir_id = ltf_id.esq_dir_id
                 LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
                   ON (ltf_id.esq_dir_id = ltf_res.esq_dir_id AND
                       ltf_res.concurso >= concursoInicial AND ltf_res.concurso <= concursoFinal)
               WHERE ltf_agrupado.ltf_qt = 15
               GROUP BY ltf_agrupado.esq_dir_id, esquerda, direita, ltf_agrupado.qt_vezes
               ORDER BY res_qt DESC, ltf_qt DESC, esquerda, direita;
END;
$$ LANGUAGE plpgsql;


/**
  superior_inferior.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_superior_inferior;
CREATE VIEW lotofacil.v_lotofacil_resultado_superior_inferior AS
  SELECT
    concurso,
    superior,
    inferior
  FROM lotofacil.lotofacil_resultado_id ltf_res, lotofacil.lotofacil_id_superior_inferior ltf_superior_inferior
  WHERE ltf_res.sup_inf_id = ltf_superior_inferior.sup_inf_id
  ORDER BY concurso DESC;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_superior_inferior_agrupado;
CREATE VIEW lotofacil.v_lotofacil_resultado_superior_inferior_agrupado AS
  SELECT
    ltf_agrupado.sup_inf_id,
    superior,
    inferior,
    ltf_agrupado.qt_vezes     AS ltf_qt,
    count(ltf_res.sup_inf_id) AS res_qt
  FROM lotofacil.lotofacil_id_superior_inferior_agrupado_por_qt ltf_agrupado
    LEFT JOIN lotofacil.lotofacil_id_superior_inferior ltf_id
      ON ltf_agrupado.sup_inf_id = ltf_id.sup_inf_id
    LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
      ON ltf_id.sup_inf_id = ltf_res.sup_inf_id
  WHERE ltf_agrupado.ltf_qt = 15
  GROUP BY ltf_agrupado.sup_inf_id, superior, inferior, ltf_agrupado.qt_vezes
  ORDER BY res_qt DESC, ltf_qt DESC, superior, inferior;

/**
  Retornar a combinação superior_inferior agrupado, baseado em um intervalo de valores.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_superior_inferior_agrupado_intervalo_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_superior_inferior_agrupado_intervalo_concurso(concursoInicial NUMERIC,
                                                                                               concursoFinal   NUMERIC)
  RETURNS TABLE(sup_inf_id NUMERIC, sup_inf_1 NUMERIC, sup_inf_2 NUMERIC, sup_inf_3 NUMERIC, sup_inf_4 NUMERIC, sup_inf_5 NUMERIC, ltf_qt NUMERIC, res_qt NUMERIC)
AS
$$
BEGIN
  RETURN QUERY SELECT
                 ltf_agrupado.sup_inf_id :: NUMERIC,
                 ltf_id.superior :: NUMERIC,
                 ltf_id.inferior :: NUMERIC,
                 ltf_agrupado.qt_vezes :: NUMERIC     AS ltf_qt,
                 count(ltf_res.sup_inf_id) :: NUMERIC AS res_qt
               FROM lotofacil.lotofacil_id_superior_inferior_agrupado_por_qt ltf_agrupado
                 LEFT JOIN lotofacil.lotofacil_id_superior_inferior ltf_id
                   ON ltf_agrupado.sup_inf_id = ltf_id.sup_inf_id
                 LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
                   ON (ltf_id.sup_inf_id = ltf_res.sup_inf_id AND
                       ltf_res.concurso >= concursoInicial AND ltf_res.concurso <= concursoFinal)
               WHERE ltf_agrupado.ltf_qt = 15
               GROUP BY ltf_agrupado.sup_inf_id, superior, inferior, ltf_agrupado.qt_vezes
               ORDER BY res_qt DESC, ltf_qt DESC, superior, inferior;
END;
$$ LANGUAGE plpgsql;


/**
  superior_esquerda_inferior_direita.
 */
DROP VIEW IF EXISTS lotofacil.v_ltf_res_superior_esquerda_inferior_direita;
CREATE VIEW lotofacil.v_ltf_res_superior_esquerda_inferior_direita AS
  SELECT
    concurso,
    superior_esquerda,
    inferior_direita
  FROM lotofacil.lotofacil_resultado_id ltf_res,
    lotofacil.lotofacil_id_superior_esquerda_inferior_direita ltf_superior_esquerda_inferior_direita
  WHERE ltf_res.sup_esq_inf_dir_id = ltf_superior_esquerda_inferior_direita.sup_esq_inf_dir_id
  ORDER BY concurso DESC;

DROP VIEW IF EXISTS lotofacil.v_ltf_res_superior_esquerda_inferior_direita_agrupado;
CREATE VIEW lotofacil.v_ltf_res_superior_esquerda_inferior_direita_agrupado AS
  SELECT
    ltf_agrupado.sup_esq_inf_dir_id,
    superior_esquerda,
    inferior_direita,
    ltf_agrupado.qt_vezes             AS ltf_qt,
    count(ltf_res.sup_esq_inf_dir_id) AS res_qt
  FROM lotofacil.lotofacil_id_superior_esquerda_inferior_direita_agrupado_por_qt ltf_agrupado
    LEFT JOIN lotofacil.lotofacil_id_superior_esquerda_inferior_direita ltf_id
      ON ltf_agrupado.sup_esq_inf_dir_id = ltf_id.sup_esq_inf_dir_id
    LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
      ON ltf_id.sup_esq_inf_dir_id = ltf_res.sup_esq_inf_dir_id
  WHERE ltf_agrupado.ltf_qt = 15
  GROUP BY ltf_agrupado.sup_esq_inf_dir_id, superior_esquerda, inferior_direita, ltf_agrupado.qt_vezes
  ORDER BY res_qt DESC, ltf_qt DESC, superior_esquerda, inferior_direita;

/**
  Retornar a combinação superior_esquerda_inferior_direita agrupado, baseado em um intervalo de valores.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_superior_esquerda_inferior_direita_agrupado_intervalo_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_superior_esquerda_inferior_direita_agrupado_intervalo_concurso(
  concursoInicial NUMERIC, concursoFinal NUMERIC)
  RETURNS TABLE(sup_esq_inf_dir_id NUMERIC, sup_esq_inf_dir_1 NUMERIC, sup_esq_inf_dir_2 NUMERIC, sup_esq_inf_dir_3 NUMERIC, sup_esq_inf_dir_4 NUMERIC, sup_esq_inf_dir_5 NUMERIC, ltf_qt NUMERIC, res_qt NUMERIC)
AS
$$
BEGIN
  RETURN QUERY SELECT
                 ltf_agrupado.sup_esq_inf_dir_id :: NUMERIC,
                 ltf_id.superior_esquerda :: NUMERIC,
                 ltf_id.inferior_direita :: NUMERIC,
                 ltf_agrupado.qt_vezes :: NUMERIC             AS ltf_qt,
                 count(ltf_res.sup_esq_inf_dir_id) :: NUMERIC AS res_qt
               FROM lotofacil.lotofacil_id_superior_esquerda_inferior_direita_agrupado_por_qt ltf_agrupado
                 LEFT JOIN lotofacil.lotofacil_id_superior_esquerda_inferior_direita ltf_id
                   ON ltf_agrupado.sup_esq_inf_dir_id = ltf_id.sup_esq_inf_dir_id
                 LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
                   ON (ltf_id.sup_esq_inf_dir_id = ltf_res.sup_esq_inf_dir_id AND
                       ltf_res.concurso >= concursoInicial AND ltf_res.concurso <= concursoFinal)
               WHERE ltf_agrupado.ltf_qt = 15
               GROUP BY ltf_agrupado.sup_esq_inf_dir_id, superior_esquerda, inferior_direita, ltf_agrupado.qt_vezes
               ORDER BY res_qt DESC, ltf_qt DESC, superior_esquerda, inferior_direita;
END;
$$ LANGUAGE plpgsql;


/**
  superior_direita_inferior_esquerda.
 */
DROP VIEW IF EXISTS lotofacil.v_ltf_res_superior_direita_inferior_esquerda;
CREATE VIEW lotofacil.v_ltf_res_superior_direita_inferior_esquerda AS
  SELECT
    concurso,
    superior_direita,
    inferior_esquerda
  FROM lotofacil.lotofacil_resultado_id ltf_res,
    lotofacil.lotofacil_id_superior_direita_inferior_esquerda ltf_superior_direita_inferior_esquerda
  WHERE ltf_res.sup_dir_inf_esq_id = ltf_superior_direita_inferior_esquerda.sup_dir_inf_esq_id
  ORDER BY concurso DESC;

DROP VIEW IF EXISTS lotofacil.v_ltf_res_superior_direita_inferior_esquerda_agrupado;
CREATE VIEW lotofacil.v_ltf_res_superior_direita_inferior_esquerda_agrupado AS
  SELECT
    ltf_agrupado.sup_dir_inf_esq_id,
    superior_direita,
    inferior_esquerda,
    ltf_agrupado.qt_vezes             AS ltf_qt,
    count(ltf_res.sup_dir_inf_esq_id) AS res_qt
  FROM lotofacil.lotofacil_id_superior_direita_inferior_esquerda_agrupado_por_qt ltf_agrupado
    LEFT JOIN lotofacil.lotofacil_id_superior_direita_inferior_esquerda ltf_id
      ON ltf_agrupado.sup_dir_inf_esq_id = ltf_id.sup_dir_inf_esq_id
    LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
      ON ltf_id.sup_dir_inf_esq_id = ltf_res.sup_dir_inf_esq_id
  WHERE ltf_agrupado.ltf_qt = 15
  GROUP BY ltf_agrupado.sup_dir_inf_esq_id, superior_direita, inferior_esquerda, ltf_agrupado.qt_vezes
  ORDER BY res_qt DESC, ltf_qt DESC, superior_direita, inferior_esquerda;

/**
  Retornar a combinação superior_direita_inferior_esquerda agrupado, baseado em um intervalo de valores.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_superior_direita_inferior_esquerda_agrupado_intervalo_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_superior_direita_inferior_esquerda_agrupado_intervalo_concurso(
  concursoInicial NUMERIC, concursoFinal NUMERIC)
  RETURNS TABLE(sup_dir_inf_esq_id NUMERIC, sup_dir_inf_esq_1 NUMERIC, sup_dir_inf_esq_2 NUMERIC, sup_dir_inf_esq_3 NUMERIC, sup_dir_inf_esq_4 NUMERIC, sup_dir_inf_esq_5 NUMERIC, ltf_qt NUMERIC, res_qt NUMERIC)
AS
$$
BEGIN
  RETURN QUERY SELECT
                 ltf_agrupado.sup_dir_inf_esq_id :: NUMERIC,
                 ltf_id.superior_direita :: NUMERIC,
                 ltf_id.inferior_esquerda :: NUMERIC,
                 ltf_agrupado.qt_vezes :: NUMERIC             AS ltf_qt,
                 count(ltf_res.sup_dir_inf_esq_id) :: NUMERIC AS res_qt
               FROM lotofacil.lotofacil_id_superior_direita_inferior_esquerda_agrupado_por_qt ltf_agrupado
                 LEFT JOIN lotofacil.lotofacil_id_superior_direita_inferior_esquerda ltf_id
                   ON ltf_agrupado.sup_dir_inf_esq_id = ltf_id.sup_dir_inf_esq_id
                 LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
                   ON (ltf_id.sup_dir_inf_esq_id = ltf_res.sup_dir_inf_esq_id AND
                       ltf_res.concurso >= concursoInicial AND ltf_res.concurso <= concursoFinal)
               WHERE ltf_agrupado.ltf_qt = 15
               GROUP BY ltf_agrupado.sup_dir_inf_esq_id, superior_direita, inferior_esquerda, ltf_agrupado.qt_vezes
               ORDER BY res_qt DESC, ltf_qt DESC, superior_direita, inferior_esquerda;
END;
$$ LANGUAGE plpgsql;


/**
  cruzeta.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_cruzeta;
CREATE VIEW lotofacil.v_lotofacil_resultado_cruzeta AS
  SELECT
    concurso,
    crz_1,
    crz_2,
    crz_3,
    crz_4,
    crz_5
  FROM lotofacil.lotofacil_resultado_id ltf_res, lotofacil.lotofacil_id_cruzeta ltf_cruzeta
  WHERE ltf_res.crz_id = ltf_cruzeta.crz_id
  ORDER BY concurso DESC;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_cruzeta_agrupado;
CREATE VIEW lotofacil.v_lotofacil_resultado_cruzeta_agrupado AS
  SELECT
    ltf_agrupado.crz_id,
    crz_1,
    crz_2,
    crz_3,
    crz_4,
    crz_5,
    ltf_agrupado.qt_vezes AS ltf_qt,
    count(ltf_res.crz_id) AS res_qt
  FROM lotofacil.lotofacil_id_cruzeta_agrupado_por_qt ltf_agrupado
    LEFT JOIN lotofacil.lotofacil_id_cruzeta ltf_id
      ON ltf_agrupado.crz_id = ltf_id.crz_id
    LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
      ON ltf_id.crz_id = ltf_res.crz_id
  WHERE ltf_agrupado.ltf_qt = 15
  GROUP BY ltf_agrupado.crz_id, crz_1, crz_2, crz_3, crz_4, crz_5, ltf_agrupado.qt_vezes
  ORDER BY res_qt DESC, ltf_qt DESC, crz_1, crz_2, crz_3, crz_4, crz_5;

/**
  Retornar a combinação cruzeta agrupado, baseado em um intervalo de valores.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_cruzeta_agrupado_intervalo_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_cruzeta_agrupado_intervalo_concurso(concursoInicial NUMERIC,
                                                                                     concursoFinal   NUMERIC)
  RETURNS TABLE(crz_id NUMERIC, crz_1 NUMERIC, crz_2 NUMERIC, crz_3 NUMERIC, crz_4 NUMERIC, crz_5 NUMERIC, ltf_qt NUMERIC, res_qt NUMERIC)
AS
$$
BEGIN
  RETURN QUERY SELECT
                 ltf_agrupado.crz_id :: NUMERIC,
                 ltf_id.crz_1 :: NUMERIC,
                 ltf_id.crz_2 :: NUMERIC,
                 ltf_id.crz_3 :: NUMERIC,
                 ltf_id.crz_4 :: NUMERIC,
                 ltf_id.crz_5 :: NUMERIC,
                 ltf_agrupado.qt_vezes :: NUMERIC AS ltf_qt,
                 count(ltf_res.crz_id) :: NUMERIC AS res_qt
               FROM lotofacil.lotofacil_id_cruzeta_agrupado_por_qt ltf_agrupado
                 LEFT JOIN lotofacil.lotofacil_id_cruzeta ltf_id
                   ON ltf_agrupado.crz_id = ltf_id.crz_id
                 LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
                   ON (ltf_id.crz_id = ltf_res.crz_id AND
                       ltf_res.concurso >= concursoInicial AND ltf_res.concurso <= concursoFinal)
               WHERE ltf_agrupado.ltf_qt = 15
               GROUP BY ltf_agrupado.crz_id, crz_1, crz_2, crz_3, crz_4, crz_5, ltf_agrupado.qt_vezes
               ORDER BY res_qt DESC, ltf_qt DESC, crz_1, crz_2, crz_3, crz_4, crz_5;
END;
$$ LANGUAGE plpgsql;


/**
  losango.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_losango;
CREATE VIEW lotofacil.v_lotofacil_resultado_losango AS
  SELECT
    concurso,
    lsng_1,
    lsng_2,
    lsng_3,
    lsng_4,
    lsng_5
  FROM lotofacil.lotofacil_resultado_id ltf_res, lotofacil.lotofacil_id_losango ltf_losango
  WHERE ltf_res.lsng_id = ltf_losango.lsng_id
  ORDER BY concurso DESC;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_losango_agrupado;
CREATE VIEW lotofacil.v_lotofacil_resultado_losango_agrupado AS
  SELECT
    ltf_agrupado.lsng_id,
    lsng_1,
    lsng_2,
    lsng_3,
    lsng_4,
    lsng_5,
    ltf_agrupado.qt_vezes  AS ltf_qt,
    count(ltf_res.lsng_id) AS res_qt
  FROM lotofacil.lotofacil_id_losango_agrupado_por_qt ltf_agrupado
    LEFT JOIN lotofacil.lotofacil_id_losango ltf_id
      ON ltf_agrupado.lsng_id = ltf_id.lsng_id
    LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
      ON ltf_id.lsng_id = ltf_res.lsng_id
  WHERE ltf_agrupado.ltf_qt = 15
  GROUP BY ltf_agrupado.lsng_id, lsng_1, lsng_2, lsng_3, lsng_4, lsng_5, ltf_agrupado.qt_vezes
  ORDER BY res_qt DESC, ltf_qt DESC, lsng_1, lsng_2, lsng_3, lsng_4, lsng_5;

/**
  Retornar a combinação losango agrupado, baseado em um intervalo de valores.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_losango_agrupado_intervalo_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_losango_agrupado_intervalo_concurso(concursoInicial NUMERIC,
                                                                                     concursoFinal   NUMERIC)
  RETURNS TABLE(lsng_id NUMERIC, lsng_1 NUMERIC, lsng_2 NUMERIC, lsng_3 NUMERIC, lsng_4 NUMERIC, lsng_5 NUMERIC, ltf_qt NUMERIC, res_qt NUMERIC)
AS
$$
BEGIN
  RETURN QUERY SELECT
                 ltf_agrupado.lsng_id :: NUMERIC,
                 ltf_id.lsng_1 :: NUMERIC,
                 ltf_id.lsng_2 :: NUMERIC,
                 ltf_id.lsng_3 :: NUMERIC,
                 ltf_id.lsng_4 :: NUMERIC,
                 ltf_id.lsng_5 :: NUMERIC,
                 ltf_agrupado.qt_vezes :: NUMERIC  AS ltf_qt,
                 count(ltf_res.lsng_id) :: NUMERIC AS res_qt
               FROM lotofacil.lotofacil_id_losango_agrupado_por_qt ltf_agrupado
                 LEFT JOIN lotofacil.lotofacil_id_losango ltf_id
                   ON ltf_agrupado.lsng_id = ltf_id.lsng_id
                 LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
                   ON (ltf_id.lsng_id = ltf_res.lsng_id AND
                       ltf_res.concurso >= concursoInicial AND ltf_res.concurso <= concursoFinal)
               WHERE ltf_agrupado.ltf_qt = 15
               GROUP BY ltf_agrupado.lsng_id, lsng_1, lsng_2, lsng_3, lsng_4, lsng_5, ltf_agrupado.qt_vezes
               ORDER BY res_qt DESC, ltf_qt DESC, lsng_1, lsng_2, lsng_3, lsng_4, lsng_5;
END;
$$ LANGUAGE plpgsql;


/**
  quinteto.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_quinteto;
CREATE VIEW lotofacil.v_lotofacil_resultado_quinteto AS
  SELECT
    concurso,
    qnt_1,
    qnt_2,
    qnt_3,
    qnt_4,
    qnt_5
  FROM lotofacil.lotofacil_resultado_id ltf_res, lotofacil.lotofacil_id_quinteto ltf_quinteto
  WHERE ltf_res.qnt_id = ltf_quinteto.qnt_id
  ORDER BY concurso DESC;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_quinteto_agrupado;
CREATE VIEW lotofacil.v_lotofacil_resultado_quinteto_agrupado AS
  SELECT
    ltf_agrupado.qnt_id,
    qnt_1,
    qnt_2,
    qnt_3,
    qnt_4,
    qnt_5,
    ltf_agrupado.qt_vezes AS ltf_qt,
    count(ltf_res.qnt_id) AS res_qt
  FROM lotofacil.lotofacil_id_quinteto_agrupado_por_qt ltf_agrupado
    LEFT JOIN lotofacil.lotofacil_id_quinteto ltf_id
      ON ltf_agrupado.qnt_id = ltf_id.qnt_id
    LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
      ON ltf_id.qnt_id = ltf_res.qnt_id
  WHERE ltf_agrupado.ltf_qt = 15
  GROUP BY ltf_agrupado.qnt_id, qnt_1, qnt_2, qnt_3, qnt_4, qnt_5, ltf_agrupado.qt_vezes
  ORDER BY res_qt DESC, ltf_qt DESC, qnt_1, qnt_2, qnt_3, qnt_4, qnt_5;

/**
  Retornar a combinação quinteto agrupado, baseado em um intervalo de valores.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_quinteto_agrupado_intervalo_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_quinteto_agrupado_intervalo_concurso(concursoInicial NUMERIC,
                                                                                      concursoFinal   NUMERIC)
  RETURNS TABLE(qnt_id NUMERIC, qnt_1 NUMERIC, qnt_2 NUMERIC, qnt_3 NUMERIC, qnt_4 NUMERIC, qnt_5 NUMERIC, ltf_qt NUMERIC, res_qt NUMERIC)
AS
$$
BEGIN
  RETURN QUERY SELECT
                 ltf_agrupado.qnt_id :: NUMERIC,
                 ltf_id.qnt_1 :: NUMERIC,
                 ltf_id.qnt_2 :: NUMERIC,
                 ltf_id.qnt_3 :: NUMERIC,
                 ltf_id.qnt_4 :: NUMERIC,
                 ltf_id.qnt_5 :: NUMERIC,
                 ltf_agrupado.qt_vezes :: NUMERIC AS ltf_qt,
                 count(ltf_res.qnt_id) :: NUMERIC AS res_qt
               FROM lotofacil.lotofacil_id_quinteto_agrupado_por_qt ltf_agrupado
                 LEFT JOIN lotofacil.lotofacil_id_quinteto ltf_id
                   ON ltf_agrupado.qnt_id = ltf_id.qnt_id
                 LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
                   ON (ltf_id.qnt_id = ltf_res.qnt_id AND
                       ltf_res.concurso >= concursoInicial AND ltf_res.concurso <= concursoFinal)
               WHERE ltf_agrupado.ltf_qt = 15
               GROUP BY ltf_agrupado.qnt_id, qnt_1, qnt_2, qnt_3, qnt_4, qnt_5, ltf_agrupado.qt_vezes
               ORDER BY res_qt DESC, ltf_qt DESC, qnt_1, qnt_2, qnt_3, qnt_4, qnt_5;
END;
$$ LANGUAGE plpgsql;


/**
  triangulo.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_triangulo;
CREATE VIEW lotofacil.v_lotofacil_resultado_triangulo AS
  SELECT
    concurso,
    trng_1,
    trng_2,
    trng_3,
    trng_4
  FROM lotofacil.lotofacil_resultado_id ltf_res, lotofacil.lotofacil_id_triangulo ltf_triangulo
  WHERE ltf_res.trng_id = ltf_triangulo.trng_id
  ORDER BY concurso DESC;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_triangulo_agrupado;
CREATE VIEW lotofacil.v_lotofacil_resultado_triangulo_agrupado AS
  SELECT
    ltf_agrupado.trng_id,
    trng_1,
    trng_2,
    trng_3,
    trng_4,
    ltf_agrupado.qt_vezes  AS ltf_qt,
    count(ltf_res.trng_id) AS res_qt
  FROM lotofacil.lotofacil_id_triangulo_agrupado_por_qt ltf_agrupado
    LEFT JOIN lotofacil.lotofacil_id_triangulo ltf_id
      ON ltf_agrupado.trng_id = ltf_id.trng_id
    LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
      ON ltf_id.trng_id = ltf_res.trng_id
  WHERE ltf_agrupado.ltf_qt = 15
  GROUP BY ltf_agrupado.trng_id, trng_1, trng_2, trng_3, trng_4, ltf_agrupado.qt_vezes
  ORDER BY res_qt DESC, ltf_qt DESC, trng_1, trng_2, trng_3, trng_4;

/**
  Retornar a combinação triangulo agrupado, baseado em um intervalo de valores.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_triangulo_agrupado_intervalo_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_triangulo_agrupado_intervalo_concurso(concursoInicial NUMERIC,
                                                                                       concursoFinal   NUMERIC)
  RETURNS TABLE(trng_id NUMERIC, trng_1 NUMERIC, trng_2 NUMERIC, trng_3 NUMERIC, trng_4 NUMERIC , ltf_qt NUMERIC, res_qt NUMERIC)
AS
$$
BEGIN
  RETURN QUERY SELECT
                 ltf_agrupado.trng_id :: NUMERIC,
                 ltf_id.trng_1 :: NUMERIC,
                 ltf_id.trng_2 :: NUMERIC,
                 ltf_id.trng_3 :: NUMERIC,
                 ltf_id.trng_4 :: NUMERIC,
                 ltf_agrupado.qt_vezes :: NUMERIC  AS ltf_qt,
                 count(ltf_res.trng_id) :: NUMERIC AS res_qt
               FROM lotofacil.lotofacil_id_triangulo_agrupado_por_qt ltf_agrupado
                 LEFT JOIN lotofacil.lotofacil_id_triangulo ltf_id
                   ON ltf_agrupado.trng_id = ltf_id.trng_id
                 LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
                   ON (ltf_id.trng_id = ltf_res.trng_id AND
                       ltf_res.concurso >= concursoInicial AND ltf_res.concurso <= concursoFinal)
               WHERE ltf_agrupado.ltf_qt = 15
               GROUP BY ltf_agrupado.trng_id, trng_1, trng_2, trng_3, trng_4, ltf_agrupado.qt_vezes
               ORDER BY res_qt DESC, ltf_qt DESC, trng_1, trng_2, trng_3, trng_4;
END;
$$ LANGUAGE plpgsql;


/**
  trio.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_trio;
CREATE VIEW lotofacil.v_lotofacil_resultado_trio AS
  SELECT
    concurso,
    tr_1,
    tr_2,
    tr_3,
    tr_4,
    tr_5,
    tr_6,
    tr_7,
    tr_8
  FROM lotofacil.lotofacil_resultado_id ltf_res, lotofacil.lotofacil_id_trio ltf_trio
  WHERE ltf_res.trio_id = ltf_trio.trio_id
  ORDER BY concurso DESC;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_trio_agrupado;
CREATE VIEW lotofacil.v_lotofacil_resultado_trio_agrupado AS
  SELECT
    ltf_agrupado.trio_id,
    tr_1,
    tr_2,
    tr_3,
    tr_4,
    tr_5,
    tr_6,
    tr_7,
    tr_8,
    ltf_agrupado.qt_vezes  AS ltf_qt,
    count(ltf_res.trio_id) AS res_qt
  FROM lotofacil.lotofacil_id_trio_agrupado_por_qt ltf_agrupado
    LEFT JOIN lotofacil.lotofacil_id_trio ltf_id
      ON ltf_agrupado.trio_id = ltf_id.trio_id
    LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
      ON ltf_id.trio_id = ltf_res.trio_id
  WHERE ltf_agrupado.ltf_qt = 15
  GROUP BY ltf_agrupado.trio_id, tr_1, tr_2, tr_3, tr_4, tr_5, tr_6, tr_7, tr_8, ltf_agrupado.qt_vezes
  ORDER BY res_qt DESC, ltf_qt DESC, tr_1, tr_2, tr_3, tr_4, tr_5, tr_6, tr_7, tr_8;

/**
  Retornar a combinação trio agrupado, baseado em um intervalo de valores.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_trio_agrupado_intervalo_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_trio_agrupado_intervalo_concurso(concursoInicial NUMERIC,
                                                                                  concursoFinal   NUMERIC)
  RETURNS TABLE(trio_id NUMERIC, tr_1 NUMERIC, tr_2 NUMERIC, tr_3 NUMERIC, tr_4 numeric, tr_5 numeric, tr_6 numeric, tr_7 numeric, tr_8 NUMERIC , ltf_qt NUMERIC, res_qt NUMERIC)
AS
$$
BEGIN
  RETURN QUERY SELECT
                 ltf_agrupado.trio_id :: NUMERIC,
                 ltf_id.tr_1 :: NUMERIC,
                 ltf_id.tr_2 :: NUMERIC,
                 ltf_id.tr_3 :: NUMERIC,
                 ltf_id.tr_4 :: NUMERIC,
                 ltf_id.tr_5 :: NUMERIC,
                 ltf_id.tr_6 :: NUMERIC,
                 ltf_id.tr_7 :: NUMERIC,
                 ltf_id.tr_8 :: NUMERIC,
                 ltf_agrupado.qt_vezes :: NUMERIC  AS ltf_qt,
                 count(ltf_res.trio_id) :: NUMERIC AS res_qt
               FROM lotofacil.lotofacil_id_trio_agrupado_por_qt ltf_agrupado
                 LEFT JOIN lotofacil.lotofacil_id_trio ltf_id
                   ON ltf_agrupado.trio_id = ltf_id.trio_id
                 LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
                   ON (ltf_id.trio_id = ltf_res.trio_id AND
                       ltf_res.concurso >= concursoInicial AND ltf_res.concurso <= concursoFinal)
               WHERE ltf_agrupado.ltf_qt = 15
               GROUP BY ltf_agrupado.trio_id, tr_1, tr_2, tr_3, tr_4, tr_5, tr_6, tr_7, tr_8, ltf_agrupado.qt_vezes
               ORDER BY res_qt DESC, ltf_qt DESC, tr_1, tr_2, tr_3, tr_4, tr_5, tr_6, tr_7, tr_8;
END;
$$ LANGUAGE plpgsql;


/**
  x1_x2.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_x1_x2;
CREATE VIEW lotofacil.v_lotofacil_resultado_x1_x2 AS
  SELECT
    concurso,
    x1_x2_1,
    x1_x2_2
  FROM lotofacil.lotofacil_resultado_id ltf_res, lotofacil.lotofacil_id_x1_x2 ltf_x1_x2
  WHERE ltf_res.x1_x2_id = ltf_x1_x2.x1_x2_id
  ORDER BY concurso DESC;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_x1_x2_agrupado;
CREATE VIEW lotofacil.v_lotofacil_resultado_x1_x2_agrupado AS
  SELECT
    ltf_agrupado.x1_x2_id,
    x1_x2_1,
    x1_x2_2,
    ltf_agrupado.qt_vezes   AS ltf_qt,
    count(ltf_res.x1_x2_id) AS res_qt
  FROM lotofacil.lotofacil_id_x1_x2_agrupado_por_qt ltf_agrupado
    LEFT JOIN lotofacil.lotofacil_id_x1_x2 ltf_id
      ON ltf_agrupado.x1_x2_id = ltf_id.x1_x2_id
    LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
      ON ltf_id.x1_x2_id = ltf_res.x1_x2_id
  WHERE ltf_agrupado.ltf_qt = 15
  GROUP BY ltf_agrupado.x1_x2_id, x1_x2_1, x1_x2_2, ltf_agrupado.qt_vezes
  ORDER BY res_qt DESC, ltf_qt DESC, x1_x2_1, x1_x2_2;

/**
  Retornar a combinação x1_x2 agrupado, baseado em um intervalo de valores.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_x1_x2_agrupado_intervalo_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_x1_x2_agrupado_intervalo_concurso(concursoInicial NUMERIC,
                                                                                   concursoFinal   NUMERIC)
  RETURNS TABLE(x1_x2_id NUMERIC, x1_x2_1 NUMERIC, x1_x2_2 NUMERIC, ltf_qt NUMERIC, res_qt NUMERIC)
AS
$$
BEGIN
  RETURN QUERY SELECT
                 ltf_agrupado.x1_x2_id :: NUMERIC,
                 ltf_id.x1_x2_1 :: NUMERIC,
                 ltf_id.x1_x2_2 :: NUMERIC,
                 ltf_agrupado.qt_vezes :: NUMERIC   AS ltf_qt,
                 count(ltf_res.x1_x2_id) :: NUMERIC AS res_qt
               FROM lotofacil.lotofacil_id_x1_x2_agrupado_por_qt ltf_agrupado
                 LEFT JOIN lotofacil.lotofacil_id_x1_x2 ltf_id
                   ON ltf_agrupado.x1_x2_id = ltf_id.x1_x2_id
                 LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
                   ON (ltf_id.x1_x2_id = ltf_res.x1_x2_id AND
                       ltf_res.concurso >= concursoInicial AND ltf_res.concurso <= concursoFinal)
               WHERE ltf_agrupado.ltf_qt = 15
               GROUP BY ltf_agrupado.x1_x2_id, x1_x2_1, x1_x2_2, ltf_agrupado.qt_vezes
               ORDER BY res_qt DESC, ltf_qt DESC, x1_x2_1, x1_x2_2;
END;
$$ LANGUAGE plpgsql;


/**
  dezena.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_dezena;
CREATE VIEW lotofacil.v_lotofacil_resultado_dezena AS
  SELECT
    concurso,
    dz_0,
    dz_1,
    dz_2
  FROM lotofacil.lotofacil_resultado_id ltf_res, lotofacil.lotofacil_id_dezena ltf_dezena
  WHERE ltf_res.dz_id = ltf_dezena.dz_id
  ORDER BY concurso DESC;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_dz_agrupado;
CREATE VIEW lotofacil.v_lotofacil_resultado_dz_agrupado AS
  SELECT
    ltf_agrupado.dz_id,
    dz_0,
    dz_1,
    dz_2,
    ltf_agrupado.qt_vezes AS ltf_qt,
    count(ltf_res.dz_id)  AS res_qt
  FROM lotofacil.lotofacil_id_dz_agrupado_por_qt ltf_agrupado
    LEFT JOIN lotofacil.lotofacil_id_dezena ltf_id
      ON ltf_agrupado.dz_id = ltf_id.dz_id
    LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
      ON ltf_id.dz_id = ltf_res.dz_id
  WHERE ltf_agrupado.ltf_qt = 15
  GROUP BY ltf_agrupado.dz_id, dz_0, dz_1, dz_2, ltf_agrupado.qt_vezes
  ORDER BY res_qt DESC, ltf_qt DESC, dz_0, dz_1, dz_2;

/**
  Retornar a combinação dezena agrupado, baseado em um intervalo de valores.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_dz_agrupado_intervalo_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_dz_agrupado_intervalo_concurso(concursoInicial NUMERIC,
                                                                                    concursoFinal   NUMERIC)
  RETURNS TABLE(dz_id NUMERIC, dz_0 numeric, dz_1 NUMERIC, dz_2 NUMERIC, ltf_qt NUMERIC, res_qt NUMERIC)
AS
$$
BEGIN
  RETURN QUERY SELECT
                 ltf_agrupado.dz_id :: NUMERIC,
                 ltf_id.dz_0 :: NUMERIC,
                 ltf_id.dz_1 :: NUMERIC,
                 ltf_id.dz_2 :: NUMERIC,
                 ltf_agrupado.qt_vezes :: NUMERIC AS ltf_qt,
                 count(ltf_res.dz_id) :: NUMERIC  AS res_qt
               FROM lotofacil.lotofacil_id_dz_agrupado_por_qt ltf_agrupado
                 LEFT JOIN lotofacil.lotofacil_id_dezena ltf_id
                   ON ltf_agrupado.dz_id = ltf_id.dz_id
                 LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
                   ON (ltf_id.dz_id = ltf_res.dz_id AND
                       ltf_res.concurso >= concursoInicial AND ltf_res.concurso <= concursoFinal)
               WHERE ltf_agrupado.ltf_qt = 15
               GROUP BY ltf_agrupado.dz_id, dz_0, dz_1, dz_2, ltf_agrupado.qt_vezes
               ORDER BY res_qt DESC, ltf_qt DESC, dz_0, dz_1, dz_2;
END;
$$ LANGUAGE plpgsql;


/**
  unidade.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_unidade;
CREATE VIEW lotofacil.v_lotofacil_resultado_unidade AS
  SELECT
    concurso,
    un_0,
    un_1,
    un_2,
    un_3,
    un_4,
    un_5,
    un_6,
    un_7,
    un_8,
    un_9
  FROM lotofacil.lotofacil_resultado_id ltf_res, lotofacil.lotofacil_id_unidade ltf_unidade
  WHERE ltf_res.un_id = ltf_unidade.un_id
  ORDER BY concurso DESC;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_unidade_agrupado;
CREATE VIEW lotofacil.v_lotofacil_resultado_unidade_agrupado AS
  SELECT
    ltf_agrupado.un_id,
    un_0,
    un_1,
    un_2,
    un_3,
    un_4,
    un_5,
    un_6,
    un_7,
    un_8,
    un_9,
    ltf_agrupado.qt_vezes AS ltf_qt,
    count(ltf_res.un_id)  AS res_qt
  FROM lotofacil.lotofacil_id_unidade_agrupado_por_qt ltf_agrupado
    LEFT JOIN lotofacil.lotofacil_id_unidade ltf_id
      ON ltf_agrupado.un_id = ltf_id.un_id
    LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
      ON ltf_id.un_id = ltf_res.un_id
  WHERE ltf_agrupado.ltf_qt = 15
  GROUP BY ltf_agrupado.un_id, un_0, un_1, un_2, un_3, un_4, un_5, un_6, un_7, un_8, un_9, ltf_agrupado.qt_vezes
  ORDER BY res_qt DESC, ltf_qt DESC, un_0, un_1, un_2, un_3, un_4, un_5, un_6, un_7, un_8, un_9;

/**
  Retornar a combinação unidade agrupado, baseado em um intervalo de valores.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_unidade_agrupado_intervalo_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_unidade_agrupado_intervalo_concurso(concursoInicial NUMERIC,
                                                                                     concursoFinal   NUMERIC)
  RETURNS TABLE(un_id NUMERIC,un_0 numeric, un_1 NUMERIC, un_2 NUMERIC, un_3 NUMERIC, un_4 numeric, un_5 numeric, un_6 numeric, un_7 numeric, un_8 NUMERIC, un_9 numeric, ltf_qt NUMERIC, res_qt NUMERIC)
AS
$$
BEGIN
  RETURN QUERY SELECT
                 ltf_agrupado.un_id :: NUMERIC,
                 ltf_id.un_0 :: NUMERIC,
                 ltf_id.un_1 :: NUMERIC,
                 ltf_id.un_2 :: NUMERIC,
                 ltf_id.un_3 :: NUMERIC,
                 ltf_id.un_4 :: NUMERIC,
                 ltf_id.un_5 :: NUMERIC,
                 ltf_id.un_6 :: NUMERIC,
                 ltf_id.un_7 :: NUMERIC,
                 ltf_id.un_8 :: NUMERIC,
                 ltf_id.un_9 :: NUMERIC,
                 ltf_agrupado.qt_vezes :: NUMERIC AS ltf_qt,
                 count(ltf_res.un_id) :: NUMERIC  AS res_qt
               FROM lotofacil.lotofacil_id_unidade_agrupado_por_qt ltf_agrupado
                 LEFT JOIN lotofacil.lotofacil_id_unidade ltf_id
                   ON ltf_agrupado.un_id = ltf_id.un_id
                 LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
                   ON (ltf_id.un_id = ltf_res.un_id AND
                       ltf_res.concurso >= concursoInicial AND ltf_res.concurso <= concursoFinal)
               WHERE ltf_agrupado.ltf_qt = 15
               GROUP BY ltf_agrupado.un_id, un_0, un_1, un_2, un_3, un_4, un_5, un_6, un_7, un_8, un_9,
                 ltf_agrupado.qt_vezes
               ORDER BY res_qt DESC, ltf_qt DESC, un_0, un_1, un_2, un_3, un_4, un_5, un_6, un_7, un_8, un_9;
END;
$$ LANGUAGE plpgsql;


/**
  algarismo.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_algarismo;
CREATE VIEW lotofacil.v_lotofacil_resultado_algarismo AS
  SELECT
    concurso,
    alg_0,
    alg_1,
    alg_2,
    alg_3,
    alg_4,
    alg_5,
    alg_6,
    alg_7,
    alg_8,
    alg_9
  FROM lotofacil.lotofacil_resultado_id ltf_res, lotofacil.lotofacil_id_algarismo ltf_algarismo
  WHERE ltf_res.alg_id = ltf_algarismo.alg_id
  ORDER BY concurso DESC;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_algarismo_agrupado;
CREATE VIEW lotofacil.v_lotofacil_resultado_algarismo_agrupado AS
  SELECT
    ltf_agrupado.alg_id,
    alg_0,
    alg_1,
    alg_2,
    alg_3,
    alg_4,
    alg_5,
    alg_6,
    alg_7,
    alg_8,
    alg_9,
    ltf_agrupado.qt_vezes AS ltf_qt,
    count(ltf_res.alg_id) AS res_qt
  FROM lotofacil.lotofacil_id_algarismo_agrupado_por_qt ltf_agrupado
    LEFT JOIN lotofacil.lotofacil_id_algarismo ltf_id
      ON ltf_agrupado.alg_id = ltf_id.alg_id
    LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
      ON ltf_id.alg_id = ltf_res.alg_id
  WHERE ltf_agrupado.ltf_qt = 15
  GROUP BY ltf_agrupado.alg_id, alg_0, alg_1, alg_2, alg_3, alg_4, alg_5, alg_6, alg_7, alg_8, alg_9,
    ltf_agrupado.qt_vezes
  ORDER BY res_qt DESC, ltf_qt DESC, alg_0, alg_1, alg_2, alg_3, alg_4, alg_5, alg_6, alg_7, alg_8, alg_9;

/**
  Retornar a combinação algarismo agrupado, baseado em um intervalo de valores.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_algarismo_agrupado_intervalo_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_algarismo_agrupado_intervalo_concurso(concursoInicial NUMERIC,
                                                                                       concursoFinal   NUMERIC)
  RETURNS TABLE(alg_id NUMERIC, alg_1 NUMERIC, alg_2 NUMERIC, alg_3 NUMERIC, alg_4 numeric, alg_5 numeric, alg_6 numeric, alg_7 numeric, alg_8 NUMERIC, ltf_qt NUMERIC, res_qt NUMERIC)
AS
$$
BEGIN
  RETURN QUERY SELECT
                 ltf_agrupado.alg_id :: NUMERIC,
                 ltf_id.alg_0 :: NUMERIC,
                 ltf_id.alg_1 :: NUMERIC,
                 ltf_id.alg_2 :: NUMERIC,
                 ltf_id.alg_3 :: NUMERIC,
                 ltf_id.alg_4 :: NUMERIC,
                 ltf_id.alg_5 :: NUMERIC,
                 ltf_id.alg_6 :: NUMERIC,
                 ltf_id.alg_7 :: NUMERIC,
                 ltf_id.alg_8 :: NUMERIC,
                 ltf_id.alg_9 :: NUMERIC,
                 ltf_agrupado.qt_vezes :: NUMERIC AS ltf_qt,
                 count(ltf_res.alg_id) :: NUMERIC AS res_qt
               FROM lotofacil.lotofacil_id_algarismo_agrupado_por_qt ltf_agrupado
                 LEFT JOIN lotofacil.lotofacil_id_algarismo ltf_id
                   ON ltf_agrupado.alg_id = ltf_id.alg_id
                 LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
                   ON (ltf_id.alg_id = ltf_res.alg_id AND
                       ltf_res.concurso >= concursoInicial AND ltf_res.concurso <= concursoFinal)
               WHERE ltf_agrupado.ltf_qt = 15
               GROUP BY ltf_agrupado.alg_id, alg_0, alg_1, alg_2, alg_3, alg_4, alg_5, alg_6, alg_7, alg_8, alg_9,
                 ltf_agrupado.qt_vezes
               ORDER BY res_qt DESC, ltf_qt DESC, alg_0, alg_1, alg_2, alg_3, alg_4, alg_5, alg_6, alg_7, alg_8, alg_9;
END;
$$ LANGUAGE plpgsql;


/**
  soma_de_bolas.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_soma_de_bolas;
CREATE VIEW lotofacil.v_lotofacil_resultado_soma_de_bolas AS
  SELECT
    concurso,
    soma_de_bolas
  FROM lotofacil.lotofacil_resultado_id ltf_res, lotofacil.lotofacil_id_soma_de_bolas ltf_soma_de_bolas
  WHERE ltf_res.sm_bolas_id = ltf_soma_de_bolas.sm_bolas_id
  ORDER BY concurso DESC;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_soma_de_bolas_agrupado;
CREATE VIEW lotofacil.v_lotofacil_resultado_soma_de_bolas_agrupado AS
  SELECT
    ltf_agrupado.sm_bolas_id,
    soma_de_bolas,
    ltf_agrupado.qt_vezes      AS ltf_qt,
    count(ltf_res.sm_bolas_id) AS res_qt
  FROM lotofacil.lotofacil_id_soma_de_bolas_agrupado_por_qt ltf_agrupado
    LEFT JOIN lotofacil.lotofacil_id_soma_de_bolas ltf_id
      ON ltf_agrupado.sm_bolas_id = ltf_id.sm_bolas_id
    LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
      ON ltf_id.sm_bolas_id = ltf_res.sm_bolas_id
  WHERE ltf_agrupado.ltf_qt = 15
  GROUP BY ltf_agrupado.sm_bolas_id, soma_de_bolas, ltf_agrupado.qt_vezes
  ORDER BY res_qt DESC, ltf_qt DESC, soma_de_bolas;

/**
  Retornar a combinação soma_de_bolas agrupado, baseado em um intervalo de valores.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_soma_de_bolas_agrupado_intervalo_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_soma_de_bolas_agrupado_intervalo_concurso(concursoInicial NUMERIC,
                                                                                           concursoFinal   NUMERIC)
  RETURNS TABLE(sm_bolas_id NUMERIC, soma_de_bolas NUMERIC, ltf_qt NUMERIC, res_qt NUMERIC)
AS
$$
BEGIN
  RETURN QUERY SELECT
                 ltf_agrupado.sm_bolas_id :: NUMERIC,
                 ltf_id.soma_de_bolas :: NUMERIC,
                 ltf_agrupado.qt_vezes :: NUMERIC      AS ltf_qt,
                 count(ltf_res.sm_bolas_id) :: NUMERIC AS res_qt
               FROM lotofacil.lotofacil_id_soma_de_bolas_agrupado_por_qt ltf_agrupado
                 LEFT JOIN lotofacil.lotofacil_id_soma_de_bolas ltf_id
                   ON ltf_agrupado.sm_bolas_id = ltf_id.sm_bolas_id
                 LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
                   ON (ltf_id.sm_bolas_id = ltf_res.sm_bolas_id AND
                       ltf_res.concurso >= concursoInicial AND ltf_res.concurso <= concursoFinal)
               WHERE ltf_agrupado.ltf_qt = 15
               GROUP BY ltf_agrupado.sm_bolas_id, soma_de_bolas, ltf_agrupado.qt_vezes
               ORDER BY res_qt DESC, ltf_qt DESC, soma_de_bolas;
END;
$$ LANGUAGE plpgsql;


/**
  soma_algarismo.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_soma_algarismo;
CREATE VIEW lotofacil.v_lotofacil_resultado_soma_algarismo AS
  SELECT
    concurso,
    algarismo
  FROM lotofacil.lotofacil_resultado_id ltf_res, lotofacil.lotofacil_id_soma_algarismo ltf_soma_algarismo
  WHERE ltf_res.sm_alg_id = ltf_soma_algarismo.sm_alg_id
  ORDER BY concurso DESC;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_soma_algarismo_agrupado;
CREATE VIEW lotofacil.v_lotofacil_resultado_soma_algarismo_agrupado AS
  SELECT
    ltf_agrupado.sm_alg_id,
    algarismo,
    ltf_agrupado.qt_vezes    AS ltf_qt,
    count(ltf_res.sm_alg_id) AS res_qt
  FROM lotofacil.lotofacil_id_soma_algarismo_agrupado_por_qt ltf_agrupado
    LEFT JOIN lotofacil.lotofacil_id_soma_algarismo ltf_id
      ON ltf_agrupado.sm_alg_id = ltf_id.sm_alg_id
    LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
      ON ltf_id.sm_alg_id = ltf_res.sm_alg_id
  WHERE ltf_agrupado.ltf_qt = 15
  GROUP BY ltf_agrupado.sm_alg_id, algarismo, ltf_agrupado.qt_vezes
  ORDER BY res_qt DESC, ltf_qt DESC, algarismo;

/**
  Retornar a combinação soma_algarismo agrupado, baseado em um intervalo de valores.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_soma_algarismo_agrupado_intervalo_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_soma_algarismo_agrupado_intervalo_concurso(concursoInicial NUMERIC,
                                                                                            concursoFinal   NUMERIC)
  RETURNS TABLE(sm_alg_id NUMERIC, soma_algarismo NUMERIC, ltf_qt NUMERIC, res_qt NUMERIC)
AS
$$
BEGIN
  RETURN QUERY SELECT
                 ltf_agrupado.sm_alg_id :: NUMERIC,
                 ltf_id.algarismo :: NUMERIC,
                 ltf_agrupado.qt_vezes :: NUMERIC    AS ltf_qt,
                 count(ltf_res.sm_alg_id) :: NUMERIC AS res_qt
               FROM lotofacil.lotofacil_id_soma_algarismo_agrupado_por_qt ltf_agrupado
                 LEFT JOIN lotofacil.lotofacil_id_soma_algarismo ltf_id
                   ON ltf_agrupado.sm_alg_id = ltf_id.sm_alg_id
                 LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
                   ON (ltf_id.sm_alg_id = ltf_res.sm_alg_id AND
                       ltf_res.concurso >= concursoInicial AND ltf_res.concurso <= concursoFinal)
               WHERE ltf_agrupado.ltf_qt = 15
               GROUP BY ltf_agrupado.sm_alg_id, algarismo, ltf_agrupado.qt_vezes
               ORDER BY res_qt DESC, ltf_qt DESC, algarismo;
END;
$$ LANGUAGE plpgsql;


/**
  x1_x2.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_x1_x2;
CREATE VIEW lotofacil.v_lotofacil_resultado_x1_x2 AS
  SELECT
    concurso,
    x1_x2_1,
    x1_x2_2
  FROM lotofacil.lotofacil_resultado_id ltf_res, lotofacil.lotofacil_id_x1_x2 ltf_x1_x2
  WHERE ltf_res.x1_x2_id = ltf_x1_x2.x1_x2_id
  ORDER BY concurso DESC;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_x1_x2_agrupado;
CREATE VIEW lotofacil.v_lotofacil_resultado_x1_x2_agrupado AS
  SELECT
    ltf_agrupado.x1_x2_id,
    x1_x2_1,
    x1_x2_2,
    ltf_agrupado.qt_vezes   AS ltf_qt,
    count(ltf_res.x1_x2_id) AS res_qt
  FROM lotofacil.lotofacil_id_x1_x2_agrupado_por_qt ltf_agrupado
    LEFT JOIN lotofacil.lotofacil_id_x1_x2 ltf_id
      ON ltf_agrupado.x1_x2_id = ltf_id.x1_x2_id
    LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
      ON ltf_id.x1_x2_id = ltf_res.x1_x2_id
  WHERE ltf_agrupado.ltf_qt = 15
  GROUP BY ltf_agrupado.x1_x2_id, x1_x2_1, x1_x2_2, ltf_agrupado.qt_vezes
  ORDER BY res_qt DESC, ltf_qt DESC, x1_x2_1, x1_x2_2;

/**
  Retornar a combinação x1_x2 agrupado, baseado em um intervalo de valores.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_x1_x2_agrupado_intervalo_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_x1_x2_agrupado_intervalo_concurso(concursoInicial NUMERIC,
                                                                                   concursoFinal   NUMERIC)
  RETURNS TABLE(x1_x2_id NUMERIC, x1_x2_1 NUMERIC, x1_x2_2 NUMERIC, x1_x2_3 NUMERIC, x1_x2_4 NUMERIC, x1_x2_5 NUMERIC, ltf_qt NUMERIC, res_qt NUMERIC)
AS
$$
BEGIN
  RETURN QUERY SELECT
                 ltf_agrupado.x1_x2_id :: NUMERIC,
                 ltf_id.x1_x2_1 :: NUMERIC,
                 ltf_id.x1_x2_2 :: NUMERIC,
                 ltf_agrupado.qt_vezes :: NUMERIC   AS ltf_qt,
                 count(ltf_res.x1_x2_id) :: NUMERIC AS res_qt
               FROM lotofacil.lotofacil_id_x1_x2_agrupado_por_qt ltf_agrupado
                 LEFT JOIN lotofacil.lotofacil_id_x1_x2 ltf_id
                   ON ltf_agrupado.x1_x2_id = ltf_id.x1_x2_id
                 LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
                   ON (ltf_id.x1_x2_id = ltf_res.x1_x2_id AND
                       ltf_res.concurso >= concursoInicial AND ltf_res.concurso <= concursoFinal)
               WHERE ltf_agrupado.ltf_qt = 15
               GROUP BY ltf_agrupado.x1_x2_id, x1_x2_1, x1_x2_2, ltf_agrupado.qt_vezes
               ORDER BY res_qt DESC, ltf_qt DESC, x1_x2_1, x1_x2_2;
END;
$$ LANGUAGE plpgsql;


/**
  linha_coluna.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_linha_coluna;
CREATE VIEW lotofacil.v_lotofacil_resultado_linha_coluna AS
  SELECT
    concurso,
    lc_1,
    lc_2,
    lc_3,
    lc_4,
    lc_5
  FROM lotofacil.lotofacil_resultado_id ltf_res, lotofacil.lotofacil_id_linha_coluna ltf_linha_coluna
  WHERE ltf_res.lc_id = ltf_linha_coluna.lc_id
  ORDER BY concurso DESC;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_linha_coluna_agrupado;
CREATE VIEW lotofacil.v_lotofacil_resultado_linha_coluna_agrupado AS
  SELECT
    ltf_agrupado.lc_id,
    lc_1,
    lc_2,
    lc_3,
    lc_4,
    lc_5,
    ltf_agrupado.qt_vezes AS ltf_qt,
    count(ltf_res.lc_id)  AS res_qt
  FROM lotofacil.lotofacil_id_linha_coluna_agrupado_por_qt ltf_agrupado
    LEFT JOIN lotofacil.lotofacil_id_linha_coluna ltf_id
      ON ltf_agrupado.lc_id = ltf_id.lc_id
    LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
      ON ltf_id.lc_id = ltf_res.lc_id
  WHERE ltf_agrupado.ltf_qt = 15
  GROUP BY ltf_agrupado.lc_id, lc_1, lc_2, lc_3, lc_4, lc_5, ltf_agrupado.qt_vezes
  ORDER BY res_qt DESC, ltf_qt DESC, lc_1, lc_2, lc_3, lc_4, lc_5;

/**
  Retornar a combinação linha_coluna agrupado, baseado em um intervalo de valores.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_linha_coluna_agrupado_intervalo_concurso( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_linha_coluna_agrupado_intervalo_concurso(concursoInicial NUMERIC,
                                                                                          concursoFinal   NUMERIC)
  RETURNS TABLE(lc_id NUMERIC, lc_1 NUMERIC, lc_2 NUMERIC, lc_3 NUMERIC, lc_4 NUMERIC, lc_5 NUMERIC, ltf_qt NUMERIC, res_qt NUMERIC)
AS
$$
BEGIN
  RETURN QUERY SELECT
                 ltf_agrupado.lc_id :: NUMERIC,
                 ltf_id.lc_1 :: NUMERIC,
                 ltf_id.lc_2 :: NUMERIC,
                 ltf_id.lc_3 :: NUMERIC,
                 ltf_id.lc_4 :: NUMERIC,
                 ltf_id.lc_5 :: NUMERIC,
                 ltf_agrupado.qt_vezes :: NUMERIC AS ltf_qt,
                 count(ltf_res.lc_id) :: NUMERIC  AS res_qt
               FROM lotofacil.lotofacil_id_linha_coluna_agrupado_por_qt ltf_agrupado
                 LEFT JOIN lotofacil.lotofacil_id_linha_coluna ltf_id
                   ON ltf_agrupado.lc_id = ltf_id.lc_id
                 LEFT JOIN lotofacil.lotofacil_resultado_id ltf_res
                   ON (ltf_id.lc_id = ltf_res.lc_id AND
                       ltf_res.concurso >= concursoInicial AND ltf_res.concurso <= concursoFinal)
               WHERE ltf_agrupado.ltf_qt = 15
               GROUP BY ltf_agrupado.lc_id, lc_1, lc_2, lc_3, lc_4, lc_5, ltf_agrupado.qt_vezes
               ORDER BY res_qt DESC, ltf_qt DESC, lc_1, lc_2, lc_3, lc_4, lc_5;
END;
$$ LANGUAGE plpgsql;
















/**
  Retorna todo os concursos.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_concursos;
CREATE VIEW lotofacil.v_lotofacil_concursos (concurso) AS
  SELECT concurso
  FROM lotofacil.lotofacil_resultado_num
  GROUP BY concurso
  ORDER BY concurso;


/**
  Retorna somente ltf_id que ainda não foram sorteados na lotofacil.
 */
DROP VIEW IF EXISTS lotofacil.v_lotofacil_num_nao_sorteado;
CREATE VIEW lotofacil.v_lotofacil_num_nao_sorteado AS
  SELECT ltf_id
  FROM lotofacil.lotofacil_num ltf_num
  WHERE ltf_id NOT IN (SELECT ltf_id
                       FROM lotofacil.lotofacil_resultado_id);


drop view if exists lotofacil.v_lotofacil_resultado_novos_repetidos;
create view lotofacil.v_lotofacil_resultado_novos_repetidos
  AS
  Select
    ltf_a.concurso,
    ltf_b.novos,
    ltf_b.repetidos
  from lotofacil.lotofacil_resultado_novos_repetidos ltf_a,
    lotofacil.lotofacil_id_novos_repetidos ltf_b
  where ltf_a.novos_repetidos_id = ltf_b.novos_repetidos_id
  order by ltf_a.concurso






