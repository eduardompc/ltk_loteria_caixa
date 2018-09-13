/**
  Gatilhos (triggers) que são disparados quando houver algum inserção na tabela d_sorte_resultado_num.
 */

drop trigger if exists tg_d_sorte_resultado_num on d_sorte.d_sorte_resultado_num;

drop function if exists d_sorte.fn_d_sorte_resultado_num();
CREATE FUNCTION d_sorte.fn_d_sorte_resultado_num()
  RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
DECLARE
  -- Armazena as 31 bolas, colocamos 32 pois, o índice é baseado em zero.
  resultado_num numeric[32];
  resultado_num_anterior numeric[32];

  -- Indica o identificador ltf_id do concurso.
  ltf_id_concurso numeric;
BEGIN

  if TG_OP = 'DELETE' Or TG_OP = 'UPDATE' THEN
    Delete from d_sorte.d_sorte_resultado_bolas where concurso = old.concurso;

    /**
      Deleta as tabelas referente a grupos.
     */

--     Delete from d_sorte.d_sorte_resultado_grupo_1_bola where concurso = old.concurso;
--     Delete from d_sorte.d_sorte_resultado_grupo_2_bolas where concurso = old.concurso;
--     Delete from d_sorte.d_sorte_resultado_grupo_3_bolas where concurso = old.concurso;
--     Delete from d_sorte.d_sorte_resultado_grupo_4_bolas where concurso = old.concurso;
--     Delete from d_sorte.d_sorte_resultado_grupo_5_bolas where concurso = old.concurso;
--     Delete from d_sorte.d_sorte_resultado_grupo_6_bolas where concurso = old.concurso;
--     Delete from d_sorte.d_sorte_resultado_grupo_7_bolas where concurso = old.concurso;
--     Delete from d_sorte.d_sorte_resultado_grupo_8_bolas where concurso = old.concurso;
--     Delete from d_sorte.d_sorte_resultado_grupo_9_bolas where concurso = old.concurso;
--     Delete from d_sorte.d_sorte_resultado_grupo_10_bolas where concurso = old.concurso;

    Delete from d_sorte.d_sorte_resultado_id where concurso = old.concurso;

    --Delete from d_sorte.d_sorte_resultado_diferenca_entre_bolas where concurso = old.concurso;

--    Delete from d_sorte.d_sorte_resultado_soma where concurso = old.concurso;

    -- Se é delete retorna.
--     if tg_op = 'DELETE' then
--       Execute d_sorte.fn_d_sorte_resultado_novos_repetidos(tg_op, old.concurso, resultado_num);
--       return Old;
--     END IF;

    if tg_op = 'DELETE' THEN
      Return old;
    END IF;

  END IF;

  -- Só chegaremos aqui, se for uma inserção ou atualização.
  resultado_num[1] := new.num_1;
  resultado_num[2] := new.num_2;
  resultado_num[3] := new.num_3;
  resultado_num[4] := new.num_4;
  resultado_num[5] := new.num_5;
  resultado_num[6] := new.num_6;
  resultado_num[7] := new.num_7;
  resultado_num[8] := new.num_8;
  resultado_num[9] := new.num_9;
  resultado_num[10] := new.num_10;
  resultado_num[11] := new.num_11;
  resultado_num[12] := new.num_12;
  resultado_num[13] := new.num_13;
  resultado_num[14] := new.num_14;
  resultado_num[15] := new.num_15;
  resultado_num[16] := new.num_16;
  resultado_num[17] := new.num_17;
  resultado_num[18] := new.num_18;
  resultado_num[19] := new.num_19;
  resultado_num[20] := new.num_20;
  resultado_num[21] := new.num_21;
  resultado_num[22] := new.num_22;
  resultado_num[23] := new.num_23;
  resultado_num[24] := new.num_24;
  resultado_num[25] := new.num_25;
  resultado_num[26] := new.num_26;
  resultado_num[27] := new.num_27;
  resultado_num[28] := new.num_28;
  resultado_num[29] := new.num_29;
  resultado_num[30] := new.num_30;
  resultado_num[31] := new.num_31;

  Raise Notice 'Concurso: %', new.concurso;

  EXECUTE d_sorte.fn_d_sorte_resultado_bolas(new.concurso, resultado_num);
  Execute d_sorte.fn_d_sorte_resultado_id(new.concurso, resultado_num);

  --Execute d_sorte.fn_d_sorte_resultado_novos_repetidos(tg_op, new.concurso, resultado_num);

  RETURN new;
END $$;

-- Cria o trigger
CREATE TRIGGER tg_d_sorte_resultado_num
AFTER INSERT OR DELETE OR UPDATE
  ON d_sorte.d_sorte_resultado_num
FOR EACH ROW
EXECUTE PROCEDURE d_sorte.fn_d_sorte_resultado_num();


/*
  Esta função é chamada, quando qualquer registro for inserido na tabela d_sorte.d_sorte_num.
 */
drop function if exists d_sorte.fn_d_sorte_resultado_bolas(numeric, numeric[]);
create function d_sorte.fn_d_sorte_resultado_bolas(concurso_novo numeric, resultado_num numeric[]) returns VOID
  LANGUAGE plpgsql
  as $$
  DECLARE
    -- Cada vez que uma bola é sorteada, incrementa esta variável.
    contador_bolas numeric;
    
    -- Serve para armazenar as bolas, para poder inserir dentro das tabelas
    resultado_bolas numeric[16];

    -- Pra percorrer o arranjo resultado_num
    indice_num numeric;

    -- Serve pra armazenar o sql dinâmicamente.
    strSqlInsertBolas CHARACTER VARYING;

    soma_bola numeric default 0;
  BEGIN
    strSqlInsertBolas := '';
    contador_bolas := 0;

    soma_bola := 0;
    for indice_num in 1..31 LOOP

        if resultado_num[indice_num] = 1 THEN
          contador_bolas := contador_bolas + 1;

          soma_bola := soma_bola + indice_num;

          if contador_bolas > 7 THEN
            Raise EXCEPTION 'Erro, há mais de 7 bolas sorteadas';
          end if;
          strSqlInsertBolas := strSqlInsertBolas || ', ' || indice_num;
          resultado_bolas[contador_bolas] := indice_num;
        END IF;
      END LOOP;

      -- Executa a inserção na tabela.
      execute 'Insert into d_sorte.d_sorte_resultado_bolas (concurso, b_1, b_2, b_3, b_4, b_5, b_6, b_7)'
        || ' values ('
        || concurso_novo || strSqlInsertBolas || ')';

--       Insert into d_sorte.d_sorte_resultado_soma(concurso, bola_soma)
--         values(concurso_novo, soma_bola);


--       execute d_sorte.fn_d_sorte_resultado_grupos(concurso_novo, resultado_bolas);
    END;
  $$;

/**
  A cada nova inserção ou atualização na tabela d_sorte_resultado_num,
  iremos pegar o campo ltf_id da combinação sorteada que está na tabela
  d_sorte_num e em seguida, pega os ids de todas as combinações que está no registro
  na tabela d_sorte_id e inserir na tabela d_sorte_resultado_id.
 */
drop function if exists d_sorte.fn_d_sorte_resultado_id(numeric, numeric[]);
create function d_sorte.fn_d_sorte_resultado_id(concurso_novo numeric, resultado_num numeric[])
  returns VOID
  LANGUAGE plpgsql
  as $$
  DECLARE
    d_sorte_id_concurso numeric;
    --ltf_diferenca_concurso d_sorte.d_sorte_diferenca_entre_bolas%rowtype;
  BEGIN
    -- Pega o id da combinação do concurso sorteado.
    select d_sorte_id into d_sorte_id_concurso from d_sorte.d_sorte_num
    where
        num_1 = resultado_num[1] AND
        num_2 = resultado_num[2] AND
        num_3 = resultado_num[3] AND
        num_4 = resultado_num[4] AND
        num_5 = resultado_num[5] AND
        num_6 = resultado_num[6] AND
        num_7 = resultado_num[7] AND
        num_8 = resultado_num[8] AND
        num_9 = resultado_num[9] AND
        num_10 = resultado_num[10] AND
        num_11 = resultado_num[11] AND
        num_12 = resultado_num[12] AND
        num_13 = resultado_num[13] AND
        num_14 = resultado_num[14] AND
        num_15 = resultado_num[15] AND
        num_16 = resultado_num[16] AND
        num_17 = resultado_num[17] AND
        num_18 = resultado_num[18] AND
        num_19 = resultado_num[19] AND
        num_20 = resultado_num[20] AND
        num_21 = resultado_num[21] AND
        num_22 = resultado_num[22] AND
        num_23 = resultado_num[23] AND
        num_24 = resultado_num[24] AND
        num_25 = resultado_num[25] AND
        num_26 = resultado_num[26] AND
        num_27 = resultado_num[27] AND
        num_28 = resultado_num[28] AND
        num_29 = resultado_num[29] AND
        num_30 = resultado_num[30] AND
        num_31 = resultado_num[31] AND
        d_sorte_qt = 7;

    -- Em seguida, iremos adicionar o novo registro.
    Insert into d_sorte.d_sorte_resultado_id(concurso, d_sorte_id,
      par_impar_id,
      prm_id,

      ext_int_id,

      hrz_id,
      vrt_id,

      dge_id,
      dgd_id,

      qd_id,

      esq_dir_id,
      sup_inf_id,

      dz_id,
      un_id,
      alg_id,

      sm_bolas_id,
      sm_alg_id
    )
    Select concurso_novo,
      d_sorte_id,

      par_impar_id,
      prm_id,

      ext_int_id,

      hrz_id,
      vrt_id,

      dge_id,
      dgd_id,

      qd_id,

      esq_dir_id,
      sup_inf_id,

      dz_id,
      un_id,
      alg_id,

      sm_bolas_id,
      sm_alg_id
    from d_sorte.d_sorte_id
    where d_sorte_id = d_sorte_id_concurso;

    Raise Notice 'Registro inserido, concurso: %, ltf_id: %', concurso_novo, d_sorte_id_concurso;

--     Insert into d_sorte.d_sorte_resultado_diferenca_entre_bolas(
--       concurso,
--       qt_alt,
--       qt_dif_1,
--       qt_dif_2,
--       qt_dif_3,
--       qt_dif_4,
--       qt_dif_5,
--       qt_dif_6,
--       qt_dif_7,
--       qt_dif_8,
--       qt_dif_9,
--       qt_dif_10,
--       qt_dif_11)
--       Select
--         concurso_novo,
--         qt_alt,
--         qt_dif_1,
--         qt_dif_2,
--         qt_dif_3,
--         qt_dif_4,
--         qt_dif_5,
--         qt_dif_6,
--         qt_dif_7,
--         qt_dif_8,
--         qt_dif_9,
--         qt_dif_10,
--         qt_dif_11
--     from d_sorte.d_sorte_diferenca_entre_bolas
--     where ltf_id = d_sorte_id_concurso;

  END;
  $$;
