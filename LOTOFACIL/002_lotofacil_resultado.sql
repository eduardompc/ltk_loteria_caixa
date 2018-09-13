/**
  Neste arquivo, está armazena as tabelas que armazena os resultados de cada concurso da lotofacil.
  Autor:  Fábio Moura de Oliveira.
 */

/**
  Apaga as views, pois ela depende das tabelas deste arquivo.
 */

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_par_impar;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_par_impar_detalhado;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_externo_interno;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_externo_interno_detalhado;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_primo;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_primo_detalhado;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_horizontal;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_horizontal_detalhado;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_vertical;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_vertical_detalhado;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_diagonal;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_diagonal_detalhado;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_cruzeta;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_cruzeta_detalhado;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_externo_interno;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_externo_interno_detalhado;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_quarteto;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_quarteto_detalhado;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_trio;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_trio_detalhado;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_b1;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_b1_b15;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_b1_b8_b15;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_b1_b4_b8_b12_b15;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_grupo2bolas;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_grupo3bolas;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_grupo4bolas;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_grupo5bolas;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_grupo_2bolas;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_grupo_3bolas;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_grupo_4bolas;
DROP VIEW IF EXISTS lotofacil.v_lotofacil_grupo_5bolas;

DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_grupo_2bolas;
DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_grupo_3bolas;
DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_grupo_4bolas;
DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_grupo_5bolas;




/**
  Apaga as tabelas de colunas b.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_bolas;
DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_num;

/**
  Esta tabela é semelhante à tabela lotofacil_num.
  Aqui, se a bola saiu, o campo corresponde áquela bola terá o valor 1, senão terá
  o valor zero.
  É nesta tabela que o usuário deve utilizar pra inserir um novo concurso.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_num;
CREATE TABLE lotofacil.lotofacil_resultado_num (
  concurso NUMERIC NOT NULL,
  data     DATE    NOT NULL,

  num_1    NUMERIC DEFAULT 0 CHECK (num_1 IN (0, 1)),
  num_2    NUMERIC DEFAULT 0 CHECK (num_2 IN (0, 1)),
  num_3    NUMERIC DEFAULT 0 CHECK (num_3 IN (0, 1)),
  num_4    NUMERIC DEFAULT 0 CHECK (num_4 IN (0, 1)),
  num_5    NUMERIC DEFAULT 0 CHECK (num_5 IN (0, 1)),
  num_6    NUMERIC DEFAULT 0 CHECK (num_6 IN (0, 1)),
  num_7    NUMERIC DEFAULT 0 CHECK (num_7 IN (0, 1)),
  num_8    NUMERIC DEFAULT 0 CHECK (num_8 IN (0, 1)),
  num_9    NUMERIC DEFAULT 0 CHECK (num_9 IN (0, 1)),
  num_10   NUMERIC DEFAULT 0 CHECK (num_10 IN (0, 1)),
  num_11   NUMERIC DEFAULT 0 CHECK (num_11 IN (0, 1)),
  num_12   NUMERIC DEFAULT 0 CHECK (num_12 IN (0, 1)),
  num_13   NUMERIC DEFAULT 0 CHECK (num_13 IN (0, 1)),
  num_14   NUMERIC DEFAULT 0 CHECK (num_14 IN (0, 1)),
  num_15   NUMERIC DEFAULT 0 CHECK (num_15 IN (0, 1)),
  num_16   NUMERIC DEFAULT 0 CHECK (num_16 IN (0, 1)),
  num_17   NUMERIC DEFAULT 0 CHECK (num_17 IN (0, 1)),
  num_18   NUMERIC DEFAULT 0 CHECK (num_18 IN (0, 1)),
  num_19   NUMERIC DEFAULT 0 CHECK (num_19 IN (0, 1)),
  num_20   NUMERIC DEFAULT 0 CHECK (num_20 IN (0, 1)),
  num_21   NUMERIC DEFAULT 0 CHECK (num_21 IN (0, 1)),
  num_22   NUMERIC DEFAULT 0 CHECK (num_22 IN (0, 1)),
  num_23   NUMERIC DEFAULT 0 CHECK (num_23 IN (0, 1)),
  num_24   NUMERIC DEFAULT 0 CHECK (num_24 IN (0, 1)),
  num_25   NUMERIC DEFAULT 0 CHECK (num_25 IN (0, 1)),

  CONSTRAINT lotofacil_resultado_num_chk CHECK (
    (num_1 + num_2 + num_3 + num_4 + num_5 + num_6 + num_7 + num_8 + num_9 + num_10 +
     num_11 + num_12 + num_13 + num_14 + num_15 + num_16 + num_17 + num_18 + num_19 + num_20 +
     num_21 + num_22 + num_23 + num_24 + num_25) = 15),

  CONSTRAINT lotofacil_resultado_pk PRIMARY KEY (concurso)

);
COMMENT ON TABLE lotofacil.lotofacil_resultado_num IS
'Esta é a tabela inicial, que são armazenados os resultados da lotofacil, '
'os campos num_0 a num_99 corresponde respectivamentes às bolas 0 a 99 do lotofacil,'
'o campo terá o valor 1, se a bola foi sorteada, 0 (zero) caso contrário.'
'Tem que ser sorteado 20 números, senão a restrição de verificação não irá deixar inserir o registro.';

CREATE INDEX lotofacil_resultado_num_idx_1
  ON lotofacil.lotofacil_resultado_num (num_1);
CREATE INDEX lotofacil_resultado_num_idx_2
  ON lotofacil.lotofacil_resultado_num (num_2);
CREATE INDEX lotofacil_resultado_num_idx_3
  ON lotofacil.lotofacil_resultado_num (num_3);
CREATE INDEX lotofacil_resultado_num_idx_4
  ON lotofacil.lotofacil_resultado_num (num_4);
CREATE INDEX lotofacil_resultado_num_idx_5
  ON lotofacil.lotofacil_resultado_num (num_5);
CREATE INDEX lotofacil_resultado_num_idx_6
  ON lotofacil.lotofacil_resultado_num (num_6);
CREATE INDEX lotofacil_resultado_num_idx_7
  ON lotofacil.lotofacil_resultado_num (num_7);
CREATE INDEX lotofacil_resultado_num_idx_8
  ON lotofacil.lotofacil_resultado_num (num_8);
CREATE INDEX lotofacil_resultado_num_idx_9
  ON lotofacil.lotofacil_resultado_num (num_9);
CREATE INDEX lotofacil_resultado_num_idx_10
  ON lotofacil.lotofacil_resultado_num (num_10);
CREATE INDEX lotofacil_resultado_num_idx_11
  ON lotofacil.lotofacil_resultado_num (num_11);
CREATE INDEX lotofacil_resultado_num_idx_12
  ON lotofacil.lotofacil_resultado_num (num_12);
CREATE INDEX lotofacil_resultado_num_idx_13
  ON lotofacil.lotofacil_resultado_num (num_13);
CREATE INDEX lotofacil_resultado_num_idx_14
  ON lotofacil.lotofacil_resultado_num (num_14);
CREATE INDEX lotofacil_resultado_num_idx_15
  ON lotofacil.lotofacil_resultado_num (num_15);
CREATE INDEX lotofacil_resultado_num_idx_16
  ON lotofacil.lotofacil_resultado_num (num_16);
CREATE INDEX lotofacil_resultado_num_idx_17
  ON lotofacil.lotofacil_resultado_num (num_17);
CREATE INDEX lotofacil_resultado_num_idx_18
  ON lotofacil.lotofacil_resultado_num (num_18);
CREATE INDEX lotofacil_resultado_num_idx_19
  ON lotofacil.lotofacil_resultado_num (num_19);
CREATE INDEX lotofacil_resultado_num_idx_20
  ON lotofacil.lotofacil_resultado_num (num_20);
CREATE INDEX lotofacil_resultado_num_idx_21
  ON lotofacil.lotofacil_resultado_num (num_21);
CREATE INDEX lotofacil_resultado_num_idx_22
  ON lotofacil.lotofacil_resultado_num (num_22);
CREATE INDEX lotofacil_resultado_num_idx_23
  ON lotofacil.lotofacil_resultado_num (num_23);
CREATE INDEX lotofacil_resultado_num_idx_24
  ON lotofacil.lotofacil_resultado_num (num_24);
CREATE INDEX lotofacil_resultado_num_idx_25
  ON lotofacil.lotofacil_resultado_num (num_25);
CREATE INDEX lotofacil_resultado_num_idx_26
  ON lotofacil.lotofacil_resultado_num (
    num_1, num_2, num_3, num_4, num_5, num_6, num_7, num_8, num_9, num_10,
    num_11, num_12, num_13, num_14, num_15, num_16, num_17, num_18, num_19, num_20,
    num_21, num_22, num_23, num_24, num_25
  );


/*
  Nesta tabela, será armazenada, todos os concursos já realizados.
  O usuário não deve inserir dados nesta tabela, ela é populado através de um trigger
  que toda vez que a tabela lotofacil_resultado_num for inserida, os dados são
  inseridos automaticamente neste tabela, o mesmo ocorrendo no caso de atualização ou
  exclusão de registros.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_bolas;
CREATE TABLE lotofacil.lotofacil_resultado_bolas (
  concurso NUMERIC NOT NULL,

  b_1      NUMERIC DEFAULT 0,
  b_2      NUMERIC DEFAULT 0,
  b_3      NUMERIC DEFAULT 0,
  b_4      NUMERIC DEFAULT 0,
  b_5      NUMERIC DEFAULT 0,
  b_6      NUMERIC DEFAULT 0,
  b_7      NUMERIC DEFAULT 0,
  b_8      NUMERIC DEFAULT 0,
  b_9      NUMERIC DEFAULT 0,
  b_10     NUMERIC DEFAULT 0,
  b_11     NUMERIC DEFAULT 0,
  b_12     NUMERIC DEFAULT 0,
  b_13     NUMERIC DEFAULT 0,
  b_14     NUMERIC DEFAULT 0,
  b_15     NUMERIC DEFAULT 0,

  CONSTRAINT lotofacil_resultado_bolas_pk PRIMARY KEY (concurso),
  CONSTRAINT lotofacil_resultado_bolas_fk FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num (concurso)
  ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT lotofacil_resultado_bolas_chk CHECK (
    (b_1 < b_2) AND
    (b_2 < b_3) AND
    (b_3 < b_4) AND
    (b_4 < b_5) AND
    (b_5 < b_6) AND
    (b_6 < b_7) AND
    (b_7 < b_8) AND
    (b_8 < b_9) AND
    (b_9 < b_10) AND
    (b_10 < b_11) AND
    (b_11 < b_12) AND
    (b_12 < b_13) AND
    (b_13 < b_14) AND
    (b_14 < b_15)
  )
);

/**
  Ao invés de ter uma tabela de resultado pra cada tipo de combinação, por exemplo,
  lotofacil_resultado_par_impar
  lotofacil_resultado_primo.
  Achei, mais lógico, ter uma única tabela, com um campo pra cada tipo de combinação,
  este campo armazenará o id da combinação.
  Fica bem mais rápido, pois, iremos recuperar todos os dados
  da tabela lotofacil_id, que contém 
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_id CASCADE;
CREATE TABLE lotofacil.lotofacil_resultado_id (
  concurso            NUMERIC NOT NULL PRIMARY KEY,
  ltf_id              NUMERIC NOT NULL,
  par_impar_id        NUMERIC NOT NULL,
  ext_int_id          NUMERIC NOT NULL,
  prm_id              NUMERIC NOT NULL,
  hrz_id              NUMERIC NOT NULL,
  vrt_id              NUMERIC NOT NULL,
  dg_id               NUMERIC NOT NULL,
  crz_id              NUMERIC NOT NULL,
  qrt_id              NUMERIC NOT NULL,
  trio_id             NUMERIC NOT NULL,
  b1_id               NUMERIC NOT NULL,
  b1_b2_id            NUMERIC NOT NULL,
  b1_b2_b3_id         NUMERIC NOT NULL,
  b1_b2_b3_b4_id      NUMERIC NOT NULL,
  b1_b2_b3_b4_b5_id   NUMERIC NOT NULL,
  b1_b15_id           NUMERIC NOT NULL,
  b1_b8_b15_id        NUMERIC NOT NULL,
  b1_b4_b8_b12_b15_id NUMERIC NOT NULL,
  dz_id               NUMERIC DEFAULT 0,

  CONSTRAINT lotofacil_resultado_fk1 FOREIGN KEY (ltf_id) REFERENCES lotofacil.lotofacil_num (ltf_id) ON UPDATE CASCADE ON DELETE CASCADE,
  -- CONSTRAINT lotofacil_resultado_fk2 FOREIGN KEY (ltf_qt) references lotofacil.lotofacil_num(ltf_id) on update cascade on delete cascade,
  CONSTRAINT lotofacil_resultado_fk3 FOREIGN KEY (par_impar_id) REFERENCES lotofacil.lotofacil_id_par_impar (par_impar_id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT lotofacil_resultado_fk4 FOREIGN KEY (ext_int_id) REFERENCES lotofacil.lotofacil_id_externo_interno (ext_int_id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT lotofacil_resultado_fk5 FOREIGN KEY (prm_id) REFERENCES lotofacil.lotofacil_id_primo (prm_id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT lotofacil_resultado_fk6 FOREIGN KEY (hrz_id) REFERENCES lotofacil.lotofacil_id_horizontal (hrz_id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT lotofacil_resultado_fk7 FOREIGN KEY (vrt_id) REFERENCES lotofacil.lotofacil_id_vertical (vrt_id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT lotofacil_resultado_fk8 FOREIGN KEY (dg_id) REFERENCES lotofacil.lotofacil_id_diagonal (dg_id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT lotofacil_resultado_fk9 FOREIGN KEY (crz_id) REFERENCES lotofacil.lotofacil_id_cruzeta (crz_id) ON UPDATE CASCADE ON DELETE CASCADE,

  CONSTRAINT lotofacil_resultado_fk10 FOREIGN KEY (b1_id) REFERENCES lotofacil.lotofacil_id_b1 (b1_id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT lotofacil_resultado_fk11 FOREIGN KEY (b1_b2_id) REFERENCES lotofacil.lotofacil_id_b1_b2 (b1_b2_id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT lotofacil_resultado_fk12 FOREIGN KEY (b1_b2_b3_id) REFERENCES lotofacil.lotofacil_id_b1_b2_b3 (b1_b2_b3_id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT lotofacil_resultado_fk13 FOREIGN KEY (b1_b2_b3_b4_id) REFERENCES lotofacil.lotofacil_id_b1_b2_b3_b4 (b1_b2_b3_b4_id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT lotofacil_resultado_fk14 FOREIGN KEY (b1_b2_b3_b4_b5_id) REFERENCES lotofacil.lotofacil_id_b1_b2_b3_b4_b5 (b1_b2_b3_b4_b5_id) ON UPDATE CASCADE ON DELETE CASCADE,

  CONSTRAINT lotofacil_resultado_fk15 FOREIGN KEY (b1_b15_id) REFERENCES lotofacil.lotofacil_id_b1_b15 (b1_b15_id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT lotofacil_resultado_fk16 FOREIGN KEY (b1_b8_b15_id) REFERENCES lotofacil.lotofacil_id_b1_b8_b15 (b1_b8_b15_id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT lotofacil_resultado_fk17 FOREIGN KEY (b1_b4_b8_b12_b15_id) REFERENCES lotofacil.lotofacil_id_b1_b4_b8_b12_b15 (b1_b4_b8_b12_b15_id) ON UPDATE CASCADE ON DELETE CASCADE,

  CONSTRAINT lotofacil_resultado_fk18 FOREIGN KEY (dz_id) REFERENCES lotofacil.lotofacil_id_algarismo_na_dezena (ltf_id) ON UPDATE CASCADE ON DELETE CASCADE
);

ALTER TABLE lotofacil.lotofacil_resultado_id
  ADD COLUMN dz_id NUMERIC DEFAULT 0;


/**
  Pra aumentar o desempenho, eu irei criar indices pra cada cada campo, afinal de contas, provavelmente, irei fazer
  select em um ou vários campos desta tabela.
 */
CREATE INDEX lotofacil_resultado_id_idx_1
  ON lotofacil.lotofacil_resultado_id (ltf_id);
CREATE INDEX lotofacil_resultado_id_idx_3
  ON lotofacil.lotofacil_resultado_id (par_impar_id);
CREATE INDEX lotofacil_resultado_id_idx_4
  ON lotofacil.lotofacil_resultado_id (ext_int_id);
CREATE INDEX lotofacil_resultado_id_idx_5
  ON lotofacil.lotofacil_resultado_id (prm_id);
CREATE INDEX lotofacil_resultado_id_idx_6
  ON lotofacil.lotofacil_resultado_id (hrz_id);
CREATE INDEX lotofacil_resultado_id_idx_7
  ON lotofacil.lotofacil_resultado_id (vrt_id);
CREATE INDEX lotofacil_resultado_id_idx_8
  ON lotofacil.lotofacil_resultado_id (dg_id);
CREATE INDEX lotofacil_resultado_id_idx_9
  ON lotofacil.lotofacil_resultado_id (crz_id);

CREATE INDEX lotofacil_resultado_id_idx_11
  ON lotofacil.lotofacil_resultado_id (b1_id);
CREATE INDEX lotofacil_resultado_id_idx_12
  ON lotofacil.lotofacil_resultado_id (b1_b15_id);
CREATE INDEX lotofacil_resultado_id_idx_13
  ON lotofacil.lotofacil_resultado_id (b1_b8_b15_id);
CREATE INDEX lotofacil_resultado_id_idx_14
  ON lotofacil.lotofacil_resultado_id (b1_b4_b8_b12_b15_id);

CREATE INDEX lotofacil_resultado_id_idx_15
  ON lotofacil.lotofacil_resultado_id (dz_id);


/**
  Novos, repetidos, ainda nao saiu, deixou de sair.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_novos_repetidos;
CREATE TABLE lotofacil.lotofacil_resultado_novos_repetidos (
  concurso           NUMERIC NOT NULL,
  novos_repetidos_id NUMERIC NOT NULL,
  CONSTRAINT lotofacil_resultado_novos_repetidos_pk PRIMARY KEY (concurso),
  CONSTRAINT lotofacil_resultado_novos_repetidos_unk UNIQUE (concurso, novos_repetidos_id)
);

/**
  Pra maior desempenho, criei uma tabela separada pra diferença, pois antes,
  eu realizava um group by diretamente na tabela lotofacil_diferenca_entre_bolas
  juntamente com a tabela de resultado e a consulta demorava alguns segundos,
  então, agora, alterei a trigger pra a tabela lotofacil_resultado_num, pra
  que toda vez que houver uma nova inserção, realizar a inserção diretamente
  na tabela abaixo, então, ao executar a view várias vezes, os dados da tabela
  terão poucos registros pra fazer o relacionamento.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_diferenca_entre_bolas;
CREATE TABLE lotofacil.lotofacil_resultado_diferenca_entre_bolas (
  concurso  NUMERIC NOT NULL,
  qt_alt    NUMERIC NOT NULL,
  qt_dif_1  NUMERIC NOT NULL,
  qt_dif_2  NUMERIC NOT NULL,
  qt_dif_3  NUMERIC NOT NULL,
  qt_dif_4  NUMERIC NOT NULL,
  qt_dif_5  NUMERIC NOT NULL,
  qt_dif_6  NUMERIC NOT NULL,
  qt_dif_7  NUMERIC NOT NULL,
  qt_dif_8  NUMERIC NOT NULL,
  qt_dif_9  NUMERIC NOT NULL,
  qt_dif_10 NUMERIC NOT NULL,
  qt_dif_11 NUMERIC NOT NULL,

  CONSTRAINT lotofacil_resultado_diferenca_entre_bolas_FK FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num (concurso)
  ON UPDATE CASCADE ON DELETE CASCADE
);
DROP INDEX IF EXISTS lotofacil_resultado_diferenca_entre_bolas_idx_1;
DROP INDEX IF EXISTS lotofacil_resultado_diferenca_entre_bolas_idx_2;
DROP INDEX IF EXISTS lotofacil_resultado_diferenca_entre_bolas_idx_3;
DROP INDEX IF EXISTS lotofacil_resultado_diferenca_entre_bolas_idx_4;
DROP INDEX IF EXISTS lotofacil_resultado_diferenca_entre_bolas_idx_5;
DROP INDEX IF EXISTS lotofacil_resultado_diferenca_entre_bolas_idx_6;
DROP INDEX IF EXISTS lotofacil_resultado_diferenca_entre_bolas_idx_7;
DROP INDEX IF EXISTS lotofacil_resultado_diferenca_entre_bolas_idx_8;
DROP INDEX IF EXISTS lotofacil_resultado_diferenca_entre_bolas_idx_9;
DROP INDEX IF EXISTS lotofacil_resultado_diferenca_entre_bolas_idx_10;
DROP INDEX IF EXISTS lotofacil_resultado_diferenca_entre_bolas_idx_11;
DROP INDEX IF EXISTS lotofacil_resultado_diferenca_entre_bolas_idx_12;

CREATE INDEX lotofacil_resultado_diferenca_entre_bolas_idx_1
  ON lotofacil.lotofacil_resultado_diferenca_entre_bolas (qt_alt);
CREATE INDEX lotofacil_resultado_diferenca_entre_bolas_idx_2
  ON lotofacil.lotofacil_resultado_diferenca_entre_bolas (qt_dif_1);
CREATE INDEX lotofacil_resultado_diferenca_entre_bolas_idx_3
  ON lotofacil.lotofacil_resultado_diferenca_entre_bolas (qt_dif_2);
CREATE INDEX lotofacil_resultado_diferenca_entre_bolas_idx_4
  ON lotofacil.lotofacil_resultado_diferenca_entre_bolas (qt_dif_3);
CREATE INDEX lotofacil_resultado_diferenca_entre_bolas_idx_5
  ON lotofacil.lotofacil_resultado_diferenca_entre_bolas (qt_dif_4);
CREATE INDEX lotofacil_resultado_diferenca_entre_bolas_idx_6
  ON lotofacil.lotofacil_resultado_diferenca_entre_bolas (qt_dif_5);
CREATE INDEX lotofacil_resultado_diferenca_entre_bolas_idx_7
  ON lotofacil.lotofacil_resultado_diferenca_entre_bolas (qt_dif_6);
CREATE INDEX lotofacil_resultado_diferenca_entre_bolas_idx_8
  ON lotofacil.lotofacil_resultado_diferenca_entre_bolas (qt_dif_7);
CREATE INDEX lotofacil_resultado_diferenca_entre_bolas_idx_9
  ON lotofacil.lotofacil_resultado_diferenca_entre_bolas (qt_dif_8);
CREATE INDEX lotofacil_resultado_diferenca_entre_bolas_idx_10
  ON lotofacil.lotofacil_resultado_diferenca_entre_bolas (qt_dif_9);
CREATE INDEX lotofacil_resultado_diferenca_entre_bolas_idx_11
  ON lotofacil.lotofacil_resultado_diferenca_entre_bolas (qt_dif_10);
CREATE INDEX lotofacil_resultado_diferenca_entre_bolas_idx_12
  ON lotofacil.lotofacil_resultado_diferenca_entre_bolas (qt_dif_11);



DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_soma;
CREATE TABLE lotofacil.lotofacil_resultado_soma (
  concurso  NUMERIC NOT NULL,
  bola_soma NUMERIC NOT NULL,
  CONSTRAINT lotofacil_resultado_soma_pk FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num (concurso) ON UPDATE CASCADE ON DELETE CASCADE
);


/**
  Esta função atualiza a tabela lotofacil.lotofacil_resultado_novos_repetidos.
 */
DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_atualizar_novos_repetidos();
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_atualizar_novos_repetidos()
  RETURNS VOID
LANGUAGE plpgsql
AS $$
DECLARE
  reg_lotofacil_resultado_num         lotofacil.lotofacil_resultado_num%ROWTYPE;

  total_registros_novos_repetidos     NUMERIC;

  total_registros_resultado_bolas_num NUMERIC;

  -- Conta cada registro.
  contador_registro                   NUMERIC;

  -- Conta a quantidade de bola encontrada, parando, quando atingir 15.
  contador_bolas                      NUMERIC;

  -- Arranjo que armazena cada bola.
  -- O índice 0, tem o número do concurso.
  ltf_num                             NUMERIC [26];
  ltf_num_anterior                    NUMERIC [26];
  ltf_frequencia                      NUMERIC [26];

  qt_novos                            NUMERIC;
  qt_repetidos                        NUMERIC;

  -- Arranjo que serve pra armazenar a cada concurso
  -- sorteado, a soma de toda as frequência de novos x repetidos.
  ltf_frequencia_total                NUMERIC [26];

BEGIN
  -- Verifica primeiro se há registro na tabela de resultados;
  SELECT count(*)
  INTO total_registros_resultado_bolas_num
  FROM lotofacil.lotofacil_resultado_num;

  IF total_registros_resultado_bolas_num = 0
  THEN
    RAISE NOTICE 'Nenhum registro na tabela lotofacil_resultado_bolas';
    RETURN;
  END IF;

  -- Devemos sempre deletar os dados da tabela lotofacil_resultado_novos_repetidos
  -- pois, não temos certeza se algum registro foi inserido fora da sequencia.
  DELETE FROM lotofacil.lotofacil_resultado_novos_repetidos;

  -- O loop abaixo é bem simples, ele compara cada campo de prefixo num_
  -- com o mesmo campo do registro anterior e realizar o seguinte procedimento:
  -- se o campo atual é 1
  contador_registro := 1;
  FOR reg_lotofacil_resultado_num IN
  SELECT *
  FROM lotofacil.lotofacil_resultado_num
  ORDER BY concurso
  LOOP
    IF contador_registro = 1
    THEN
      ltf_num_anterior [0] = reg_lotofacil_resultado_num.concurso;
      ltf_num_anterior [1] = reg_lotofacil_resultado_num.num_1;
      ltf_num_anterior [2] = reg_lotofacil_resultado_num.num_2;
      ltf_num_anterior [3] = reg_lotofacil_resultado_num.num_3;
      ltf_num_anterior [4] = reg_lotofacil_resultado_num.num_4;
      ltf_num_anterior [5] = reg_lotofacil_resultado_num.num_5;
      ltf_num_anterior [6] = reg_lotofacil_resultado_num.num_6;
      ltf_num_anterior [7] = reg_lotofacil_resultado_num.num_7;
      ltf_num_anterior [8] = reg_lotofacil_resultado_num.num_8;
      ltf_num_anterior [9] = reg_lotofacil_resultado_num.num_9;
      ltf_num_anterior [10] = reg_lotofacil_resultado_num.num_10;
      ltf_num_anterior [11] = reg_lotofacil_resultado_num.num_11;
      ltf_num_anterior [12] = reg_lotofacil_resultado_num.num_12;
      ltf_num_anterior [13] = reg_lotofacil_resultado_num.num_13;
      ltf_num_anterior [14] = reg_lotofacil_resultado_num.num_14;
      ltf_num_anterior [15] = reg_lotofacil_resultado_num.num_15;
      ltf_num_anterior [16] = reg_lotofacil_resultado_num.num_16;
      ltf_num_anterior [17] = reg_lotofacil_resultado_num.num_17;
      ltf_num_anterior [18] = reg_lotofacil_resultado_num.num_18;
      ltf_num_anterior [19] = reg_lotofacil_resultado_num.num_19;
      ltf_num_anterior [20] = reg_lotofacil_resultado_num.num_20;
      ltf_num_anterior [21] = reg_lotofacil_resultado_num.num_21;
      ltf_num_anterior [22] = reg_lotofacil_resultado_num.num_22;
      ltf_num_anterior [23] = reg_lotofacil_resultado_num.num_23;
      ltf_num_anterior [24] = reg_lotofacil_resultado_num.num_24;
      ltf_num_anterior [25] = reg_lotofacil_resultado_num.num_25;

      INSERT INTO lotofacil.lotofacil_resultado_novos_repetidos (concurso, novos_repetidos_id)
        SELECT
          reg_lotofacil_resultado_num.concurso,
          novos_repetidos_id
        FROM lotofacil.lotofacil_id_novos_repetidos
        WHERE novos = 0 AND repetidos = 15;

      contador_registro := contador_registro + 1;
      CONTINUE;
    END IF;

    -- Armazena os novos registros pra realizar a comparação
    ltf_num [0] = reg_lotofacil_resultado_num.concurso;
    ltf_num [1] = reg_lotofacil_resultado_num.num_1;
    ltf_num [2] = reg_lotofacil_resultado_num.num_2;
    ltf_num [3] = reg_lotofacil_resultado_num.num_3;
    ltf_num [4] = reg_lotofacil_resultado_num.num_4;
    ltf_num [5] = reg_lotofacil_resultado_num.num_5;
    ltf_num [6] = reg_lotofacil_resultado_num.num_6;
    ltf_num [7] = reg_lotofacil_resultado_num.num_7;
    ltf_num [8] = reg_lotofacil_resultado_num.num_8;
    ltf_num [9] = reg_lotofacil_resultado_num.num_9;
    ltf_num [10] = reg_lotofacil_resultado_num.num_10;
    ltf_num [11] = reg_lotofacil_resultado_num.num_11;
    ltf_num [12] = reg_lotofacil_resultado_num.num_12;
    ltf_num [13] = reg_lotofacil_resultado_num.num_13;
    ltf_num [14] = reg_lotofacil_resultado_num.num_14;
    ltf_num [15] = reg_lotofacil_resultado_num.num_15;
    ltf_num [16] = reg_lotofacil_resultado_num.num_16;
    ltf_num [17] = reg_lotofacil_resultado_num.num_17;
    ltf_num [18] = reg_lotofacil_resultado_num.num_18;
    ltf_num [19] = reg_lotofacil_resultado_num.num_19;
    ltf_num [20] = reg_lotofacil_resultado_num.num_20;
    ltf_num [21] = reg_lotofacil_resultado_num.num_21;
    ltf_num [22] = reg_lotofacil_resultado_num.num_22;
    ltf_num [23] = reg_lotofacil_resultado_num.num_23;
    ltf_num [24] = reg_lotofacil_resultado_num.num_24;
    ltf_num [25] = reg_lotofacil_resultado_num.num_25;

    -- Agora, iremos realizar a comparação do registro atual com o anterior.
    qt_repetidos := 0;
    qt_novos := 0;
    contador_bolas := 0;

    -- No loop abaixo, iremos comparar cada campo de prefixo num_ do registro
    -- atual com cada campo de prefixo num_ do registro anterior.
    -- Se o campo atual tiver o valor 1, então:
    -- Se o campo anterior tiver o valor 0, quer dizer, que a bola que corresponde
    -- àquele campo é nova, senão, se o valor fo 1, quer dizer, que a bola está
    -- se repetindo.
    -- Resumindo, iremos contabilizar, a quantidade de novos e repetidos, comparando
    -- sempre com o registro anterior.

    FOR uA IN 1..25 LOOP


      IF ltf_num [uA] = 1 AND ltf_num_anterior [uA] = 1
      THEN
        contador_bolas := contador_bolas + 1;

        -- Se o campo atual da combinação da lotofacil que estamos analisando tem o valor 1
        -- e o campo atual do concurso tiver o valor 1, quer dizer, que se repetem.
        qt_repetidos := qt_repetidos + 1;
      END IF;

      ltf_num_anterior [uA] := ltf_num [uA];
    END LOOP;

    -- Vamos verificar se há no máximo 15 repetidos.
    IF qt_repetidos > 15
    THEN
      RAISE EXCEPTION 'Erro, há mais de 15 números repetidos.';
      RETURN;
    END IF;

    IF qt_repetidos < 5
    THEN
      RAISE EXCEPTION 'Erro, há menos de 5 números repetidos, na lotofacil, sempre haverá 5 números'
      ' repetidos do concurso anterior.';
      RETURN;
    END IF;

    qt_novos = 15 - qt_repetidos;

    -- Insere um novo registro.
    INSERT INTO lotofacil.lotofacil_resultado_novos_repetidos (concurso, novos_repetidos_id)
      SELECT
        reg_lotofacil_resultado_num.concurso,
        novos_repetidos_id
      FROM lotofacil.lotofacil_id_novos_repetidos
      WHERE novos = qt_novos AND repetidos = qt_repetidos;


  END LOOP;

END;
$$;

SELECT lotofacil.fn_lotofacil_resultado_atualizar_novos_repetidos();

/**
  Cria as tabelas que irão armazenados os seguintes dados:
  Novos
  Repetidos
  Ainda Nao saiu
  Deixou de Sair
 */

/**
  Tabela: lotofacil_resultado_novos_num:
  Nesta tabela, cada bola é representado por um campo, onde o nome do campo começa com o prefixo
  num_ e em seguida, vem o número da bola correspondente.
  Se a bola saiu naquele concurso, o valor do campo terá o valor 1.
  Há na lotofacil, no máximo 10 números novos, haverá validadores pra fazer com que esta condição
  seja satisfeita.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_novos_num;
CREATE TABLE lotofacil.lotofacil_resultado_novos_num (
  concurso NUMERIC NOT NULL,
  qt_novos NUMERIC NOT NULL,
  num_1    NUMERIC DEFAULT 0 CHECK (num_1 IN (0, 1)),
  num_2    NUMERIC DEFAULT 0 CHECK (num_2 IN (0, 1)),
  num_3    NUMERIC DEFAULT 0 CHECK (num_3 IN (0, 1)),
  num_4    NUMERIC DEFAULT 0 CHECK (num_4 IN (0, 1)),
  num_5    NUMERIC DEFAULT 0 CHECK (num_5 IN (0, 1)),
  num_6    NUMERIC DEFAULT 0 CHECK (num_6 IN (0, 1)),
  num_7    NUMERIC DEFAULT 0 CHECK (num_7 IN (0, 1)),
  num_8    NUMERIC DEFAULT 0 CHECK (num_8 IN (0, 1)),
  num_9    NUMERIC DEFAULT 0 CHECK (num_9 IN (0, 1)),
  num_10   NUMERIC DEFAULT 0 CHECK (num_10 IN (0, 1)),
  num_11   NUMERIC DEFAULT 0 CHECK (num_11 IN (0, 1)),
  num_12   NUMERIC DEFAULT 0 CHECK (num_12 IN (0, 1)),
  num_13   NUMERIC DEFAULT 0 CHECK (num_13 IN (0, 1)),
  num_14   NUMERIC DEFAULT 0 CHECK (num_14 IN (0, 1)),
  num_15   NUMERIC DEFAULT 0 CHECK (num_15 IN (0, 1)),
  num_16   NUMERIC DEFAULT 0 CHECK (num_16 IN (0, 1)),
  num_17   NUMERIC DEFAULT 0 CHECK (num_17 IN (0, 1)),
  num_18   NUMERIC DEFAULT 0 CHECK (num_18 IN (0, 1)),
  num_19   NUMERIC DEFAULT 0 CHECK (num_19 IN (0, 1)),
  num_20   NUMERIC DEFAULT 0 CHECK (num_20 IN (0, 1)),
  num_21   NUMERIC DEFAULT 0 CHECK (num_21 IN (0, 1)),
  num_22   NUMERIC DEFAULT 0 CHECK (num_22 IN (0, 1)),
  num_23   NUMERIC DEFAULT 0 CHECK (num_23 IN (0, 1)),
  num_24   NUMERIC DEFAULT 0 CHECK (num_24 IN (0, 1)),
  num_25   NUMERIC DEFAULT 0 CHECK (num_25 IN (0, 1)),

  -- Na lotofacil pode haver no máximo 10 números novos.
  CONSTRAINT lotofacil_resultado_novos_num_CHK CHECK ((
    num_1 + num_2 + num_3 + num_4 + num_5 + num_6 + num_7 + num_8 + num_9 +
    num_10 + num_11 + num_12 + num_13 + num_14 + num_15 + num_16 + num_17 +
    num_18 + num_19 + num_20 + num_21 + num_22 + num_23 + num_24 +
    num_25) BETWEEN 0 AND 10),

  CONSTRAINT lotofacil_resultado_novos_num_FK FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num (concurso) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT lotofacil_resultado_novos_num_pk PRIMARY KEY (concurso)
);

/**
  Nesta tabela, armazena as bolas, em ordem crescente, que são novas em relação ao último concurso.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_novos_bolas;
CREATE TABLE lotofacil.lotofacil_resultado_novos_bolas (
  concurso NUMERIC NOT NULL,
  qt_novos NUMERIC NOT NULL,

  b_1      NUMERIC DEFAULT NULL,
  b_2      NUMERIC DEFAULT NULL,
  b_3      NUMERIC DEFAULT NULL,
  b_4      NUMERIC DEFAULT NULL,
  b_5      NUMERIC DEFAULT NULL,
  b_6      NUMERIC DEFAULT NULL,
  b_7      NUMERIC DEFAULT NULL,
  b_8      NUMERIC DEFAULT NULL,
  b_9      NUMERIC DEFAULT NULL,
  b_10     NUMERIC DEFAULT NULL,
  b_11     NUMERIC DEFAULT NULL,
  b_12     NUMERIC DEFAULT NULL,
  b_13     NUMERIC DEFAULT NULL,
  b_14     NUMERIC DEFAULT NULL,
  b_15     NUMERIC DEFAULT NULL,

  CONSTRAINT lotofacil_resultado_novos_bolas_fk FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num (concurso) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT lotofacil_resultado_novos_bolas_pk PRIMARY KEY (concurso),

  CONSTRAINT lotofacil_resultado_novos_bolas_chk CHECK ((b_1 < b_2) AND (b_2 < b_3) AND (b_3 < b_4) AND (b_4 < b_5) AND
                                                        (b_5 < b_6) AND (b_6 < b_7) AND (b_7 < b_8) AND (b_8 < b_9) AND
                                                        (b_9 < b_10)),
  CONSTRAINT lotofacil_resultado_novos_bolas_chk2 CHECK (
    (qt_novos >= 0 AND qt_novos <= 15 AND concurso = 1) OR (
      qt_novos >= 0 AND qt_novos <= 10 AND concurso <> 1
    ))
);

/**
  Um bola é considerada repetida, se a mesma bola saiu no concurso anterior e saiu no concurso atual.
  As bolas são representadas nos campos com prefixo num_, onde após o prefixo 'num_' há um número que
  corresponde a cada bola, por exemplo, num_1, corresponde a bola de número 1, num_2, corresponde a
  bola de número 2 e assim por diante.
  Tais campos terão 2 valores, 0 ou 1, será 0, se a bola não saiu no concurso ou 1 se tal bola saiu no concurso.
  Nesta tabela, há várias restrições que foram definidas pra evitar que inserções de dados inválidos ocorra.
  O campo 'qt_repetidos' corresponde a quantidade de bolas que foram repetidas, sempre haverá no mínimo 5
  bolas repetidas do último concurso.
 */
DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_repetidos_num;
CREATE TABLE lotofacil.lotofacil_resultado_repetidos_num (
  concurso     NUMERIC NOT NULL,

  qt_repetidos NUMERIC NOT NULL CHECK (qt_repetidos >= 5 AND qt_repetidos <= 15),

  num_1        NUMERIC DEFAULT 0 CHECK (num_1 IN (0, 1)),
  num_2        NUMERIC DEFAULT 0 CHECK (num_2 IN (0, 1)),
  num_3        NUMERIC DEFAULT 0 CHECK (num_3 IN (0, 1)),
  num_4        NUMERIC DEFAULT 0 CHECK (num_4 IN (0, 1)),
  num_5        NUMERIC DEFAULT 0 CHECK (num_5 IN (0, 1)),
  num_6        NUMERIC DEFAULT 0 CHECK (num_6 IN (0, 1)),
  num_7        NUMERIC DEFAULT 0 CHECK (num_7 IN (0, 1)),
  num_8        NUMERIC DEFAULT 0 CHECK (num_8 IN (0, 1)),
  num_9        NUMERIC DEFAULT 0 CHECK (num_9 IN (0, 1)),
  num_10       NUMERIC DEFAULT 0 CHECK (num_10 IN (0, 1)),
  num_11       NUMERIC DEFAULT 0 CHECK (num_11 IN (0, 1)),
  num_12       NUMERIC DEFAULT 0 CHECK (num_12 IN (0, 1)),
  num_13       NUMERIC DEFAULT 0 CHECK (num_13 IN (0, 1)),
  num_14       NUMERIC DEFAULT 0 CHECK (num_14 IN (0, 1)),
  num_15       NUMERIC DEFAULT 0 CHECK (num_15 IN (0, 1)),
  num_16       NUMERIC DEFAULT 0 CHECK (num_16 IN (0, 1)),
  num_17       NUMERIC DEFAULT 0 CHECK (num_17 IN (0, 1)),
  num_18       NUMERIC DEFAULT 0 CHECK (num_18 IN (0, 1)),
  num_19       NUMERIC DEFAULT 0 CHECK (num_19 IN (0, 1)),
  num_20       NUMERIC DEFAULT 0 CHECK (num_20 IN (0, 1)),
  num_21       NUMERIC DEFAULT 0 CHECK (num_21 IN (0, 1)),
  num_22       NUMERIC DEFAULT 0 CHECK (num_22 IN (0, 1)),
  num_23       NUMERIC DEFAULT 0 CHECK (num_23 IN (0, 1)),
  num_24       NUMERIC DEFAULT 0 CHECK (num_24 IN (0, 1)),
  num_25       NUMERIC DEFAULT 0 CHECK (num_25 IN (0, 1)),

  -- Na lotofacil pode haver no máximo 15 números repetidos.
  CONSTRAINT lotofacil_resultado_repetidos_num_CHK CHECK ((
    num_1 + num_2 + num_3 + num_4 + num_5 + num_6 + num_7 + num_8 + num_9 +
    num_10 + num_11 + num_12 + num_13 + num_14 + num_15 + num_16 + num_17 +
    num_18 + num_19 + num_20 + num_21 + num_22 + num_23 + num_24 +
    num_25) BETWEEN 5 AND 15),

  CONSTRAINT lotofacil_resultado_repetidos_num_FK FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num (concurso) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT lotofacil_resultado_repetidos_num_PK PRIMARY KEY (concurso)
);

DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_repetidos_bolas;
CREATE TABLE lotofacil.lotofacil_resultado_repetidos_bolas (
  concurso     NUMERIC NOT NULL,
  qt_repetidos NUMERIC NOT NULL,

  b_1          NUMERIC DEFAULT NULL,
  b_2          NUMERIC DEFAULT NULL,
  b_3          NUMERIC DEFAULT NULL,
  b_4          NUMERIC DEFAULT NULL,
  b_5          NUMERIC DEFAULT NULL,
  b_6          NUMERIC DEFAULT NULL,
  b_7          NUMERIC DEFAULT NULL,
  b_8          NUMERIC DEFAULT NULL,
  b_9          NUMERIC DEFAULT NULL,
  b_10         NUMERIC DEFAULT NULL,
  b_11         NUMERIC DEFAULT NULL,
  b_12         NUMERIC DEFAULT NULL,
  b_13         NUMERIC DEFAULT NULL,
  b_14         NUMERIC DEFAULT NULL,
  b_15         NUMERIC DEFAULT NULL,


  CONSTRAINT lotofacil_resultado_repetidos_fk FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num (concurso)
  ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT lotofacil_resultado_repetidos_pk PRIMARY KEY (concurso),

  CONSTRAINT lotofacil_resultado_repetidos_chk CHECK ((b_1 < b_2) AND (b_2 < b_3) AND (b_3 < b_4) AND (b_4 < b_5) AND
                                                      (b_5 < b_6) AND (b_6 < b_7) AND (b_7 < b_8) AND (b_8 < b_9) AND
                                                      (b_9 < b_10) AND (b_10 < b_11) AND (b_11 < b_12) AND (b_12 < b_13)
                                                      AND
                                                      (b_13 < b_14) AND (b_14 < b_15)),

  CONSTRAINT lotofacil_resultado_repetidos_chk_2 CHECK (qt_repetidos >= 0 AND qt_repetidos <= 15)
);

DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_ainda_nao_saiu_num;
CREATE TABLE lotofacil.lotofacil_resultado_ainda_nao_saiu_num (
  concurso          NUMERIC NOT NULL,

  qt_ainda_nao_saiu NUMERIC NOT NULL,

  num_1             NUMERIC DEFAULT 0 CHECK (num_1 IN (0, 1)),
  num_2             NUMERIC DEFAULT 0 CHECK (num_2 IN (0, 1)),
  num_3             NUMERIC DEFAULT 0 CHECK (num_3 IN (0, 1)),
  num_4             NUMERIC DEFAULT 0 CHECK (num_4 IN (0, 1)),
  num_5             NUMERIC DEFAULT 0 CHECK (num_5 IN (0, 1)),
  num_6             NUMERIC DEFAULT 0 CHECK (num_6 IN (0, 1)),
  num_7             NUMERIC DEFAULT 0 CHECK (num_7 IN (0, 1)),
  num_8             NUMERIC DEFAULT 0 CHECK (num_8 IN (0, 1)),
  num_9             NUMERIC DEFAULT 0 CHECK (num_9 IN (0, 1)),
  num_10            NUMERIC DEFAULT 0 CHECK (num_10 IN (0, 1)),
  num_11            NUMERIC DEFAULT 0 CHECK (num_11 IN (0, 1)),
  num_12            NUMERIC DEFAULT 0 CHECK (num_12 IN (0, 1)),
  num_13            NUMERIC DEFAULT 0 CHECK (num_13 IN (0, 1)),
  num_14            NUMERIC DEFAULT 0 CHECK (num_14 IN (0, 1)),
  num_15            NUMERIC DEFAULT 0 CHECK (num_15 IN (0, 1)),
  num_16            NUMERIC DEFAULT 0 CHECK (num_16 IN (0, 1)),
  num_17            NUMERIC DEFAULT 0 CHECK (num_17 IN (0, 1)),
  num_18            NUMERIC DEFAULT 0 CHECK (num_18 IN (0, 1)),
  num_19            NUMERIC DEFAULT 0 CHECK (num_19 IN (0, 1)),
  num_20            NUMERIC DEFAULT 0 CHECK (num_20 IN (0, 1)),
  num_21            NUMERIC DEFAULT 0 CHECK (num_21 IN (0, 1)),
  num_22            NUMERIC DEFAULT 0 CHECK (num_22 IN (0, 1)),
  num_23            NUMERIC DEFAULT 0 CHECK (num_23 IN (0, 1)),
  num_24            NUMERIC DEFAULT 0 CHECK (num_24 IN (0, 1)),
  num_25            NUMERIC DEFAULT 0 CHECK (num_25 IN (0, 1)),

  -- Na lotofacil pode haver no máximo 10 números ainda_nao_saiu.
  CONSTRAINT soma_1_a_25_chk CHECK ((num_1 + num_2 + num_3 + num_4 + num_5 + num_6 + num_7 + num_8 + num_9 +
                                     num_10 + num_11 + num_12 + num_13 + num_14 + num_15 + num_16 + num_17 +
                                     num_18 + num_19 + num_20 + num_21 + num_22 + num_23 + num_24 +
                                     num_25) BETWEEN 0 AND 10),

  CONSTRAINT lotofacil_resultado_ainda_nao_saiu_num_fk FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num (concurso) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT lotofacil_resultado_ainda_nao_saiu_num_pk PRIMARY KEY (concurso)
);

DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_ainda_nao_saiu_bolas;
CREATE TABLE lotofacil.lotofacil_resultado_ainda_nao_saiu_bolas (

  concurso          NUMERIC NOT NULL,

  qt_ainda_nao_saiu NUMERIC NOT NULL,

  b_1               NUMERIC DEFAULT NULL,
  b_2               NUMERIC DEFAULT NULL,
  b_3               NUMERIC DEFAULT NULL,
  b_4               NUMERIC DEFAULT NULL,
  b_5               NUMERIC DEFAULT NULL,
  b_6               NUMERIC DEFAULT NULL,
  b_7               NUMERIC DEFAULT NULL,
  b_8               NUMERIC DEFAULT NULL,
  b_9               NUMERIC DEFAULT NULL,
  b_10              NUMERIC DEFAULT NULL,

  CONSTRAINT lotofacil_resultado_ainda_nao_saiu_bolas_fk FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num (concurso) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT lotofacil_resultado_ainda_nao_saiu_bolas_pk PRIMARY KEY (concurso),

  CONSTRAINT lotofacil_resultado_ainda_nao_saiu_bolas_chk CHECK (
    (b_1 < b_2) AND (b_2 < b_3) AND (b_3 < b_4) AND (b_4 < b_5) AND
    (b_5 < b_6) AND (b_6 < b_7) AND (b_7 < b_8) AND (b_8 < b_9) AND
    (b_9 < b_10)),

  CONSTRAINT lotofacil_resultado_ainda_nao_saiu_intervalo_bolas_chk CHECK (qt_ainda_nao_saiu >= 0 AND
                                                                           qt_ainda_nao_saiu <= 10)
);

DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_deixou_de_sair_num;
CREATE TABLE lotofacil.lotofacil_resultado_deixou_de_sair_num (
  concurso          NUMERIC NOT NULL,

  qt_deixou_de_sair NUMERIC NOT NULL,

  num_1             NUMERIC DEFAULT 0 CHECK (num_1 IN (0, 1)),
  num_2             NUMERIC DEFAULT 0 CHECK (num_2 IN (0, 1)),
  num_3             NUMERIC DEFAULT 0 CHECK (num_3 IN (0, 1)),
  num_4             NUMERIC DEFAULT 0 CHECK (num_4 IN (0, 1)),
  num_5             NUMERIC DEFAULT 0 CHECK (num_5 IN (0, 1)),
  num_6             NUMERIC DEFAULT 0 CHECK (num_6 IN (0, 1)),
  num_7             NUMERIC DEFAULT 0 CHECK (num_7 IN (0, 1)),
  num_8             NUMERIC DEFAULT 0 CHECK (num_8 IN (0, 1)),
  num_9             NUMERIC DEFAULT 0 CHECK (num_9 IN (0, 1)),
  num_10            NUMERIC DEFAULT 0 CHECK (num_10 IN (0, 1)),
  num_11            NUMERIC DEFAULT 0 CHECK (num_11 IN (0, 1)),
  num_12            NUMERIC DEFAULT 0 CHECK (num_12 IN (0, 1)),
  num_13            NUMERIC DEFAULT 0 CHECK (num_13 IN (0, 1)),
  num_14            NUMERIC DEFAULT 0 CHECK (num_14 IN (0, 1)),
  num_15            NUMERIC DEFAULT 0 CHECK (num_15 IN (0, 1)),
  num_16            NUMERIC DEFAULT 0 CHECK (num_16 IN (0, 1)),
  num_17            NUMERIC DEFAULT 0 CHECK (num_17 IN (0, 1)),
  num_18            NUMERIC DEFAULT 0 CHECK (num_18 IN (0, 1)),
  num_19            NUMERIC DEFAULT 0 CHECK (num_19 IN (0, 1)),
  num_20            NUMERIC DEFAULT 0 CHECK (num_20 IN (0, 1)),
  num_21            NUMERIC DEFAULT 0 CHECK (num_21 IN (0, 1)),
  num_22            NUMERIC DEFAULT 0 CHECK (num_22 IN (0, 1)),
  num_23            NUMERIC DEFAULT 0 CHECK (num_23 IN (0, 1)),
  num_24            NUMERIC DEFAULT 0 CHECK (num_24 IN (0, 1)),
  num_25            NUMERIC DEFAULT 0 CHECK (num_25 IN (0, 1)),

  -- Na lotofacil pode haver no máximo 15 números repetidos.
  CONSTRAINT soma_1_a_25_chk CHECK ((num_1 + num_2 + num_3 + num_4 + num_5 + num_6 + num_7 + num_8 + num_9 +
                                     num_10 + num_11 + num_12 + num_13 + num_14 + num_15 + num_16 + num_17 +
                                     num_18 + num_19 + num_20 + num_21 + num_22 + num_23 + num_24 +
                                     num_25) BETWEEN 1 AND 15),

  CONSTRAINT lotofacil_resultado_deixou_de_sair_num_fk FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num (concurso) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT lotofacil_resultado_deixou_de_sair_num_pk PRIMARY KEY (concurso)
);


DROP TABLE IF EXISTS lotofacil.lotofacil_resultado_deixou_de_sair_bolas;
CREATE TABLE lotofacil.lotofacil_resultado_deixou_de_sair_bolas (

  concurso          NUMERIC NOT NULL,

  qt_deixou_de_sair NUMERIC NOT NULL,

  b_1               NUMERIC DEFAULT NULL,
  b_2               NUMERIC DEFAULT NULL,
  b_3               NUMERIC DEFAULT NULL,
  b_4               NUMERIC DEFAULT NULL,
  b_5               NUMERIC DEFAULT NULL,
  b_6               NUMERIC DEFAULT NULL,
  b_7               NUMERIC DEFAULT NULL,
  b_8               NUMERIC DEFAULT NULL,
  b_9               NUMERIC DEFAULT NULL,
  b_10              NUMERIC DEFAULT NULL,
  b_11              NUMERIC DEFAULT NULL,
  b_12              NUMERIC DEFAULT NULL,
  b_13              NUMERIC DEFAULT NULL,
  b_14              NUMERIC DEFAULT NULL,
  b_15              NUMERIC DEFAULT NULL,


  CONSTRAINT lotofacil_resultado_deixou_de_sair_bolas_fk FOREIGN KEY (concurso) REFERENCES lotofacil.lotofacil_resultado_num (concurso)
  ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT lotofacil_resultado_deixou_de_sair_bolas_pk PRIMARY KEY (concurso),

  CONSTRAINT lotofacil_resultado_deixou_de_sair_bolas_chk CHECK (
    (b_1 < b_2) AND (b_2 < b_3) AND (b_3 < b_4) AND (b_4 < b_5) AND
    (b_5 < b_6) AND (b_6 < b_7) AND (b_7 < b_8) AND (b_8 < b_9) AND
    (b_9 < b_10) AND (b_10 < b_11) AND (b_11 < b_12) AND (b_12 < b_13)
    AND
    (b_13 < b_14) AND (b_14 < b_15)),

  CONSTRAINT lotofacil_resultado_deixou_de_sair_chk_2 CHECK (qt_deixou_de_sair >= 0 AND qt_deixou_de_sair <= 15)
);


/**
  Indica quantas vezes,
 */

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_novos_qt_por_concurso;
CREATE VIEW lotofacil.v_lotofacil_resultado_novos_qt_por_concurso AS
  SELECT
    qt_novos,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_resultado_novos_bolas
  GROUP BY qt_novos
  ORDER BY qt_vezes DESC, qt_novos ASC;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_repetidos_qt_por_concurso;
CREATE VIEW lotofacil.v_lotofacil_resultado_repetidos_qt_por_concurso AS
  SELECT
    qt_repetidos,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_resultado_repetidos_bolas
  GROUP BY qt_repetidos
  ORDER BY qt_vezes DESC, qt_repetidos ASC;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_ainda_nao_saiu_qt_por_concurso;
CREATE VIEW lotofacil.v_lotofacil_resultado_ainda_nao_saiu_qt_por_concurso AS
  SELECT
    qt_ainda_nao_saiu,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_resultado_ainda_nao_saiu_bolas
  GROUP BY qt_ainda_nao_saiu
  ORDER BY qt_vezes DESC, qt_ainda_nao_saiu ASC;

DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_deixou_de_sair_qt_por_concurso;
CREATE VIEW lotofacil.v_lotofacil_resultado_deixou_de_sair_qt_por_concurso AS
  SELECT
    qt_deixou_de_sair,
    count(*) AS qt_vezes
  FROM lotofacil.lotofacil_resultado_deixou_de_sair_bolas
  GROUP BY qt_deixou_de_sair
  ORDER BY qt_vezes DESC, qt_deixou_de_sair ASC;


DROP VIEW IF EXISTS lotofacil.v_lotofacil_resultado_novos_repetidos_por_concurso;
CREATE VIEW lotofacil.v_lotofacil_resultado_novos_repetidos_por_concurso AS
  SELECT
    concurso,
    lotofacil.lotofacil_resultado_novos_repetidos.novos_repetidos_id,
    novos,
    repetidos
  FROM lotofacil.lotofacil_resultado_novos_repetidos,
    lotofacil.lotofacil_id_novos_repetidos
  WHERE lotofacil.lotofacil_resultado_novos_repetidos.novos_repetidos_id =
        lotofacil.lotofacil_id_novos_repetidos.novos_repetidos_id
  ORDER BY concurso DESC;

DROP FUNCTION IF EXISTS lotofacil.fn_lotofacil_resultado_novos_repetidos_consolidado( NUMERIC, NUMERIC );
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_novos_repetidos_consolidado(concursoInicio NUMERIC,
                                                                             concursoFim    NUMERIC)
  RETURNS TABLE(id NUMERIC, novos2 NUMERIC, repetidos2 NUMERIC, qt_vezes BIGINT) AS $$
DECLARE
BEGIN
  RETURN QUERY SELECT
                 novos_repetidos_id,
                 novos,
                 repetidos,
                 count(*) AS qt_vezes
               FROM lotofacil.v_lotofacil_resultado_novos_repetidos_por_concurso ltf_novos
               WHERE concurso >= concursoInicio AND concurso <= concursoFim
               GROUP BY novos_repetidos_id, novos, repetidos
               ORDER BY qt_vezes DESC, novos, repetidos;
END; $$ LANGUAGE plpgsql;

SELECT lotofacil.fn_lotofacil_resultado_novos_repetidos_consolidado(1, 19900);

SELECT lotofacil.fn_lotofacil_resultado_frequencia_total_por_concurso(5);






