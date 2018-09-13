/**
  Gatilhos (triggers) que são disparados quando houver algum inserção na tabela lotofacil_resultado_num.
 */

drop trigger if exists tg_lotofacil_resultado_num on lotofacil.lotofacil_resultado_num;

drop function if exists lotofacil.fn_lotofacil_resultado_num();
CREATE FUNCTION lotofacil.fn_lotofacil_resultado_num()
  RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
DECLARE
  -- Armazena as 25 bolas, colocamos 26 pois, o índice é baseado em zero.
  resultado_num numeric[26];
  resultado_num_anterior numeric[26];

  -- Indica o identificador ltf_id do concurso.
  ltf_id_concurso numeric;
BEGIN

  if TG_OP = 'DELETE' Or TG_OP = 'UPDATE' THEN
    Delete from lotofacil.lotofacil_resultado_bolas where concurso = old.concurso;

    /**
      Deleta as tabelas referente a grupos.
     */
    /*
    // TODO: Verificar depois.
    Delete from lotofacil.lotofacil_resultado_grupo_1_bola where concurso = old.concurso;
    Delete from lotofacil.lotofacil_resultado_grupo_2_bolas where concurso = old.concurso;
    Delete from lotofacil.lotofacil_resultado_grupo_3_bolas where concurso = old.concurso;
    Delete from lotofacil.lotofacil_resultado_grupo_4_bolas where concurso = old.concurso;
    Delete from lotofacil.lotofacil_resultado_grupo_5_bolas where concurso = old.concurso;
    Delete from lotofacil.lotofacil_resultado_grupo_6_bolas where concurso = old.concurso;
    Delete from lotofacil.lotofacil_resultado_grupo_7_bolas where concurso = old.concurso;
    Delete from lotofacil.lotofacil_resultado_grupo_8_bolas where concurso = old.concurso;
    Delete from lotofacil.lotofacil_resultado_grupo_9_bolas where concurso = old.concurso;
    Delete from lotofacil.lotofacil_resultado_grupo_10_bolas where concurso = old.concurso;
    */

    Delete from lotofacil.lotofacil_resultado_id where concurso = old.concurso;

    Delete from lotofacil.lotofacil_resultado_comparacao_de_bolas_na_mesma_coluna
      where concurso_atual = old.concurso
      or concurso_anterior = old.concurso;



    --Delete from lotofacil.lotofacil_resultado_diferenca_entre_bolas where concurso = old.concurso;

    --Delete from lotofacil.lotofacil_resultado_soma where concurso = old.concurso;

    -- Se é delete retorna.
    if tg_op = 'DELETE' then
      Execute lotofacil.fn_lotofacil_resultado_novos_repetidos(tg_op, old.concurso, resultado_num);
      return Old;
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

  Raise Notice 'Concurso: %', new.concurso;

  EXECUTE lotofacil.fn_lotofacil_resultado_bolas(new.concurso, resultado_num);
  Execute lotofacil.fn_lotofacil_resultado_id(new.concurso, resultado_num);
  Execute lotofacil.fn_lotofacil_resultado_novos_repetidos(tg_op, new.concurso, resultado_num);

  RETURN new;
END $$;

-- Cria o trigger
CREATE TRIGGER tg_lotofacil_resultado_num
AFTER INSERT OR DELETE OR UPDATE
  ON lotofacil.lotofacil_resultado_num
FOR EACH ROW
EXECUTE PROCEDURE lotofacil.fn_lotofacil_resultado_num();

/*
  Esta função é chamada, quando qualquer registro for inserido na tabela lotofacil.lotofacil_num.
 */
drop function if exists lotofacil.fn_lotofacil_resultado_bolas(numeric, numeric[]);
create function lotofacil.fn_lotofacil_resultado_bolas(concurso_novo numeric, resultado_num numeric[]) returns VOID
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
    for indice_num in 1..25 LOOP

        if resultado_num[indice_num] = 1 THEN
          contador_bolas := contador_bolas + 1;

          soma_bola := soma_bola + indice_num;

          if contador_bolas > 15 THEN
            Raise EXCEPTION 'Erro, há mais de 15 bolas sorteadas';
          end if;
          strSqlInsertBolas := strSqlInsertBolas || ', ' || indice_num;
          resultado_bolas[contador_bolas] := indice_num;
        END IF;
      END LOOP;

      -- Executa a inserção na tabela.
      execute 'Insert into lotofacil.lotofacil_resultado_bolas (concurso, b_1, b_2, b_3, b_4, b_5,'
        || 'b_6, b_7, b_8, b_9, b_10, b_11, b_12, b_13, b_14, b_15) values ('
        || concurso_novo || strSqlInsertBolas || ')';

    /**
      Insert into lotofacil.lotofacil_resultado_soma(concurso, bola_soma)
        values(concurso_novo, soma_bola);
        */


      --execute lotofacil.fn_lotofacil_resultado_grupos(concurso_novo, resultado_bolas);
    END;
  $$;

/**
  A cada nova inserção ou atualização na tabela lotofacil_resultado_num,
  iremos pegar o campo ltf_id da combinação sorteada que está na tabela
  lotofacil_num e em seguida, pega os ids de todas as combinações que está no registro
  na tabela lotofacil_id e inserir na tabela lotofacil_resultado_id.
 */
drop function if exists lotofacil.fn_lotofacil_resultado_id(numeric, numeric[]);
create function lotofacil.fn_lotofacil_resultado_id(concurso_novo numeric, resultado_num numeric[])
  returns VOID
  LANGUAGE plpgsql
  as $$
  DECLARE
    ltf_id_concurso numeric;
    --ltf_diferenca_concurso lotofacil.lotofacil_diferenca_entre_bolas%rowtype;
  BEGIN
    -- Pega o id da combinação do concurso sorteado.
    select ltf_id into ltf_id_concurso from lotofacil.lotofacil_num
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
        ltf_qt = 15;

    Insert into lotofacil.lotofacil_resultado_id (
      concurso,
      ltf_id, par_impar_id, prm_id, ext_int_id, hrz_id,
      vrt_id, dge_id, dgd_id, esq_dir_id,
      sup_inf_id, sup_esq_inf_dir_id,
      sup_dir_inf_esq_id,
      crz_id, lsng_id, qnt_id, trng_id, trio_id,
      x1_x2_id, dz_id, un_id, alg_id, sm_bolas_id, sm_alg_id, lc_id)

      Select concurso_novo,
        ltf_id, par_impar_id, prm_id, ext_int_id, hrz_id,
      vrt_id, dge_id, dgd_id, esq_dir_id,
      sup_inf_id, sup_esq_inf_dir_id,
      sup_dir_inf_esq_id,
      crz_id, lsng_id, qnt_id, trng_id, trio_id,
      x1_x2_id, dz_id, un_id, alg_id, sm_bolas_id, sm_alg_id, lc_id
        from lotofacil.lotofacil_id
          where ltf_id = ltf_id_concurso;



    Raise Notice 'Registro inserido, concurso: %, ltf_id: %', concurso_novo, ltf_id_concurso;

    /*
      TODO: Pra fazer.
     */
    /*
    Insert into lotofacil.lotofacil_resultado_diferenca_entre_bolas(
      concurso,
      qt_alt,
      qt_dif_1,
      qt_dif_2,
      qt_dif_3,
      qt_dif_4,
      qt_dif_5,
      qt_dif_6,
      qt_dif_7,
      qt_dif_8,
      qt_dif_9,
      qt_dif_10,
      qt_dif_11)
      Select
        concurso_novo,
        qt_alt,
        qt_dif_1,
        qt_dif_2,
        qt_dif_3,
        qt_dif_4,
        qt_dif_5,
        qt_dif_6,
        qt_dif_7,
        qt_dif_8,
        qt_dif_9,
        qt_dif_10,
        qt_dif_11
    from lotofacil.lotofacil_diferenca_entre_bolas
    where ltf_id = ltf_id_concurso;
    */

  END;
  $$;

/**
  Ao inserir, atualizar ou deletar um concurso, devemos atualizar a tabela
  lotofacil_resultado_novos_repetidos.
 */
drop function if exists lotofacil.fn_lotofacil_resultado_novos_repetidos(tg_op text, numeric, numeric[]);
create function lotofacil.fn_lotofacil_resultado_novos_repetidos(tg_op text, concurso_analisar numeric, resultado_bolas numeric[])
  returns void
  LANGUAGE plpgsql
  as $$
  DECLARE
    cursor_concurso_anterior refcursor;
    cursor_concurso_atual refcursor;
    cursor_concurso_posterior refcursor;
    
    b_concurso_anterior boolean;
    b_concurso_atual boolean;
    b_concurso_posterior boolean;

    reg_concurso_anterior lotofacil.lotofacil_resultado_num%rowtype;
    reg_concurso_atual lotofacil.lotofacil_resultado_num%rowtype;
    reg_concurso_posterior lotofacil.lotofacil_resultado_num%rowtype;

    concurso_anterior numeric[26];
    concurso_atual numeric[26];
    concurso_posterior numeric[26];

    uA numeric default 0;
    qt_repetidos numeric default 0;
    qt_novos numeric default 0;
  BEGIN
    tg_op := lower(tg_op);
    Raise Notice 'tg_op=%', tg_op;
    IF (tg_op <> 'update') and
       (tg_op <> 'insert') AND
       (tg_op <> 'delete') THEN
      Raise EXCEPTION 'tg_op inválido: %', tg_op;
      Return;
    END IF;

    Raise Notice '********** Concurso: % ****************', concurso_analisar;


    /**
      Se o concurso é inserido, devemos atualizar o novos x repetidos do concurso atual em relação
      ao concurso anterior e em seguida, atual o próximo concurso em relação ao concurso atual.
     */

    Open cursor_concurso_anterior for
    Select * from lotofacil.lotofacil_resultado_num
      where concurso < concurso_analisar
    order by concurso desc limit 1;
    fetch cursor_concurso_anterior into reg_concurso_anterior;


    b_concurso_anterior := FOUND;
    --Raise Notice 'Atual: %, anterior: %', concurso_analisar, reg_concurso_anterior.concurso;
    
    Open cursor_concurso_atual for
    Select * from lotofacil.lotofacil_resultado_num
      where concurso = concurso_analisar
    order by concurso desc limit 1;
    fetch cursor_concurso_atual into reg_concurso_atual;

    b_concurso_atual := FOUND;
    --Raise Notice 'Atual: %, atual: %', concurso_analisar, reg_concurso_atual.concurso;

    Open cursor_concurso_posterior FOR
    Select * from lotofacil.lotofacil_resultado_num
      where concurso > concurso_analisar
      order by concurso asc limit 1;
    fetch cursor_concurso_posterior into reg_concurso_posterior;

    b_concurso_posterior := FOUND;
    Raise Notice 'Anterior: %, Atual: %, posterior: %', reg_concurso_anterior.concurso,
          concurso_analisar, reg_concurso_posterior.concurso;

    Raise Notice 'anterior = %, atual = %, posterior = %', b_concurso_anterior, b_concurso_atual, b_concurso_posterior;

    /**
      Se o concurso vai ser deletado, devemos, verificar se há concurso anterior e posterior.
     */
    if tg_op = 'delete' THEN
      -- Se não há concurso nem anterior nem posterior, quer dizer que é o único registro que será deletado.
      if (b_concurso_anterior = false) and (b_concurso_posterior = false) THEN
        Delete from lotofacil.lotofacil_resultado_novos_repetidos where concurso = concurso_analisar;
        return;
      END IF;

      -- Se há concurso anterior mas não há concurso posterior, quer dizer que agora só tem um registro
      -- devemos deletar o próprio registro.
      if (b_concurso_anterior = true) and (b_concurso_posterior = false) THEN
        Delete from lotofacil.lotofacil_resultado_novos_repetidos where concurso = concurso_analisar;
        return;
      END IF;

      -- Se não há concurso anterior, mas há concurso posterior, quer dizer, que o registro atual
      -- que será deletado era o primeiro e que agora, o concurso posterior será o primeiro registro
      -- neste caso, devemos deletar o atual e o posterior, em uma relação de novos x repetidos, nunca
      -- o primeiro registro tem informações de novos x repetidos.
      if (b_concurso_anterior = false) and (b_concurso_posterior = true) THEN
        Delete from lotofacil.lotofacil_resultado_novos_repetidos where concurso = concurso_analisar;
        Delete from lotofacil.lotofacil_resultado_novos_repetidos where concurso = reg_concurso_posterior.concurso;
        return;
      END IF;

      -- Se há concurso anterior e posterior, quer dizer que devemos atualizar o registro posterior em relação
      -- ao registro anterior.
      if (b_concurso_anterior = true) and (b_concurso_posterior = true) THEN
        Delete from lotofacil.lotofacil_resultado_novos_repetidos where concurso = concurso_analisar;

        -- Em uma relação de novos x repetidos, sempre comparamos com o registro anterior
        -- Então, o registro que será atualizado, será o registro posterior.
        -- No caso, iremos somar o registro anterior com o posterior, se ambos forem repetidos terá o valor 2.
        concurso_posterior[1] := reg_concurso_anterior.num_1 + reg_concurso_posterior.num_1;
        concurso_posterior[2] := reg_concurso_anterior.num_2 + reg_concurso_posterior.num_2;
        concurso_posterior[3] := reg_concurso_anterior.num_3 + reg_concurso_posterior.num_3;
        concurso_posterior[4] := reg_concurso_anterior.num_4 + reg_concurso_posterior.num_4;
        concurso_posterior[5] := reg_concurso_anterior.num_5 + reg_concurso_posterior.num_5;
        concurso_posterior[6] := reg_concurso_anterior.num_6 + reg_concurso_posterior.num_6;
        concurso_posterior[7] := reg_concurso_anterior.num_7 + reg_concurso_posterior.num_7;
        concurso_posterior[8] := reg_concurso_anterior.num_8 + reg_concurso_posterior.num_8;
        concurso_posterior[9] := reg_concurso_anterior.num_9 + reg_concurso_posterior.num_9;
        concurso_posterior[10] := reg_concurso_anterior.num_10 + reg_concurso_posterior.num_10;
        concurso_posterior[11] := reg_concurso_anterior.num_11 + reg_concurso_posterior.num_11;
        concurso_posterior[12] := reg_concurso_anterior.num_12 + reg_concurso_posterior.num_12;
        concurso_posterior[13] := reg_concurso_anterior.num_13 + reg_concurso_posterior.num_13;
        concurso_posterior[14] := reg_concurso_anterior.num_14 + reg_concurso_posterior.num_14;
        concurso_posterior[15] := reg_concurso_anterior.num_15 + reg_concurso_posterior.num_15;
        concurso_posterior[16] := reg_concurso_anterior.num_16 + reg_concurso_posterior.num_16;
        concurso_posterior[17] := reg_concurso_anterior.num_17 + reg_concurso_posterior.num_17;
        concurso_posterior[18] := reg_concurso_anterior.num_18 + reg_concurso_posterior.num_18;
        concurso_posterior[19] := reg_concurso_anterior.num_19 + reg_concurso_posterior.num_19;
        concurso_posterior[20] := reg_concurso_anterior.num_20 + reg_concurso_posterior.num_20;
        concurso_posterior[21] := reg_concurso_anterior.num_21 + reg_concurso_posterior.num_21;
        concurso_posterior[22] := reg_concurso_anterior.num_22 + reg_concurso_posterior.num_22;
        concurso_posterior[23] := reg_concurso_anterior.num_23 + reg_concurso_posterior.num_23;
        concurso_posterior[24] := reg_concurso_anterior.num_24 + reg_concurso_posterior.num_24;
        concurso_posterior[25] := reg_concurso_anterior.num_25 + reg_concurso_posterior.num_25;

        qt_novos := 0;
        qt_repetidos := 0;
        for uA in 1..25 LOOP
          if concurso_posterior[uA] = 2 THEN
            qt_repetidos := qt_repetidos + 1;
          END IF;
        END LOOP;
        qt_novos := 15 - qt_repetidos;

        /**
          Atualiza o registro posterior.
         */
        Delete from lotofacil.lotofacil_resultado_novos_repetidos where concurso = reg_concurso_posterior.concurso;
        Insert into lotofacil.lotofacil_resultado_novos_repetidos (concurso, novos_repetidos_id)
          Select reg_concurso_posterior.concurso, novos_repetidos_id from lotofacil.lotofacil_id_novos_repetidos
        where novos = qt_novos;
        Return;
      END IF;

    Elseif (tg_op = 'update') or (tg_op = 'insert') THEN
      -- Se não há concurso anterior nem posterior, então quer dizer, que este é o primeiro concurso.
      -- Pra haver registros de novos x repetidos, deve haver pelo menos dois concursos sorteados.

      Raise Notice 'anterior = %, atual = %, posterior = %', b_concurso_anterior, b_concurso_atual, b_concurso_posterior;

      if (b_concurso_anterior = false) and (b_concurso_posterior = false) THEN
        Raise Notice 'Primeiro if';
        Delete from lotofacil.lotofacil_resultado_novos_repetidos where concurso = concurso_analisar;
        return;
      END IF;

      -- Se há concurso anterior mas não há concurso posterior, quer dizer que este é o últim concurso
      -- inserido, então, devemos atualizar o concurso atual em relação ao último concurso anterior a este
      if (b_concurso_anterior = true) and (b_concurso_posterior = false) THEN
        RAise Notice 'Segundo_if';
        concurso_atual[1] := reg_concurso_anterior.num_1 + reg_concurso_atual.num_1;
        concurso_atual[2] := reg_concurso_anterior.num_2 + reg_concurso_atual.num_2;
        concurso_atual[3] := reg_concurso_anterior.num_3 + reg_concurso_atual.num_3;
        concurso_atual[4] := reg_concurso_anterior.num_4 + reg_concurso_atual.num_4;
        concurso_atual[5] := reg_concurso_anterior.num_5 + reg_concurso_atual.num_5;
        concurso_atual[6] := reg_concurso_anterior.num_6 + reg_concurso_atual.num_6;
        concurso_atual[7] := reg_concurso_anterior.num_7 + reg_concurso_atual.num_7;
        concurso_atual[8] := reg_concurso_anterior.num_8 + reg_concurso_atual.num_8;
        concurso_atual[9] := reg_concurso_anterior.num_9 + reg_concurso_atual.num_9;
        concurso_atual[10] := reg_concurso_anterior.num_10 + reg_concurso_atual.num_10;
        concurso_atual[11] := reg_concurso_anterior.num_11 + reg_concurso_atual.num_11;
        concurso_atual[12] := reg_concurso_anterior.num_12 + reg_concurso_atual.num_12;
        concurso_atual[13] := reg_concurso_anterior.num_13 + reg_concurso_atual.num_13;
        concurso_atual[14] := reg_concurso_anterior.num_14 + reg_concurso_atual.num_14;
        concurso_atual[15] := reg_concurso_anterior.num_15 + reg_concurso_atual.num_15;
        concurso_atual[16] := reg_concurso_anterior.num_16 + reg_concurso_atual.num_16;
        concurso_atual[17] := reg_concurso_anterior.num_17 + reg_concurso_atual.num_17;
        concurso_atual[18] := reg_concurso_anterior.num_18 + reg_concurso_atual.num_18;
        concurso_atual[19] := reg_concurso_anterior.num_19 + reg_concurso_atual.num_19;
        concurso_atual[20] := reg_concurso_anterior.num_20 + reg_concurso_atual.num_20;
        concurso_atual[21] := reg_concurso_anterior.num_21 + reg_concurso_atual.num_21;
        concurso_atual[22] := reg_concurso_anterior.num_22 + reg_concurso_atual.num_22;
        concurso_atual[23] := reg_concurso_anterior.num_23 + reg_concurso_atual.num_23;
        concurso_atual[24] := reg_concurso_anterior.num_24 + reg_concurso_atual.num_24;
        concurso_atual[25] := reg_concurso_anterior.num_25 + reg_concurso_atual.num_25;
        
        
        qt_novos := 0;
        qt_repetidos := 0;
        for uA in 1..25 LOOP
          if concurso_atual[uA] = 2 THEN
            qt_repetidos := qt_repetidos + 1;
          END IF;
        END LOOP;
        qt_novos := 15 - qt_repetidos;

        /**
          Atualiza o registro atual.
         */
        Raise Notice 'anterior = true, posterior = false';

        Delete from lotofacil.lotofacil_resultado_novos_repetidos where concurso = reg_concurso_atual.concurso;
        Insert into lotofacil.lotofacil_resultado_novos_repetidos (concurso, novos_repetidos_id)
          Select reg_concurso_atual.concurso, novos_repetidos_id from lotofacil.lotofacil_id_novos_repetidos
        where novos = qt_novos;
        Return;

      END IF;
      
      -- Se não há registro anterior mas há registro posterior devemos atualizar o registro posterior
      -- em relação ao concurso atual.
      if (b_concurso_anterior = false) and (b_concurso_posterior = true) THEN
        Raise Notice 'Terceiro if';
        concurso_posterior[1] := reg_concurso_atual.num_1 + reg_concurso_posterior.num_1;
        concurso_posterior[2] := reg_concurso_atual.num_2 + reg_concurso_posterior.num_2;
        concurso_posterior[3] := reg_concurso_atual.num_3 + reg_concurso_posterior.num_3;
        concurso_posterior[4] := reg_concurso_atual.num_4 + reg_concurso_posterior.num_4;
        concurso_posterior[5] := reg_concurso_atual.num_5 + reg_concurso_posterior.num_5;
        concurso_posterior[6] := reg_concurso_atual.num_6 + reg_concurso_posterior.num_6;
        concurso_posterior[7] := reg_concurso_atual.num_7 + reg_concurso_posterior.num_7;
        concurso_posterior[8] := reg_concurso_atual.num_8 + reg_concurso_posterior.num_8;
        concurso_posterior[9] := reg_concurso_atual.num_9 + reg_concurso_posterior.num_9;
        concurso_posterior[10] := reg_concurso_atual.num_10 + reg_concurso_posterior.num_10;
        concurso_posterior[11] := reg_concurso_atual.num_11 + reg_concurso_posterior.num_11;
        concurso_posterior[12] := reg_concurso_atual.num_12 + reg_concurso_posterior.num_12;
        concurso_posterior[13] := reg_concurso_atual.num_13 + reg_concurso_posterior.num_13;
        concurso_posterior[14] := reg_concurso_atual.num_14 + reg_concurso_posterior.num_14;
        concurso_posterior[15] := reg_concurso_atual.num_15 + reg_concurso_posterior.num_15;
        concurso_posterior[16] := reg_concurso_atual.num_16 + reg_concurso_posterior.num_16;
        concurso_posterior[17] := reg_concurso_atual.num_17 + reg_concurso_posterior.num_17;
        concurso_posterior[18] := reg_concurso_atual.num_18 + reg_concurso_posterior.num_18;
        concurso_posterior[19] := reg_concurso_atual.num_19 + reg_concurso_posterior.num_19;
        concurso_posterior[20] := reg_concurso_atual.num_20 + reg_concurso_posterior.num_20;
        concurso_posterior[21] := reg_concurso_atual.num_21 + reg_concurso_posterior.num_21;
        concurso_posterior[22] := reg_concurso_atual.num_22 + reg_concurso_posterior.num_22;
        concurso_posterior[23] := reg_concurso_atual.num_23 + reg_concurso_posterior.num_23;
        concurso_posterior[24] := reg_concurso_atual.num_24 + reg_concurso_posterior.num_24;
        concurso_posterior[25] := reg_concurso_atual.num_25 + reg_concurso_posterior.num_25;

        qt_novos := 0;
        qt_repetidos := 0;
        for uA in 1..25 LOOP
          if concurso_posterior[uA] = 2 THEN
            qt_repetidos := qt_repetidos + 1;
          END IF;
        END LOOP;
        qt_novos := 15 - qt_repetidos;

        /**
          Atualiza o registro posterior.
         */
        Delete from lotofacil.lotofacil_resultado_novos_repetidos where concurso = reg_concurso_posterior.concurso;
        Insert into lotofacil.lotofacil_resultado_novos_repetidos (concurso, novos_repetidos_id)
          Select reg_concurso_posterior.concurso, novos_repetidos_id from lotofacil.lotofacil_id_novos_repetidos
        where novos = qt_novos;
        Return;

      END IF;

      /**
        Se há concurso anterior e posterior, devemos atualizar o concurso atual em relação ao concurso
        anterior e em seguida atualizar o concurso posterior em relação ao atual.
       */
      if (b_concurso_anterior = true) and (b_concurso_posterior = true) then
        Raise Notice 'Quarto if';
        /**
          Iremos deletar a relação de novo x repetidos do concurso atual e posterior, pois, serão
          tais registros que serão atualizados.
         */
        Delete from lotofacil.lotofacil_resultado_novos_repetidos where concurso = reg_concurso_atual.concurso;
        Delete from lotofacil.lotofacil_resultado_novos_repetidos where concurso = reg_concurso_posterior.concurso;

        concurso_atual[1] := reg_concurso_anterior.num_1 + reg_concurso_atual.num_1;
        concurso_atual[2] := reg_concurso_anterior.num_2 + reg_concurso_atual.num_2;
        concurso_atual[3] := reg_concurso_anterior.num_3 + reg_concurso_atual.num_3;
        concurso_atual[4] := reg_concurso_anterior.num_4 + reg_concurso_atual.num_4;
        concurso_atual[5] := reg_concurso_anterior.num_5 + reg_concurso_atual.num_5;
        concurso_atual[6] := reg_concurso_anterior.num_6 + reg_concurso_atual.num_6;
        concurso_atual[7] := reg_concurso_anterior.num_7 + reg_concurso_atual.num_7;
        concurso_atual[8] := reg_concurso_anterior.num_8 + reg_concurso_atual.num_8;
        concurso_atual[9] := reg_concurso_anterior.num_9 + reg_concurso_atual.num_9;
        concurso_atual[10] := reg_concurso_anterior.num_10 + reg_concurso_atual.num_10;
        concurso_atual[11] := reg_concurso_anterior.num_11 + reg_concurso_atual.num_11;
        concurso_atual[12] := reg_concurso_anterior.num_12 + reg_concurso_atual.num_12;
        concurso_atual[13] := reg_concurso_anterior.num_13 + reg_concurso_atual.num_13;
        concurso_atual[14] := reg_concurso_anterior.num_14 + reg_concurso_atual.num_14;
        concurso_atual[15] := reg_concurso_anterior.num_15 + reg_concurso_atual.num_15;
        concurso_atual[16] := reg_concurso_anterior.num_16 + reg_concurso_atual.num_16;
        concurso_atual[17] := reg_concurso_anterior.num_17 + reg_concurso_atual.num_17;
        concurso_atual[18] := reg_concurso_anterior.num_18 + reg_concurso_atual.num_18;
        concurso_atual[19] := reg_concurso_anterior.num_19 + reg_concurso_atual.num_19;
        concurso_atual[20] := reg_concurso_anterior.num_20 + reg_concurso_atual.num_20;
        concurso_atual[21] := reg_concurso_anterior.num_21 + reg_concurso_atual.num_21;
        concurso_atual[22] := reg_concurso_anterior.num_22 + reg_concurso_atual.num_22;
        concurso_atual[23] := reg_concurso_anterior.num_23 + reg_concurso_atual.num_23;
        concurso_atual[24] := reg_concurso_anterior.num_24 + reg_concurso_atual.num_24;
        concurso_atual[25] := reg_concurso_anterior.num_25 + reg_concurso_atual.num_25;


        qt_novos := 0;
        qt_repetidos := 0;
        for uA in 1..25 LOOP
          if concurso_atual[uA] = 2 THEN
            qt_repetidos := qt_repetidos + 1;
          END IF;
        END LOOP;
        qt_novos := 15 - qt_repetidos;

        /**
          Atualiza o registro atual.
         */
        Delete from lotofacil.lotofacil_resultado_novos_repetidos where concurso = reg_concurso_atual.concurso;
        Insert into lotofacil.lotofacil_resultado_novos_repetidos (concurso, novos_repetidos_id)
          Select reg_concurso_atual.concurso, novos_repetidos_id from lotofacil.lotofacil_id_novos_repetidos
        where novos = qt_novos;

        /**
          Agora, atualizar o posterior em relação ao atual.
         */
        concurso_posterior[1] := reg_concurso_atual.num_1 + reg_concurso_posterior.num_1;
        concurso_posterior[2] := reg_concurso_atual.num_2 + reg_concurso_posterior.num_2;
        concurso_posterior[3] := reg_concurso_atual.num_3 + reg_concurso_posterior.num_3;
        concurso_posterior[4] := reg_concurso_atual.num_4 + reg_concurso_posterior.num_4;
        concurso_posterior[5] := reg_concurso_atual.num_5 + reg_concurso_posterior.num_5;
        concurso_posterior[6] := reg_concurso_atual.num_6 + reg_concurso_posterior.num_6;
        concurso_posterior[7] := reg_concurso_atual.num_7 + reg_concurso_posterior.num_7;
        concurso_posterior[8] := reg_concurso_atual.num_8 + reg_concurso_posterior.num_8;
        concurso_posterior[9] := reg_concurso_atual.num_9 + reg_concurso_posterior.num_9;
        concurso_posterior[10] := reg_concurso_atual.num_10 + reg_concurso_posterior.num_10;
        concurso_posterior[11] := reg_concurso_atual.num_11 + reg_concurso_posterior.num_11;
        concurso_posterior[12] := reg_concurso_atual.num_12 + reg_concurso_posterior.num_12;
        concurso_posterior[13] := reg_concurso_atual.num_13 + reg_concurso_posterior.num_13;
        concurso_posterior[14] := reg_concurso_atual.num_14 + reg_concurso_posterior.num_14;
        concurso_posterior[15] := reg_concurso_atual.num_15 + reg_concurso_posterior.num_15;
        concurso_posterior[16] := reg_concurso_atual.num_16 + reg_concurso_posterior.num_16;
        concurso_posterior[17] := reg_concurso_atual.num_17 + reg_concurso_posterior.num_17;
        concurso_posterior[18] := reg_concurso_atual.num_18 + reg_concurso_posterior.num_18;
        concurso_posterior[19] := reg_concurso_atual.num_19 + reg_concurso_posterior.num_19;
        concurso_posterior[20] := reg_concurso_atual.num_20 + reg_concurso_posterior.num_20;
        concurso_posterior[21] := reg_concurso_atual.num_21 + reg_concurso_posterior.num_21;
        concurso_posterior[22] := reg_concurso_atual.num_22 + reg_concurso_posterior.num_22;
        concurso_posterior[23] := reg_concurso_atual.num_23 + reg_concurso_posterior.num_23;
        concurso_posterior[24] := reg_concurso_atual.num_24 + reg_concurso_posterior.num_24;
        concurso_posterior[25] := reg_concurso_atual.num_25 + reg_concurso_posterior.num_25;

        qt_novos := 0;
        qt_repetidos := 0;
        for uA in 1..25 LOOP
          if concurso_posterior[uA] = 2 THEN
            qt_repetidos := qt_repetidos + 1;
          END IF;
        END LOOP;
        qt_novos := 15 - qt_repetidos;

        /**
          Atualiza o registro posterior.
         */
        Delete from lotofacil.lotofacil_resultado_novos_repetidos where concurso = reg_concurso_posterior.concurso;
        Insert into lotofacil.lotofacil_resultado_novos_repetidos (concurso, novos_repetidos_id)
          Select reg_concurso_posterior.concurso, novos_repetidos_id from lotofacil.lotofacil_id_novos_repetidos
        where novos = qt_novos;
        Return;
      END IF;
    end if;

  END;
  $$;

Select from lotofacil.fn_lotofacil_resultado_novos_repetidos('insert', 5, [])



/**
  TODO:
 */
drop function if exists lotofacil.fn_lotofacil_resultado_grupos(numeric, numeric[]);
create function lotofacil.fn_lotofacil_resultado_grupos(concurso_novo numeric, resultado_bolas numeric[])
  returns void
  LANGUAGE plpgsql
  as $$
  DECLARE
    uA numeric default 0;
    uB numeric default 0; -- 2 colunas
    uC numeric default 0; -- 3 bolas
    uD numeric default 0; -- 4 bolas
    uE numeric default 0;
    uF numeric default 0;
    uG numeric default 0;
    uH numeric default 0;
    uI numeric default 0;
  BEGIN

    for uA in 1..15 LOOP
        Insert into lotofacil.lotofacil_resultado_grupo_1_bola(concurso, grp_id)
          Select concurso_novo, grp_id from lotofacil.lotofacil_id_grupo_1_bola
            where bola1 = resultado_bolas[uA];
    END LOOP;



    for uA in 1..15 LOOP
      for uB in (uA + 1)..15 loop
        Insert into lotofacil.lotofacil_resultado_grupo_2_bolas(concurso, grp_id)
          Select concurso_novo, grp_id from lotofacil.lotofacil_id_grupo_2_bolas
            where bola1 = resultado_bolas[uA] AND
              bola2 = resultado_bolas[uB];
      END LOOP;
    END LOOP;

    for uA in 1..15 LOOP
      for uB in (uA + 1)..15 loop
        for uC in (uB + 1)..15 loop
          Insert into lotofacil.lotofacil_resultado_grupo_3_bolas(concurso, grp_id)
            Select concurso_novo, grp_id from lotofacil.lotofacil_id_grupo_3_bolas
            where bola1 = resultado_bolas[uA] AND
              bola2 = resultado_bolas[uB] AND
              bola3 = resultado_bolas[uC];
        END LOOP ;
      END LOOP;
    END LOOP;

    ---return;
    -- Não iremos gerar os grupos abaixo.



    for uA in 1..15 LOOP
      for uB in (uA + 1)..15 loop
        for uC in (uB + 1)..15 loop
          for uD in (uC + 1)..15 loop
            Insert into lotofacil.lotofacil_resultado_grupo_4_bolas(concurso, grp_id)
            Select concurso_novo, grp_id from lotofacil.lotofacil_id_grupo_4_bolas
            where bola1 = resultado_bolas[uA] AND
              bola2 = resultado_bolas[uB] AND
              bola3 = resultado_bolas[uC] and
              bola4 = resultado_bolas[uD];

          END LOOP;
        END LOOP ;
      END LOOP;
    END LOOP;


    for uA in 1..15 LOOP
      for uB in (uA + 1)..15 loop
        for uC in (uB + 1)..15 loop
          for uD in (uC + 1)..15 loop
            for uE in (uD + 1)..15 loop
              Insert into lotofacil.lotofacil_resultado_grupo_5_bolas(concurso, grp_id)
              Select concurso_novo, grp_id from lotofacil.lotofacil_id_grupo_5_bolas
              where bola1 = resultado_bolas[uA] AND
                bola2 = resultado_bolas[uB] AND
                bola3 = resultado_bolas[uC] and
                bola4 = resultado_bolas[uD] AND
                bola5 = resultado_bolas[uE];
            END LOOP;
          END LOOP;
        END LOOP ;
      END LOOP;
    END LOOP;

    for uA in 1..15 LOOP
      for uB in (uA + 1)..15 loop
        for uC in (uB + 1)..15 loop
          for uD in (uC + 1)..15 loop
            for uE in (uD + 1)..15 loop
              for uF in (uE + 1)..15 loop
                Insert into lotofacil.lotofacil_resultado_grupo_6_bolas(concurso, grp_id)
                Select concurso_novo, grp_id from lotofacil.lotofacil_id_grupo_6_bolas
                where bola1 = resultado_bolas[uA] AND
                  bola2 = resultado_bolas[uB] AND
                  bola3 = resultado_bolas[uC] and
                  bola4 = resultado_bolas[uD] AND
                  bola5 = resultado_bolas[uE] AND
                  bola6 = resultado_bolas[uF];
              END LOOP;
            END LOOP;
          END LOOP;
        END LOOP ;
      END LOOP;
    END LOOP;

    for uA in 1..15 LOOP
      for uB in (uA + 1)..15 loop
        for uC in (uB + 1)..15 loop
          for uD in (uC + 1)..15 loop
            for uE in (uD + 1)..15 loop
              for uF in (uE + 1)..15 loop
                for uG in (uF + 1)..15 loop
                  Insert into lotofacil.lotofacil_resultado_grupo_7_bolas(concurso, grp_id)
                  Select concurso_novo, grp_id from lotofacil.lotofacil_id_grupo_7_bolas
                  where bola1 = resultado_bolas[uA] AND
                    bola2 = resultado_bolas[uB] AND
                    bola3 = resultado_bolas[uC] and
                    bola4 = resultado_bolas[uD] AND
                    bola5 = resultado_bolas[uE] AND
                    bola6 = resultado_bolas[uF] AND
                    bola7 = resultado_bolas[uG];
                end loop;
              END LOOP;
            END LOOP;
          END LOOP;
        END LOOP ;
      END LOOP;
    END LOOP;

    for uA in 1..15 LOOP
      for uB in (uA + 1)..15 loop
        for uC in (uB + 1)..15 loop
          for uD in (uC + 1)..15 loop
            for uE in (uD + 1)..15 loop
              for uF in (uE + 1)..15 loop
                for uG in (uF + 1)..15 loop
                  for uH in (uG + 1)..15 loop
                    Insert into lotofacil.lotofacil_resultado_grupo_8_bolas(concurso, grp_id)
                    Select concurso_novo, grp_id from lotofacil.lotofacil_id_grupo_8_bolas
                    where bola1 = resultado_bolas[uA] AND
                      bola2 = resultado_bolas[uB] AND
                      bola3 = resultado_bolas[uC] and
                      bola4 = resultado_bolas[uD] AND
                      bola5 = resultado_bolas[uE] AND
                      bola6 = resultado_bolas[uF] AND
                      bola7 = resultado_bolas[uG] AND
                      bola8 = resultado_bolas[uH];
                  end loop;
                end loop;
              END LOOP;
            END LOOP;
          END LOOP;
        END LOOP ;
      END LOOP;
    END LOOP;

    for uA in 1..15 LOOP
      for uB in (uA + 1)..15 loop
        for uC in (uB + 1)..15 loop
          for uD in (uC + 1)..15 loop
            for uE in (uD + 1)..15 loop
              for uF in (uE + 1)..15 loop
                for uG in (uF + 1)..15 loop
                  for uH in (uG + 1)..15 loop
                    for uI in (uH + 1)..15 loop
                      Insert into lotofacil.lotofacil_resultado_grupo_9_bolas(concurso, grp_id)
                      Select concurso_novo, grp_id from lotofacil.lotofacil_id_grupo_9_bolas
                      where bola1 = resultado_bolas[uA] AND
                        bola2 = resultado_bolas[uB] AND
                        bola3 = resultado_bolas[uC] and
                        bola4 = resultado_bolas[uD] AND
                        bola5 = resultado_bolas[uE] AND
                        bola6 = resultado_bolas[uF] AND
                        bola7 = resultado_bolas[uG] AND
                        bola8 = resultado_bolas[uH] AND
                        bola9 = resultado_bolas[uI];
                    end loop;
                  end loop;
                end loop;
              END LOOP;
            END LOOP;
          END LOOP;
        END LOOP ;
      END LOOP;
    END LOOP;

    for uA in 1..15 LOOP
      for uB in (uA + 1)..15 loop
        for uC in (uB + 1)..15 loop
          for uD in (uC + 1)..15 loop
            for uE in (uD + 1)..15 loop
              for uF in (uE + 1)..15 loop
                for uG in (uF + 1)..15 loop
                  for uH in (uG + 1)..15 loop
                    for uI in (uH + 1)..15 loop
                      for uJ in (uI + 1)..15 loop
                        Insert into lotofacil.lotofacil_resultado_grupo_10_bolas(concurso, grp_id)
                        Select concurso_novo, grp_id from lotofacil.lotofacil_id_grupo_10_bolas
                        where bola1 = resultado_bolas[uA] AND
                          bola2 = resultado_bolas[uB] AND
                          bola3 = resultado_bolas[uC] and
                          bola4 = resultado_bolas[uD] AND
                          bola5 = resultado_bolas[uE] AND
                          bola6 = resultado_bolas[uF] AND
                          bola7 = resultado_bolas[uG] AND
                          bola8 = resultado_bolas[uH] AND
                          bola9 = resultado_bolas[uI] AND
                          bola10 = resultado_bolas[uJ];
                      end loop;
                    end loop;
                  end loop;
                end loop;
              END LOOP;
            END LOOP;
          END LOOP;
        END LOOP ;
      END LOOP;
    END LOOP;

  END;$$;




